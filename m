Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE47A74BF4D
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 23:35:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbjGHVfZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 17:35:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjGHVfY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 17:35:24 -0400
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55C77E48
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 14:35:22 -0700 (PDT)
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-7672073e7b9so241372585a.0
        for <linux-man@vger.kernel.org>; Sat, 08 Jul 2023 14:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688852121; x=1691444121;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qgpuYXsHB3D9Q/GIN1ziaUmIsmzHTrGw8vu7FqB4Iso=;
        b=n0dRcynHWL1gUJEzqxxNso0E+XQXRBfxcG53Pa2zBB0GaZxUYGPk+k4hWkKM7c3p6Y
         Ot6nA3mtBb6ivqFuTBIFPQY4MG/IyPaEQZJr7zh6IBurhTGeDgH9Vv/lA+2eD61wFFtE
         Tc4kP6Of9l3tHp2J0n9zLKtgP0ZGInzVmpyBxiQc5tOtWcLIL3U+mHum/Hm5liannPkF
         ZOrxXoASJQsgPaeelGgKFiDRIM51tX9LPKgDI6gDVFuyxpwcKWxJGaqGdvl+ntvia3Ws
         JhP6YR237sdzQ3sGdtJ20BRUFb/lBkLex0+8zv1W0sWjv55sKhcMTN8zaX7GT+4UEF9O
         UaGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688852121; x=1691444121;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qgpuYXsHB3D9Q/GIN1ziaUmIsmzHTrGw8vu7FqB4Iso=;
        b=UT11nCKzqTUEKQaleWm1L5ezX8zKwPvwAa+a4ZZXXpJfgz7nVBg4lCQdrB86krt2UX
         8rJKbVEcVpYdfjaxScoLa1AMZtHmKD7qJ2KeI2R/V3bO6DVR4+spQTdm3i/FIyd7jVYb
         jthKvJ+48E/Lo+d87jmEnPg8+cBacswYY+O6ix5+3mcP9yLD9WY7JdYbGabdjkBDCarc
         MQX2BWSMTp3PHcFsizRzVVjXHm+NU7o44B+NHQanA3KcxGxl61wQvLmBAcI736Umolq+
         xhgDmiwa2/lab1cs1AdGnJYBbjsK1BVNfrf2Tv3h3gcnrBdEOewn0Stc0BTY1tAhzYgI
         /ZQQ==
X-Gm-Message-State: ABy/qLZcJyMCy1oDuqHOMLyR/Oq0F6Uu8R5LWHJEekWtqxLEr5Bz1rBQ
        0KWd09Ps7J9ySIrUApsFg48=
X-Google-Smtp-Source: APBJJlG4ODHZmcTmoELhFgkgtCr4QT871tzuesxLaTe8Rqez6dWzeyOyOUD6IG4fOyhF2agW6ymv4A==
X-Received: by 2002:a05:620a:1b98:b0:767:5bdf:3e1b with SMTP id dv24-20020a05620a1b9800b007675bdf3e1bmr6898040qkb.46.1688852121152;
        Sat, 08 Jul 2023 14:35:21 -0700 (PDT)
Received: from firmament.localdomain (c-73-106-204-164.hsd1.ga.comcast.net. [73.106.204.164])
        by smtp.gmail.com with ESMTPSA id a125-20020a0dd883000000b0057736c436f1sm2005624ywe.141.2023.07.08.14.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Jul 2023 14:35:20 -0700 (PDT)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Matthew House <mattlloydhouse@gmail.com>
Subject: [PATCH] prctl.2: Clarify and update PR_SET_MM rules
Date:   Sat,  8 Jul 2023 17:35:20 -0400
Message-ID: <20230708213520.320659-1-mattlloydhouse@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Most of the rules for calling prctl(PR_SET_MM) have changed across the
years, and this man page contains many descriptions that are long obsolete.
In particular, it is missing any mention that prctl(PR_SET_MM_MAP) can be
called from an unprivileged process. Clarify the rules for prctl(PR_SET_MM)
and the error codes it returns, and update them to match newer kernel
behavior.

