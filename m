Return-Path: <linux-man+bounces-470-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C97B85D43A
	for <lists+linux-man@lfdr.de>; Wed, 21 Feb 2024 10:49:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33DAF1F28173
	for <lists+linux-man@lfdr.de>; Wed, 21 Feb 2024 09:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3AD23D3A7;
	Wed, 21 Feb 2024 09:49:15 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459983D964
	for <linux-man@vger.kernel.org>; Wed, 21 Feb 2024 09:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708508955; cv=none; b=LOBnRFJEcETlmAadFSVkg+iAc+nldqRdpfXwOEXmXPM1SqoWhPYbb8HwyBcZ8nOJAlp7Hz3fUBMK7c9fqJrw9M8DGPC73i2hRdZK2FWSsYWkQ7c2BKqZo1O1s/vNDPLun8tGApyBHe4bBUN/BaW0zL8C9DVX/5R86Jmqx1PZJ58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708508955; c=relaxed/simple;
	bh=j1hw+3zxuoPfbTBgbXul/K+HsZRmmaWNe5vfLKAUxW8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ttbqIy5H7SOqz8Z+42Rk9wW0BYXAt43jn/GqU0xDxzOhAYniJPk5bDlIZa+4Xptll89+Crin/obP/P/ukacYFxFAdviN8Nqk/DNl0Co0J80nB3h4zxCcHDd9eTsY8IG2kC0Aj9/ZAVhJNA+6KyjCamgxgsINIzgCo+u/pFAsx3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: by air.basealt.ru (Postfix, from userid 490)
	id 0F7042F2022C; Wed, 21 Feb 2024 09:49:04 +0000 (UTC)
X-Spam-Level: 
Received: from localhost.localdomain (unknown [176.59.172.200])
	by air.basealt.ru (Postfix) with ESMTPSA id 766B12F2023B;
	Wed, 21 Feb 2024 09:49:01 +0000 (UTC)
From: Alexander Ofitserov <oficerovas@altlinux.org>
To: oficerovas@altlinux.org,
	Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	dutyrok@altlinux.org,
	kovalev@altlinux.org
Subject: [PATCH v2] delete_module.2: Update man to current syscall behaviour
Date: Wed, 21 Feb 2024 12:48:52 +0300
Message-Id: <20240221094852.14994-1-oficerovas@altlinux.org>
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

v1 -> v2:
added behaviour of syscall for kernel 3.12 and earlier
in history section
added commit hash to commit message
changed word 'actual' to 'current' due to ambigious
meaning
---
 man2/delete_module.2 | 95 +++++++++++++++++++++++++-------------------
 1 file changed, 55 insertions(+), 40 deletions(-)

diff --git a/man2/delete_module.2 b/man2/delete_module.2
index e9c432e84..d6e7a4bdb 100644
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
@@ -172,6 +146,57 @@ it is (before glibc 2.23) sufficient to
 manually declare the interface in your code;
 alternatively, you can invoke the system call using
 .BR syscall (2).
+.SS Linux 3.12 and earlier
+In Linux 3.12 and earlier, the system call took two arguments:
+.P
+.BI "   int delete_module(const char *" name ", unsigned int " flags );
+.P
+Parameter
+.I flags
+also can contain 
+.B O_NONBLOCK
+flag in addition to 
+.B O_TRUNC
+flag. Behavior depends on the bits set in
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
@@ -183,19 +208,9 @@ is NULL, all unused modules marked auto-clean are removed.
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


