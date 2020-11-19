Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 783BB2B9A01
	for <lists+linux-man@lfdr.de>; Thu, 19 Nov 2020 18:52:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729514AbgKSRuI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Nov 2020 12:50:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727195AbgKSRuI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Nov 2020 12:50:08 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3438AC0613CF
        for <linux-man@vger.kernel.org>; Thu, 19 Nov 2020 09:50:08 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id d142so8019005wmd.4
        for <linux-man@vger.kernel.org>; Thu, 19 Nov 2020 09:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zDOVlZnNWD8WfOgLFwlVjctKExsHoCXTMs/KLIg7MFI=;
        b=g4yvu68LYmLhnipbGKzQKT3c9J9p+Oxo73UhaSiejIzhrUK/ANsAnQLLg15jWy+xiz
         gv82wS3TiuYVp5E87OgvjV6ZRv9sJvMytfqNda+OGnqtNQ2+qzRzdVgt5cwecbyszedl
         kYYCVfX0mas3NM/RWcOoRmCnIYLLrc+YzFlMW9L/muv4Zp31lRqAgr4ljWgGvj1UfJlN
         xLjt/0aDPLWQ5mn13kh9uHxwxEyWp4f6l+LDdMEDlTwoKz9WIZMeZYLj6nzFFr7a2cap
         +VK5gNcHuUP6SYYNGPITvpAMNx09UJkwGaYTZIKGu6M1CYwxf+w7O3CDyGOyGJMbYLWf
         stlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zDOVlZnNWD8WfOgLFwlVjctKExsHoCXTMs/KLIg7MFI=;
        b=EeseugCShTWf+i/klw7DPk56Ht3pkd/vT2047a0m3L/jc1T7Iuapq3BKsZv9MaFSWk
         u5ruy01Bv/m+W3ZRyL5p6YSe12kE7owWc2wjyeFWvsUv50ZU2MJnL2CH7OAHfpaAl99t
         qk4QWTS/wY/7Xx4KxZr7Pl63qluwq+Y29EgsijlUQRTovBl89Ld3Nqw/UrpWOmfOtNW1
         mOln0IRGPey8OuElV5zswe41qvANhdj/iVjigRQc3LbPq2HtPQB8V561kbVgvNBuGpFI
         B+Vf+54xsDvZeBHQE+zMh0/JZ1sXQ7oq9RDteMshkuzB8BLzchAd9LhTWEELYRLDsQue
         +SGg==
X-Gm-Message-State: AOAM5320J+BWhvzq2nh1jrtThACBunB6sRnPAZ6uQsr+DSbgcnYtAlHN
        xo3ySMTKn8hV8NOt5hTTaio=
X-Google-Smtp-Source: ABdhPJw5t1wLL2XBX/SDjPoTk356Ot37y950TSwkccHn2IIQh9X7wqtACmqRR4RmVaI0QszFss/eCw==
X-Received: by 2002:a1c:7402:: with SMTP id p2mr6052639wmc.104.1605808206551;
        Thu, 19 Nov 2020 09:50:06 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id f2sm858242wre.63.2020.11.19.09.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 09:50:06 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] capget.2, execve.2, readv.2, socketpair.2, utime.2, utimensat.2, getloadavg.3, proc.5, mount_namespaces.7, unix.7: ffix
Date:   Thu, 19 Nov 2020 18:46:57 +0100
Message-Id: <20201119174656.131249-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The main fix is {.IR var [x]} -> {.I var[x]}

There were around 20 entries of the former,
and around 360 of the latter.

While fixing that, I came across some obvious srcfixes,
which I also added to this patch.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/capget.2           |   6 +--
 man2/execve.2           |   8 +--
 man2/readv.2            |   8 +--
 man2/socketpair.2       |   4 +-
 man2/utime.2            |   4 +-
 man2/utimensat.2        |   4 +-
 man3/getloadavg.3       |   2 +-
 man5/proc.5             | 105 ++++++++++++++++++++--------------------
 man7/mount_namespaces.7 |   6 +--
 man7/unix.7             |   2 +-
 10 files changed, 75 insertions(+), 74 deletions(-)

