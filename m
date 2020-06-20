Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2873E202631
	for <lists+linux-man@lfdr.de>; Sat, 20 Jun 2020 21:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728565AbgFTT3p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Jun 2020 15:29:45 -0400
Received: from inpost.hi.is ([130.208.165.62]:38004 "EHLO inpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728537AbgFTT3o (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 20 Jun 2020 15:29:44 -0400
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05KJTVcb017740
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sat, 20 Jun 2020 19:29:31 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05KJTVcb017740
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05KJTVHS029639;
        Sat, 20 Jun 2020 19:29:31 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05KJTV0H029638;
        Sat, 20 Jun 2020 19:29:31 GMT
Date:   Sat, 20 Jun 2020 19:29:31 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man2/*: srcfix: fix warnings from "mandoc -Tlint"
Message-ID: <20200620192931.GA29605@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Remove superfluous paragraph macros.

  Remove ".br" if it is before a line that starts with a space
character, as such lines automatically cause a break.

###

  The output is unchanged, except two empty lines are added at the
bottom (before the footer line) in the output of "nroff" for the files
"alloc_hugepages.2" and "userfaultfd.2".

###

  Examples of warnings from "mandoc -Tlint":

mandoc: access.2:283:2: WARNING: skipping paragraph macro: PP after SH

mandoc: adjtimex.2:185:2: WARNING: skipping paragraph macro: PP empty

mandoc: futex.2:728:2: WARNING: skipping paragraph macro: IP empty

mandoc: getsid.2:48:2: WARNING: skipping paragraph macro: br before text line with leading blank

mandoc: init_module.2:290:2: WARNING: skipping paragraph macro: PP after SS

mandoc: ioctl_fideduperange.2:27:2: WARNING: skipping paragraph macro: br after SH


Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>

---
 man2/access.2               | 1 -
 man2/adjtimex.2             | 1 -
 man2/alloc_hugepages.2      | 2 +-
 man2/chown.2                | 1 -
 man2/clone.2                | 8 --------
 man2/eventfd.2              | 1 -
 man2/fork.2                 | 1 -
 man2/futex.2                | 4 ----
 man2/getgroups.2            | 1 -
 man2/getrusage.2            | 2 --
 man2/getsid.2               | 1 -
 man2/init_module.2          | 1 -
 man2/io_cancel.2            | 3 ---
 man2/io_destroy.2           | 3 ---
 man2/io_getevents.2         | 4 ----
 man2/io_setup.2             | 3 ---
 man2/io_submit.2            | 3 ---
 man2/ioctl_ficlonerange.2   | 2 --
 man2/ioctl_fideduperange.2  | 3 ---
 man2/ioctl_fslabel.2        | 2 --
 man2/ioctl_getfsmap.2       | 5 -----
 man2/memfd_create.2         | 1 -
 man2/mlock.2                | 1 -
 man2/mmap.2                 | 2 --
 man2/mprotect.2             | 1 -
 man2/mremap.2               | 1 -
 man2/open.2                 | 1 -
 man2/pciconfig_read.2       | 1 -
 man2/perf_event_open.2      | 3 ---
 man2/pidfd_open.2           | 1 -
 man2/pivot_root.2           | 2 --
 man2/prctl.2                | 1 -
 man2/ptrace.2               | 2 --
 man2/quotactl.2             | 2 --
 man2/readv.2                | 1 -
 man2/recvmmsg.2             | 1 -
 man2/s390_guarded_storage.2 | 1 -
 man2/select.2               | 4 ----
 man2/select_tut.2           | 2 --
 man2/semget.2               | 1 -
 man2/set_mempolicy.2        | 1 -
 man2/setns.2                | 1 -
 man2/setpgid.2              | 1 -
 man2/shmop.2                | 3 ---
 man2/sigpending.2           | 1 -
 man2/sigprocmask.2          | 1 -
 man2/sigsuspend.2           | 1 -
 man2/stat.2                 | 5 -----
 man2/statx.2                | 5 -----
 man2/syscalls.2             | 1 -
 man2/sysctl.2               | 1 -
 man2/truncate.2             | 1 -
 man2/uname.2                | 1 -
 man2/userfaultfd.2          | 4 +---
 man2/vfork.2                | 2 --
 55 files changed, 2 insertions(+), 108 deletions(-)

diff --git a/man2/access.2 b/man2/access.2
index 8b97d7fce..592e2c4dc 100644
--- a/man2/access.2
+++ b/man2/access.2
@@ -280,7 +280,6 @@ SVr4, 4.3BSD, POSIX.1-2001, POSIX.1-2008.
 .BR faccessat ():
 POSIX.1-2008.
 .SH NOTES
-.PP
 .BR Warning :
 Using these calls to check if a user is authorized to, for example,
 open a file before actually doing so using
diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
index c9c3ac8d9..e457145b5 100644
--- a/man2/adjtimex.2
+++ b/man2/adjtimex.2
@@ -182,7 +182,6 @@ while (buf.time.tv_usec < 0) {
 }
 .EE
 .in
-.PP
 .TP
 .BR ADJ_MICRO " (since Linux 2.6.26)"
 .\" commit eea83d896e318bda54be2d2770d2c5d6668d11db
diff --git a/man2/alloc_hugepages.2 b/man2/alloc_hugepages.2
index 0a341bf35..14ed0516a 100644
--- a/man2/alloc_hugepages.2
+++ b/man2/alloc_hugepages.2
@@ -143,7 +143,7 @@ to map files in this virtual filesystem.
 The maximal number of huge pages can be specified using the
 .B hugepages=
 boot parameter.
-.PP
+.\".PP
 .\" requires CONFIG_HUGETLB_PAGE (under "Processor type and features")
 .\" and CONFIG_HUGETLBFS (under "Filesystems").
 .\" mount -t hugetlbfs hugetlbfs /huge
diff --git a/man2/chown.2 b/man2/chown.2
index f2dec9045..c845d0388 100644
--- a/man2/chown.2
+++ b/man2/chown.2
@@ -447,7 +447,6 @@ has got the same syscall number, and
 .BR chown ()
 got the newly introduced number.
 .SH EXAMPLES
-.PP
 The following program changes the ownership of the file named in
 its second command-line argument to the value specified in its
 first command-line argument.
diff --git a/man2/clone.2 b/man2/clone.2
index 8e73afe38..e0fe7545f 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -104,7 +104,6 @@ In the remainder of this page, the terminology "the clone call" is used
 when noting details that apply to all of these interfaces,
 .\"
 .SS The clone() wrapper function
-.PP
 When the child process is created with the
 .BR clone ()
 wrapper function,
@@ -156,7 +155,6 @@ The remaining arguments to
 are discussed below.
 .\"
 .SS clone3()
-.PP
 The
 .BR clone3 ()
 system call provides a superset of the functionality of the older
@@ -235,7 +233,6 @@ The remaining fields in the
 argument are discussed below.
 .\"
 .SS Equivalence between clone() and clone3() arguments
-.PP
 Unlike the older
 .BR clone ()
 interface, where arguments are passed individually, in the newer
@@ -275,7 +272,6 @@ tls	tls	See CLONE_SETTLS
 .RE
 .\"
 .SS The child termination signal
-.PP
 When the child process terminates, a signal may be sent to the parent.
 The termination signal is specified in the low byte of
 .I flags
@@ -295,7 +291,6 @@ If no signal (i.e., zero) is specified, then the parent process is not signaled
 when the child terminates.
 .\"
 .SS The set_tid array
-.PP
 By default, the kernel chooses the next sequential PID for the new
 process in each of the PID namespaces where it is present.
 When creating a process with
@@ -380,7 +375,6 @@ Otherwise the PID
 entry for this PID namespace must be 1.
 .\"
 .SS The flags mask
-.PP
 Both
 .BR clone ()
 and
@@ -1527,7 +1521,6 @@ These system calls
 are Linux-specific and should not be used in programs
 intended to be portable.
 .SH NOTES
-.PP
 One use of these systems calls
 is to implement threads: multiple flows of control in a program that
 run concurrently in a shared address space.
@@ -1559,7 +1552,6 @@ system call can be used to test whether two processes share various
 resources such as a file descriptor table,
 System V semaphore undo operations, or a virtual address space.
 .PP
-.PP
 Handlers registered using
 .BR pthread_atfork (3)
 are not executed during a clone call.
diff --git a/man2/eventfd.2 b/man2/eventfd.2
index 9d4b4271e..e966ac20a 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -358,7 +358,6 @@ eventfd file descriptor,
 returning 0 if the correct number of bytes was transferred,
 or \-1 otherwise.
 .SH EXAMPLES
-.PP
 The following program creates an eventfd file descriptor
 and then forks to create a child process.
 While the parent briefly sleeps,
diff --git a/man2/fork.2 b/man2/fork.2
index 05754663f..85cc681d8 100644
--- a/man2/fork.2
+++ b/man2/fork.2
@@ -279,7 +279,6 @@ System call was interrupted by a signal and will be restarted.
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SVr4, 4.3BSD.
 .SH NOTES
-.PP
 Under Linux,
 .BR fork ()
 is implemented using copy-on-write pages, so the only penalty that it incurs
diff --git a/man2/futex.2 b/man2/futex.2
index dd1464752..2c0c1259a 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -37,7 +37,6 @@ futex \- fast user-space locking
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
-.PP
 The
 .BR futex ()
 system call provides a method for waiting until a certain condition becomes
@@ -726,7 +725,6 @@ If
 .I timeout
 is NULL, the operation can block indefinitely.
 .IP
-.IP
 The
 .I uaddr2
 argument is ignored.
@@ -1315,7 +1313,6 @@ operation.
 .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 .\"
 .SH RETURN VALUE
-.PP
 In the event of an error (and assuming that
 .BR futex ()
 was invoked via
@@ -1685,7 +1682,6 @@ and the timeout expired before the operation completed.
 .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 .\"
 .SH VERSIONS
-.PP
 Futexes were first made available in a stable kernel release
 with Linux 2.6.0.
 .PP
diff --git a/man2/getgroups.2 b/man2/getgroups.2
index ef446d284..4f718915e 100644
--- a/man2/getgroups.2
+++ b/man2/getgroups.2
@@ -54,7 +54,6 @@ Feature Test Macro Requirements for glibc (see
     Glibc 2.19 and earlier:
         _BSD_SOURCE
 .SH DESCRIPTION
-.PP
 .BR getgroups ()
 returns the supplementary group IDs of the calling process in
 .IR list .
diff --git a/man2/getrusage.2 b/man2/getrusage.2
index a8e8f89c3..d27301c00 100644
--- a/man2/getrusage.2
+++ b/man2/getrusage.2
@@ -46,7 +46,6 @@ getrusage \- get resource usage
 .PP
 .BI "int getrusage(int " who ", struct rusage *" usage );
 .SH DESCRIPTION
-.PP
 .BR getrusage ()
 returns resource usage measures for
 .IR who ,
@@ -184,7 +183,6 @@ completed (usually to await availability of a resource).
 The number of times a context switch resulted due to a higher
 priority process becoming runnable or because the current process
 exceeded its time slice.
-.PP
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
diff --git a/man2/getsid.2 b/man2/getsid.2
index a912b651f..1f9a8fbec 100644
--- a/man2/getsid.2
+++ b/man2/getsid.2
@@ -45,7 +45,6 @@ Feature Test Macro Requirements for glibc (see
 .RS 4
 _XOPEN_SOURCE\ >=\ 500
 .\"    || _XOPEN_SOURCE\ &&\ _XOPEN_SOURCE_EXTENDED
-.br
     || /* Since glibc 2.12: */ _POSIX_C_SOURCE\ >=\ 200809L
 .RE
 .PD
diff --git a/man2/init_module.2 b/man2/init_module.2
index a4d41318b..96a6172fd 100644
--- a/man2/init_module.2
+++ b/man2/init_module.2
@@ -287,7 +287,6 @@ See the Linux kernel source file
 .I include/linux/module.h
 for some useful background information.
 .SS Linux 2.4 and earlier
-.PP
 In Linux 2.4 and earlier, the
 .BR init_module ()
 system call was rather different:
diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
index a685b5b6a..68129896e 100644
--- a/man2/io_cancel.2
+++ b/man2/io_cancel.2
@@ -18,7 +18,6 @@ io_cancel \- cancel an outstanding asynchronous I/O operation
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
-.PP
 The
 .BR io_cancel ()
 system call
@@ -54,10 +53,8 @@ The AIO context specified by \fIctx_id\fP is invalid.
 .BR io_cancel ()
 is not implemented on this architecture.
 .SH VERSIONS
-.PP
 The asynchronous I/O system calls first appeared in Linux 2.5.
 .SH CONFORMING TO
-.PP
 .BR io_cancel ()
 is Linux-specific and should not be used
 in programs that are intended to be portable.
diff --git a/man2/io_destroy.2 b/man2/io_destroy.2
index 155fc48c5..e7cdf0203 100644
--- a/man2/io_destroy.2
+++ b/man2/io_destroy.2
@@ -17,7 +17,6 @@ io_destroy \- destroy an asynchronous I/O context
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
-.PP
 The
 .BR io_destroy ()
 system call
@@ -43,10 +42,8 @@ The AIO context specified by \fIctx_id\fP is invalid.
 .BR io_destroy ()
 is not implemented on this architecture.
 .SH VERSIONS
-.PP
 The asynchronous I/O system calls first appeared in Linux 2.5.
 .SH CONFORMING TO
-.PP
 .BR io_destroy ()
 is Linux-specific and should not be used in programs
 that are intended to be portable.
diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
index 601e8bf6b..a7d955041 100644
--- a/man2/io_getevents.2
+++ b/man2/io_getevents.2
@@ -20,7 +20,6 @@ io_getevents \- read asynchronous I/O events from the completion queue
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
-.PP
 The
 .BR io_getevents ()
 system call
@@ -80,10 +79,8 @@ out of range.
 .BR io_getevents ()
 is not implemented on this architecture.
 .SH VERSIONS
-.PP
 The asynchronous I/O system calls first appeared in Linux 2.5.
 .SH CONFORMING TO
-.PP
 .BR io_getevents ()
 is Linux-specific and should not be used in
 programs that are intended to be portable.
@@ -123,7 +120,6 @@ An invalid
 may cause a segmentation fault instead of generating the error
 .BR EINVAL .
 .SH SEE ALSO
-.PP
 .BR io_cancel (2),
 .BR io_destroy (2),
 .BR io_setup (2),
diff --git a/man2/io_setup.2 b/man2/io_setup.2
index b11d77635..f54cc938c 100644
--- a/man2/io_setup.2
+++ b/man2/io_setup.2
@@ -17,7 +17,6 @@ io_setup \- create an asynchronous I/O context
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
-.PP
 The
 .BR io_setup ()
 system call
@@ -58,10 +57,8 @@ Insufficient kernel resources are available.
 .BR io_setup ()
 is not implemented on this architecture.
 .SH VERSIONS
-.PP
 The asynchronous I/O system calls first appeared in Linux 2.5.
 .SH CONFORMING TO
-.PP
 .BR io_setup ()
 is Linux-specific and should not be used in programs
 that are intended to be portable.
diff --git a/man2/io_submit.2 b/man2/io_submit.2
index 2b0981766..145be4f54 100644
--- a/man2/io_submit.2
+++ b/man2/io_submit.2
@@ -19,7 +19,6 @@ io_submit \- submit asynchronous I/O blocks for processing
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
-.PP
 The
 .BR io_submit ()
 system call
@@ -233,10 +232,8 @@ but the submitting context does not have the
 .B CAP_SYS_ADMIN
 capability.
 .SH VERSIONS
-.PP
 The asynchronous I/O system calls first appeared in Linux 2.5.
 .SH CONFORMING TO
-.PP
 .BR io_submit ()
 is Linux-specific and should not be used in
 programs that are intended to be portable.
diff --git a/man2/ioctl_ficlonerange.2 b/man2/ioctl_ficlonerange.2
index c3da7dc1b..652ad5bce 100644
--- a/man2/ioctl_ficlonerange.2
+++ b/man2/ioctl_ficlonerange.2
@@ -24,7 +24,6 @@
 .SH NAME
 ioctl_ficlonerange, ioctl_ficlone \- share some the data of one file with another file
 .SH SYNOPSIS
-.br
 .B #include <sys/ioctl.h>
 .br
 .B #include <linux/fs.h>
@@ -86,7 +85,6 @@ ioctl clones entire files.
 On error, \-1 is returned, and
 .I errno
 is set to indicate the error.
-.PP
 .SH ERRORS
 Error codes can be one of, but are not limited to, the following:
 .TP
diff --git a/man2/ioctl_fideduperange.2 b/man2/ioctl_fideduperange.2
index 2c420693b..fa5f87c57 100644
--- a/man2/ioctl_fideduperange.2
+++ b/man2/ioctl_fideduperange.2
@@ -24,7 +24,6 @@
 .SH NAME
 ioctl_fideduperange \- share some the data of one file with another file
 .SH SYNOPSIS
-.br
 .B #include <sys/ioctl.h>
 .br
 .B #include <linux/fs.h>
@@ -142,12 +141,10 @@ code is set to
 for success, a negative error code in case of error, or
 .B FILE_DEDUPE_RANGE_DIFFERS
 if the data did not match.
-.PP
 .SH RETURN VALUE
 On error, \-1 is returned, and
 .I errno
 is set to indicate the error.
-.PP
 .SH ERRORS
 Error codes can be one of, but are not limited to, the following:
 .TP
diff --git a/man2/ioctl_fslabel.2 b/man2/ioctl_fslabel.2
index ef483cbf2..75f54876b 100644
--- a/man2/ioctl_fslabel.2
+++ b/man2/ioctl_fslabel.2
@@ -24,7 +24,6 @@
 .SH NAME
 ioctl_fslabel \- get or set a filesystem label
 .SH SYNOPSIS
-.br
 .B #include <sys/ioctl.h>
 .br
 .B #include <linux/fs.h>
@@ -47,7 +46,6 @@ operation requires privilege
 On success zero is returned.  On error, \-1 is returned, and
 .I errno
 is set to indicate the error.
-.PP
 .SH ERRORS
 Error can include (but are not limited to) the following:
 .TP
diff --git a/man2/ioctl_getfsmap.2 b/man2/ioctl_getfsmap.2
index f7039b7be..3e1fa9aaa 100644
--- a/man2/ioctl_getfsmap.2
+++ b/man2/ioctl_getfsmap.2
@@ -24,7 +24,6 @@
 .SH NAME
 ioctl_getfsmap \- retrieve the physical layout of the filesystem
 .SH SYNOPSIS
-.br
 .B #include <sys/ioctl.h>
 .br
 .B #include <linux/fs.h>
@@ -83,7 +82,6 @@ Filesystem mappings are copied into the
 array, which immediately follows the header data.
 .\"
 .SS Fields of struct fsmap_head
-.PP
 The
 .I fmh_iflags
 field is a bit mask passed to the kernel to alter the output.
@@ -121,7 +119,6 @@ The
 fields must be set to zero.
 .\"
 .SS Keys
-.PP
 The two key records in
 .I fsmap_head.fmh_keys
 specify the lowest and highest extent records in the keyspace that the caller
@@ -161,7 +158,6 @@ The function
 provides this functionality.
 .\"
 .SS Fields of struct fsmap
-.PP
 The
 .I fmr_device
 field uniquely identifies the underlying storage device.
@@ -326,7 +322,6 @@ Inode bit map.
 On error, \-1 is returned, and
 .I errno
 is set to indicate the error.
-.PP
 .SH ERRORS
 The error placed in
 .I errno
diff --git a/man2/memfd_create.2 b/man2/memfd_create.2
index 8fdb32fa7..a66940239 100644
--- a/man2/memfd_create.2
+++ b/man2/memfd_create.2
@@ -205,7 +205,6 @@ The
 .BR memfd_create ()
 system call is Linux-specific.
 .SH NOTES
-.PP
 .\" See also http://lwn.net/Articles/593918/
 .\" and http://lwn.net/Articles/594919/ and http://lwn.net/Articles/591108/
 The
diff --git a/man2/mlock.2 b/man2/mlock.2
index b7a176a61..4a52773c2 100644
--- a/man2/mlock.2
+++ b/man2/mlock.2
@@ -89,7 +89,6 @@ Lock pages that are currently resident and mark the entire range so
 that the remaining nonresident pages are locked when they are populated
 by a page fault.
 .PP
-.PP
 If
 .I flags
 is 0,
diff --git a/man2/mmap.2 b/man2/mmap.2
index 6f2600e1f..d92806265 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -670,7 +670,6 @@ is defined in \fI<unistd.h>\fP to a value greater than 0.
 .\" -1: unavailable, 0: ask using sysconf().
 .\" glibc defines it to 1.
 .SH NOTES
-.PP
 Memory mapped by
 .BR mmap ()
 is preserved across
@@ -907,7 +906,6 @@ however, this doesn't work on
 .SH EXAMPLES
 .\" FIXME . Add an example here that uses an anonymous shared region for
 .\" IPC between parent and child.
-.PP
 The following program prints part of the file specified in
 its first command-line argument to standard output.
 The range of bytes to be printed is specified via offset and length
diff --git a/man2/mprotect.2 b/man2/mprotect.2
index 397597b7b..992f3887b 100644
--- a/man2/mprotect.2
+++ b/man2/mprotect.2
@@ -285,7 +285,6 @@ is equivalent to
 .BR mprotect ().
 .SH EXAMPLES
 .\" sigaction.2 refers to this example
-.PP
 The program below demonstrates the use of
 .BR mprotect ().
 The program allocates four pages of memory, makes the third
diff --git a/man2/mremap.2 b/man2/mremap.2
index 4728fdf81..9577041bc 100644
--- a/man2/mremap.2
+++ b/man2/mremap.2
@@ -265,7 +265,6 @@ intended to be portable.
 .\" .BR mremap (2)
 .\" call with completely different semantics.
 .SH NOTES
-.PP
 .BR mremap ()
 changes the
 mapping between virtual addresses and memory pages.
diff --git a/man2/open.2 b/man2/open.2
index db2367dba..eb75437ff 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -1696,7 +1696,6 @@ the corresponding conventional APIs.
 .\"
 .\"
 .SS O_DIRECT
-.PP
 The
 .B O_DIRECT
 flag may impose alignment restrictions on the length and address
diff --git a/man2/pciconfig_read.2 b/man2/pciconfig_read.2
index 90139041d..ee60b364e 100644
--- a/man2/pciconfig_read.2
+++ b/man2/pciconfig_read.2
@@ -20,7 +20,6 @@ pciconfig_read, pciconfig_write, pciconfig_iobase \- pci device information hand
 .BI "          unsigned long " devfn );
 .fi
 .SH DESCRIPTION
