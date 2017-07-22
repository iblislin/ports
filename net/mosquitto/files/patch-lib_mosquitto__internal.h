--- lib/mosquitto_internal.h.orig	2017-07-10 22:46:01 UTC
+++ lib/mosquitto_internal.h
@@ -30,11 +30,7 @@ Contributors:
 #endif
 #include <stdlib.h>
 
-#if defined(WITH_THREADING) && !defined(WITH_BROKER)
-#  include <pthread.h>
-#else
-#  include <dummypthread.h>
-#endif
+#include <pthread.h>
 
 #ifdef WITH_SRV
 #  include <ares.h>
@@ -190,7 +186,7 @@ struct mosquitto {
 #endif
 	bool want_write;
 	bool want_connect;
-#if defined(WITH_THREADING) && !defined(WITH_BROKER)
+
 	pthread_mutex_t callback_mutex;
 	pthread_mutex_t log_callback_mutex;
 	pthread_mutex_t msgtime_mutex;
@@ -201,7 +197,7 @@ struct mosquitto {
 	pthread_mutex_t out_message_mutex;
 	pthread_mutex_t mid_mutex;
 	pthread_t thread_id;
-#endif
+
 	bool clean_session;
 #ifdef WITH_BROKER
 	bool is_dropping;
