Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6121F7271
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 05:23:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726327AbgFLDX1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Jun 2020 23:23:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726321AbgFLDX1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Jun 2020 23:23:27 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AACBC03E96F
        for <linux-man@vger.kernel.org>; Thu, 11 Jun 2020 20:23:26 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05C3NOjB031314
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Fri, 12 Jun 2020 03:23:24 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05C3NOjB031314
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05C3NNFt017459;
        Fri, 12 Jun 2020 03:23:24 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05C3NN52017458;
        Fri, 12 Jun 2020 03:23:23 GMT
Date:   Fri, 12 Jun 2020 03:23:23 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man2/*: srcfix: trim trailing space
Message-ID: <20200612032323.GA17390@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Remove superfluous space at the end of a processed input line.

  There is no change in the output from "nroff" and "groff".

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man2/clone.2           | 6 +++---
 man2/execve.2          | 2 +-
 man2/ioctl_ns.2        | 2 +-
 man2/keyctl.2          | 2 +-
 man2/perf_event_open.2 | 2 +-
 man2/poll.2            | 2 +-
 man2/prctl.2           | 2 +-
 man2/ptrace.2          | 2 +-
 man2/recvmmsg.2        | 2 +-
 man2/shmop.2           | 2 +-
 man2/sigaction.2       | 4 ++--
 man2/sigreturn.2       | 2 +-
 man2/sigwaitinfo.2     | 2 +-
 man2/syslog.2          | 2 +-
 14 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 64eb32e32..32e552f53 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -50,7 +50,7 @@ clone, __clone2, clone3 \- create a child process
 .B #include <sched.h>
 .PP
 .BI "int clone(int (*" "fn" ")(void *), void *" stack \
-", int " flags ", void *" "arg" ", ... "
+", int " flags ", void *" "arg" ", ..."
 .BI "          /* pid_t *" parent_tid ", void *" tls \
 ", pid_t *" child_tid " */ );"
 .PP
@@ -1682,9 +1682,9 @@ On ia64, a different interface is used:
 .PP
 .in +4
 .EX
-.BI "int __clone2(int (*" "fn" ")(void *), "
+.BI "int __clone2(int (*" "fn" ")(void *),"
 .BI "             void *" stack_base ", size_t " stack_size ,
-.BI "             int " flags ", void *" "arg" ", ... "
+.BI "             int " flags ", void *" "arg" ", ..."
 .BI "          /* pid_t *" parent_tid ", struct user_desc *" tls ,
 .BI "             pid_t *" child_tid " */ );"
 .EE
diff --git a/man2/execve.2 b/man2/execve.2
index 4fc012e8a..e8efb75da 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -40,7 +40,7 @@ execve \- execute program
 .SH SYNOPSIS
 .B #include <unistd.h>
 .PP
-.BI "int execve(const char *" pathname ", char *const " argv "[], "
+.BI "int execve(const char *" pathname ", char *const " argv [],
 .br
 .BI "           char *const " envp []);
 .SH DESCRIPTION
diff --git a/man2/ioctl_ns.2 b/man2/ioctl_ns.2
index d77969ddc..6d9b00884 100644
--- a/man2/ioctl_ns.2
+++ b/man2/ioctl_ns.2
@@ -215,7 +215,7 @@ $ \fBunshare \-Uu sleep 1000 &\fP
 [1] 23235
 $ \fB./ns_show /proc/23235/ns/uts u\fP
 Device/Inode of owning user namespace is: [0,3] / 4026532448
-$ \fBreadlink /proc/23235/ns/user \fP
+$ \fBreadlink /proc/23235/ns/user\fP
 user:[4026532448]
 .EE
 .in
diff --git a/man2/keyctl.2 b/man2/keyctl.2
index 1c12ed6ec..af093c17a 100644
--- a/man2/keyctl.2
+++ b/man2/keyctl.2
@@ -2009,7 +2009,7 @@ we can see the command-line arguments supplied to our example program:
 .PP
 .in +4n
 .EX
-$ \fBcat /tmp/key_instantiate.log \fP
+$ \fBcat /tmp/key_instantiate.log\fP
 Time: Mon Nov  7 13:06:47 2016
 
 Command line arguments:
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 7efbea098..3e3626207 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -2275,7 +2275,7 @@ is enabled, then the user CPU registers are recorded.
 The
 .I abi
 field is one of
-.BR PERF_SAMPLE_REGS_ABI_NONE ", " PERF_SAMPLE_REGS_ABI_32 " or "
+.BR PERF_SAMPLE_REGS_ABI_NONE ", " PERF_SAMPLE_REGS_ABI_32 " or"
 .BR PERF_SAMPLE_REGS_ABI_64 .
 .IP
 The
diff --git a/man2/poll.2 b/man2/poll.2
index b907fd8f7..afa4db450 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -40,7 +40,7 @@ poll, ppoll \- wait for some event on a file descriptor
 .B #include <signal.h>
 .B #include <poll.h>
 .PP
-.BI "int ppoll(struct pollfd *" fds ", nfds_t " nfds ", "
+.BI "int ppoll(struct pollfd *" fds ", nfds_t " nfds ,
 .BI "        const struct timespec *" tmo_p ", const sigset_t *" sigmask );
 .fi
 .SH DESCRIPTION
