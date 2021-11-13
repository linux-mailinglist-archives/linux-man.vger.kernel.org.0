Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5661E44F2FB
	for <lists+linux-man@lfdr.de>; Sat, 13 Nov 2021 13:05:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235634AbhKMMIA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Nov 2021 07:08:00 -0500
Received: from mx1.riseup.net ([198.252.153.129]:56744 "EHLO mx1.riseup.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234466AbhKMMIA (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 13 Nov 2021 07:08:00 -0500
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
         client-signature RSA-PSS (2048 bits) client-digest SHA256)
        (Client CN "mail.riseup.net", Issuer "R3" (not verified))
        by mx1.riseup.net (Postfix) with ESMTPS id 4Hrv7h4SxnzDrc1;
        Sat, 13 Nov 2021 03:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
        t=1636804608; bh=8WvDbOm8sFatstR2Xyl0aplExAza1JucZt3ybEEr/T0=;
        h=Date:From:To:Cc:Subject:From;
        b=PjiTnj1AIE5JXO+A3kzF15uYv1wp3KG3MZzf61t1Qo/MTAMAor8nzEmwhLI3lBfP7
         lNg4ID3ZUsISf9zRl2aafja/Ho6EouvU0EW3hx8S9w0ZwnyMxiYQ6pfYw0gBj52Tsf
         oZHG0Dm6YxpJQ1ASYHAo1NesejvbhlUIie28bHcE=
X-Riseup-User-ID: FAE361914389BFE63D58A5A4DD30789E65F1CE7E03D56F3E623DA8291E33AA67
Received: from [127.0.0.1] (localhost [127.0.0.1])
         by fews2.riseup.net (Postfix) with ESMTPSA id 4Hrv7f5xGJz1xmv;
        Sat, 13 Nov 2021 03:56:46 -0800 (PST)
Date:   Sat, 13 Nov 2021 11:56:56 +0000
From:   Samanta Navarro <ferivoz@riseup.net>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Subject: [patch] pthread_cancel.3, pthread_cleanup_push_defer_np.3,
 pthread_setcancelstate.3, pthread_testcancel.3, pthreads.7: tfix
Message-ID: <20211113115656.5oomvy443gapjtx4@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Changed cancelability to cancellability.

Typo found with codespell.

Signed-off-by: Samanta Navarro <ferivoz@riseup.net>
---
 man3/pthread_cancel.3                | 10 +++++-----
 man3/pthread_cleanup_push_defer_np.3 | 10 +++++-----
 man3/pthread_setcancelstate.3        | 30 ++++++++++++++--------------
 man3/pthread_testcancel.3            |  2 +-
 man7/pthreads.7                      |  4 ++--
 5 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/man3/pthread_cancel.3 b/man3/pthread_cancel.3
index 01b7cf0..9ea1d4a 100644
--- a/man3/pthread_cancel.3
+++ b/man3/pthread_cancel.3
@@ -42,12 +42,12 @@ function sends a cancellation request to the thread
 Whether and when the target thread
 reacts to the cancellation request depends on
 two attributes that are under the control of that thread:
-its cancelability
+its cancellability
 .I state
 and
 .IR type .
 .PP
-A thread's cancelability state, determined by
+A thread's cancellability state, determined by
 .BR pthread_setcancelstate (3),
 can be
 .I enabled
@@ -57,7 +57,7 @@ If a thread has disabled cancellation,
 then a cancellation request remains queued until the thread
 enables cancellation.
 If a thread has enabled cancellation,
-then its cancelability type determines when cancellation occurs.
+then its cancellability type determines when cancellation occurs.
 .PP
 A thread's cancellation type, determined by
 .BR pthread_setcanceltype (3),
@@ -66,10 +66,10 @@ may be either
 or
 .IR deferred
 (the default for new threads).
-Asynchronous cancelability
+Asynchronous cancellability
 means that the thread can be canceled at any time
 (usually immediately, but the system does not guarantee this).
-Deferred cancelability means that cancellation will be delayed until
+Deferred cancellability means that cancellation will be delayed until
 the thread next calls a function that is a
 .IR "cancellation point" .
 A list of functions that are or may be cancellation points is provided in
diff --git a/man3/pthread_cleanup_push_defer_np.3 b/man3/pthread_cleanup_push_defer_np.3
index c5096d1..1daf210 100644
--- a/man3/pthread_cleanup_push_defer_np.3
+++ b/man3/pthread_cleanup_push_defer_np.3
@@ -26,7 +26,7 @@
 .TH PTHREAD_CLEANUP_PUSH_DEFER_NP 3 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 pthread_cleanup_push_defer_np, pthread_cleanup_pop_restore_np \- push and pop
-thread cancellation clean-up handlers while saving cancelability type
+thread cancellation clean-up handlers while saving cancellability type
 .SH SYNOPSIS
 .nf
 .B #include <pthread.h>
@@ -60,11 +60,11 @@ Like
 pushes
 .I routine
 onto the thread's stack of cancellation clean-up handlers.
