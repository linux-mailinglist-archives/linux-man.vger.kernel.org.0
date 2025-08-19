Return-Path: <linux-man+bounces-3501-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C950B2C921
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 18:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B03E5C01EC
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 16:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B8628031D;
	Tue, 19 Aug 2025 16:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="B0PTwFUp"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52292BE7BB
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 16:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755619822; cv=pass; b=kiZn/IwG0ywWaQFW5VZ+Iof6oWrGqM68QnjyoDnVcEdUMLY9m3XhXdtiSXEpUVYN5rTdoWInZxzqO01VFir/7aupDzKZgwsND0C7NHrlWCF7uD8Gt/rjsZP0N9RSMslREvmGHERQD/8uHe/jwD37V/+l1yJ17sdtwG7+mNqBuZ8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755619822; c=relaxed/simple;
	bh=K0YSNdwEcYCKxEyueHBgWu+9P0GnMUUAYITkP5kMMdw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cP4bphn//wc4/MV8m2Kkp6qZW8sxcDvh2B+Jwd37Ug0EGddNBH26LhEdGoG1vcHQkmcsse1Hn1bhP//DemDHvmmkcOwgpLmldosqJ4SH0WL9XI/aMFRwXSVqz8HpGPPuuelvQav8Uaz1OiCU7cVjekj8C44a6xoIiYLk04+EoEU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=B0PTwFUp; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1755619811; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HiSwPRnT/+MQjBsbcvXTYl959vWxx1B9SjQaXiBwtztmKI5rrhTBYs/OeuptnRgP7zFliCRWU2b9T2yKcmr5tq/IaH8gRY/yBwXiokFVAvy0ts97eZFiR6T7d5uhAGyVb5KWfPL3SVQGbIBaWr/QfFNBW7MxK/9y+uwIv5IK5ns=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755619811; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=rxMXqS69BTFEiq6Js7JLD2AIX9uvY7pXGyVCOgM6diU=; 
	b=hT1MXeJaI7FiY6vpbiMovQe9Rkm7XRe0jOJYDxZzWf9xBbO1MppkSWRAz2QqIJVAyNoiwW1m1ZvkUu5/3LSNqzOfo4jsYhG2QdmjT/9NcjB5xSoXKP6fOc8XJdfSaCA0D2tBvkDqGzNDo4slOTibzzkfK7CqJki16db8BwDc4Mg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755619811;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=rxMXqS69BTFEiq6Js7JLD2AIX9uvY7pXGyVCOgM6diU=;
	b=B0PTwFUpfLYc4zy0GIdqJmWyQhZY65N6DyzW0AljtnJhNR8zoMMu2iIgUR6DQ3GY
	iXGLhPP32mQR53pxnMpgbSPwQj4bSab/d+s/TZTB/MSKO/UG3Gl8ePZoYpXLV1E8pPx
	Mo9sD/LTtA5W8q5lZC/rYMiG302i/SOh2tyEwIN4=
Received: by mx.zohomail.com with SMTPS id 1755619808720171.2155797925061;
	Tue, 19 Aug 2025 09:10:08 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] Remove all mentions of blackfin architecture
Date: Tue, 19 Aug 2025 16:09:59 +0000
Message-ID: <20250819161000.768159-2-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250819161000.768159-1-safinaskar@zohomail.com>
References: <20250819161000.768159-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr0801122717315a6c77ba705a202e1c6100003384456d9916f3531ef9889bd8cf7a96378e60f7fc9689b006:zu080112270cb02ab9b78573ef4476c755000002502c2dbc0c5a427f94a977ca414209d77c28bc605d63b3b4:rf0801122cf6608890ef6159b74956b72b00001f59314f52e0c5540bc04ea2d3001de21ec796aa2726d2c9f53a78fc25ba:ZohoMail
X-ZohoMailClient: External

...except for syscalls(2).

Blackfin was removed in Linux 4.17, i. e. in 2018 (7 years ago).

Linux 4.17 is not supported

Signed-off-by: Askar Safin <safinaskar@zohomail.com>
---
 man/man2/clone.2   |  6 +++---
 man/man2/fork.2    |  2 +-
 man/man2/ptrace.2  |  2 +-
 man/man2/syscall.2 |  2 --
 man/man7/vdso.7    | 17 -----------------
 5 files changed, 5 insertions(+), 24 deletions(-)

diff --git a/man/man2/clone.2 b/man/man2/clone.2
index 16d9f7f91..adbaa3ab2 100644
--- a/man/man2/clone.2
+++ b/man/man2/clone.2
@@ -1637,12 +1637,12 @@ an additional argument is supplied:
 .EE
 .in
 .\"
