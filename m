Return-Path: <linux-man+bounces-3508-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FBAB2D164
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 03:27:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 233801BA7580
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 01:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC30F213248;
	Wed, 20 Aug 2025 01:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="XMQxuj/8"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7649818DF80
	for <linux-man@vger.kernel.org>; Wed, 20 Aug 2025 01:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755653250; cv=none; b=jYNFDl2op9/Dd9kOn3rIEAWWl4ogGeqw3rRrHKQUIoE/Y9b6FcKlasKliCD+DudTZclrVukcVn/TAXHloN2Ezoy1WDN9XU38u5qWFM3F1yXgFZ5BJIYedQYW63Pjo9ZMDZGUQ3EeAloFeEJ0L5Xm/RImOhoOtM1IafgSKSWwrvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755653250; c=relaxed/simple;
	bh=XxghqRj2SD2opzYtzqZqj2+z9RfCgHcr2pbd8iU2me4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FAoXcBij9DSMYxTrGD3ox4LmF/S/ScQ76rgrVQtCoct47MOdLUKG4zCXTvJP0QZz7l2HIlq7TEmHvf9VkRQGhHCKhCBH1XIY2QXNlML20FA0rh539WqIbEFLYKTWxIajJP0OFLg41UtyWtqi2gS648V2BMHXZkQVDZTr9fjoyyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=XMQxuj/8; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=hvb9aMceH+jZOZvagsltnIOMmqQ4N8nowfZgWmj5Qfk=; b=XMQxuj/8Sq6hpEV7
	ti3F0NAqw6y8fJ29yAYbIaJjtU4oWDY6cwuQghP6zEvtuZtLrFF7c1WRPcbncZkXw7gjvwDiVH2x4
	ZA4BVZP69eOI5aRoNKXplV4N6c2zyXvDTe1SG8V4wJd8jGlv6kTMCbyfB2SrFZZSvNunj90l2ugTt
	Grg/0BsAMEWvZIxjEO/OptgkO14H2bhmPWFSfqd4c0vnh1GppqWcxuTa+cgJZRT7DhOQA5lYUSFl/
	XZkirckijl37eejdcRwKA5fnJ4kti8zVdKi9kW5lF0VeKE6XsvgYw4jhSvyQMuFXM1iEu1TjpRo1C
	3lhaI4YWTztM3+xpmw==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
	by mx.treblig.org with esmtp (Exim 4.96)
	(envelope-from <dave@treblig.org>)
	id 1uoXbp-0057Tk-34;
	Wed, 20 Aug 2025 01:27:25 +0000
From: dave@treblig.org
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	"Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH] man/man3/pthread_attr_init.3: Replace errc
Date: Wed, 20 Aug 2025 02:27:25 +0100
Message-ID: <20250820012725.440625-1-dave@treblig.org>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. David Alan Gilbert" <dave@treblig.org>

The pthread_attr_init.3 example uses 'errc' to exit on an error
printing the error code.  However, 'errc' is a BSDism that Linux
doesn't (and has never?) have.

Replace it by 'errx' with a strerror() call.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
 man/man3/pthread_attr_init.3 | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/man/man3/pthread_attr_init.3 b/man/man3/pthread_attr_init.3
index e9058b8fe..9d0783e54 100644
--- a/man/man3/pthread_attr_init.3
+++ b/man/man3/pthread_attr_init.3
@@ -153,6 +153,7 @@ .SS Program source
 #include <pthread.h>
 #include <stdio.h>
 #include <stdlib.h>
+#include <string.h>
 #include <unistd.h>
 \&
 static void
@@ -165,7 +166,7 @@ .SS Program source
 \&
     s = pthread_attr_getdetachstate(attr, &i);
     if (s != 0)
