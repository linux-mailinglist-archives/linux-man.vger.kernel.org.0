Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F7FA2E016A
	for <lists+linux-man@lfdr.de>; Mon, 21 Dec 2020 21:07:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725811AbgLUUHM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Dec 2020 15:07:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725820AbgLUUHM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Dec 2020 15:07:12 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D087C0613D3
        for <linux-man@vger.kernel.org>; Mon, 21 Dec 2020 12:06:32 -0800 (PST)
Received: from localhost (unknown [IPv6:2804:431:c7f4:32cf:1de2:6c49:9684:18e0])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: krisman)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 558951F44FE5;
        Mon, 21 Dec 2020 20:06:30 +0000 (GMT)
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH v3] prctl.2: Document Syscall User Dispatch
Date:   Mon, 21 Dec 2020 17:06:22 -0300
Message-Id: <20201221200622.3507690-1-krisman@collabora.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

---
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
 man2/prctl.2 | 100 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 100 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index f25f05fdb593..8105c2a0c9de 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1533,6 +1533,78 @@ For more information, see the kernel source file
 (or
 .I Documentation/arm64/sve.txt
 before Linux 5.3).
+.TP
+.\" prctl PR_SET_SYSCALL_USER_DISPATCH
+.\" commit 1446e1df9eb183fdf81c3f0715402f1d7595d4
+.BR PR_SET_SYSCALL_USER_DISPATCH " (since Linux 5.11, x86 only)"
+.IP
+Configure the Syscall User Dispatch mechanism
+for the calling thread,
+to selectively intercept system calls
+and dispatch them back to user space through
+.IR SIGSYS .
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
+With
+.I arg2
+set to
+.BR PR_SYS_DISPATCH_ON ,
+.I arg3
+and
+.I arg4
+respectively identify the
+.I offset
+and
+.I length
+of a memory region in the process map
+from where system calls are always allowed to be executed,
+regardless of the switch variable.
+.I arg5
+points to a char-sized variable
+that is a fast switch to enable/disable the mechanism
+without invoking the kernel.
+The variable pointed by
+.I arg5
+can either be set to
+.B PR_SYS_DISPATCH_ON
+to enable the mechanism
+or to
+.B PR_SYS_DISPATCH_OFF
+to temporarily disable it.
+Any other value will fail the application
+with a
+.IR SIGSYS .
+.IP
+When a system call is intercepted,
+.I SIGSYS
+is raised with
+.I si_code
+set to
+.BR SYS_USER_DISPATCH .
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
@@ -2000,6 +2072,14 @@ and
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
@@ -2229,6 +2309,26 @@ is
 and SVE is not available on this platform.
 .TP
 .B EINVAL
+.I option is
+.B PR_SET_SYSCALL_USER_DISPATCH
+and one of the following is true:
+.RS
+.IP * 3
+.I arg2
+is
+.B PR_SYS_DISPATCH_OFF
+and remaining arguments are not 0;
+.IP * 3
+.I arg2
+is
+.B PR_SYS_DISPATCH_ON
+and the memory region provided is invalid;
+.IP * 3
+.I arg2
+is invalid.
+.RE
+.TP
+.B EINVAL
 .I option
 is
 .BR PR_SET_TAGGED_ADDR_CTRL
-- 
2.29.2

