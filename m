Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A684AD6956
	for <lists+linux-man@lfdr.de>; Mon, 14 Oct 2019 20:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730596AbfJNSTi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Oct 2019 14:19:38 -0400
Received: from escher.lru.li ([217.146.132.159]:57616 "EHLO escher.lru.li"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729950AbfJNSTh (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 14 Oct 2019 14:19:37 -0400
X-Greylist: delayed 532 seconds by postgrey-1.27 at vger.kernel.org; Mon, 14 Oct 2019 14:19:37 EDT
Received: from dell12.lru.li (unknown [IPv6:2001:1a80:303a:0:faca:b8ff:fe50:d072])
        (Authenticated sender: georg)
        by escher.lru.li (Postfix) with ESMTPSA id 68EE7811ADE5;
        Mon, 14 Oct 2019 20:10:43 +0200 (CEST)
Received: by dell12.lru.li (Postfix, from userid 1000)
        id 1E24C33F102; Mon, 14 Oct 2019 20:10:43 +0200 (CEST)
Date:   Mon, 14 Oct 2019 20:10:43 +0200
From:   Georg Sauthoff <mail@gms.tf>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Bugs in futex(2) example - fix for deadlock/busy-waiting and output
Message-ID: <20191014181043.GA21106@dell12.lru.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

I've noticed that the example in the current
http://man7.org/linux/man-pages/man2/futex.2.html page has 2 issues:

1) The quoted output mismatches the actual output, i.e. the parent/child
order is reversed.

Man page output:

    $ ./futex_demo
    Parent (18534) 0
    Child  (18535) 0
    Parent (18534) 1
    Child  (18535) 1
    [..]

Actual output:

    Child  (21215) 0
    Parent (21214) 0
    Child  (21215) 1
    Parent (21214) 1
    [..]

Fix:

--- futex_demo.c.orig	2019-10-14 19:36:23.292238650 +0200
+++ futex_demo.c	2019-10-14 19:36:58.599464636 +0200
@@ -108,8 +108,8 @@
     futex1 = &iaddr[0];
     futex2 = &iaddr[1];
 
-    *futex1 = 0;        /* State: unavailable */
-    *futex2 = 1;        /* State: available */
+    *futex1 = 1;        /* State: unavailable */
+    *futex2 = 0;        /* State: available */
 
     /* Create a child process that inherits the shared anonymous
	mapping */

Note that this also fixes the comments.

2) As is, the fwait() either busy-waits or waits forever:

    static void
    fwait(int *futexp)
    {
	int s;
	while (1) {

	    /* Is the futex available? */
	    const int zero = 0;
	    if (atomic_compare_exchange_strong(futexp, &zero, 1))
		break;      /* Yes */

	    /* Futex is not available; wait */

	    s = futex(futexp, FUTEX_WAIT, 0, NULL, NULL, 0);

            // XXX => because 3rd arg (val) is 0 and not 1 this call
            //        likely return s==-1 and sets errno==EAGAIN
            //        (in our context)

	    if (s == -1 && errno != EAGAIN)
		errExit("futex-FUTEX_WAIT");
	}
    }

See also:

    $ strace -o log -f ./futex_demo
    $ grep 'futex.*'EAGAIN log -c
    17

The number varies, of course.

Depending on the scheduling, this also may lead to a deadlock - most easily
reproducible when running it multiple times under strace, e.g.:

    $ strace -o log -f ./futex_demo
    Parent (21488) 0
    Child  (21489) 0
    ^C
    $ 

Reason: There is a race between atomic_compare_exchange_strong() and
futex(.., FUTEX_WAIT, ..) where the first observes the futex value as 1
but the second as 0.


Fix: set val argument of futex() to 1, i.e. the same value that failed to be
set atomically:


--- futex_demo.c.orig	2019-10-14 19:36:23.292238650 +0200
+++ futex_demo.c	2019-10-14 19:49:02.696404149 +0200
@@ -60,7 +60,7 @@
 
         /* Futex is not available; wait */
 
-        s = futex(futexp, FUTEX_WAIT, 0, NULL, NULL, 0);
+        s = futex(futexp, FUTEX_WAIT, 1, NULL, NULL, 0);
         if (s == -1 && errno != EAGAIN)
             errExit("futex-FUTEX_WAIT");
     }

With that: no deadlocks and:

	$strace -o log -f ./futex_demo
	$ grep 'futex.*'EAGAIN log -c
	0


Best regards
Georg
-- 
Hofstadter's Law: "It always takes longer than you think it will
take, even when you take into account Hofstadter's Law"
