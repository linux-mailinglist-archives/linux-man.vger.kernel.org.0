Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75EF545B988
	for <lists+linux-man@lfdr.de>; Wed, 24 Nov 2021 12:58:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241531AbhKXMCF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Nov 2021 07:02:05 -0500
Received: from mx1.riseup.net ([198.252.153.129]:54808 "EHLO mx1.riseup.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231266AbhKXMCE (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 24 Nov 2021 07:02:04 -0500
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
         client-signature RSA-PSS (2048 bits) client-digest SHA256)
        (Client CN "mail.riseup.net", Issuer "R3" (not verified))
        by mx1.riseup.net (Postfix) with ESMTPS id 4Hzfg23tPqzDqmb;
        Wed, 24 Nov 2021 03:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
        t=1637755134; bh=wKI/mKNZMOgwl8O4nPMihY41s9wqsO0nV7QTP5uJ61g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=a2JILRvz0bEL4onUKvCpqEmtLar1PyJ0WF+c286/609di+s1pl40FGKA5l58MoFRr
         t8Jn4NbBSm9BSe1jlbmQ0jxOzibmBVjMVp1m+tcw5pFm+THWFWkRK49S92zGDqkOrO
         vt4GPd7yZwRwWAmTZ1zYu+PVq/du+/8eA0r8BKEI=
X-Riseup-User-ID: F34D3E21FD8E121501E8DE8CE9A5C4DA2F5F29BF262D327E9DA31DD1B9F0E3B1
Received: from [127.0.0.1] (localhost [127.0.0.1])
         by fews2.riseup.net (Postfix) with ESMTPSA id 4Hzffz2TLZz1xmv;
        Wed, 24 Nov 2021 03:58:51 -0800 (PST)
Date:   Wed, 24 Nov 2021 11:58:58 +0000
From:   Samanta Navarro <ferivoz@riseup.net>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, mtk.manpages@gmail.com
Subject: Re: [patch] pthread_cancel.3, pthread_cleanup_push_defer_np.3,
 pthread_setcancelstate.3, pthread_testcancel.3, pthreads.7: tfix
Message-ID: <20211124115858.47rtd2gr5l6mghyp@localhost>
References: <20211113115656.5oomvy443gapjtx4@localhost>
 <20211113124015.tr5wdkrxzinn4qjf@localhost.localdomain>
 <20211113130024.zka6elp7mmshsrlv@localhost>
 <eda92c0f-9175-7e2e-3b6d-4c510c60afc3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eda92c0f-9175-7e2e-3b6d-4c510c60afc3@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Changed cancellation to cancelation.

Signed-off-by: Samanta Navarro <ferivoz@riseup.net>
---
 man3/error.3                         |  2 +-
 man3/fopen.3                         |  2 +-
 man3/getentropy.3                    |  4 +--
 man3/pthread_cancel.3                | 52 ++++++++++++++--------------
 man3/pthread_cleanup_push.3          | 16 ++++-----
 man3/pthread_cleanup_push_defer_np.3 |  8 ++---
 man3/pthread_kill_other_threads_np.3 |  2 +-
 man3/pthread_setcancelstate.3        | 26 +++++++-------
 man3/pthread_testcancel.3            |  8 ++---
 man7/aio.7                           |  4 +--
 man7/attributes.7                    | 42 +++++++++++-----------
 man7/nptl.7                          |  2 +-
 man7/pthreads.7                      | 28 +++++++--------
 man7/signal-safety.7                 |  6 ++--
 14 files changed, 101 insertions(+), 101 deletions(-)

diff --git a/man3/error.3 b/man3/error.3
index 673fe8c..38d0434 100644
--- a/man3/error.3
+++ b/man3/error.3
@@ -149,7 +149,7 @@ used once, it should be safe enough) and, if
 is set nonzero, the internal static variables (not exposed to users)
 used to hold the last printed filename and line number are accessed
 and modified without synchronization; the update is not atomic and it
-occurs before disabling cancellation, so it can be interrupted only after
+occurs before disabling cancelation, so it can be interrupted only after
 one of the two variables is modified.
 After that,
 .BR error_at_line ()
