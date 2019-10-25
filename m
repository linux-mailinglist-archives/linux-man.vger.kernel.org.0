Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C23DDE5286
	for <lists+linux-man@lfdr.de>; Fri, 25 Oct 2019 19:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387847AbfJYRpa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Oct 2019 13:45:30 -0400
Received: from georg.so ([89.238.75.224]:37586 "EHLO georg.so"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387597AbfJYRp3 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 25 Oct 2019 13:45:29 -0400
X-Greylist: delayed 597 seconds by postgrey-1.27 at vger.kernel.org; Fri, 25 Oct 2019 13:45:29 EDT
Received: from dell12.lru.li (unknown [IPv6:2001:1a80:303a:0:faca:b8ff:fe50:d072])
        (Authenticated sender: georg)
        by georg.so (Postfix) with ESMTPSA id BC7514AE910;
        Fri, 25 Oct 2019 19:35:26 +0200 (CEST)
Received: by dell12.lru.li (Postfix, from userid 1000)
        id 1BEFD33F3C6; Fri, 25 Oct 2019 19:35:26 +0200 (CEST)
Date:   Fri, 25 Oct 2019 19:35:26 +0200
From:   Georg Sauthoff <mail@gms.tf>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Re: Bugs in futex(2) example - fix for deadlock/busy-waiting and
 output
Message-ID: <20191025173526.GA32433@dell12.lru.li>
References: <20191014181043.GA21106@dell12.lru.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191014181043.GA21106@dell12.lru.li>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Oct 14, 2019 at 08:10:43PM +0200, Georg Sauthoff wrote:

Hello,

> I've noticed that the example in the current
> http://man7.org/linux/man-pages/man2/futex.2.html page has 2 issues:
[output,deadlock]

meanwhile, I've updated some more outdated comments and fixed const
correctness issues.

Example:

    -        const int zero = 0;
    -        if (atomic_compare_exchange_strong(futexp, &zero, 1))
    -            break;      /* Yes */
    +        int expected = 0;
    +        if (atomic_compare_exchange_strong(futexp, &expected, 1))
    +            break;

Since atomic_compare_exchange_strong() overwrites the expected value if
it doesn't match, declaring it as const yields undefined behavior.

Also, a reader unfamilar with atomic_compare_exchange() might wrongly
deduce that it doesn't modify its second argument.

You can find the complete modified example online:
https://gist.github.com/gsauthof/6eb6c648e483005191c37f86e759906e

And inline the updated patch:

--- futex_demo.c.orig	2019-10-14 19:36:23.292238650 +0200
+++ futex_demo.c	2019-10-20 10:13:32.268350668 +0200
@@ -36,38 +36,46 @@
 }
 
 /* Acquire the futex pointed to by 'futexp': wait for its value to
-   become 1, and then set the value to 0. */
+   become 0, and then set the value to 1. */
 
 static void
 fwait(int *futexp)
 {
     int s;
 
-    /* atomic_compare_exchange_strong(ptr, oldval, newval)
-       atomically performs the equivalent of:
+    /* atomic_compare_exchange_strong atomically performs
+       the equivalent of:
 
-           if (*ptr == *oldval)
-               *ptr = newval;
+       bool cmpexch(int *val, int *exp, int newval)
+       {
+           if (*val == *exp) {
+               *val = newval;
+               return true;
+           } else {
+               *exp = *val;
+               return false;
+           }
+       }
 
-       It returns true if the test yielded true and *ptr was updated. */
+       */
 
     while (1) {
 
         /* Is the futex available? */
-        const int zero = 0;
-        if (atomic_compare_exchange_strong(futexp, &zero, 1))
-            break;      /* Yes */
+        int expected = 0;
+        if (atomic_compare_exchange_strong(futexp, &expected, 1))
+            break;
 
         /* Futex is not available; wait */
 
-        s = futex(futexp, FUTEX_WAIT, 0, NULL, NULL, 0);
+        s = futex(futexp, FUTEX_WAIT, 1, NULL, NULL, 0);
         if (s == -1 && errno != EAGAIN)
             errExit("futex-FUTEX_WAIT");
     }
 }
 
 /* Release the futex pointed to by 'futexp': if the futex currently
-   has the value 0, set its value to 1 and the wake any futex waiters,
+   has the value 1, set its value to 0 and the wake any futex waiters,
    so that if the peer is blocked in fpost(), it can proceed. */
 
 static void
@@ -77,8 +85,8 @@
 
     /* atomic_compare_exchange_strong() was described in comments above */
 
-    const int one = 1;
-    if (atomic_compare_exchange_strong(futexp, &one, 0)) {
+    int expected = 1;
+    if (atomic_compare_exchange_strong(futexp, &expected, 0)) {
         s = futex(futexp, FUTEX_WAKE, 1, NULL, NULL, 0);
         if (s  == -1)
             errExit("futex-FUTEX_WAKE");
@@ -108,8 +116,8 @@
     futex1 = &iaddr[0];
     futex2 = &iaddr[1];
 
-    *futex1 = 0;        /* State: unavailable */
-    *futex2 = 1;        /* State: available */
+    *futex1 = 1;        /* State: unavailable */
+    *futex2 = 0;        /* State: available */
 
     /* Create a child process that inherits the shared anonymous
        mapping */


Best regards
Georg