diff --git a/man2/capget.2 b/man2/capget.2
index 9d2f6d90c..36ad7c27c 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -98,11 +98,11 @@ There was, however, an API glitch, and Linux 2.6.26 added
 to fix the problem.
 .PP
 Note that 64-bit capabilities use
-.IR datap [0]
+.I datap[0]
 and
-.IR datap [1],
+.IR datap[1] ,
 whereas 32-bit capabilities use only
-.IR datap [0].
+.IR datap[0] .
 .PP
 On kernels that support file capabilities (VFS capabilities support),
 these system calls behave slightly differently.
diff --git a/man2/execve.2 b/man2/execve.2
index 5f33332ca..0e21853f7 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -70,7 +70,7 @@ The
 .I argv
 array must be terminated by a NULL pointer.
 (Thus, in the new program,
-.IR argv[argc]
+.I argv[argc]
 will be NULL.)
 .PP
 \fIenvp\fP is an array of pointers to strings, conventionally of the form
@@ -221,7 +221,7 @@ in
 .BR prctl (2).
 Note that changes to the "dumpable" attribute may cause ownership
 of files in the process's
-.IR /proc/[pid]
+.I /proc/[pid]
 directory to change to
 .IR root:root ,
 as described in
@@ -354,9 +354,9 @@ is the series of words pointed to by the
 argument of
 .BR execve (),
 starting at
-.IR argv [1].
+.IR argv[1] .
 Note that there is no way to get the
-.IR argv[0]
+.I argv[0]
 that was passed to the
 .BR execve ()
 call.
diff --git a/man2/readv.2 b/man2/readv.2
index 5a8b74168..d8ae756a9 100644
--- a/man2/readv.2
+++ b/man2/readv.2
@@ -119,9 +119,9 @@ Buffers are processed in array order.
 This means that
 .BR readv ()
 completely fills
-.IR iov [0]
+.I iov[0]
 before proceeding to
-.IR iov [1],
+.IR iov[1] ,
 and so on.
 (If there is insufficient data, then not all buffers pointed to by
 .I iov
@@ -129,9 +129,9 @@ may be filled.)
 Similarly,
 .BR writev ()
 writes out the entire contents of
-.IR iov [0]
+.I iov[0]
 before proceeding to
-.IR iov [1],
+.IR iov[1] ,
 and so on.
 .PP
 The data transfers performed by
diff --git a/man2/socketpair.2 b/man2/socketpair.2
index 60a90f640..0cc6e5ae1 100644
--- a/man2/socketpair.2
+++ b/man2/socketpair.2
@@ -62,9 +62,9 @@ For further details of these arguments, see
 .BR socket (2).
 .PP
 The file descriptors used in referencing the new sockets are returned in
-.IR sv [0]
+.I sv[0]
 and
-.IR sv [1].
+.IR sv[1] .
 The two sockets are indistinguishable.
 .SH RETURN VALUE
 On success, zero is returned.