diff --git a/man2/prctl.2 b/man2/prctl.2
index 184e1a98c..42300a9f5 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -784,7 +784,7 @@ option enabled.
 .RE
 .\" prctl PR_MPX_ENABLE_MANAGEMENT
 .TP
-.BR PR_MPX_ENABLE_MANAGEMENT ", " PR_MPX_DISABLE_MANAGEMENT " (since Linux 3.19, removed in Linux 5.4; only on x86) "
+.BR PR_MPX_ENABLE_MANAGEMENT ", " PR_MPX_DISABLE_MANAGEMENT " (since Linux 3.19, removed in Linux 5.4; only on x86)"
 .\" commit fe3d197f84319d3bce379a9c0dc17b1f48ad358c
 .\" See also http://lwn.net/Articles/582712/
 .\" See also https://gcc.gnu.org/wiki/Intel%20MPX%20support%20in%20the%20GCC%20compiler
diff --git a/man2/ptrace.2 b/man2/ptrace.2
index b62624153..bf95748d3 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -109,7 +109,7 @@ ptrace \- process trace
 .nf
 .B #include <sys/ptrace.h>
 .PP
-.BI "long ptrace(enum __ptrace_request " request ", pid_t " pid ", "
+.BI "long ptrace(enum __ptrace_request " request ", pid_t " pid ,
 .BI "            void *" addr ", void *" data );
 .fi
 .SH DESCRIPTION
diff --git a/man2/recvmmsg.2 b/man2/recvmmsg.2
index 1cee8a1b6..a00c88ac1 100644
--- a/man2/recvmmsg.2
+++ b/man2/recvmmsg.2
@@ -203,7 +203,7 @@ containing a random number:
 .PP
 .in +4n
 .EX
-.RB "$" " while true; do echo $RANDOM > /dev/udp/127.0.0.1/1234; "
+.RB "$" " while true; do echo $RANDOM > /dev/udp/127.0.0.1/1234;"
 .B      "      sleep 0.25; done"
 .EE
 .in
diff --git a/man2/shmop.2 b/man2/shmop.2
index 42da1a998..d5b6e9da1 100644
--- a/man2/shmop.2
+++ b/man2/shmop.2
@@ -304,7 +304,7 @@ and then waits for the semaphore to change value.
 .PP
 .in +4n
 .EX
-$ \fB./svshm_string_read \fP
+$ \fB./svshm_string_read\fP
 shmid = 1114194; semid = 15
 .EE
 .in
diff --git a/man2/sigaction.2 b/man2/sigaction.2
index a463b5411..bf846fccb 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -168,7 +168,7 @@ is
 .BR SIGCHLD ,
 do not receive notification when child processes stop (i.e., when they
 receive one of
-.BR SIGSTOP ", " SIGTSTP ", " SIGTTIN ", "
+.BR SIGSTOP ", " SIGTSTP ", " SIGTTIN ,
 or
 .BR SIGTTOU )
 or resume (i.e., they receive
@@ -849,7 +849,7 @@ points to memory which is not a valid part of the process address space.
 An invalid signal was specified.
 This will also be generated if an attempt
 is made to change the action for
-.BR SIGKILL " or " SIGSTOP ", "
+.BR SIGKILL " or " SIGSTOP ,
 which cannot be caught or ignored.
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SVr4.
diff --git a/man2/sigreturn.2 b/man2/sigreturn.2
index 667aeaac4..dd3975bea 100644
--- a/man2/sigreturn.2
+++ b/man2/sigreturn.2
@@ -54,7 +54,7 @@ This
 .BR sigreturn ()
 call undoes everything that was
 done\(emchanging the process's signal mask, switching signal stacks (see
-.BR sigaltstack "(2))\(emin "
+.BR sigaltstack "(2))\(emin"
 order to invoke the signal handler.
 Using the information that was earlier saved on the user-space stack
 .BR sigreturn ()
diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
index 45c16ee5d..e8b6f9e5a 100644
--- a/man2/sigwaitinfo.2
+++ b/man2/sigwaitinfo.2
@@ -32,7 +32,7 @@ for queued signals
 .PP
 .BI "int sigwaitinfo(const sigset_t *" set ", siginfo_t *" info ");"
 .PP
-.BI "int sigtimedwait(const sigset_t *" set ", siginfo_t *" info ", "
+.BI "int sigtimedwait(const sigset_t *" set ", siginfo_t *" info ,
 .BI "                 const struct timespec *" timeout ");"
 .fi
 .PP
diff --git a/man2/syslog.2 b/man2/syslog.2
index 7d8b30c6e..388bce582 100644
--- a/man2/syslog.2
+++ b/man2/syslog.2
@@ -254,7 +254,7 @@ be printed to the console.
 The default value for this field is
 .B DEFAULT_CONSOLE_LOGLEVEL
 (7), but it is set to
-4 if the kernel command line contains the word "quiet", \" since Linux 2.4
+4 if the kernel command line contains the word "quiet",\" since Linux 2.4
 10 if the kernel command line contains the word "debug",
 and to 15 in case
 of a kernel fault (the 10 and 15 are just silly, and equivalent to 8).
-- 
2.26.2