Signed-off-by: Matthew House <mattlloydhouse@gmail.com>
---
I pulled all of the details from kernel/sys.c and kernel/fork.c. There are
several more minutiae that I wasn't sure whether or not to include, given
that I don't know what this project's general policy is on including
historical details:

PR_SET_MM_MAP_SIZE doesn't use arg4, but it also doesn't enforce that it is
equal to zero. Should this be noted here, fixed in the kernel, or neither?

Since Linux 5.15 (commit fe69d560b5bd, "kernel/fork: always deny write
access to current MM exe_file"), /proc/pid/exe is used as the "file being
executed" for the purpose of ETXTBSY; PR_SET_MM_EXE_FILE (and its
PR_SET_MM_MAP equivalent) will deny write access on the new executable and
re-allow it on the old executable, if nothing else is executing it. Before
then, the "file being executed" was fixed to the original file passed to
execve(2). Perhaps this would better belong in proc.5, if it belongs in the
man pages at all?

Before Linux 5.15 (commit e1fbbd073137, "prctl: allow to setup brk for
et_dyn executables"), PR_SET_MM enforced that start_brk and brk were
strictly greater than end_data.

Before Linux 5.9 (commit 227175b2c914, "prctl: exe link permission error
changed from -EINVAL to -EPERM"), PR_SET_MM_EXE_FILE (and its equivalent)
returned -EINVAL rather than -EPERM if the caller didn't have local
CAP_SYS_ADMIN.

Before Linux 5.2 (commit a9e73998f9d7, "kernel/sys.c: prctl: fix false
positive in validate_prctl_map()"), PR_SET_MM enforced that start_data was
strictly less than end_data, rather than less than or equal.

Before Linux 4.14 (commit 4d28df6152aa, "prctl: Allow local CAP_SYS_ADMIN
changing exe_file"), for PR_SET_MM_EXE_FILE (and its equivalent), the
caller had to have the local root uid/gid, rather than just having local
CAP_SYS_ADMIN.

Before Linux 4.2 (commit 4a00e9df293d, "prctl: more prctl(PR_SET_MM_*)
checks"), the individual PR_SET_MM_* options did not enforce that start
addresses were below the corresponding end addresses.

Before Linux 3.10 (commit 52b3694157e3, "kernel/sys.c: make
prctl(PR_SET_MM) generally available"), all PR_SET_MM options required
CONFIG_CHECKPOINT_RESTORE to be enabled.

Before Linux 3.5 (commits bafb282df29c, "c/r: prctl: update
prctl_set_mm_exe_file() after mm->num_exe_file_vmas removal", and
4229fb1dc684, "c/r: prctl: less paranoid prctl_set_mm_exe_file()"),
PR_SET_MM_EXE_FILE enforced that no executable files were mapped, rather
than just the old executable file.

Before Linux 3.5 (commits fe8c7f5cbf91, "c/r: prctl: extend PR_SET_MM to
set up more mm_struct entries", and 736f24d5e59d, "c/r: prctl: drop VMA
flags test on PR_SET_MM_ stack data assignment"), PR_SET_MM enforced all
the memory area flags described in the current version of this man page.

Before Linux 3.5 (commit 1ad75b9e1628, "c/r: prctl: add minimal address
test to PR_SET_MM"), PR_SET_MM did not enforce that addresses were greater
than or equal to mmap_min_addr.

Thank you,
Matthew House

 man2/prctl.2 | 235 ++++++++++++++++++++++++++++++++++++---------------
 1 file changed, 168 insertions(+), 67 deletions(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 09e9072fa..312b24087 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -604,7 +604,13 @@ for more information) and a regular application should not use this feature.
 However, there are cases, such as self-modifying programs,
 where a program might find it useful to change its own memory map.
 .IP
-The calling process must have the
+If
+.I arg2
+is neither
+.B PR_SET_MM_MAP
+nor
+.BR PR_SET_MM_MAP_SIZE ,
+then the calling process must have the
 .B CAP_SYS_RESOURCE
 capability.
 The value in
@@ -627,41 +633,31 @@ option enabled.
 .TP
 .B PR_SET_MM_START_CODE
 Set the address above which the program text can run.
-The corresponding memory area must be readable and executable,
-but not writable or shareable (see
-.BR mprotect (2)
-and
-.BR mmap (2)
-for more information).
 .TP
 .B PR_SET_MM_END_CODE
 Set the address below which the program text can run.
-The corresponding memory area must be readable and executable,
-but not writable or shareable.
+This address must be greater than
+the starting address of the current program text.
 .TP
 .B PR_SET_MM_START_DATA
 Set the address above which initialized and
 uninitialized (bss) data are placed.
-The corresponding memory area must be readable and writable,
-but not executable or shareable.
 .TP
 .B PR_SET_MM_END_DATA
 Set the address below which initialized and
 uninitialized (bss) data are placed.
-The corresponding memory area must be readable and writable,
-but not executable or shareable.
+This address must be greater than or equal to
+the starting address of the current data segment.
 .TP
 .B PR_SET_MM_START_STACK
-Set the start address of the stack.
-The corresponding memory area must be readable and writable.
+Set the starting address of the stack.
+The corresponding memory area must already exist.
 .TP
 .B PR_SET_MM_START_BRK
 Set the address above which the program heap can be expanded with
 .BR brk (2)
 call.
-The address must be greater than the ending address of
-the current program data segment.
-In addition, the combined size of the resulting heap and
+The combined size of the resulting heap and
 the size of the data segment can't exceed the
 .B RLIMIT_DATA
 resource limit (see
@@ -674,6 +670,9 @@ value.
 The requirements for the address are the same as for the
 .B PR_SET_MM_START_BRK
 option.
+Also, this address must be greater than or equal to
+the current starting address for
+.BR brk (2).
 .PP
 The following options are available since Linux 3.5.
 .\" commit fe8c7f5cbf91124987106faa3bdf0c8b955c4cf7
@@ -683,12 +682,16 @@ Set the address above which the program command line is placed.
 .TP
 .B PR_SET_MM_ARG_END
 Set the address below which the program command line is placed.
+This address must be greater than or equal to
+the starting address for the current program command line.
 .TP
 .B PR_SET_MM_ENV_START
 Set the address above which the program environment is placed.
 .TP
 .B PR_SET_MM_ENV_END
 Set the address below which the program environment is placed.
+This address must be greater than or equal to
+the starting address for the current program environment.
 .IP
 The address passed with
 .BR PR_SET_MM_ARG_START ,
@@ -697,11 +700,7 @@ The address passed with
 and
 .B PR_SET_MM_ENV_END
 should belong to a process stack area.
-Thus, the corresponding memory area must be readable, writable, and
-(depending on the kernel configuration) have the
-.B MAP_GROWSDOWN
-attribute set (see
-.BR mmap (2)).
+Thus, the corresponding memory area must already exist.
 .TP
 .B PR_SET_MM_AUXV
 Set a new auxiliary vector.
@@ -710,7 +709,7 @@ The
 argument should provide the address of the vector.
 The
 .I arg4
-is the size of the vector.
+argument is the size of the vector in bytes.
 .TP
 .B PR_SET_MM_EXE_FILE
 .\" commit b32dfe377102ce668775f8b6b1461f7ad428f8b6
@@ -724,12 +723,10 @@ The file descriptor should be obtained with a regular
 .BR open (2)
 call.
 .IP
-To change the symbolic link, one needs to unmap all existing
-executable memory areas, including those created by the kernel itself
-(for example the kernel usually creates at least one executable
-memory area for the ELF
-.I .text
-section).
+.\" commit 4229fb1dc6843c49a14bb098719f8a696cdc44f8
+For the symbolic link to be changed,
+the old executable file must be fully unmapped
+from the address space of the calling process.
 .IP
 In Linux 4.9 and earlier, the
 .\" commit 3fb4afd9a504c2386b8435028d43283216bf588e
@@ -753,18 +750,36 @@ The
 .I arg4
 argument should provide the size of the struct.
 .IP
+If
+.I auxv_size
+is 0, then
+.I auxv
+is ignored,
+and the auxiliary vector is left unchanged.
+.IP
+If
+.I exe_file
+is \-1, then the
+.IR /proc/ pid /exe
+symbolic link is left unchanged.
+Otherwise, the calling process must have the
+.B CAP_SYS_ADMIN
+or (since Linux 5.9)
+.\" commit ebd6de6812387a2db9a52842cfbe004da1dd3be8
+.B CAP_CHECKPOINT_RESTORE
+capability in its user namespace.
+.IP
 This feature is available only if the kernel is built with the
 .B CONFIG_CHECKPOINT_RESTORE
 option enabled.
 .TP
 .B PR_SET_MM_MAP_SIZE
-Returns the size of the
+Return the size of the
 .I struct prctl_mm_map
-the kernel expects.
+the kernel expects,
+in the location pointed to by
+.IR "(unsigned int\~*) arg3" .
 This allows user space to find a compatible struct.
-The
-.I arg4
-argument should be a pointer to an unsigned int.
 .IP
 This feature is available only if the kernel is built with the
 .B CONFIG_CHECKPOINT_RESTORE
@@ -2076,11 +2091,23 @@ above).
 .I option
 is
 .BR PR_SET_MM ,
-and
-.I arg3
+.I arg2
+is
+.B PR_SET_MM_EXE_FILE
+or
+.BR PR_SET_MM_MAP ,
+and the file is not executable.
+.TP
+.B EACCES
+.I option
+is
+.BR PR_SET_MM ,
+.I arg2
 is
-.BR PR_SET_MM_EXE_FILE ,
-the file is not executable.
+.B PR_SET_MM_EXE_FILE
+or
+.BR PR_SET_MM_MAP ,
+and the file was open for writing by one or more processes.
 .TP
 .B EBADF
 .I option
@@ -2088,21 +2115,26 @@ is
 .BR PR_SET_MM ,
 .I arg3
 is
-.BR PR_SET_MM_EXE_FILE ,
+.B PR_SET_MM_EXE_FILE
+or
+.BR PR_SET_MM_MAP ,
 and the file descriptor passed in
-.I arg4
+.I arg3
+or
+.I exe_fd
 is not valid.
 .TP
 .B EBUSY
 .I option
 is
 .BR PR_SET_MM ,
-.I arg3
+.I arg2
 is
-.BR PR_SET_MM_EXE_FILE ,
-and this the second attempt to change the
-.IR /proc/ pid /exe
-symbolic link, which is prohibited.
+.B PR_SET_MM_EXE_FILE
+or
+.BR PR_SET_MM_MAP ,
+and the old executable file is mapped
+into the address space of the calling process.
 .TP
 .B EFAULT
 .I arg2
@@ -2124,6 +2156,36 @@ is an invalid address.
 .B EFAULT
 .I option
 is
+.BR PR_SET_MM ,
+.I arg2
+is
+.BR PR_SET_MM_START_STACK ,
+.BR PR_SET_MM_ARG_START ,
+.BR PR_SET_MM_ARG_END ,
+.BR PR_SET_MM_ENV_START ,
+.BR PR_SET_MM_ENV_END ,
+.BR PR_SET_MM_AUXV ,
+.BR PR_SET_MM_MAP ,
+or
+.BR PR_SET_MM_MAP_SIZE ,
+and
+.I arg3
+is an invalid address.
+.TP
+.B EFAULT
+.I option
+is
+.BR PR_SET_MM ,
+.I arg2
+is
+.BR PR_SET_MM_MAP ,
+and
+.I auxv
+is an invalid address.
+.TP
+.B EFAULT
+.I option
+is
 .B PR_SET_SYSCALL_USER_DISPATCH
 and
 .I arg5
@@ -2138,9 +2200,8 @@ or not supported on this system.
 .B EINVAL
 .I option
 is
-.B PR_MCE_KILL
-or
-.B PR_MCE_KILL_GET
+.BR PR_MCE_KILL ,
+.BR PR_MCE_KILL_GET ,
 or
 .BR PR_SET_MM ,
 and unused
@@ -2175,40 +2236,60 @@ and the kernel was not configured with
 .I option
 is
 .BR PR_SET_MM ,
-and one of the following is true
+and one of the following is true:
 .RS
 .IP \[bu] 3
-.I arg4
-or
-.I arg5
-is nonzero;
-.IP \[bu]
 .I arg3
-is greater than
+specifies an value less than
+.I /proc/sys/vm/mmap_min_addr
+or greater than
 .B TASK_SIZE
 (the limit on the size of the user address space for this architecture);
 .IP \[bu]
+.I arg3
+specifies a starting address greater than the corresponding ending address,
+or an ending address less than the corresponding starting address;
+.IP \[bu]
 .I arg2
 is
-.BR PR_SET_MM_START_CODE ,
-.BR PR_SET_MM_END_CODE ,
 .BR PR_SET_MM_START_DATA ,
 .BR PR_SET_MM_END_DATA ,
+.BR PR_SET_MM_START_BRK ,
+.BR PR_SET_MM_BRK ,
 or
-.BR PR_SET_MM_START_STACK ,
-and the permissions of the corresponding memory area are not as required;
+.BR PR_SET_MM_MAP ,
+and
+.I arg3
+specifies a value that would cause the
+.B RLIMIT_DATA
+resource limit to be exceeded;
 .IP \[bu]
 .I arg2
 is
-.B PR_SET_MM_START_BRK
+.B PR_SET_MM_AUXV
 or
-.BR PR_SET_MM_BRK ,
+.BR PR_SET_MM_MAP ,
 and
-.I arg3
-is less than or equal to the end of the data segment
-or specifies a value that would cause the
-.B RLIMIT_DATA
-resource limit to be exceeded.
+.I arg4
+or
+.I auxv_size
+is larger than the space internally reserved for the auxiliary vector;
+.IP \[bu]
+.I arg2
+is
+.BR PR_SET_MM_MAP ,
+and
+.I arg4
+specifies an incorrect size for
+.IR "struct prctl_mm_map" ;
+.IP \[bu]
+.I arg2
+is
+.BR PR_SET_MM_MAP ,
+.I auxv
+is a null pointer, and
+.I auxv_size
+is not 0.
 .RE
 .TP
 .B EINVAL
@@ -2471,6 +2552,11 @@ capability.
 .I option
 is
 .BR PR_SET_MM ,
+.I arg2
+is neither
+.B PR_SET_MM_MAP
+nor
+.BR PR_SET_MM_MAP_SIZE ,
 and the caller does not have the
 .B CAP_SYS_RESOURCE
 capability.
@@ -2478,6 +2564,21 @@ capability.
 .B EPERM
 .I option
 is
+.BR PR_SET_MM ,
+.I arg2
+is
+.BR PR_SET_MM_MAP ,
+.I exe_fd
+is not \-1,
+and the caller does not have the
+.B CAP_SYS_ADMIN
+or
+.B CAP_CHECKPOINT_RESTORE
+capability in its user namespace.
+.TP
+.B EPERM
+.I option
+is
 .B PR_CAP_AMBIENT
 and
 .I arg2
-- 
2.41.0

