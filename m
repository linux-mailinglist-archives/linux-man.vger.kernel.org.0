Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA89F2BC276
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 23:36:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728626AbgKUWfo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 17:35:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728584AbgKUWfn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 17:35:43 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C1EBC0613CF
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 14:35:43 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id r17so14705975wrw.1
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 14:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KAq54ORYznlVGRwKW5BFW4TPkxkFiHSn37g+sXTtjls=;
        b=RlyGFIPZYRUc9ILar+ORW+q7GnG1b1IhYtEutlh27KcNWPFmRZxT4hSHkWGdMn/d3K
         jnJD+FwDOO9SELB8McK+0ENUw9NLvrVxKKUzyZiap1Rtf5KXLQDsGtwG/+fefpnqPgku
         SNrGfOnd2apCczEdEkPanAW6+s38M1vkYs+QBOw1h3Rn0wB01kbQEZ6Sx0f+MAbDxZG4
         hrcMVpFgeSEjtIMsw+GWKvrDrMNfGSSGdTiKkG4GwVB84hnjRF8HdPbi3wO8wdVLD9tW
         7ENi4d4Je91tgMONN0qZs2GvjJzMtGxwudFBB+zuRDJBnw4ZyTMkx3Vbc+ReIzonazWi
         PAbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KAq54ORYznlVGRwKW5BFW4TPkxkFiHSn37g+sXTtjls=;
        b=DmDrC38159z27OWVDzui2ry69wGHpUIFd/tGgWTWrXVvJcQWHGO3CSvOK84rTBkBr6
         pJtuIHYbFwqMh/PhsKyqtk7K91hAlJk4LCyTEyOm7WEJwODnByweIk0rSRU+ZnygBzX3
         e/VhfO9d0PeNd+lO+ySB/Kw4pFp7fMFRzLPGJWvloith7cqy6pf4jBcaVT+qoMVM6XPU
         Am90VLXzyV2eD/zh6WdwSp8H0BoRPgSKlRZqwlepn7i+aoz4wXcBYVokxcv3z36H8Npj
         q0x2IB7UyLj01lunkLoxwO12QjdJbrYHe6g/OeI3oLdeAMRUvekR7jtN/4qa9d6iyA7h
         Rvvg==
X-Gm-Message-State: AOAM532IsVApupvU2uiJc9u8pGRyNyWxTEyuqbJQvNvR0lMa9Ov1QKI3
        0DiiShPwfHef20L5tBcspKU=
X-Google-Smtp-Source: ABdhPJzsuphh0zInizSYJZM/jlwQi6Xv/l9erWR6BNFEBXvT1TWhjPlSokj2HlJhAv2gXiQpZbgr0A==
X-Received: by 2002:adf:f88c:: with SMTP id u12mr22885284wrp.209.1605998141558;
        Sat, 21 Nov 2020 14:35:41 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id i16sm10467663wru.92.2020.11.21.14.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 14:35:41 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] execve.2, proc.5, mount_namespaces.7, unix.7: srcfix
Date:   Sat, 21 Nov 2020 23:34:43 +0100
Message-Id: <20201121223442.18993-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201121220349.18510-1-alx.manpages@gmail.com>
References: <20201121220349.18510-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

This is what I removed in v2.

 man2/execve.2           |   6 +--
 man5/proc.5             | 105 ++++++++++++++++++++--------------------
 man7/mount_namespaces.7 |   6 +--
 man7/unix.7             |   2 +-
 4 files changed, 60 insertions(+), 59 deletions(-)

diff --git a/man2/execve.2 b/man2/execve.2
index 5e995f289..0e21853f7 100644
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
@@ -356,7 +356,7 @@ argument of
 starting at
 .IR argv[1] .
 Note that there is no way to get the
-.IR argv[0]
+.I argv[0]
 that was passed to the
 .BR execve ()
 call.
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

