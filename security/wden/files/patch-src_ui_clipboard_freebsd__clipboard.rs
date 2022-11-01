--- src/ui/clipboard/freebsd_clipboard.rs.orig	2022-10-05 22:51:10 UTC
+++ src/ui/clipboard/freebsd_clipboard.rs
@@ -0,0 +1,73 @@
+use std::{collections::HashMap, sync::MutexGuard, time::Duration};
+
+use super::{PlatformClipboard, PlatformClipboardResult};
+use anyhow::Context;
+use lazy_static::lazy_static;
+use std::sync::Mutex;
+use x11_clipboard::{
+    xcb::{
+        x::{Atom, InternAtom},
+        Connection,
+    },
+    Clipboard,
+};
+
+lazy_static! {
+    static ref CLIPBOARD: Mutex<Option<Clipboard>> = Mutex::new(None);
+}
+
+pub struct FreeBSDClipboard;
+
+impl PlatformClipboard for FreeBSDClipboard {
+    fn clip_string(s: String) -> PlatformClipboardResult<()> {
+        let cb = get_cb()?;
+
+        let cb = cb.as_ref().unwrap();
+        let kde_password_hint_atom = get_kde_password_hint_atom(&cb.setter.connection)?;
+
+        let data = HashMap::from([
+            (kde_password_hint_atom, "secret".into()),
+            (cb.setter.atoms.utf8_string, s.as_str().into()),
+        ]);
+
+        cb.store_many(cb.setter.atoms.clipboard, data)?;
+
+        Ok(())
+    }
+
+    fn get_string_contents() -> PlatformClipboardResult<String> {
+        let cb = get_cb()?;
+
+        let cb = cb.as_ref().unwrap();
+        let val = cb.load(
+            cb.setter.atoms.clipboard,
+            cb.setter.atoms.utf8_string,
+            cb.setter.atoms.property,
+            Duration::from_secs(3),
+        )?;
+
+        String::from_utf8(val).context("Parsing UTF-8 string failed")
+    }
+
+    fn clear() -> PlatformClipboardResult<()> {
+        Self::clip_string(String::new())
+    }
+}
+
+fn get_cb() -> Result<MutexGuard<'static, Option<Clipboard>>, anyhow::Error> {
+    let mut cb_opt = CLIPBOARD.lock().unwrap();
+    if cb_opt.is_none() {
+        *cb_opt = Some(Clipboard::new()?);
+    }
+
+    Ok(cb_opt)
+}
+
+fn get_kde_password_hint_atom(connection: &Connection) -> PlatformClipboardResult<Atom> {
+    let cookie = connection.send_request(&InternAtom {
+        name: b"x-kde-passwordManagerHint",
+        only_if_exists: false,
+    });
+
+    Ok(connection.wait_for_reply(cookie)?.atom())
+}