-.PP
 Most of the interaction with PCI devices is already handled by the
 kernel PCI layer,
 and thus these calls should not normally need to be accessed from user space.
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 3e3626207..7d24ba47d 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -74,7 +74,6 @@ event periodically writes measurements to a buffer that can then
 be accessed via
 .BR mmap (2).
 .SS Arguments
-.PP
 The
 .I pid
 and
@@ -2813,7 +2812,6 @@ in a process's context.
 To restore the old behavior, write the value 2 to
 .IR /sys/devices/cpu/rdpmc .
 .SS perf_event ioctl calls
-.PP
 Various ioctls act on
 .BR perf_event_open ()
 file descriptors:
@@ -3008,7 +3006,6 @@ to the calling process or inherited events from a parent process.
 Only group leaders are enabled and disabled,
 not any other members of the groups.
 .SS perf_event related configuration files
-.PP
 Files in
 .I /proc/sys/kernel/
 .RS 4
diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
index 9f6e328d3..909f3a2d6 100644
--- a/man2/pidfd_open.2
+++ b/man2/pidfd_open.2
@@ -143,7 +143,6 @@ with the
 flag.
 .\"
 .SS Use cases for PID file descriptors
-.PP
 A PID file descriptor returned by
 .BR pidfd_open ()
 (or by
diff --git a/man2/pivot_root.2 b/man2/pivot_root.2
index 9be7ac75a..81760810d 100644
--- a/man2/pivot_root.2
+++ b/man2/pivot_root.2
@@ -214,7 +214,6 @@ Helper programs for this process exist; see
 .BR switch_root (8).
 .\"
 .SS pivot_root(\(dq.\(dq, \(dq.\(dq)
-.PP
 .I new_root
 and
 .I put_old
@@ -275,7 +274,6 @@ was first implemented and will not change now.
 .\" FIXME
 .\" Would it be better, because simpler, to use unshare(2)
 .\" rather than clone(2) in the example below?
-.PP
 The program below demonstrates the use of
 .BR pivot_root ()
 inside a mount namespace that is created using
diff --git a/man2/prctl.2 b/man2/prctl.2
index ce03e4186..d18f6ec9e 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -377,7 +377,6 @@ Note that modern MIPS implementations (MIPS R6 and newer) support
 .B FR=1
 mode only.
 .IP
-.IP
 Applications that use the O32 FP32 ABI can operate only when this bit is
 .I unset
 .RB ( FR=0 ;
diff --git a/man2/ptrace.2 b/man2/ptrace.2
index bf95748d3..83f9dc753 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -421,7 +421,6 @@ for dumping signals from the process-wide signal queue.
 If this flag is not set,
 signals are read from the per-thread queue of the specified thread.
 .in
-.PP
 .TP
 .BR PTRACE_GETSIGMASK " (since Linux 3.11)"
 .\" commit 29000caecbe87b6b66f144f72111f0d02fbbf0c1
@@ -2680,7 +2679,6 @@ check\(emfor example,
 .BR ptrace ()
 .BR PTRACE_ATTACH .
 (See the "Ptrace access mode checking" discussion above.)
-.IP
 .IP *
 .BR ptrace ()
 .BR PTRACE_TRACEME .
diff --git a/man2/quotactl.2 b/man2/quotactl.2
index 7af12bf2a..239d8a9d8 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -36,7 +36,6 @@ quotactl \- manipulate disk quotas
 ", caddr_t " addr );
 .fi
 .SH DESCRIPTION
-.PP
 The quota system can be used to set per-user, per-group, and per-project limits
 on the amount of disk space used on a filesystem.
 For each user and/or group,
@@ -688,7 +687,6 @@ The
 .IR special ", " id " and " addr
 arguments are ignored.
 .SH RETURN VALUE
-.PP
 On success,
 .BR quotactl ()
 returns 0; on error \-1
diff --git a/man2/readv.2 b/man2/readv.2
index 481b2f3d2..ba59d6788 100644
--- a/man2/readv.2
+++ b/man2/readv.2
@@ -184,7 +184,6 @@ The file referred to by
 .I fd
 must be capable of seeking.
 .SS preadv2() and pwritev2()
-.PP
 These system calls are similar to
 .BR preadv ()
 and
diff --git a/man2/recvmmsg.2 b/man2/recvmmsg.2
index a00c88ac1..fd40f2aa8 100644
--- a/man2/recvmmsg.2
+++ b/man2/recvmmsg.2
@@ -190,7 +190,6 @@ In the current implementation, however, the error code can be overwritten
 in the meantime by an unrelated network event on a socket,
 for example an incoming ICMP packet.
 .SH EXAMPLES
-.PP
 The following program uses
 .BR recvmmsg ()
 to receive multiple messages on a socket and stores
diff --git a/man2/s390_guarded_storage.2 b/man2/s390_guarded_storage.2
index 26c417933..528a3e26d 100644
--- a/man2/s390_guarded_storage.2
+++ b/man2/s390_guarded_storage.2
@@ -170,6 +170,5 @@ header.
 .\" .UR https://developer.ibm.com/javasdk/2017/09/25/concurrent-scavenge-using-guarded-storage-facility-works/
 .\" the article with the description of its usage in the Java Garbage Collection
 .\" .UE
-.PP
 .SH SEE ALSO
 .BR syscall (2)
diff --git a/man2/select.2 b/man2/select.2
index 744eb10b4..7f4343ba3 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -237,7 +237,6 @@ is specified as NULL,
 blocks indefinitely waiting for a file descriptor to become ready.
 .\"
 .SS pselect()
-.PP
 The
 .BR pselect ()
 system call allows an application to safely wait until either
@@ -316,7 +315,6 @@ pthread_sigmask(SIG_SETMASK, &origmask, NULL);
 .EE
 .in
 .PP
-.PP
 The reason that
 .BR pselect ()
 is needed is that if one wants to wait for either a signal
@@ -512,7 +510,6 @@ or reading from a pipe that may be empty,
 nonblocking I/O is used when reading from and writing to the pipe.)
 .\"
 .SS Emulating usleep(3)
-.PP
 Before the advent of
 .BR usleep (3),
 some code employed a call to
@@ -622,7 +619,6 @@ for a discussion of the difference between the kernel and libc
 notion of the signal set.
 .\"
 .SS Historical glibc details
-.PP
 Glibc 2.0 provided an incorrect version of
 .BR pselect ()
 that did not take a
diff --git a/man2/select_tut.2 b/man2/select_tut.2
index a41065f09..f683dd49d 100644
--- a/man2/select_tut.2
+++ b/man2/select_tut.2
@@ -33,7 +33,6 @@
 .SH NAME
 select, pselect \- synchronous I/O multiplexing
 .SH SYNOPSIS
-.PP
 See
 .BR select (2)
 .SH DESCRIPTION
@@ -54,7 +53,6 @@ and
 .BR pselect (),
 see
 .BR select (2).
-.PP
 .\"
 .SS Combining signal and data events
 .BR pselect ()
diff --git a/man2/semget.2 b/man2/semget.2
index 8c7930b88..1fcbd5dc1 100644
--- a/man2/semget.2
+++ b/man2/semget.2
@@ -395,7 +395,6 @@ $ \fB./t_semget link p 1\fP       # Generates same key as \(aqmykey\(aq
 ID = 9
 .EE
 .in
-.PP
 .SS Program source
 \&
 .nf
diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
index 8fd0922ab..c63734260 100644
--- a/man2/set_mempolicy.2
+++ b/man2/set_mempolicy.2
@@ -184,7 +184,6 @@ node ID specified in
 and so forth, until none of the specified nodes contain free memory.
 Pages will not be allocated from any node not specified in the
 .IR nodemask .
-.IP
 .TP
 .B MPOL_INTERLEAVE
 This mode interleaves page allocations across the nodes specified in
diff --git a/man2/setns.2 b/man2/setns.2
index 126847505..28ed7d294 100644
--- a/man2/setns.2
+++ b/man2/setns.2
@@ -142,7 +142,6 @@ int fd = pidfd_open(1234, 0);
 setns(fd, CLONE_NEWUSER | CLONE_NEWNET | CLONE_NEWUTS);
 .EE
 .in
-.PP
 .\"
 .SS Details for specific namespace types
 Note the following details and restrictions when reassociating with
diff --git a/man2/setpgid.2 b/man2/setpgid.2
index 29f20f3ef..cc06d8791 100644
--- a/man2/setpgid.2
+++ b/man2/setpgid.2
@@ -75,7 +75,6 @@ Feature Test Macro Requirements for glibc (see
 .RS 4
 _XOPEN_SOURCE\ >=\ 500
 .\"    || _XOPEN_SOURCE\ &&\ _XOPEN_SOURCE_EXTENDED
-.br
     || /* Since glibc 2.12: */ _POSIX_C_SOURCE\ >=\ 200809L
 .RE
 .PP
diff --git a/man2/shmop.2 b/man2/shmop.2
index d5b6e9da1..e7a4f7aed 100644
--- a/man2/shmop.2
+++ b/man2/shmop.2
@@ -240,7 +240,6 @@ from
 into
 .IR "void\ *" .
 .SH NOTES
-.PP
 After a
 .BR fork (2),
 the child inherits the attached shared memory segments.
@@ -292,7 +291,6 @@ The implementation places no intrinsic per-process limit on the
 number of shared memory segments
 .RB ( SHMSEG ).
 .SH EXAMPLES
-.PP
 The two programs shown below exchange a string using a shared memory segment.
 Further details about the programs are given below.
 First, we show a shell session demonstrating their use.
@@ -332,7 +330,6 @@ shared memory segment by the writer:
 Hello, world
 .EE
 .in
-.PP
 .\"
 .SS Program source: svshm_string.h
 The following header file is included by the "reader" and "writer" programs.
diff --git a/man2/sigpending.2 b/man2/sigpending.2
index bc2dc65c8..9391626c9 100644
--- a/man2/sigpending.2
+++ b/man2/sigpending.2
@@ -44,7 +44,6 @@ Feature Test Macro Requirements for glibc (see
 _POSIX_C_SOURCE
 .ad b
 .SH DESCRIPTION
-.PP
 .BR sigpending ()
 returns the set of signals that are pending for delivery to the calling
 thread (i.e., the signals which have been raised while blocked).
diff --git a/man2/sigprocmask.2 b/man2/sigprocmask.2
index 6e59c5a58..015ad4a6b 100644
--- a/man2/sigprocmask.2
+++ b/man2/sigprocmask.2
@@ -165,7 +165,6 @@ and
 as NULL.
 .\"
 .SS C library/kernel differences
-.PP
 The kernel's definition of
 .I sigset_t
 differs in size from that used
diff --git a/man2/sigsuspend.2 b/man2/sigsuspend.2
index 4d2aca6f2..f4d97d10e 100644
--- a/man2/sigsuspend.2
+++ b/man2/sigsuspend.2
@@ -85,7 +85,6 @@ The call was interrupted by a signal;
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008.
 .SH NOTES
-.PP
 Normally,
 .BR sigsuspend ()
 is used in conjunction with
diff --git a/man2/stat.2 b/man2/stat.2
index 998c5e82e..a5f983b67 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -67,12 +67,9 @@ Feature Test Macro Requirements for glibc (see
 .BR lstat ():
 .RS 4
 /* glibc 2.19 and earlier */ _BSD_SOURCE
-.br
     || /* Since glibc 2.20 */ _DEFAULT_SOURCE
-.br
     || _XOPEN_SOURCE\ >=\ 500
 .\"   _XOPEN_SOURCE\ &&\ _XOPEN_SOURCE_EXTENDED
-.br
     || /* Since glibc 2.10: */ _POSIX_C_SOURCE\ >=\ 200112L
 .RE
 .PP
@@ -90,7 +87,6 @@ _ATFILE_SOURCE
 .PD
 .ad
 .SH DESCRIPTION
-.PP
 These functions return information about a file, in the buffer pointed to by
 .IR statbuf .
 No permissions are required on the file itself, but\(emin the case of
@@ -356,7 +352,6 @@ The
 can be used in tools that scan directories
 to prevent mass-automounting of a directory of automount points.
 .IP
-.IP
 This flag is Linux-specific; define
 .B _GNU_SOURCE
 .\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
diff --git a/man2/statx.2 b/man2/statx.2
index 1e9e6a199..33d110f9f 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -41,9 +41,7 @@ statx \- get file status (extended)
 .BI "int statx(int " dirfd ", const char *" pathname ", int " flags ","
 .BI "          unsigned int " mask ", struct statx *" statxbuf );
 .fi
-.PP
 .SH DESCRIPTION
-.PP
 This function returns information about a file, storing it in the buffer
 pointed to by
 .IR statxbuf .
@@ -100,7 +98,6 @@ struct statx_timestamp {
 (Note that reserved space and padding is omitted.)
 .SS
 Invoking \fBstatx\fR():
-.PP
 To access a file's status, no permissions are required on the file itself,
 but in the case of
 .BR statx ()
@@ -288,7 +285,6 @@ as one or more bits may, in the future, be used to specify an
 extension to the buffer.
 .SS
 The returned information
-.PP
 The status information for the target file is returned in the
 .I statx
 structure pointed to by
@@ -420,7 +416,6 @@ For further information on the above fields, see
 .BR inode (7).
 .\"
 .SS File attributes
-.PP
 The
 .I stx_attributes
 field contains a set of ORed flags that indicate additional attributes
diff --git a/man2/syscalls.2 b/man2/syscalls.2
index c6b8d8bf9..0b89f422a 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -904,7 +904,6 @@ There was briefly
 added in Linux 2.6.13, and removed in 2.6.16;
 this system call was never available to user space.
 .SH NOTES
-.PP
 Roughly speaking, the code belonging to the system call
 with number __NR_xxx defined in
 .I /usr/include/asm/unistd.h
diff --git a/man2/sysctl.2 b/man2/sysctl.2
index 687333fbd..523489d2a 100644
--- a/man2/sysctl.2
+++ b/man2/sysctl.2
@@ -124,7 +124,6 @@ Furthermore,
 glibc does not provide a wrapper for this system call,
 necessitating the use of
 .BR syscall (2).
-.PP
 .SH BUGS
 The object names vary between kernel versions,
 making this system call worthless for applications.
diff --git a/man2/truncate.2 b/man2/truncate.2
index b69119835..fe5825b90 100644
--- a/man2/truncate.2
+++ b/man2/truncate.2
@@ -62,7 +62,6 @@ Feature Test Macro Requirements for glibc (see
 .RS 4
 _XOPEN_SOURCE\ >=\ 500
 .\"    || _XOPEN_SOURCE\ &&\ _XOPEN_SOURCE_EXTENDED
-.br
     || /* Since glibc 2.12: */ _POSIX_C_SOURCE\ >=\ 200809L
     || /* Glibc versions <= 2.19: */ _BSD_SOURCE
 .RE
diff --git a/man2/uname.2 b/man2/uname.2
index 55c139a56..166e39849 100644
--- a/man2/uname.2
+++ b/man2/uname.2
@@ -136,7 +136,6 @@ Part of the utsname information is also accessible via
 .IR version ,
 .IR domainname }.
 .SS C library/kernel differences
-.PP
 Over time, increases in the size of the
 .I utsname
 structure have led to three successive versions of
diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 0a7b65f22..8fb851fa7 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -131,7 +131,7 @@ single threaded non-cooperative userfaultfd manager implementations.
 .\"     problematic for multi-threaded monitor. I even suspect that it would be
 .\"     impossible to ensure synchronization between page faults and non-page
 .\"     fault events in multi-threaded monitor.
-.PP
+.\".PP
 .\" FIXME elaborate about non-cooperating mode, describe its limitations
 .\" for kernels before 4.11, features added in 4.11
 .\" and limitations remaining in 4.11
@@ -211,7 +211,6 @@ Up to Linux 4.11,
 userfaultfd can be used only with anonymous private memory mappings.
 Since Linux 4.11,
 userfaultfd can be also used with hugetlbfs and shared memory mappings.
-.PP
 .\"
 .SS Reading from the userfaultfd structure
 Each
@@ -766,4 +765,3 @@ main(int argc, char *argv[])
 .PP
 .I Documentation/admin-guide/mm/userfaultfd.rst
 in the Linux kernel source tree
-.PP
diff --git a/man2/vfork.2 b/man2/vfork.2
index 7787cd290..491f0395d 100644
--- a/man2/vfork.2
+++ b/man2/vfork.2
@@ -175,7 +175,6 @@ remaining blocked until the child either terminates or calls
 and cannot rely on any specific behavior with respect to shared memory.
 .\" In AIXv3.1 vfork is equivalent to fork.
 .SH NOTES
-.PP
 Some consider the semantics of
 .BR vfork ()
 to be an architectural blemish, and the 4.2BSD man page stated:
@@ -308,7 +307,6 @@ Since 2.2.0-pre9 (on i386, somewhat later on
 other architectures) it is an independent system call.
 Support was added in glibc 2.0.112.
 .SH BUGS
-.PP
 Details of the signal handling are obscure and differ between systems.
 The BSD man page states:
 "To avoid a possible deadlock situation, processes that are children
-- 
2.27.0