diff --git a/man3/fopen.3 b/man3/fopen.3
index a1d7817..a16af1d 100644
--- a/man3/fopen.3
+++ b/man3/fopen.3
@@ -327,7 +327,7 @@ The GNU C library allows the following extensions for the string specified in
 .BR c " (since glibc 2.3.3)"
 Do not make the open operation,
 or subsequent read and write operations,
-thread cancellation points.
+thread cancelation points.
 This flag is ignored for
 .BR fdopen ().
 .TP
diff --git a/man3/getentropy.3 b/man3/getentropy.3
index dca0a83..4853009 100644
--- a/man3/getentropy.3
+++ b/man3/getentropy.3
@@ -98,9 +98,9 @@ function is implemented using
 .PP
 Whereas the glibc wrapper makes
 .BR getrandom (2)
-a cancellation point,
+a cancelation point,
 .BR getentropy ()
-is not a cancellation point.
+is not a cancelation point.
 .PP
 .BR getentropy ()
 is also declared in
diff --git a/man3/pthread_cancel.3 b/man3/pthread_cancel.3
index 01b7cf0..cf39098 100644
--- a/man3/pthread_cancel.3
+++ b/man3/pthread_cancel.3
@@ -25,7 +25,7 @@
 .\"
 .TH PTHREAD_CANCEL 3 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
-pthread_cancel \- send a cancellation request to a thread
+pthread_cancel \- send a cancelation request to a thread
 .SH SYNOPSIS
 .nf
 .B #include <pthread.h>
@@ -37,10 +37,10 @@ Compile and link with \fI\-pthread\fP.
 .SH DESCRIPTION
 The
 .BR pthread_cancel ()
-function sends a cancellation request to the thread
+function sends a cancelation request to the thread
 .IR thread .
 Whether and when the target thread
-reacts to the cancellation request depends on
+reacts to the cancelation request depends on
 two attributes that are under the control of that thread:
 its cancelability
 .I state
@@ -53,13 +53,13 @@ can be
 .I enabled
 (the default for new threads) or
 .IR disabled .
-If a thread has disabled cancellation,
-then a cancellation request remains queued until the thread
-enables cancellation.
-If a thread has enabled cancellation,
-then its cancelability type determines when cancellation occurs.
+If a thread has disabled cancelation,
+then a cancelation request remains queued until the thread
+enables cancelation.
+If a thread has enabled cancelation,
+then its cancelability type determines when cancelation occurs.
 .PP
-A thread's cancellation type, determined by
+A thread's cancelation type, determined by
 .BR pthread_setcanceltype (3),
 may be either
 .IR asynchronous
@@ -69,13 +69,13 @@ or
 Asynchronous cancelability
 means that the thread can be canceled at any time
 (usually immediately, but the system does not guarantee this).
-Deferred cancelability means that cancellation will be delayed until
+Deferred cancelability means that cancelation will be delayed until
 the thread next calls a function that is a
-.IR "cancellation point" .
-A list of functions that are or may be cancellation points is provided in
+.IR "cancelation point" .
+A list of functions that are or may be cancelation points is provided in
 .BR pthreads (7).
 .PP
-When a cancellation requested is acted on, the following steps occur for
+When a cancelation requested is acted on, the following steps occur for
 .IR thread
 (in this order):
 .IP 1. 3
@@ -98,7 +98,7 @@ The above steps happen asynchronously with respect to the
 call;
 the return status of
 .BR pthread_cancel ()
-merely informs the caller whether the cancellation request
+merely informs the caller whether the cancelation request
 was successfully queued.
 .PP
 After a canceled thread has terminated,
@@ -107,7 +107,7 @@ a join with that thread using
 obtains
 .B PTHREAD_CANCELED
 as the thread's exit status.
-(Joining with a thread is the only way to know that cancellation
+(Joining with a thread is the only way to know that cancelation
 has completed.)
 .SH RETURN VALUE
 On success,
@@ -142,7 +142,7 @@ T}	Thread safety	MT-Safe
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008.
 .SH NOTES
