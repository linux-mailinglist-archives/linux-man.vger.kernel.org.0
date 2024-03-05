Return-Path: <linux-man+bounces-535-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B85A887171D
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 08:40:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 491DA284EC7
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 07:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3984E7E10B;
	Tue,  5 Mar 2024 07:40:44 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2FE7EEE1
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 07:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709624444; cv=none; b=ufJE3ZkyVf682WiWaZURE/cHpjhIuBGYOYSA6PsWoWRB5PfH14oDukaUhlFxRoG3SYXUhXRoaMHCWhVlm9H75XK1A0QCuXwH8V1lYimLA2ppfMMk/cjtYiXSM3/ln2GCy0m5CJ+9+PO2WxMlTaKdVkLhL7SiezUWH01tQUZLIKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709624444; c=relaxed/simple;
	bh=iVO4SihzRdVr8TyTdev6Qu+q7IgWaoePYYvQzx3G7eM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hR8L6gTuFo/bdxkgEZ+zzvRBrLIrV2MzuUXj1Fyctzq2o0yx8C65HUAaD8XvqGNladJMBtXtdJ8qLeHbS2XAfOWML08yBmqg3ZUMiJu2BdsSrNVi4MTLVAd5ugRwJf1i/9l4ysY4m0JiM0ypJ+AG2nGdF1+Xg7qJ9k7aMik8Du8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: by air.basealt.ru (Postfix, from userid 490)
	id BAC932F20260; Tue,  5 Mar 2024 07:40:32 +0000 (UTC)
X-Spam-Level: 
Received: from taut9powder.malta.altlinux.ru (obninsk.basealt.ru [217.15.195.17])
	by air.basealt.ru (Postfix) with ESMTPSA id 851652F20263;
	Tue,  5 Mar 2024 07:40:21 +0000 (UTC)
From: Alexander Ofitserov <oficerovas@altlinux.org>
To: oficerovas@altlinux.org,
	Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	dutyrok@altlinux.org,
	kovalev@altlinux.org,
	"Dmitry V. Levin" <ldv@altlinux.org>,
	"G. Branden Robinson" <branden@debian.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Subject: [PATCH v4] delete_module.2: Update man to current syscall behaviour
Date: Tue,  5 Mar 2024 10:39:57 +0300
Message-Id: <20240305073957.108599-1-oficerovas@altlinux.org>
X-Mailer: git-send-email 2.33.8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Parameter O_NONBLOCK described in man doesn't exist anymore
in kernel versions 3.13+ (particularly in commit
3f2b9c9cdf389e303b2273679af08aab5f153517 aka v3.13-rc1~83^2~5),
which is quite old, only O_TRUNC parameter present for current kernel version,
O_NONBLOCK does nothing.

O_NONBLOCK used in "try_stop_module" function, which is invoked by syscall
delete_module, here is the code of this function for kernel version 3.12.74:
https://elixir.bootlin.com/linux/v3.12.74/source/kernel/module.c#L775

However, in later kernels, this parameter disappeared.
Also, here is the code for 3.13:
https://elixir.bootlin.com/linux/v3.13/source/kernel/module.c#L767

In recent kernels, 6.7.5 for example, this parameter also absent:
https://elixir.bootlin.com/linux/v6.7.5/source/kernel/module/main.c#L637

v3 -> v4:
added more information with links to code to commit message

v2 -> v3:
subsection Linux 3.12 and earlier renamed to O_NONBLOCK
removed info about arguments for kernels 3.12 and earlier
added semantic newlines

v1 -> v2:
added behaviour of syscall for kernel 3.12 and earlier
in history section
added commit hash to commit message
changed word 'actual' to 'current' due to ambigious
meaning

Signed-off-by: Alexander Ofitserov <oficerovas@altlinux.org>
---
 man2/delete_module.2 | 92 +++++++++++++++++++++++++-------------------
 1 file changed, 52 insertions(+), 40 deletions(-)

diff --git a/man2/delete_module.2 b/man2/delete_module.2
index e9c432e84..e4b107702 100644
--- a/man2/delete_module.2
+++ b/man2/delete_module.2
@@ -50,42 +50,20 @@ is zero, then the module is immediately unloaded.
 If a module has a nonzero reference count,
 then the behavior depends on the bits set in
 .IR flags .
