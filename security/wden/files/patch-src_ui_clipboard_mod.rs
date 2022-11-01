--- src/ui/clipboard/mod.rs.orig	2022-07-29 18:15:00 UTC
+++ src/ui/clipboard/mod.rs
@@ -10,6 +10,11 @@ mod linux_clipboard;
 #[cfg(target_os = "linux")]
 type PlatformCbImpl = linux_clipboard::LinuxClipboard;
 
+#[cfg(target_os = "freebsd")]
+mod freebsd_clipboard;
+#[cfg(target_os = "freebsd")]
+type PlatformCbImpl = freebsd_clipboard::FreeBSDClipboard;
+
 pub fn clip_string(s: String) {
     log::info!("Clipping...");
     if let Err(e) = PlatformCbImpl::clip_string(s) {
