--- src/redshift-gtk/utils.py.orig	2023-03-11 05:58:34 UTC
+++ src/redshift-gtk/utils.py
@@ -55,7 +55,7 @@ def open_autostart_file():
         dfile = DesktopEntry.DesktopEntry(desktop_file_path)
         for key, values in AUTOSTART_KEYS:
             dfile.set(key, values[False])
-        dfile.write(filename=autostart_file)
+        # dfile.write(filename=autostart_file)
     else:
         dfile = DesktopEntry.DesktopEntry(autostart_file)
 