-        errc(EXIT_FAILURE, s, "pthread_attr_getdetachstate");
+        errx(EXIT_FAILURE, "pthread_attr_getdetachstate: %s", strerror(s));
     printf("%sDetach state        = %s\[rs]n", prefix,
            (i == PTHREAD_CREATE_DETACHED) ? "PTHREAD_CREATE_DETACHED" :
            (i == PTHREAD_CREATE_JOINABLE) ? "PTHREAD_CREATE_JOINABLE" :
@@ -173,7 +174,7 @@ .SS Program source
 \&
     s = pthread_attr_getscope(attr, &i);
     if (s != 0)
-        errc(EXIT_FAILURE, s, "pthread_attr_getscope");
+        errx(EXIT_FAILURE, "pthread_attr_getscope: %s", strerror(s));
     printf("%sScope               = %s\[rs]n", prefix,
            (i == PTHREAD_SCOPE_SYSTEM)  ? "PTHREAD_SCOPE_SYSTEM" :
            (i == PTHREAD_SCOPE_PROCESS) ? "PTHREAD_SCOPE_PROCESS" :
@@ -181,7 +182,7 @@ .SS Program source
 \&
     s = pthread_attr_getinheritsched(attr, &i);
     if (s != 0)
-        errc(EXIT_FAILURE, s, "pthread_attr_getinheritsched");
+        errx(EXIT_FAILURE, "pthread_attr_getinheritsched: %s", strerror(s));
     printf("%sInherit scheduler   = %s\[rs]n", prefix,
            (i == PTHREAD_INHERIT_SCHED)  ? "PTHREAD_INHERIT_SCHED" :
            (i == PTHREAD_EXPLICIT_SCHED) ? "PTHREAD_EXPLICIT_SCHED" :
@@ -189,7 +190,7 @@ .SS Program source
 \&
     s = pthread_attr_getschedpolicy(attr, &i);
     if (s != 0)
-        errc(EXIT_FAILURE, s, "pthread_attr_getschedpolicy");
+        errx(EXIT_FAILURE, "pthread_attr_getschedpolicy: %s", strerror(s));
     printf("%sScheduling policy   = %s\[rs]n", prefix,
            (i == SCHED_OTHER) ? "SCHED_OTHER" :
            (i == SCHED_FIFO)  ? "SCHED_FIFO" :
@@ -198,17 +199,17 @@ .SS Program source
 \&
     s = pthread_attr_getschedparam(attr, &sp);
     if (s != 0)
-        errc(EXIT_FAILURE, s, "pthread_attr_getschedparam");
+        errx(EXIT_FAILURE, "pthread_attr_getschedparam: %s", strerror(s));
     printf("%sScheduling priority = %d\[rs]n", prefix, sp.sched_priority);
 \&
     s = pthread_attr_getguardsize(attr, &v);
     if (s != 0)
-        errc(EXIT_FAILURE, s, "pthread_attr_getguardsize");
+        errx(EXIT_FAILURE, "pthread_attr_getguardsize: %s", strerror(s));
     printf("%sGuard size          = %zu bytes\[rs]n", prefix, v);
 \&
     s = pthread_attr_getstack(attr, &stkaddr, &v);
     if (s != 0)
-        errc(EXIT_FAILURE, s, "pthread_attr_getstack");
+        errx(EXIT_FAILURE, "pthread_attr_getstack: %s", strerror(s));
     printf("%sStack address       = %p\[rs]n", prefix, stkaddr);
     printf("%sStack size          = %#zx bytes\[rs]n", prefix, v);
 }
@@ -225,7 +226,7 @@ .SS Program source
 \&
     s = pthread_getattr_np(pthread_self(), &gattr);
     if (s != 0)
-        errc(EXIT_FAILURE, s, "pthread_getattr_np");
+        errx(EXIT_FAILURE, "pthread_getattr_np: %s", strerror(s));
 \&
     printf("Thread attributes:\[rs]n");
     display_pthread_attr(&gattr, "\[rs]t");
@@ -255,37 +256,37 @@ .SS Program source
 \&
         s = pthread_attr_init(&attr);
         if (s != 0)
-            errc(EXIT_FAILURE, s, "pthread_attr_init");
+            errx(EXIT_FAILURE, "pthread_attr_init: %s", strerror(s));
 \&
         s = pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
         if (s != 0)
-            errc(EXIT_FAILURE, s, "pthread_attr_setdetachstate");
+            errx(EXIT_FAILURE, "pthread_attr_setdetachstate: %s", strerror(s));
 \&
         s = pthread_attr_setinheritsched(&attr, PTHREAD_EXPLICIT_SCHED);
         if (s != 0)
-            errc(EXIT_FAILURE, s, "pthread_attr_setinheritsched");
+            errx(EXIT_FAILURE, "pthread_attr_setinheritsched: %s", strerror(s));
 \&
         stack_size = strtoul(argv[1], NULL, 0);
 \&
         s = posix_memalign(&sp, sysconf(_SC_PAGESIZE), stack_size);
         if (s != 0)
-            errc(EXIT_FAILURE, s, "posix_memalign");
+            errx(EXIT_FAILURE, "posix_memalign: %s", strerror(s));
 \&
         printf("posix_memalign() allocated at %p\[rs]n", sp);
 \&
         s = pthread_attr_setstack(&attr, sp, stack_size);
         if (s != 0)
-            errc(EXIT_FAILURE, s, "pthread_attr_setstack");
+            errx(EXIT_FAILURE, "pthread_attr_setstack: %s", strerror(s));
     }
 \&
     s = pthread_create(&thr, attrp, &thread_start, NULL);
     if (s != 0)
-        errc(EXIT_FAILURE, s, "pthread_create");
+        errx(EXIT_FAILURE, "pthread_create: %s", strerror(s));
 \&
     if (attrp != NULL) {
         s = pthread_attr_destroy(attrp);
         if (s != 0)
-            errc(EXIT_FAILURE, s, "pthread_attr_destroy");
+            errx(EXIT_FAILURE, "pthread_attr_destroy: %s", strerror(s));
     }
 \&
     pause();    /* Terminates when other thread calls exit() */
-- 
2.50.1