-On Linux, cancellation is implemented using signals.
+On Linux, cancelation is implemented using signals.
 Under the NPTL threading implementation,
 the first real-time signal (i.e., signal 32) is used for this purpose.
 On LinuxThreads, the second real-time signal is used,
@@ -159,9 +159,9 @@ The following shell session shows what happens when we run the program:
 .in +4n
 .EX
 $ ./a.out
-thread_func(): started; cancellation disabled
-main(): sending cancellation request
-thread_func(): about to enable cancellation
+thread_func(): started; cancelation disabled
+main(): sending cancelation request
+thread_func(): about to enable cancelation
 main(): thread was canceled
 .EE
 .in
@@ -182,22 +182,22 @@ thread_func(void *ignored_argument)
 {
     int s;
 
-    /* Disable cancellation for a while, so that we don\(aqt
-       immediately react to a cancellation request. */
+    /* Disable cancelation for a while, so that we don\(aqt
+       immediately react to a cancelation request. */
 
     s = pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, NULL);
     if (s != 0)
         handle_error_en(s, "pthread_setcancelstate");
 
-    printf("thread_func(): started; cancellation disabled\en");
+    printf("thread_func(): started; cancelation disabled\en");
     sleep(5);
-    printf("thread_func(): about to enable cancellation\en");
+    printf("thread_func(): about to enable cancelation\en");
 
     s = pthread_setcancelstate(PTHREAD_CANCEL_ENABLE, NULL);
     if (s != 0)
         handle_error_en(s, "pthread_setcancelstate");
 
-    /* sleep() is a cancellation point. */
+    /* sleep() is a cancelation point. */
 
     sleep(1000);        /* Should get canceled while we sleep */
 
@@ -214,7 +214,7 @@ main(void)
     void *res;
     int s;
 
-    /* Start a thread and then send it a cancellation request. */
+    /* Start a thread and then send it a cancelation request. */
 
     s = pthread_create(&thr, NULL, &thread_func, NULL);
     if (s != 0)
@@ -222,7 +222,7 @@ main(void)
 
     sleep(2);           /* Give thread a chance to get started */
 
-    printf("main(): sending cancellation request\en");
+    printf("main(): sending cancelation request\en");
     s = pthread_cancel(thr);
     if (s != 0)
         handle_error_en(s, "pthread_cancel");
diff --git a/man3/pthread_cleanup_push.3 b/man3/pthread_cleanup_push.3
index 7960315..0263248 100644
--- a/man3/pthread_cleanup_push.3
+++ b/man3/pthread_cleanup_push.3
@@ -26,7 +26,7 @@
 .TH PTHREAD_CLEANUP_PUSH 3 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 pthread_cleanup_push, pthread_cleanup_pop \- push and pop
-thread cancellation clean-up handlers
+thread cancelation clean-up handlers
 .SH SYNOPSIS
 .nf
 .B #include <pthread.h>
@@ -38,7 +38,7 @@ Compile and link with \fI\-pthread\fP.
 .fi
 .SH DESCRIPTION
 These functions manipulate the calling thread's stack of
-thread-cancellation clean-up handlers.
+thread-cancelation clean-up handlers.
 A clean-up handler is a function that is automatically executed
 when a thread is canceled (or in various other circumstances
 described below);
@@ -63,7 +63,7 @@ and optionally executes it if
 .I execute
 is nonzero.
 .PP
-A cancellation clean-up handler is popped from the stack
+A cancelation clean-up handler is popped from the stack
 and executed in the following circumstances:
 .IP 1. 3
 When a thread is canceled,
@@ -180,13 +180,13 @@ This loop increments a global variable,
 .IR cnt ,
 once each second.
 Depending on what command-line arguments are supplied,
-the main thread sends the other thread a cancellation request,
+the main thread sends the other thread a cancelation request,
 or sets a global variable that causes the other thread
 to exit its loop and terminate normally (by doing a
 .IR return ).
 .PP
 In the following shell session,
