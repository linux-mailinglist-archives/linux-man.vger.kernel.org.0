Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 200FF2E69CA
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 18:39:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728083AbgL1RjX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 12:39:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727534AbgL1RjW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 12:39:22 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E327DC0613D6
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 09:38:41 -0800 (PST)
Received: from localhost (unknown [IPv6:2804:431:c7f5:e396:88cd:ceb6:57aa:eaba])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: krisman)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5948B1F42CD0;
        Mon, 28 Dec 2020 17:38:39 +0000 (GMT)
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, kernel@collabora.com,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH v6] prctl.2: Document Syscall User Dispatch
Date:   Mon, 28 Dec 2020 14:38:32 -0300
Message-Id: <20201228173832.347794-1-krisman@collabora.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

---
Changes since v5:
(suggested by Michael Kerrisk)
  - Change () punctuation
  - fix grammar
  - Add information about interception, return and return value

Changes since v4:
(suggested by Michael Kerrisk)
  - Modify explanation of what dispatch to user space means.
  - Drop references to emulation.
  - Document suggestion about placing libc in allowed-region.
  - Comment about avoiding syscall cost.
Changes since v3:
(suggested by Michael Kerrisk)
  - Explain what dispatch to user space means.
  - Document the fact that the memory region is a single consecutive
  range.
  - Explain failure if *arg5 is set to a bad value.
  - fix english typo.
  - Define what 'invalid memory region' means.

Changes since v2:
(suggested by Alejandro Colomar)
  - selective -> selectively
  - Add missing oxford comma.

Changes since v1:
(suggested by Alejandro Colomar)
  - Use semantic lines
  - Fix usage of .{B|I}R and .{B|I}
  - Don't format literals
  - Fix preferred spelling of userspace
  - Fix case of word
---
 man2/prctl.2 | 159 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 159 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index f25f05fdb593..0a0abfb78055 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1533,6 +1533,135 @@ For more information, see the kernel source file
 (or
 .I Documentation/arm64/sve.txt
 before Linux 5.3).
+.TP
+.\" prctl PR_SET_SYSCALL_USER_DISPATCH
+.\" commit 1446e1df9eb183fdf81c3f0715402f1d7595d4
+.BR PR_SET_SYSCALL_USER_DISPATCH " (since Linux 5.11, x86 only)"
+.IP
+Configure the Syscall User Dispatch mechanism
+for the calling thread.
+This mechanism allows an application
+to selectively intercept system calls
+so that they can be handled within the application itself.
+Interception takes the form of a thread-directed
+.B SIGSYS
+signal that is delivered to the thread
+when it makes a system call.
+If intercepted,
+the system call is not executed by the kernel.
+.IP
+The current Syscall User Dispatch mode is selected via
+.IR arg2 ,
+which can either be set to
+.B PR_SYS_DISPATCH_ON
+to enable the feature,
+or to
+.B PR_SYS_DISPATCH_OFF
+to turn it off.
+.IP
+When
+.I arg2
+is set to
+.BR PR_SYS_DISPATCH_ON ,
+.I arg3
+and
+.I arg4
+respectively identify the
+.I offset
+and
+.I length
+of a single contiguous memory region in the process map
+from where system calls are always allowed to be executed,
+regardless of the switch variable
+(Typically, this area would include the area of memory
+containing the C library.)
+.I arg5
+points to a char-sized variable
+that is a fast switch to enable/disable the mechanism
+without the overhead of doing a system call.
+The variable pointed by
+.I arg5
+can either be set to
+.B PR_SYS_DISPATCH_ON
+to enable the mechanism
+or to
+.B PR_SYS_DISPATCH_OFF
+to temporarily disable it.
+This value is checked by the kernel
+on every system call entry,
+and any unexpected value will raise
+an uncatchable
+.B SIGSYS
+at that time,
+killing the application.
+.IP
+When a system call is intercepted,
+the kernel sends a thread-directed
+.B SIGSYS
+signal to the triggering thread.
+Various fields will be set in the
+.I siginfo_t
+structure (see
+.BR sigaction (2))
+associated with the signal:
+.RS
+.IP * 3
+.I si_signo
+will contain
+.BR SIGSYS .
+.IP *
+.IR si_call_addr
+will show the address of the system call instruction.
+.IP *
+.IR si_syscall
+and
+.IR si_arch
+will indicate which system call was attempted.
+.IP *
+.I si_code
+will contain
+.BR SYS_USER_DISPATCH .
+.IP *
+.I si_errno
+will be set to 0.
+.RE
+.IP
+The program counter will be as though the system call happened
+(i.e., the program counter will not point to the system call instruction).
+.IP
+When the signal handler returns to the kernel,
+the system call completes immediately
+and returns to the calling thread,
+without actually being executed.
+If necessary
+(i.e., when emulating the system call on user space.),
+the signal handler should set the system call return value
+to a sane value,
+by modifying the register context stored in the
+.I ucontext
+argument of the signal handler.
+See
+.BR sigaction (2),
+.BR sigreturn (2),
+and
+.BR getcontext (3)
+for more information.
+.IP
+When
+.I arg2
+is set to
+.BR PR_SYS_DISPATCH_OFF ,
+the remaining arguments must be set to 0.
+.IP
+The setting is not preserved across
+.BR fork (2),
+.BR clone (2),
+or
+.BR execve (2).
+.IP
+For more information,
+see the kernel source file
+.IR Documentation/admin-guide/syscall-user-dispatch.rst
 .\" prctl PR_SET_TAGGED_ADDR_CTRL
 .\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
 .TP
@@ -2000,6 +2129,14 @@ and
 .I arg3
 is an invalid address.
 .TP
+.B EFAULT
+.I option
+is
+.B PR_SET_SYSCALL_USER_DISPATCH
+and
+.I arg5
+has an invalid address.
+.TP
 .B EINVAL
 The value of
 .I option
@@ -2231,6 +2368,28 @@ and SVE is not available on this platform.
 .B EINVAL
 .I option
 is
+.B PR_SET_SYSCALL_USER_DISPATCH
+and one of the following is true:
+.RS
+.IP * 3
+.I arg2
+is
+.B PR_SYS_DISPATCH_OFF
+and the remaining arguments are not 0;
+.IP * 3
+.I arg2
+is
+.B PR_SYS_DISPATCH_ON
+and the memory range specified is outside the
+address space of the process.
+.IP * 3
+.I arg2
+is invalid.
+.RE
+.TP
+.B EINVAL
+.I option
+is
 .BR PR_SET_TAGGED_ADDR_CTRL
 and the arguments are invalid or unsupported.
 See the description of
-- 
2.29.2