-.SS blackfin, m68k, and sparc
+.SS m68k and sparc
 .\" Mike Frysinger noted in a 2013 mail:
 .\"     these arches don't define __ARCH_WANT_SYS_CLONE:
-.\"     blackfin ia64 m68k sparc
+.\"     ia64 m68k sparc
 The argument-passing conventions on
-blackfin, m68k, and sparc are different from the descriptions above.
+m68k and sparc are different from the descriptions above.
 For details, see the kernel (and glibc) source.
 .SH STANDARDS
 Linux.
diff --git a/man/man2/fork.2 b/man/man2/fork.2
index c5eeaca10..9d24222dd 100644
--- a/man/man2/fork.2
+++ b/man/man2/fork.2
@@ -238,7 +238,7 @@ See
 .B ENOSYS
 .BR fork ()
 is not supported on this platform (for example,
-.\" e.g., arm (optionally), blackfin, c6x, frv, h8300, microblaze, xtensa
+.\" e.g., arm (optionally), c6x, frv, h8300, microblaze, xtensa
 hardware without a Memory-Management Unit).
 .TP
 .BR ERESTARTNOINTR " (since Linux 2.6.17)"
diff --git a/man/man2/ptrace.2 b/man/man2/ptrace.2
index bab6fee19..1d1642d74 100644
--- a/man/man2/ptrace.2
+++ b/man/man2/ptrace.2
@@ -55,7 +55,7 @@
 .\" PTRACE_GETFDPIC
 .\" PTRACE_GETFDPIC_EXEC
 .\" PTRACE_GETFDPIC_INTERP
-.\"	blackfin, c6x, frv, sh
+.\"	c6x, frv, sh
 .\"	First appearance in Linux 2.6.11 on frv
 .\"
 .\" and others that can be found in the arch/*/include/uapi/asm/ptrace files
diff --git a/man/man2/syscall.2 b/man/man2/syscall.2
index be645c0f4..4996b203e 100644
--- a/man/man2/syscall.2
+++ b/man/man2/syscall.2
@@ -172,7 +172,6 @@ arc	trap0	r8	r0	-	-
 arm/OABI	swi NR	-	r0	-	-	2
 arm/EABI	swi 0x0	r7	r0	r1	-
 arm64	svc #0	w8	x0	x1	-
-blackfin	excpt 0x0	P0	R0	-	-
 i386	int $0x80	eax	eax	edx	-
 ia64	break 0x100000	r15	r8	r9	r10	1, 6
 loongarch	syscall 0	a7	a0	-	-
@@ -298,7 +297,6 @@ arc	r0	r1	r2	r3	r4	r5	-
 arm/OABI	r0	r1	r2	r3	r4	r5	r6
 arm/EABI	r0	r1	r2	r3	r4	r5	r6
 arm64	x0	x1	x2	x3	x4	x5	-
-blackfin	R0	R1	R2	R3	R4	R5	-
 i386	ebx	ecx	edx	esi	edi	ebp	-
 ia64	out0	out1	out2	out3	out4	out5	-
 loongarch	a0	a1	a2	a3	a4	a5	a6
diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
index 0dc8bf6f2..2086d53fb 100644
--- a/man/man7/vdso.7
+++ b/man/man7/vdso.7
@@ -236,23 +236,6 @@ __kernel_clock_getres	LINUX_2.6.39
 .in
 .ft P
 \}
-.SS bfin (Blackfin) functions (port removed in Linux 4.17)
-.\" See linux/arch/blackfin/kernel/fixed_code.S
-.\" See http://docs.blackfin.uclinux.org/doku.php?id=linux-kernel:fixed-code
-As this CPU lacks a memory management unit (MMU),
-it doesn't set up a vDSO in the normal sense.
-Instead, it maps at boot time a few raw functions into
-a fixed location in memory.
-User-space applications then call directly into that region.
-There is no provision for backward compatibility
-beyond sniffing raw opcodes,
-but as this is an embedded CPU, it can get away with things\[em]some of the
-object formats it runs aren't even ELF based (they're bFLT/FLAT).
-.P
-For information on this code page,
-it's best to refer to the public documentation:
-.br
-http://docs.blackfin.uclinux.org/doku.php?id=linux\-kernel:fixed\-code
 .SS mips functions
 .\" See linux/arch/mips/vdso/vdso.ld.S
 The table below lists the symbols exported by the vDSO.
-- 
2.47.2


