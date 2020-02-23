Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 20585169A52
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:41:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727151AbgBWVlq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:41:46 -0500
Received: from outpost.hi.is ([130.208.165.166]:35972 "EHLO outpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727158AbgBWVlq (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 23 Feb 2020 16:41:46 -0500
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by outpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLRRSW000816
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 21:27:27 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 outpost.hi.is 01NLRRSW000816
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLRNO5022855
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 23 Feb 2020 21:27:24 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 01NLRNO5022855
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 01NLRNqh001904;
        Sun, 23 Feb 2020 21:27:23 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 01NLRNXO001903;
        Sun, 23 Feb 2020 21:27:23 GMT
Date:   Sun, 23 Feb 2020 21:27:23 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man2/*: srcfix: Correct the misuse of two-fonts macros
Message-ID: <20200223212723.GA1872@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Changes are based on the latest (23th Februar 2020) revision of my
local git repository.

  Correct the misuse of a two-font macro, which function is to:

1) use the first font for each odd numbered argument and the second
font for all others.

2) join the arguments without an intervening space.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man2/clone.2               | 34 +++++++++++++++++-----------------
 man2/ioctl_fideduperange.2 |  2 +-
 man2/ioctl_iflags.2        |  4 ++--
 man2/memfd_create.2        |  2 +-
 man2/mmap.2                |  2 +-
 man2/perf_event_open.2     |  2 +-
 man2/pidfd_open.2          | 18 +++++++++---------
 man2/pidfd_send_signal.2   |  8 ++++----
 man2/pivot_root.2          |  8 ++++----
 man2/prctl.2               |  4 ++--
 man2/ptrace.2              | 14 +++++++-------
 11 files changed, 49 insertions(+), 49 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index ee1677ef5..e915ddcb9 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -209,7 +209,7 @@ should be initialized to the size of this structure.
 (The existence of the
 .I size
 argument permits future extensions to the
-.IR clone_args
+.I clone_args
 structure.)
 .PP
 The stack for the child process is specified via
@@ -219,7 +219,7 @@ and
 .IR cl_args.stack_size ,
 which specifies the size of the stack in bytes.
 In the case where the
-.BR CLONE_VM
+.B CLONE_VM
 flag (see below) is specified, a stack must be explicitly allocated
 and specified.
 Otherwise, these two fields can be specified as NULL and 0,
@@ -364,12 +364,12 @@ will be selected the same way as any other PID is selected.
 The
 .I set_tid
 feature requires
-.BR CAP_SYS_ADMIN
+.B CAP_SYS_ADMIN
 in all owning user namespaces of the target PID namespaces.
 .PP
 Callers may only choose a PID greater than 1 in a given PID namespace
 if an
-.BR init
+.B init
 process (i.e., a process with PID 1) already exists in that namespace.
 Otherwise the PID
 entry for this PID namespace must be 1.
@@ -456,7 +456,7 @@ there was a
 flag,
 which caused the parent not to receive a signal when the child terminated.
 Ultimately, the effect of this flag was subsumed under the
-.BR CLONE_THREAD
+.B CLONE_THREAD
 flag and by the time Linux 2.6.0 was released, this flag had no effect.
 Starting in Linux 2.6.2, the need to give this flag together with
 .B CLONE_THREAD
@@ -465,7 +465,7 @@ disappeared.
 This flag is still defined, but it is usually ignored when calling
 .BR clone ().
 However, see the description of
-.BR CLONE_PIDFD
+.B CLONE_PIDFD
 for some exceptions.
 .TP
 .BR CLONE_FILES " (since Linux 2.0)"
@@ -785,7 +785,7 @@ From Linux 2.3.21 onward, this flag could be
 specified only by the system boot process (PID 0).
 The flag disappeared completely from the kernel sources in Linux 2.5.16.
 Subsequently, the kernel silently ignored this bit if it was specified in the
-.IR flags
+.I flags
 mask.
 Much later, the same bit was recycled for use as the
 .B CLONE_PIDFD
@@ -828,7 +828,7 @@ will always be a thread group leader.
 If the obsolete
 .B CLONE_DETACHED
 flag is specified alongside
-.BR CLONE_PIDFD
+.B CLONE_PIDFD
 when calling
 .BR clone (),
 an error is returned.
@@ -837,7 +837,7 @@ An error also results if
 is specified when calling
 .BR clone3 ().
 This error behavior ensures that the bit corresponding to
-.BR CLONE_DETACHED
+.B CLONE_DETACHED
 can be reused for further PID file descriptor features in the future.
 .TP
 .BR CLONE_PTRACE " (since Linux 2.2)"
@@ -1364,7 +1364,7 @@ Both
 and
 .B CLONE_NEWNS
 were specified in the
-.IR flags
+.I flags
 mask.
 .TP
 .BR EINVAL " (since Linux 3.9)"
@@ -1373,7 +1373,7 @@ Both
 and
 .B CLONE_FS
 were specified in the
-.IR flags
+.I flags
 mask.
 .TP
 .B EINVAL
@@ -1382,7 +1382,7 @@ Both
 and
 .B CLONE_SYSVSEM
 were specified in the
-.IR flags
+.I flags
 mask.
 .TP
 .B EINVAL
@@ -1395,12 +1395,12 @@ and one (or both) of
 or
 .B CLONE_PARENT
 were specified in the
-.IR flags
+.I flags
 mask.
 .TP
 .BR EINVAL " (since Linux 2.6.32)"
 .\" commit 123be07b0b399670a7cc3d82fef0cb4f93ef885c
-.BR CLONE_PARENT
+.B CLONE_PARENT
 was specified, and the caller is an init process.
 .TP
 .B EINVAL
@@ -1527,7 +1527,7 @@ would have been exceeded; see
 .BR ENOSPC " (since Linux 4.9; beforehand " EUSERS )
 .B CLONE_NEWUSER
 was specified in the
-.IR flags
+.I flags
 mask, and the call would cause the limit on the number of
 nested user namespaces to be exceeded.
 See
@@ -1595,7 +1595,7 @@ System call was interrupted by a signal and will be restarted.
 .BR EUSERS " (Linux 3.11 to Linux 4.8)"
 .B CLONE_NEWUSER
 was specified in the
-.IR flags
+.I flags
 mask,
 and the limit on the number of nested user namespaces would be exceeded.
 See the discussion of the
@@ -1716,7 +1716,7 @@ at the end of the stack using
 .BR mprotect (2).
 .IP *
 We can specify the
-.BR MAP_STACK
+.B MAP_STACK
 flag to request a mapping that is suitable for a stack.
 For the moment, this flag is a no-op on Linux,
 but it exists and has effect on some other systems,
diff --git a/man2/ioctl_fideduperange.2 b/man2/ioctl_fideduperange.2
index 0ec1575e9..921dd1976 100644
--- a/man2/ioctl_fideduperange.2
+++ b/man2/ioctl_fideduperange.2
@@ -176,7 +176,7 @@ regions in directories.
 .B ENOMEM
 The kernel was unable to allocate sufficient memory to perform the
 operation or
-.IR dest_count
+.I dest_count
 is so large that the input argument description spans more than a single
 page of memory.
 .TP
diff --git a/man2/ioctl_iflags.2 b/man2/ioctl_iflags.2
index acc2cc907..8b91601ae 100644
--- a/man2/ioctl_iflags.2
+++ b/man2/ioctl_iflags.2
@@ -202,9 +202,9 @@ or the caller must have the
 capability.
 .PP
 The type of the argument given to the
-.BR FS_IOC_GETFLAGS
+.B FS_IOC_GETFLAGS
 and
-.BR FS_IOC_SETFLAGS
+.B FS_IOC_SETFLAGS
 operations is
 .IR "int\ *" ,
 notwithstanding the implication in the kernel source file
diff --git a/man2/memfd_create.2 b/man2/memfd_create.2
index 0a867a5ad..d3e70f823 100644
--- a/man2/memfd_create.2
+++ b/man2/memfd_create.2
@@ -282,7 +282,7 @@ in order to restrict further modifications on the file.
 then it will be necessary to first unmap the shared writable mapping
 created in the previous step.
 Otherwise, behavior similar to
-.BR F_SEAL_WRITE
+.B F_SEAL_WRITE
 can be achieved by using
 .BR F_SEAL_FUTURE_WRITE ,
 which will prevent future writes via
diff --git a/man2/mmap.2 b/man2/mmap.2
index e0173c768..07de6e849 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -417,7 +417,7 @@ for stack allocations.
 .\" "pthread_create() slow for many threads; also time to revisit 64b
 .\"  context switch optimization?"
 A further reason to employ this flag is portability:
-.BR MAP_STACK
+.B MAP_STACK
 exists (and has an effect) on some other systems (e.g., some of the BSDs).
 .TP
 .BR MAP_SYNC " (since Linux 4.15)"
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 84eeb353b..72c8690ae 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -3457,5 +3457,5 @@ main(int argc, char **argv)
 .BR prctl (2),
 .BR read (2)
 .PP
-.IR Documentation/admin-guide/perf-security.rst
+.I Documentation/admin-guide/perf-security.rst
 in the kernel source tree
diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
index 3c847f7e1..f7e33ea31 100644
--- a/man2/pidfd_open.2
+++ b/man2/pidfd_open.2
@@ -64,7 +64,7 @@ is not valid.
 .B EMFILE
 The per-process limit on the number of open file descriptors has been reached
 (see the description of
-.BR RLIMIT_NOFILE
+.B RLIMIT_NOFILE
 in
 .BR getrlimit (2)).
 .TP
@@ -113,18 +113,18 @@ Note, however, that this is guaranteed only if the following
 conditions hold true:
 .IP * 3
 the disposition of
-.BR SIGCHLD
+.B SIGCHLD
 has not been explicitly set to
-.BR SIG_IGN
+.B SIG_IGN
 (see
 .BR sigaction (2));
 .IP *
 the
-.BR SA_NOCLDWAIT
+.B SA_NOCLDWAIT
 flag was not specified while establishing a handler for
-.BR SIGCHLD
+.B SIGCHLD
 or while setting the disposition of that signal to
-.BR SIG_DFL
+.B SIG_DFL
 (see
 .BR sigaction (2));
 and
@@ -139,7 +139,7 @@ then the child process (along with a PID file descriptor that refers to it)
 should instead be created using
 .BR clone (2)
 with the
-.BR CLONE_PIDFD
+.B CLONE_PIDFD
 flag.
 .\"
 .SS Use cases for PID file descriptors
@@ -149,7 +149,7 @@ A PID file descriptor returned by
 (of by
 .BR clone (2)
 with the
-.BR CLONE_PID
+.B CLONE_PID
 flag) can be used for the following purposes:
 .IP * 3
 The
@@ -194,7 +194,7 @@ process whose PID is specified as its command-line argument.
 It then uses
 .BR poll (2)
 to monitor the file descriptor for process exit, as indicated by an
-.BR EPOLLIN
+.B EPOLLIN
 event.
 .\"
 .SS Program source
diff --git a/man2/pidfd_send_signal.2 b/man2/pidfd_send_signal.2
index fbf124412..30a273372 100644
--- a/man2/pidfd_send_signal.2
+++ b/man2/pidfd_send_signal.2
@@ -69,7 +69,7 @@ is set to 0;
 .IP *
 .I si_code
 is set to
-.BR SI_USER;
+.BR SI_USER ;
 .IP *
 .I si_pid
 is set to the caller's PID; and
@@ -119,7 +119,7 @@ to the target process.
 .B EPERM
 .I pidfd
 doesn't refer to the calling process, and
-.IR info.si_code
+.I info.si_code
 is invalid (see
 .BR rt_sigqueueinfo (2)).
 .TP
@@ -144,7 +144,7 @@ a file descriptor that refers to  process.
 Such a file descriptor can be obtained in any of the following ways:
 .IP * 3
 by opening a
-.IR /proc/[pid]
+.IR /proc/ [ pid ]
 directory;
 .IP *
 using
@@ -156,7 +156,7 @@ via the PID file descriptor that is returned by a call to
 or
 .BR clone3 (2)
 that specifies the
-.BR CLONE_PIDFD
+.B CLONE_PIDFD
 flag.
 .PP
 The
diff --git a/man2/pivot_root.2 b/man2/pivot_root.2
index 199536161..7b51278de 100644
--- a/man2/pivot_root.2
+++ b/man2/pivot_root.2
@@ -56,9 +56,9 @@ and thus it should be followed by a
 .PP
 The following restrictions apply:
 .IP \- 3
-.IR new_root
+.I new_root
 and
-.IR put_old
+.I put_old
 must be directories.
 .IP \-
 .I new_root
@@ -79,7 +79,7 @@ A path that is not already a mount point can be converted into one by
 bind mounting the path onto itself.
 .IP \-
 The propagation type of the parent mount of
-.IR new_root
+.I new_root
 and the parent mount of the current root directory must not be
 .BR MS_SHARED ;
 similarly, if
@@ -241,7 +241,7 @@ working directory refer to the new root mount point
 During the subsequent
 .BR umount ()
 call, resolution of
-.IR """."""
+.I """."""
 starts with
 .I new_root
 and then moves up the list of mounts stacked at
diff --git a/man2/prctl.2 b/man2/prctl.2
index ef7a91c1a..6a773a970 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1667,9 +1667,9 @@ does not specify a valid capability.
 .B EINVAL
 .I option
 was
-.BR PR_GET_SPECULATION_CTRL
+.B PR_GET_SPECULATION_CTRL
 or
-.BR PR_SET_SPECULATION_CTRL
+.B PR_SET_SPECULATION_CTRL
 and unused arguments to
 .BR prctl ()
 are not 0.
diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 5811bbe74..2a2d97148 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1071,37 +1071,37 @@ and
 fields are defined for all kinds of ptrace system call stops.
 The rest of the structure is a union; one should read only those fields
 that are meaningful for the kind of system call stop specified by the
-.IR op
+.I op
 field.
 .IP
 The
 .I op
 field has one of the following values (defined in
-.IR <linux/ptrace.h>)
+.IR <linux/ptrace.h> )
 indicating what type of stop occurred and
 which part of the union is filled:
 .RS
 .TP
-.BR PTRACE_SYSCALL_INFO_ENTRY
+.B PTRACE_SYSCALL_INFO_ENTRY
 The
 .I entry
 component of the union contains information relating to a
 system call entry stop.
 .TP
-.BR PTRACE_SYSCALL_INFO_EXIT
+.B PTRACE_SYSCALL_INFO_EXIT
 The
 .I exit
 component of the union contains information relating to a
 system call exit stop.
 .TP
-.BR PTRACE_SYSCALL_INFO_SECCOMP
+.B PTRACE_SYSCALL_INFO_SECCOMP
 The
 .I seccomp
 component of the union contains information relating to a
 .B PTRACE_EVENT_SECCOMP
 stop.
 .TP
-.BR PTRACE_SYSCALL_INFO_NONE
+.B PTRACE_SYSCALL_INFO_NONE
 No component of the union contains relevant information.
 .RE
 .\"
@@ -1566,7 +1566,7 @@ returning with
 and
 .I WSTOPSIG(status)
 returns
-.BR SIGTRAP
+.B SIGTRAP
 (or for
 .BR PTRACE_EVENT_STOP ,
 returns the stopping signal if tracee is in a group-stop).
-- 
2.25.0