-In normal usage (see NOTES), the
-.B O_NONBLOCK
-flag is always specified, and the
+The
 .B O_TRUNC
 flag may additionally be specified.
 .\"  	O_TRUNC == KMOD_REMOVE_FORCE in kmod library
-.\"  	O_NONBLOCK == KMOD_REMOVE_NOWAIT in kmod library
 .IP
 The various combinations for
 .I flags
 have the following effect:
 .RS
 .TP
-.B flags == O_NONBLOCK
-The call returns immediately, with an error.
-.TP
-.B flags == (O_NONBLOCK | O_TRUNC)
+.B flags == O_TRUNC
 The module is unloaded immediately,
 regardless of whether it has a nonzero reference count.
-.TP
-.B (flags & O_NONBLOCK) == 0
-If
-.I flags
-does not specify
-.BR O_NONBLOCK ,
-the following steps occur:
 .RS
-.IP \[bu] 3
-The module is marked so that no new references are permitted.
-.IP \[bu]
-If the module's reference count is nonzero,
-the caller is placed in an uninterruptible sleep state
-.RB ( TASK_UNINTERRUPTIBLE )
-until the reference count is zero, at which point the call unblocks.
-.IP \[bu]
-The module is unloaded in the usual way.
 .RE
 .RE
 .P
@@ -151,11 +129,7 @@ in
 .TP
 .B EWOULDBLOCK
 Other modules depend on this module;
-or,
-.B O_NONBLOCK
-was specified in
-.IR flags ,
-but the reference count of this module is nonzero and
+or, the reference count of this module is nonzero and
 .B O_TRUNC
 was not specified in
 .IR flags .
@@ -172,6 +146,54 @@ it is (before glibc 2.23) sufficient to
 manually declare the interface in your code;
 alternatively, you can invoke the system call using
 .BR syscall (2).
+.SS O_NONBLOCK
+In Linux 3.12 and earlier, parameter:
+.I flags
+also can contain 
+.B O_NONBLOCK
+flag in addition to 
+.B O_TRUNC
+flag.
+Behavior depends on the bits set in
+.IR flags .
+In normal usage (see NOTES), the
+.B O_NONBLOCK
+flag is always specified, and the
+.B O_TRUNC
+flag may additionally be specified.
+.\"  	O_TRUNC == KMOD_REMOVE_FORCE in kmod library
+.\"  	O_NONBLOCK == KMOD_REMOVE_NOWAIT in kmod library
+.IP
+The various combinations for
+.I flags
+have the following effect:
+.RS
+.TP
+.B flags == O_NONBLOCK
+The call returns immediately, with an error.
+.TP
+.B flags == (O_NONBLOCK | O_TRUNC)
+The module is unloaded immediately,
+regardless of whether it has a nonzero reference count.
+.TP
+.B (flags & O_NONBLOCK) == 0
+If
+.I flags
+does not specify
+.BR O_NONBLOCK ,
+the following steps occur:
+.RS
+.IP \[bu] 3
+The module is marked so that no new references are permitted.
+.IP \[bu]
+If the module's reference count is nonzero,
+the caller is placed in an uninterruptible sleep state
+.RB ( TASK_UNINTERRUPTIBLE )
+until the reference count is zero, at which point the call unblocks.
+.IP \[bu]
+The module is unloaded in the usual way.
+.RE
+.RE
 .SS Linux 2.4 and earlier
 In Linux 2.4 and earlier, the system call took only one argument:
 .P
@@ -183,19 +205,9 @@ is NULL, all unused modules marked auto-clean are removed.
 .P
 Some further details of differences in the behavior of
 .BR delete_module ()
-in Linux 2.4 and earlier are
+in Linux 3.12 and earlier are
 .I not
 currently explained in this manual page.
-.SH NOTES
-The uninterruptible sleep that may occur if
-.B O_NONBLOCK
-is omitted from
-.I flags
-is considered undesirable, because the sleeping process is left
-in an unkillable state.
-As at Linux 3.7, specifying
-.B O_NONBLOCK
-is optional, but in future kernels it is likely to become mandatory.
 .SH SEE ALSO
 .BR create_module (2),
 .BR init_module (2),
-- 
2.33.8