-the main thread sends a cancellation request to the other thread:
+the main thread sends a cancelation request to the other thread:
 .PP
 .in +4n
 .EX
@@ -201,7 +201,7 @@ Thread was canceled; cnt = 0
 .in
 .PP
 From the above, we see that the thread was canceled,
-and that the cancellation clean-up handler was called
+and that the cancelation clean-up handler was called
 and it reset the value of the global variable
 .I cnt
 to 0.
@@ -281,10 +281,10 @@ thread_start(void *arg)
     curr = start = time(NULL);
 
     while (!done) {
-        pthread_testcancel();           /* A cancellation point */
+        pthread_testcancel();           /* A cancelation point */
         if (curr < time(NULL)) {
             curr = time(NULL);
-            printf("cnt = %d\en", cnt);  /* A cancellation point */
+            printf("cnt = %d\en", cnt);  /* A cancelation point */
             cnt++;
         }
     }
diff --git a/man3/pthread_cleanup_push_defer_np.3 b/man3/pthread_cleanup_push_defer_np.3
index c5096d1..27ce08c 100644
--- a/man3/pthread_cleanup_push_defer_np.3
+++ b/man3/pthread_cleanup_push_defer_np.3
@@ -26,7 +26,7 @@
 .TH PTHREAD_CLEANUP_PUSH_DEFER_NP 3 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 pthread_cleanup_push_defer_np, pthread_cleanup_pop_restore_np \- push and pop
-thread cancellation clean-up handlers while saving cancelability type
+thread cancelation clean-up handlers while saving cancelability type
 .SH SYNOPSIS
 .nf
 .B #include <pthread.h>
@@ -59,11 +59,11 @@ Like
 .BR pthread_cleanup_push_defer_np ()
 pushes
 .I routine
-onto the thread's stack of cancellation clean-up handlers.
+onto the thread's stack of cancelation clean-up handlers.
 In addition, it also saves the thread's current cancelability type,
 and sets the cancelability type to "deferred" (see
 .BR pthread_setcanceltype (3));
-this ensures that cancellation clean-up will occur
+this ensures that cancelation clean-up will occur
 even if the thread's cancelability type was "asynchronous"
 before the call.
 .PP
@@ -71,7 +71,7 @@ Like
 .BR pthread_cleanup_pop (3),
 .BR pthread_cleanup_pop_restore_np ()
 pops the top-most clean-up handler from the thread's
-stack of cancellation clean-up handlers.
+stack of cancelation clean-up handlers.
 In addition, it restores the thread's cancelability
 type to its value at the time of the matching
 .BR pthread_cleanup_push_defer_np ().
diff --git a/man3/pthread_kill_other_threads_np.3 b/man3/pthread_kill_other_threads_np.3
index 031f289..ce490af 100644
--- a/man3/pthread_kill_other_threads_np.3
+++ b/man3/pthread_kill_other_threads_np.3
@@ -39,7 +39,7 @@ On that implementation,
 calling this function causes the immediate termination of
 all threads in the application,
 except the calling thread.
-The cancellation state and cancellation type of the
+The cancelation state and cancelation type of the
 to-be-terminated threads are ignored,
 and the cleanup handlers are not called in those threads.
 .\" .SH VERSIONS
diff --git a/man3/pthread_setcancelstate.3 b/man3/pthread_setcancelstate.3
index 56e2acf..e0c7463 100644
--- a/man3/pthread_setcancelstate.3
+++ b/man3/pthread_setcancelstate.3
@@ -54,11 +54,11 @@ The thread is cancelable.
 This is the default cancelability state in all new threads,
 including the initial thread.
 The thread's cancelability type determines when a cancelable thread
-will respond to a cancellation request.
+will respond to a cancelation request.
 .TP
 .B PTHREAD_CANCEL_DISABLE
 The thread is not cancelable.
-If a cancellation request is received,
+If a cancelation request is received,
 it is blocked until cancelability is enabled.
 .PP
 The
