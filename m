Return-Path: <linux-man+bounces-3496-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA281B2C8D6
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 17:54:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE5585E794C
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 15:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 364641FBCA1;
	Tue, 19 Aug 2025 15:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="aQ0OQ/8d"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EA1267B89
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755618864; cv=pass; b=DF8eTQo6DtxPAdFXmOl+eebmUrxB9xhkaXslVauetqyPoQYtdp+COqFd6lm4L2ytyGf3WUOkYfZzDKRvBPpHEY8yQdNrYNV1llNkNWqJz4qTNTnPGbrCs9GP2AbnEiNY5u49VVe4R3ZH2dDsAlXv8uBkwHUX3srutI0+AeoOV5A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755618864; c=relaxed/simple;
	bh=K0YSNdwEcYCKxEyueHBgWu+9P0GnMUUAYITkP5kMMdw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cDtsYt3suFcK4hWgEC8jH1zG6iHNNUbM2b6difAoPYo8iWSULA65SR6+hcdjqFzb75D1S6g4IN7xnU+hX9z4XVtSJcLkWmlEeNjR73vbwc5j8QsahvRhxOggSC42mYG413QUTfimz6fH5eRfM52cQo5QolYVGENyLyMfo4xyViI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=aQ0OQ/8d; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1755618859; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UhMe7MaSUejy+oUu7FPx2GaR0YkNjx7gp2KgLApoeFzn+FAR6LctvpKnVXiaiCQ/ekkvqWwHF/c8rDO6WXMP5uYT6dx8Eus3cD8BKBF0TBzZmgDwxM8eRBdniPMdC3RLn74yth3qJRgmOctflgNLSVbVcDRv+Ly6GUctpmAzdeQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755618859; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=rxMXqS69BTFEiq6Js7JLD2AIX9uvY7pXGyVCOgM6diU=; 
	b=SXa/b/r1FhgrBRDMsZngEKkRaNAtTZIhwkXUb6ts3t5beMtZ9sPwo/NeRxWydeODyHtsij5kEE296MxAmFKLXKs0x/3Kosb5Zsafa+uwrzvK/nApmLDu/gUX1fv995QhRaFB9022f54/4jqjobaoaRJzglaS7rI+wlPEw6HB2gI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755618858;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=rxMXqS69BTFEiq6Js7JLD2AIX9uvY7pXGyVCOgM6diU=;
	b=aQ0OQ/8d/TsHNAQzgfy25cP8r8Jv9BY4hBzrCZLfV/6QsIIWmBu2awWVS7jRmtHV
	AaorZ8qNoRZqiSMJhlcSRUGktzJ4kdF/WKF9aavqzg96nq/5m/2FHz3sz61M622pijZ
	vxp7DofiUCsg0C6py/THZ68nZ4wnWHsVk+BQhkQg=
Received: by mx.zohomail.com with SMTPS id 1755618856799158.0215396708943;
	Tue, 19 Aug 2025 08:54:16 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/2] Remove all mentions of blackfin architecture
Date: Tue, 19 Aug 2025 15:53:59 +0000
Message-ID: <20250819155400.763253-2-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250819155400.763253-1-safinaskar@zohomail.com>
References: <20250819155400.763253-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr080112275a50ef54fd37badad350f6f500005cff18db2b47c56f81aae327e440031bb417314e856d0f1f5d:zu08011227c69738a5c798362389bea4df0000ba8e44e71032208cfd88c37675ced50ac1f8e2c28ef2804be4:rf0801122cb0abaddd074e433b07fad1890000caa15508e94ed6e3bfa307839c097101506c170a6e8e8bc259da66ab595f:ZohoMail
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