-In addition, it also saves the thread's current cancelability type,
-and sets the cancelability type to "deferred" (see
+In addition, it also saves the thread's current cancellability type,
+and sets the cancellability type to "deferred" (see
 .BR pthread_setcanceltype (3));
 this ensures that cancellation clean-up will occur
-even if the thread's cancelability type was "asynchronous"
+even if the thread's cancellability type was "asynchronous"
 before the call.
 .PP
 Like
@@ -72,7 +72,7 @@ Like
 .BR pthread_cleanup_pop_restore_np ()
 pops the top-most clean-up handler from the thread's
 stack of cancellation clean-up handlers.
-In addition, it restores the thread's cancelability
+In addition, it restores the thread's cancellability
 type to its value at the time of the matching
 .BR pthread_cleanup_push_defer_np ().
 .PP
diff --git a/man3/pthread_setcancelstate.3 b/man3/pthread_setcancelstate.3
index 56e2acf..5ef6ce6 100644
--- a/man3/pthread_setcancelstate.3
+++ b/man3/pthread_setcancelstate.3
@@ -26,7 +26,7 @@
 .TH PTHREAD_SETCANCELSTATE 3 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 pthread_setcancelstate, pthread_setcanceltype \-
-set cancelability state and type
+set cancellability state and type
 .SH SYNOPSIS
 .nf
 .B #include <pthread.h>
@@ -39,10 +39,10 @@ Compile and link with \fI\-pthread\fP.
 .SH DESCRIPTION
 The
 .BR pthread_setcancelstate ()
-sets the cancelability state of the calling thread to the value
+sets the cancellability state of the calling thread to the value
 given in
 .IR state .
-The previous cancelability state of the thread is returned
+The previous cancellability state of the thread is returned
 in the buffer pointed to by
 .IR oldstate .
 The
@@ -51,22 +51,22 @@ argument must have one of the following values:
 .TP
 .B PTHREAD_CANCEL_ENABLE
 The thread is cancelable.
-This is the default cancelability state in all new threads,
+This is the default cancellability state in all new threads,
 including the initial thread.
-The thread's cancelability type determines when a cancelable thread
+The thread's cancellability type determines when a cancelable thread
 will respond to a cancellation request.
 .TP
 .B PTHREAD_CANCEL_DISABLE
 The thread is not cancelable.
 If a cancellation request is received,
-it is blocked until cancelability is enabled.
+it is blocked until cancellability is enabled.
 .PP
 The
 .BR pthread_setcanceltype ()
-sets the cancelability type of the calling thread to the value
+sets the cancellability type of the calling thread to the value
 given in
 .IR type .
-The previous cancelability type of the thread is returned
+The previous cancellability type of the thread is returned
 in the buffer pointed to by
 .IR oldtype .
 The
@@ -77,7 +77,7 @@ argument must have one of the following values:
 A cancellation request is deferred until the thread next calls
 a function that is a cancellation point (see
 .BR pthreads (7)).
-This is the default cancelability type in all new threads,
+This is the default cancellability type in all new threads,
 including the initial thread.
 .IP
 Even with deferred cancellation, a
@@ -148,14 +148,14 @@ POSIX.1-2001, POSIX.1-2008.
 For details of what happens when a thread is canceled, see
 .BR pthread_cancel (3).
 .PP
-Briefly disabling cancelability is useful
+Briefly disabling cancellability is useful
 if a thread performs some critical action
 that must not be interrupted by a cancellation request.
-Beware of disabling cancelability for long periods,
+Beware of disabling cancellability for long periods,
 or around operations that may block for long periods,
 since that will render the thread unresponsive to cancellation requests.
-.SS Asynchronous cancelability
-Setting the cancelability type to
+.SS Asynchronous cancellability
+Setting the cancellability type to
 .B PTHREAD_CANCEL_ASYNCHRONOUS
 is rarely useful.
 Since the thread could be canceled at
@@ -185,7 +185,7 @@ be async-cancel-safe.
 In general, other library functions
 can't be safely called from an asynchronously cancelable thread.
 .PP
-One of the few circumstances in which asynchronous cancelability is useful
+One of the few circumstances in which asynchronous cancellability is useful
 is for cancellation of a thread that is in a pure compute-bound loop.
 .SS Portability notes
 The Linux threading implementations permit the
@@ -193,7 +193,7 @@ The Linux threading implementations permit the
 argument of
 .BR pthread_setcancelstate ()
 to be NULL, in which case the information about the previous
-cancelability state is not returned to the caller.
+cancellability state is not returned to the caller.
 Many other implementations also permit a NULL
 .I oldstat
 argument,
diff --git a/man3/pthread_testcancel.3 b/man3/pthread_testcancel.3
index 8dc2d61..88cfa94 100644
--- a/man3/pthread_testcancel.3
+++ b/man3/pthread_testcancel.3
@@ -41,7 +41,7 @@ creates a cancellation point within the calling thread,
 so that a thread that is otherwise executing code that contains
 no cancellation points will respond to a cancellation request.
 .PP
-If cancelability is disabled (using
+If cancellability is disabled (using
 .BR pthread_setcancelstate (3)),
 or no cancellation request is pending,
 then a call to
diff --git a/man7/pthreads.7 b/man7/pthreads.7
index 6f4f6e7..1a347a7 100644
--- a/man7/pthreads.7
+++ b/man7/pthreads.7
@@ -242,7 +242,7 @@ wctomb()
 .in
 .SS Async-cancel-safe functions
 An async-cancel-safe function is one that can be safely called
-in an application where asynchronous cancelability is enabled (see
+in an application where asynchronous cancellability is enabled (see
 .BR pthread_setcancelstate (3)).
 .PP
 Only the following functions are required to be async-cancel-safe by
@@ -258,7 +258,7 @@ pthread_setcanceltype()
 .SS Cancellation points
 POSIX.1 specifies that certain functions must,
 and certain other functions may, be cancellation points.
-If a thread is cancelable, its cancelability type is deferred,
+If a thread is cancelable, its cancellability type is deferred,
 and a cancellation request is pending for the thread,
 then the thread is canceled when it calls a function
 that is a cancellation point.
-- 
2.33.1

