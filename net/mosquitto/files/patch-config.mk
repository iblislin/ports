--- config.mk.orig	2018-08-16 16:05:26 UTC
+++ config.mk
@@ -272,9 +272,9 @@ ifeq ($(WITH_WEBSOCKETS),static)
 endif
 
 INSTALL?=install
-prefix=/usr/local
-mandir=${prefix}/share/man
-localedir=${prefix}/share/locale
+prefix=${PREFIX}
+mandir=${PREFIX}/share/man
+localedir=${PREFIX}/share/locale
 STRIP?=strip
 
 ifeq ($(WITH_STRIP),yes)
