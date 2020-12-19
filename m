Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5522DED02
	for <lists+linux-man@lfdr.de>; Sat, 19 Dec 2020 05:11:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726177AbgLSEK6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 23:10:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726145AbgLSEK6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 23:10:58 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F646C0617B0
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 20:10:18 -0800 (PST)
Received: from localhost (unknown [IPv6:2804:431:c7f5:3717:b002:37a7:1746:1035])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: krisman)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EBF0B1F466B0;
        Sat, 19 Dec 2020 04:10:15 +0000 (GMT)
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH] prctl.2: Document Syscall User Dispatch
Date:   Sat, 19 Dec 2020 01:10:09 -0300
Message-Id: <20201219041009.3143592-1-krisman@collabora.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 man2/prctl.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index f25f05fdb593..2e82c73c10c2 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1533,6 +1533,70 @@ For more information, see the kernel source file
 (or
 .I Documentation/arm64/sve.txt
 before Linux 5.3).
+.TP
+.\"commit 1446e1df9eb183fdf81c3f0715402f1d7595d4cb
+.BR PR_SET_SYSCALL_USER_DISPATCH " (Since Linux 5.11, x86 only)"
+.IP
+Configure the Syscall User Dispatch mechanism for the calling thread, to
+selective intercept system calls and dispatch them back to userspace
+through
+.IR SIGSYS .
+.IP
+The current Syscall User Dispatch mode is selected via
+.IR "arg2",
+which can either be set to
+.B PR_SYS_DISPATCH_ON
+to enable the feature, or to
+.B PR_SYS_DISPATCH_OFF
+to turn it off.
+.IP
+With
+.IR "arg2"
+set to
+.BR PR_SYS_DISPATCH_ON ,
+.IR "arg3"
+and
+.I "arg4"
+respectively identify the
+.I offset
+and
+.I length
+of a memory region in the process map from where system calls are always
+allowed to be executed, regardless of the switch variable.
+.I "arg5"
+points to a char-sized variable that is a fast switch to enable/disable
+the mechanism without invoking the kernel.
+.I "arg5"
+can be set to either
+.BR PR_SYS_DISPATCH_ON
+to enable the mechanism or to
+.BR PR_SYS_DISPATCH_OFF
+to temporarily disable it.  Any other value will fail the application
+with a
+.IR SIGSYS .
+.IP
+When a system call is intercepted, a
+.I SIGSYS
+is raised with
+.I si_code
+set to
+.B SYS_USER_DISPATCH.
+.IP
+When
+.I "arg2"
+is set to
+.BR PR_SYS_DISPATCH_OFF ,
+the remaining arguments must be set to
+.BR 0 .
+.IP
+The setting is not preserved across
+.BR fork (2),
+.BR clone (2)
+or
+.BR execve (2) .
+.IP
+For more information, see the kernel source file
+.IR Documentation/admin-guide/syscall-user-dispatch.rst
 .\" prctl PR_SET_TAGGED_ADDR_CTRL
 .\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
 .TP
@@ -2000,6 +2064,14 @@ and
 .I arg3
 is an invalid address.
 .TP
+.B EFAULT
+.I option
+is
+.BR PR_SET_SYSCALL_USER_DISPATCH
+and
+.I arg5
+has an invalid address.
+.TP
 .B EINVAL
 The value of
 .I option
@@ -2229,6 +2301,27 @@ is
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
+and remaining arguments are not
+.BR 0.
+.IP * 3
+.I arg2
+is
+.B PR_SYS_DISPATCH_ON
+and the memory region provided is invalid.
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