@@ -74,21 +74,21 @@ The
 argument must have one of the following values:
 .TP
 .B PTHREAD_CANCEL_DEFERRED
-A cancellation request is deferred until the thread next calls
-a function that is a cancellation point (see
+A cancelation request is deferred until the thread next calls
+a function that is a cancelation point (see
 .BR pthreads (7)).
 This is the default cancelability type in all new threads,
 including the initial thread.
 .IP
-Even with deferred cancellation, a
-cancellation point in an asynchronous signal handler may still
+Even with deferred cancelation, a
+cancelation point in an asynchronous signal handler may still
 be acted upon and the effect is as if it was an asynchronous
-cancellation.
+cancelation.
 .TP
 .B PTHREAD_CANCEL_ASYNCHRONOUS
 The thread can be canceled at any time.
 (Typically,
-it will be canceled immediately upon receiving a cancellation request,
+it will be canceled immediately upon receiving a cancelation request,
 but the system doesn't guarantee this.)
 .PP
 The set-and-get operation performed by each of these functions
@@ -150,10 +150,10 @@ For details of what happens when a thread is canceled, see
 .PP
 Briefly disabling cancelability is useful
 if a thread performs some critical action
-that must not be interrupted by a cancellation request.
+that must not be interrupted by a cancelation request.
 Beware of disabling cancelability for long periods,
 or around operations that may block for long periods,
-since that will render the thread unresponsive to cancellation requests.
+since that will render the thread unresponsive to cancelation requests.
 .SS Asynchronous cancelability
 Setting the cancelability type to
 .B PTHREAD_CANCEL_ASYNCHRONOUS
@@ -165,13 +165,13 @@ time, it cannot safely reserve resources (e.g., allocating memory with
 acquire mutexes, semaphores, or locks, and so on.
 Reserving resources is unsafe because the application has no way of
 knowing what the state of these resources is when the thread is canceled;
-that is, did cancellation occur before the resources were reserved,
+that is, did cancelation occur before the resources were reserved,
 while they were reserved, or after they were released?
 Furthermore, some internal data structures
 (e.g., the linked list of free blocks managed by the
 .BR malloc (3)
 family of functions) may be left in an inconsistent state
-if cancellation occurs in the middle of the function call.
+if cancelation occurs in the middle of the function call.
 Consequently, clean-up handlers cease to be useful.
 .PP
 Functions that can be safely asynchronously canceled are called
@@ -186,7 +186,7 @@ In general, other library functions
 can't be safely called from an asynchronously cancelable thread.
 .PP
 One of the few circumstances in which asynchronous cancelability is useful
-is for cancellation of a thread that is in a pure compute-bound loop.
+is for cancelation of a thread that is in a pure compute-bound loop.
 .SS Portability notes
 The Linux threading implementations permit the
 .I oldstate
diff --git a/man3/pthread_testcancel.3 b/man3/pthread_testcancel.3
index 8dc2d61..42f34a2 100644
--- a/man3/pthread_testcancel.3
+++ b/man3/pthread_testcancel.3
@@ -25,7 +25,7 @@
 .\"
 .TH PTHREAD_TESTCANCEL 3 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
-pthread_testcancel \- request delivery of any pending cancellation request
+pthread_testcancel \- request delivery of any pending cancelation request
 .SH SYNOPSIS
 .nf
 .B #include <pthread.h>
@@ -37,13 +37,13 @@ Compile and link with \fI\-pthread\fP.
 .SH DESCRIPTION
 Calling
 .BR pthread_testcancel ()
-creates a cancellation point within the calling thread,
+creates a cancelation point within the calling thread,
 so that a thread that is otherwise executing code that contains
-no cancellation points will respond to a cancellation request.
+no cancelation points will respond to a cancelation request.
 .PP
 If cancelability is disabled (using
 .BR pthread_setcancelstate (3)),
-or no cancellation request is pending,
+or no cancelation request is pending,
 then a call to
 .BR pthread_testcancel ()
 has no effect.
diff --git a/man7/aio.7 b/man7/aio.7
index 72287be..959c354 100644
--- a/man7/aio.7
+++ b/man7/aio.7
@@ -209,7 +209,7 @@ the program retrieves their status using
 The
 .B SIGQUIT
 signal (generated by typing control-\e) causes the program to request
-cancellation of each of the outstanding requests using
+cancelation of each of the outstanding requests using
 .BR aio_cancel (3).
 .PP
 Here is an example of what we might see when running this program.
@@ -371,7 +371,7 @@ main(int argc, char *argv[])
 
             /* On receipt of SIGQUIT, attempt to cancel each of the
                outstanding I/O requests, and display status returned
-               from the cancellation requests. */
+               from the cancelation requests. */
 
             printf("got SIGQUIT; canceling I/O requests: \en");
 
diff --git a/man7/attributes.7 b/man7/attributes.7
index 580ebfe..fdf91e1 100644
--- a/man7/attributes.7
+++ b/man7/attributes.7
@@ -85,7 +85,7 @@ safe for inlining.
 .\" .I AC-Safe
 .\" .I AC-Safe
 .\" or Async-Cancel-Safe functions are safe to call when
-.\" asynchronous cancellation is enabled.
+.\" asynchronous cancelation is enabled.
 .\" AC in AC-Safe stands for Asynchronous Cancellation.
 .\"
 .\" The POSIX standard defines only three functions to be AC-Safe, namely
@@ -99,10 +99,10 @@ safe for inlining.
 .\" This documentation is provided for use
 .\" by the GNU C Library developers.
 .\"
-.\" Just like signal handlers, cancellation cleanup routines must configure
+.\" Just like signal handlers, cancelation cleanup routines must configure
 .\" the floating point environment they require.
 .\" The routines cannot assume a floating point environment,
-.\" particularly when asynchronous cancellation is enabled.
+.\" particularly when asynchronous cancelation is enabled.
 .\" If the configuration of the floating point
 .\" environment cannot be performed atomically then it is also possible that
 .\" the environment encountered is internally inconsistent.
@@ -174,7 +174,7 @@ Other keywords that appear in safety notes are defined in subsequent sections.
 .\" AS-Unsafe features in this section indicate the functions are never safe
 .\" to call when asynchronous signals are enabled.
 .\" AC-Unsafe features
-.\" indicate they are never safe to call when asynchronous cancellation is
+.\" indicate they are never safe to call when asynchronous cancelation is
 .\" .\" enabled.
 .\" There are no MT-Unsafe marks in this section.
 .\" .TP
@@ -190,7 +190,7 @@ Other keywords that appear in safety notes are defined in subsequent sections.
 .\" .I lock
 .\" as an AC-Unsafe feature may, if canceled asynchronously,
 .\" fail to release a lock that would have been released if their execution
-.\" had not been interrupted by asynchronous thread cancellation.
+.\" had not been interrupted by asynchronous thread cancelation.
 .\" Once a lock is left taken,
 .\" attempts to take that lock will block indefinitely.
 .\" .TP
@@ -319,7 +319,7 @@ Other keywords that appear in safety notes are defined in subsequent sections.
 .\" AS-Unsafe, because calling them in signal handlers may interfere with
 .\" timers set in the interrupted code, and AC-Unsafe,
 .\" because there is no safe way to guarantee an earlier timer
-.\" will be reset in case of asynchronous cancellation.
+.\" will be reset in case of asynchronous cancelation.
 .\"
 .\"
 .SS Conditionally safe features
@@ -366,7 +366,7 @@ the function can then be safely called after other threads are started.
 .\" .I init
 .\" as an AS-Safety or AC-Unsafe feature should ensure
 .\" the initialization is performed
-.\" before configuring signal handlers or enabling cancellation,
+.\" before configuring signal handlers or enabling cancelation,
 .\" so that the AS-Safety and AC-Safety issues related with
 .\" .I libc_once
 .\" do not arise.
@@ -565,16 +565,16 @@ blocking that signal before the call and resetting its
 handler afterwards is recommended.
 .\"
 .\" There is no safe way to guarantee the original signal handler is
-.\" restored in case of asynchronous cancellation,
+.\" restored in case of asynchronous cancelation,
 .\" therefore so-marked functions are also AC-Unsafe.
 .\"
-.\" .\" fixme: at least deferred cancellation should get it right, and would
+.\" .\" fixme: at least deferred cancelation should get it right, and would
 .\" .\" obviate the restoring bit below, and the qualifier above.
 .\"
 .\" Besides the measures recommended to work around the
 .\" MT-Safety and AS-Safety problem,
-.\" in order to avert the cancellation problem,
-.\" disabling asynchronous cancellation
+.\" in order to avert the cancelation problem,
+.\" disabling asynchronous cancelation
 .\" .I and
 .\" installing a cleanup handler to restore the signal to the desired state
 .\" and to release the mutex are recommended.
@@ -616,13 +616,13 @@ even if referenced by different file descriptors.
 .\" restore terminal settings to their original state,
 .\" after temporarily changing them, but they may fail to do so if canceled.
 .\"
-.\" .\" fixme: at least deferred cancellation should get it right, and would
+.\" .\" fixme: at least deferred cancelation should get it right, and would
 .\" .\" obviate the restoring bit below, and the qualifier above.
 .\"
 .\" Besides the measures recommended to work around the
 .\" MT-Safety and AS-Safety problem,
-.\" in order to avert the cancellation problem,
-.\" disabling asynchronous cancellation
+.\" in order to avert the cancelation problem,
+.\" disabling asynchronous cancelation
 .\" .I and
 .\" installing a cleanup handler to
 .\" restore the terminal settings to the original state and to release the
@@ -733,7 +733,7 @@ which makes the former safe.
 .\" Functions annotated with
 .\" .I fd
 .\" as an AC-Safety issue may leak file
-.\" descriptors if asynchronous thread cancellation interrupts their
+.\" descriptors if asynchronous thread cancelation interrupts their
 .\" execution.
 .\"
 .\" Functions that allocate or deallocate file descriptors will generally be
@@ -755,7 +755,7 @@ which makes the former safe.
 .\" reallocated by another thread or signal handler.
 .\"
 .\" Such leaks could be internally avoided, with some performance penalty,
-.\" by temporarily disabling asynchronous thread cancellation.
+.\" by temporarily disabling asynchronous thread cancelation.
 .\" However,
 .\" since callers of allocation or deallocation functions would have to do
 .\" this themselves, to avoid the same sort of leak in their own layer,
@@ -768,26 +768,26 @@ which makes the former safe.
 .\" However, cumulative effects of such leaks may pose a
 .\" problem for some programs.
 .\" If this is the case,
-.\" suspending asynchronous cancellation for the duration of calls
+.\" suspending asynchronous cancelation for the duration of calls
 .\" to such functions is recommended.
 .\" .TP
 .\" .I mem
 .\" Functions annotated with
 .\" .I mem
 .\" as an AC-Safety issue may leak
-.\" memory if asynchronous thread cancellation interrupts their execution.
+.\" memory if asynchronous thread cancelation interrupts their execution.
 .\"
 .\" The problem is similar to that of file descriptors: there is no atomic
 .\" interface to allocate memory and store its address in the argument to a
 .\" cleanup handler,
 .\" or to release it and remove its address from that argument,
-.\" without at least temporarily disabling asynchronous cancellation,
+.\" without at least temporarily disabling asynchronous cancelation,
 .\" which these functions do not do.
 .\"
 .\" This remark does not by itself cause a function to be regarded as
 .\" generally AC-Unsafe.
 .\" However, cumulative effects of such leaks may be
-.\" severe enough for some programs that disabling asynchronous cancellation
+.\" severe enough for some programs that disabling asynchronous cancelation
 .\" for the duration of calls to such functions may be required.
 .TP
 .I cwd
@@ -796,7 +796,7 @@ Functions marked with
 as an MT-Safety issue may temporarily
 change the current working directory during their execution,
 which may cause relative pathnames to be resolved in unexpected ways in
-other threads or within asynchronous signal or cancellation handlers.
+other threads or within asynchronous signal or cancelation handlers.
 .IP
 This is not enough of a reason to mark so-marked functions as MT-Unsafe,
 .\" or AS-Unsafe,
diff --git a/man7/nptl.7 b/man7/nptl.7
index 0133c0a..ea17940 100644
--- a/man7/nptl.7
+++ b/man7/nptl.7
@@ -34,7 +34,7 @@ Linux systems.
 .SS NPTL and signals
 NPTL makes internal use of the first two real-time signals
 (signal numbers 32 and 33).
-One of these signals is used to support thread cancellation and POSIX timers
+One of these signals is used to support thread cancelation and POSIX timers
 (see
 .BR timer_create (2));
 the other is used as part of a mechanism that ensures all threads in
diff --git a/man7/pthreads.7 b/man7/pthreads.7
index 6f4f6e7..380aeb2 100644
--- a/man7/pthreads.7
+++ b/man7/pthreads.7
@@ -257,17 +257,17 @@ pthread_setcanceltype()
 .in
 .SS Cancellation points
 POSIX.1 specifies that certain functions must,
-and certain other functions may, be cancellation points.
+and certain other functions may, be cancelation points.
 If a thread is cancelable, its cancelability type is deferred,
-and a cancellation request is pending for the thread,
+and a cancelation request is pending for the thread,
 then the thread is canceled when it calls a function
-that is a cancellation point.
+that is a cancelation point.
 .PP
-The following functions are required to be cancellation points by
+The following functions are required to be cancelation points by
 POSIX.1-2001 and/or POSIX.1-2008:
 .PP
 .\" FIXME
-.\" Document the list of all functions that are cancellation points in glibc
+.\" Document the list of all functions that are cancelation points in glibc
 .in +4n
 .EX
 accept()
@@ -331,7 +331,7 @@ writev()
 .EE
 .in
 .PP
-The following functions may be cancellation points according to
+The following functions may be cancelation points according to
 POSIX.1-2001 and/or POSIX.1-2008:
 .PP
 .in +4n
@@ -567,23 +567,23 @@ wscanf()
 .in
 .PP
 An implementation may also mark other functions
-not specified in the standard as cancellation points.
+not specified in the standard as cancelation points.
 In particular, an implementation is likely to mark
-any nonstandard function that may block as a cancellation point.
+any nonstandard function that may block as a cancelation point.
 (This includes most functions that can touch files.)
 .PP
 It should be noted that even if an application is not using
-asynchronous cancellation, that calling a function from the above list
+asynchronous cancelation, that calling a function from the above list
 from an asynchronous signal handler may cause the equivalent of
-asynchronous cancellation.
+asynchronous cancelation.
 The underlying user code may not expect
-asynchronous cancellation and the state of the user data may become
+asynchronous cancelation and the state of the user data may become
 inconsistent.
 Therefore signals should be used with caution when
-entering a region of deferred cancellation.
-.\" So, scanning "cancellation point" comments in the glibc 2.8 header
+entering a region of deferred cancelation.
+.\" So, scanning "cancelation point" comments in the glibc 2.8 header
 .\" files, it looks as though at least the following nonstandard
-.\" functions are cancellation points:
+.\" functions are cancelation points:
 .\" endnetgrent
 .\" endspent
 .\" epoll_pwait
diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
index 9e8cd3f..b0108c8 100644
--- a/man7/signal-safety.7
+++ b/man7/signal-safety.7
@@ -322,9 +322,9 @@ is likely to remove
 from the list of async-signal-safe functions.
 .\"
 .IP * 3
-Asynchronous signal handlers that call functions which are cancellation
-points and nest over regions of deferred cancellation may trigger
-cancellation whose behavior is as if asynchronous cancellation had
+Asynchronous signal handlers that call functions which are cancelation
+points and nest over regions of deferred cancelation may trigger
+cancelation whose behavior is as if asynchronous cancelation had
 occurred and may cause application state to become inconsistent.
 .\"
 .SS errno
-- 
2.34.0

