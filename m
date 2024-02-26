Return-Path: <linux-man+bounces-480-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C01286746C
	for <lists+linux-man@lfdr.de>; Mon, 26 Feb 2024 13:09:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10FFA282AAD
	for <lists+linux-man@lfdr.de>; Mon, 26 Feb 2024 12:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB745FDB7;
	Mon, 26 Feb 2024 12:09:26 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1ABD5FBB4
	for <linux-man@vger.kernel.org>; Mon, 26 Feb 2024 12:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708949366; cv=none; b=LpM+RPdR1/uh+DSJ7ROi50+SFoxqiMGDa882Is18XVxjjIbfKVe4wRjIMMeGyFDt9hVneL6KD8BJ/OpbVGTJn+1IMx/2Ai8EfFrmk74gDbYMeTmIBxG8ybFoOr9ijyEbtZu1rys3hYX0UHjE1c1eX2teuzAM4fbDR/m4LBj6jSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708949366; c=relaxed/simple;
	bh=zWyu6vyYOdiPaLCTgSv1o9z17Zicg/pFCip8ATgUPng=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Aq9Hmnh5YeBvU0r5e2Nn0WEWoIlBOD23ydHFljsMvJ7zVI/kDIcGX4ehX5L5SV8LozAn6p+fkVVtS8iRV5oy5IS4Naz/Q91ouRqghK41JBuASXT3+RiRt6kCJr7IBRIoKTOyJHeRwG9gRreTG/rw91JoMXlEhETXI/30xXizEUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: by air.basealt.ru (Postfix, from userid 490)
	id 623682F2023B; Mon, 26 Feb 2024 12:09:15 +0000 (UTC)
X-Spam-Level: 
Received: from taut9powder.malta.altlinux.ru (obninsk.basealt.ru [217.15.195.17])
	by air.basealt.ru (Postfix) with ESMTPSA id 61D892F20238;
	Mon, 26 Feb 2024 12:09:13 +0000 (UTC)
From: Alexander Ofitserov <oficerovas@altlinux.org>
To: oficerovas@altlinux.org,
	Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	dutyrok@altlinux.org,
	kovalev@altlinux.org,
	"Dmitry V. Levin" <ldv@altlinux.org>,
	"G. Branden Robinson" <branden@debian.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Subject: [PATCH v3] delete_module.2: Update man to current syscall behaviour
Date: Mon, 26 Feb 2024 15:08:56 +0300
Message-Id: <20240226120856.21493-1-oficerovas@altlinux.org>
X-Mailer: git-send-email 2.33.8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Parameter O_NONBLOCK described in man doesn't exist anymore
in kernel versions 3.13+, which is quite old,
only O_TRUNC parameter present for current kernel version,
O_NONBLOCK does nothing.

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