diff --git a/man2/utime.2 b/man2/utime.2
index 03a43a416..24f397b1b 100644
--- a/man2/utime.2
+++ b/man2/utime.2
@@ -110,9 +110,9 @@ struct timeval {
 .EE
 .in
 .PP
-.IR times [0]
+.I times[0]
 specifies the new access time, and
-.IR times [1]
+.I times[1]
 specifies the new modification time.
 If
 .I times
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index b75adbaef..eb9d2a2af 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -89,9 +89,9 @@ an open file descriptor,
 .PP
 For both calls, the new file timestamps are specified in the array
 .IR times :
-.IR times [0]
+.I times[0]
 specifies the new "last access time" (\fIatime\fP);
-.IR times [1]
+.I times[1]
 specifies the new "last modification time" (\fImtime\fP).
 Each of the elements of
 .I times
diff --git a/man3/getloadavg.3 b/man3/getloadavg.3
index be1f114db..015c41dfb 100644
--- a/man3/getloadavg.3
+++ b/man3/getloadavg.3
@@ -61,7 +61,7 @@ averaged over various periods of time.
 Up to
 .I nelem
 samples are retrieved and assigned to successive elements of
-.IR loadavg [].
+.IR loadavg[] .
 The system imposes a maximum of 3 samples, representing averages
 over the last 1, 5, and 15 minutes, respectively.
 .SH RETURN VALUE
diff --git a/man5/proc.5 b/man5/proc.5
index 744ee04c9..09dc2b382 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -84,7 +84,7 @@ filesystem supports the following mount options:
 .BR hidepid "=\fIn\fP (since Linux 3.3)"
 .\" commit 0499680a42141d86417a8fbaa8c8db806bea1201
 This option controls who can access the information in
-.IR /proc/[pid]
+.I /proc/[pid]
 directories.
 The argument,
 .IR n ,
@@ -93,37 +93,37 @@ is one of the following values:
 .TP 4
 0
 Everybody may access all
-.IR /proc/[pid]
+.I /proc/[pid]
 directories.
 This is the traditional behavior,
 and the default if this mount option is not specified.
 .TP
 1
 Users may not access files and subdirectories inside any
-.IR /proc/[pid]
+.I /proc/[pid]
 directories but their own (the
-.IR /proc/[pid]
+.I /proc/[pid]
 directories themselves remain visible).
 Sensitive files such as
-.IR /proc/[pid]/cmdline
+.I /proc/[pid]/cmdline
 and
-.IR /proc/[pid]/status
+.I /proc/[pid]/status
 are now protected against other users.
 This makes it impossible to learn whether any user is running a
 specific program
 (so long as the program doesn't otherwise reveal itself by its behavior).
 .\" As an additional bonus, since
-.\" .IR /proc/[pid]/cmdline
+.\" .I /proc/[pid]/cmdline
 .\" is inaccessible for other users,
 .\" poorly written programs passing sensitive information via
 .\" program arguments are now protected against local eavesdroppers.
 .TP
 2
 As for mode 1, but in addition the
-.IR /proc/[pid]
+.I /proc/[pid]
 directories belonging to other users become invisible.
 This means that
-.IR /proc/[pid]
+.I /proc/[pid]
 entries can no longer be used to discover the PIDs on the system.
 This doesn't hide the fact that a process with a specific PID value exists
 (it can be learned by other means, for example, by "kill \-0 $PID"),
@@ -131,7 +131,7 @@ but it hides a process's UID and GID,
 which could otherwise be learned by employing
 .BR stat (2)
 on a
-.IR /proc/[pid]
+.I /proc/[pid]
 directory.
 This greatly complicates an attacker's task of gathering
 information about running processes (e.g., discovering whether
@@ -159,7 +159,7 @@ Underneath
 .IR /proc ,
 there are the following general groups of files and subdirectories:
 .TP
-.IR /proc/[pid] " subdirectories"
+.I /proc/[pid] " subdirectories"
 Each one of these subdirectories contains files and subdirectories
 exposing information about the process with the corresponding process ID.
 .IP
@@ -185,11 +185,11 @@ with
 to view the contents of
 .IR /proc ).
 .TP
-.IR /proc/[tid] " subdirectories"
+.I /proc/[tid] " subdirectories"
 Each one of these subdirectories contains files and subdirectories
 exposing information about the thread with the corresponding thread ID.
 The contents of these directories are the same as the corresponding
-.IR /proc/[pid]/task/[tid]
+.I /proc/[pid]/task/[tid]
 directories.
 .IP
 The
@@ -276,7 +276,7 @@ The attribute was reset to the value in the file
 .RE
 .IP
 Resetting the "dumpable" attribute to 1 reverts the ownership of the
-.IR /proc/[pid]/*
+.I /proc/[pid]/*
 files to the process's effective UID and GID.
 Note, however, that if the effective UID or GID is subsequently modified,
 then the "dumpable" attribute may be reset, as described in
@@ -380,7 +380,7 @@ any file creation calls it may make, but the attribute will persist
 across multiple file creation calls within a program unless it is
 explicitly reset.
 In SELinux, a process can set only its own
-.IR /proc/[pid]/attr/fscreate
+.I /proc/[pid]/attr/fscreate
 attribute.
 .TP
 .IR /proc/[pid]/attr/keycreate " (since Linux 2.6.18)"
@@ -469,7 +469,7 @@ Clearing the PG_Referenced and ACCESSED/YOUNG bits provides a method
 to measure approximately how much memory a process is using.
 One first inspects the values in the "Referenced" fields
 for the VMAs shown in
-.IR /proc/[pid]/smaps
+.I /proc/[pid]/smaps
 to get an idea of the memory footprint of the
 process.
 One then clears the PG_Referenced and ACCESSED/YOUNG bits
@@ -490,7 +490,7 @@ This is used (in conjunction with
 .IR /proc/[pid]/pagemap )
 by the check-point restore system to discover which pages of a process
 have been dirtied since the file
-.IR /proc/[pid]/clear_refs
+.I /proc/[pid]/clear_refs
 was written to.
 .TP
 5 (since Linux 4.0)
@@ -500,11 +500,11 @@ current resident set size value.
 .RE
 .IP
 Writing any value to
-.IR /proc/[pid]/clear_refs
+.I /proc/[pid]/clear_refs
 other than those listed above has no effect.
 .IP
 The
-.IR /proc/[pid]/clear_refs
+.I /proc/[pid]/clear_refs
 file is present only if the
 .B CONFIG_PROC_PAGE_MONITOR
 kernel configuration option is enabled.
@@ -726,7 +726,7 @@ is surrounded by square brackets.
 .IP
 For example, an epoll file descriptor will have a symbolic link
 whose content is the string
-.IR "anon_inode:[eventpoll]" .
+.IR anon_inode:[eventpoll] .
 .IP
 .\"The following was still true as at kernel 2.6.13
 In a multithreaded process, the contents of this directory
@@ -740,7 +740,7 @@ and programs that write to a file named as a command-line argument,
 but don't send their output to standard output
 if no argument is supplied, can nevertheless be made to use
 standard input or standard output by using
-.IR /proc/[pid]/fd
+.I /proc/[pid]/fd
 files as command-line arguments.
 For example, assuming that
 .I \-i
@@ -779,7 +779,7 @@ which respectively link to the files
 .IR 0 ,
 .IR 1 ,
 and
-.IR 2
+.I 2
 in
 .IR /proc/self/fd .
 Thus the example command above could be written as:
@@ -1352,7 +1352,7 @@ Offset field in the ELF program headers
 There are additional helpful pseudo-paths:
 .RS
 .TP
-.IR [stack]
+.I [stack]
 The initial process's (also known as the main thread's) stack.
 .TP
 .IR [stack:<tid>] " (from Linux 3.4 to 4.4)"
@@ -1362,17 +1362,17 @@ A thread's stack (where the
 .IR <tid>
 is a thread ID).
 It corresponds to the
-.IR /proc/[pid]/task/[tid]/
+.I /proc/[pid]/task/[tid]/
 path.
 This field was removed in Linux 4.5, since providing this information
 for a process with large numbers of threads is expensive.
 .TP
-.IR [vdso]
+.I [vdso]
 The virtual dynamically linked shared object.
 See
 .BR vdso (7).
 .TP
-.IR [heap]
+.I [heap]
 The process's heap.
 .in
 .RE
@@ -1423,7 +1423,7 @@ in the process's mount namespace (see
 It supplies various information
 (e.g., propagation state, root of mount for bind mounts,
 identifier for each mount and its parent) that is missing from the (older)
-.IR /proc/[pid]/mounts
+.I /proc/[pid]/mounts
 file, and fixes various other problems with that file
 (e.g., nonextensibility,
 failure to distinguish per-mount versus per-superblock options).
@@ -1731,9 +1731,9 @@ scaled linearly with
 .IR oom_score_adj .
 .IP
 Writing to
-.IR /proc/[pid]/oom_score_adj
+.I /proc/[pid]/oom_score_adj
 or
-.IR /proc/[pid]/oom_adj
+.I /proc/[pid]/oom_adj
 will change the other with its scaled value.
 .IP
 The
@@ -1775,7 +1775,7 @@ PTE is soft-dirty
 54\(en0
 If the page is present in RAM (bit 63), then these bits
 provide the page frame number, which can be used to index
-.IR /proc/kpageflags
+.I /proc/kpageflags
 and
 .IR /proc/kpagecount .
 If the page is present in swap (bit 62),
@@ -1786,14 +1786,14 @@ Before Linux 3.11, bits 60\(en55 were
 used to encode the base-2 log of the page size.
 .IP
 To employ
-.IR /proc/[pid]/pagemap
+.I /proc/[pid]/pagemap
 efficiently, use
-.IR /proc/[pid]/maps
+.I /proc/[pid]/maps
 to determine which areas of memory are actually mapped and seek
 to skip over unmapped regions.
 .IP
 The
-.IR /proc/[pid]/pagemap
+.I /proc/[pid]/pagemap
 file is present only if the
 .B CONFIG_PROC_PAGE_MONITOR
 kernel configuration option is enabled.
@@ -2034,7 +2034,7 @@ encoded using the following two-letter codes:
     uw  - userfaultfd wprotect pages tracking (since Linux 4.3)
 .IP
 The
-.IR /proc/[pid]/smaps
+.I /proc/[pid]/smaps
 file is present only if the
 .B CONFIG_PROC_PAGE_MONITOR
 kernel configuration option is enabled.
@@ -2276,20 +2276,20 @@ see the description of
 in
 .BR getrlimit (2).
 .TP
-(26) \fIstartcode\fP \ %lu \ [PT]
+.RI "(26) " startcode "  %lu  [PT]"
 The address above which program text can run.
 .TP
-(27) \fIendcode\fP \ %lu \ [PT]
+.RI "(27) " endcode "  %lu  [PT]"
 The address below which program text can run.
 .TP
-(28) \fIstartstack\fP \ %lu \ [PT]
+.RI "(28) " startstack "  %lu  [PT]"
 The address of the start (i.e., bottom) of the stack.
 .TP
-(29) \fIkstkesp\fP \ %lu \ [PT]
+.RI "(29) " kstkesp "  %lu  [PT]"
 The current value of ESP (stack pointer), as found in the
 kernel stack page for the process.
 .TP
-(30) \fIkstkeip\fP \ %lu \ [PT]
+.RI "(30) " kstkeip "  %lu  [PT]"
 The current EIP (instruction pointer).
 .TP
 (31) \fIsignal\fP \ %lu
@@ -2316,7 +2316,7 @@ Obsolete, because it does not provide information on real-time signals; use
 .I /proc/[pid]/status
 instead.
 .TP
-(35) \fIwchan\fP \ %lu \ [PT]
+.RI "(35) " wchan "  %lu  [PT]"
 This is the "channel" in which the process is waiting.
 It is the address of a location in the kernel where the process is sleeping.
 The corresponding symbolic name can be found in
@@ -2362,42 +2362,42 @@ for a guest operating system), measured in clock ticks (divide by
 Guest time of the process's children, measured in clock ticks (divide by
 .IR sysconf(_SC_CLK_TCK) ).
 .TP
-(45) \fIstart_data\fP \ %lu \ (since Linux 3.3) \ [PT]
+.RI "(45) " start_data "  %lu  (since Linux 3.3)  [PT]"
 .\" commit b3f7f573a20081910e34e99cbc91831f4f02f1ff
 Address above which program initialized and
 uninitialized (BSS) data are placed.
 .TP
-(46) \fIend_data\fP \ %lu \ (since Linux 3.3) \ [PT]
+.RI "(46) " end_data "  %lu  (since Linux 3.3)  [PT]"
 .\" commit b3f7f573a20081910e34e99cbc91831f4f02f1ff
 Address below which program initialized and
 uninitialized (BSS) data are placed.
 .TP
-(47) \fIstart_brk\fP \ %lu \ (since Linux 3.3) \ [PT]
+.RI "(47) " start_brk "  %lu  (since Linux 3.3)  [PT]"
 .\" commit b3f7f573a20081910e34e99cbc91831f4f02f1ff
 Address above which program heap can be expanded with
 .BR brk (2).
 .TP
-(48) \fIarg_start\fP \ %lu \ (since Linux 3.5) \ [PT]
+.RI "(48) " arg_start "  %lu  (since Linux 3.5)  [PT]"
 .\" commit 5b172087f99189416d5f47fd7ab5e6fb762a9ba3
 Address above which program command-line arguments
 .RI ( argv )
 are placed.
 .TP
-(49) \fIarg_end\fP \ %lu \ (since Linux 3.5) \ [PT]
+.RI "(49) " arg_end "  %lu  (since Linux 3.5)  [PT]"
 .\" commit 5b172087f99189416d5f47fd7ab5e6fb762a9ba3
 Address below program command-line arguments
 .RI ( argv )
 are placed.
 .TP
-(50) \fIenv_start\fP \ %lu \ (since Linux 3.5) \ [PT]
+.RI "(50) " env_start "  %lu  (since Linux 3.5)  [PT]"
 .\" commit 5b172087f99189416d5f47fd7ab5e6fb762a9ba3
 Address above which program environment is placed.
 .TP
-(51) \fIenv_end\fP \ %lu \ (since Linux 3.5) \ [PT]
+.RI "(51) " env_end "  %lu  (since Linux 3.5)  [PT]"
 .\" commit 5b172087f99189416d5f47fd7ab5e6fb762a9ba3
 Address below which program environment is placed.
 .TP
-(52) \fIexit_code\fP \ %d \ (since Linux 3.5) \ [PT]
+.RI "(52) " exit_code "  %d  (since Linux 3.5)  [PT]"
 .\" commit 5b172087f99189416d5f47fd7ab5e6fb762a9ba3
 The thread's exit status in the form reported by
 .BR waitpid (2).
@@ -2985,7 +2985,7 @@ Permission to access this file is governed by a ptrace access mode
 check; see
 .BR ptrace (2).
 .TP
-.IR /proc/[tid]
+.I /proc/[tid]
 There  is a numerical subdirectory for each running thread
 that is not a thread group leader
 (i.e., a thread whose thread ID is not the same as its process ID);
@@ -2994,7 +2994,7 @@ Each one of these subdirectories contains files and subdirectories
 exposing information about the thread with the thread ID
 .IR tid .
 The contents of these directories are the same as the corresponding
-.IR /proc/[pid]/task/[tid]
+.I /proc/[pid]/task/[tid]
 directories.
 .IP
 The
@@ -4185,7 +4185,8 @@ is already a device known on this address or the address is invalid, an
 error will be returned.
 .TP
 .I /proc/scsi/[drivername]
-\fI[drivername]\fP can currently be NCR53c7xx, aha152x, aha1542, aha1740,
+.I [drivername]
+can currently be NCR53c7xx, aha152x, aha1542, aha1740,
 aic7xxx, buslogic, eata_dma, eata_pio, fdomain, in2000, pas16, qlogic,
 scsi_debug, seagate, t128, u15\-24f, ultrastore, or wd7000.
 These directories show up for all drivers that registered at least one
@@ -4771,7 +4772,7 @@ In effect,
 the value in this file determines whether core dump files are
 produced for set-user-ID or otherwise protected/tainted binaries.
 The "dumpable" setting also affects the ownership of files in a process's
-.IR /proc/[pid]
+.I /proc/[pid]
 directory, as described above.
 .IP
 Three different integer values can be specified:
diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
index a1436192e..943181a34 100644
--- a/man7/mount_namespaces.7
+++ b/man7/mount_namespaces.7
@@ -39,11 +39,11 @@ The views provided by the
 .IR /proc/[pid]/mounts ,
 .IR /proc/[pid]/mountinfo ,
 and
-.IR /proc/[pid]/mountstats
+.I /proc/[pid]/mountstats
 files (all described in
 .BR proc (5))
 correspond to the mount namespace in which the process with the PID
-.IR [pid]
+.I [pid]
 resides.
 (All of the processes that reside in the same mount namespace
 will see the same view in these files.)
@@ -874,7 +874,7 @@ and do not have submounts under them are unmounted.
 The
 .I propagate_from:X
 tag is shown in the optional fields of a
-.IR /proc/[pid]/mountinfo
+.I /proc/[pid]/mountinfo
 record in cases where a process can't see a slave's immediate master
 (i.e., the pathname of the master is not reachable from
 the filesystem root directory)
diff --git a/man7/unix.7 b/man7/unix.7
index bd34ac2d9..79205910b 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -141,7 +141,7 @@ should not be inspected.
 .IR abstract :
 an abstract socket address is distinguished (from a pathname socket)
 by the fact that
-.IR sun_path[0]
+.I sun_path[0]
 is a null byte (\(aq\e0\(aq).
 The socket's address in this namespace is given by the additional
 bytes in
-- 
2.29.2

