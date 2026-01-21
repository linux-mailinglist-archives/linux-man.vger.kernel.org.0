Return-Path: <linux-man+bounces-4896-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNUNCzUDcWmgbAAAu9opvQ
	(envelope-from <linux-man+bounces-4896-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 17:47:49 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6317D5A1BD
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 17:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AB3CDB08563
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 16:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D069230F532;
	Wed, 21 Jan 2026 15:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=eurecom.fr header.i=@eurecom.fr header.b="Pr8/fGeh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.eurecom.fr (smtp.eurecom.fr [193.55.113.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE7933A9E5
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 15:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.55.113.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769011136; cv=none; b=QXrpDm1AXN84kZHi8WCc4lbwgNqN6qpRHVegTDugM2f6n1V57DTayV4cdKBc993hVjtsCoiyZGUd8TBFN+utY5ByLzTh881IM2zEoC001PoGp+FjN6pWi/p4QBDm0lewSMfhwBKuSx4Ag6N1+rms/OUu9S4exKA0QhmO9AhQNOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769011136; c=relaxed/simple;
	bh=gYTH38DnB7fgR+vK4iYedKgeFMEGSW/7Lji2cQZ67u8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Fix3U92aAvBIaxPVd6mPRGVkp8ZE6YkG7fKpuN5r8BB6w5n/HAdh6nU8+85QZWXnQqztqKM2550XS3FX8gJXRvVOQ+wdjkt7JRjj9NmDl/fkdcFwqa+9faZ31jkn9bmxYAY4SA6BEVOyvCOYISSPKq9EAGOqRx87aCfQL/8+q1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eurecom.fr; spf=pass smtp.mailfrom=eurecom.fr; dkim=pass (1024-bit key) header.d=eurecom.fr header.i=@eurecom.fr header.b=Pr8/fGeh; arc=none smtp.client-ip=193.55.113.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eurecom.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eurecom.fr
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=eurecom.fr; i=@eurecom.fr; q=dns/txt; s=default;
  t=1769011131; x=1800547131;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=gYTH38DnB7fgR+vK4iYedKgeFMEGSW/7Lji2cQZ67u8=;
  b=Pr8/fGehlo6OHFRnWlzavGl9RLE3GNMGK8C+mPttT7x5pJWh3TrkGPs4
   4A6CmPXCtvAzt0j8dGbPT3k1MXVrUsdpsFVMnlJjXQdpKN+qcHroOvAgm
   7+xpy+P3CIYC82A3TgeiCmEBwR+9F1BCEHmrK8qiaAHIyfXWdex1pfJHf
   k=;
X-CSE-ConnectionGUID: wV6QGXsUQi+9fIxNQAg3Wg==
X-CSE-MsgGUID: uB/B13tLQm2FspFd0N82iQ==
X-IronPort-AV: E=Sophos;i="6.21,242,1763420400"; 
   d="scan'208";a="4301004"
Received: from waha.eurecom.fr (HELO smtps.eurecom.fr) ([10.3.2.236])
  by drago1i.eurecom.fr with ESMTP; 21 Jan 2026 16:57:39 +0100
Received: from marco-eurecom-desktop.s3.eurecom.fr (unknown [193.55.114.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtps.eurecom.fr (Postfix) with ESMTPSA id ECC6127DA;
	Wed, 21 Jan 2026 16:57:38 +0100 (CET)
From: Marco Cavenati <Marco.Cavenati@eurecom.fr>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	"Dmitry V . Levin" <ldv@strace.io>,
	Marco Cavenati <Marco.Cavenati@eurecom.fr>
Subject: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update struct ptrace_syscall_info
Date: Wed, 21 Jan 2026 16:55:41 +0100
Message-ID: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.96 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[eurecom.fr:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[eurecom.fr,none];
	DKIM_TRACE(0.00)[eurecom.fr:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4896-lists,linux-man=lfdr.de];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Marco.Cavenati@eurecom.fr,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,gmx.de:email,eurecom.fr:email,eurecom.fr:dkim,eurecom.fr:mid]
X-Rspamd-Queue-Id: 6317D5A1BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add documentation for the new ptrace request PTRACE_SET_SYSCALL_INFO,
introduced in Linux 6.16.

Add 'reserved' and 'flags' fields of struct ptrace_syscall_info.

This description is based on kernel commit 26bb32768fe6552de044f782a58b3272073fbfc0
("ptrace: introduce PTRACE_SET_SYSCALL_INFO request") by Dmitry V. Levin.

Signed-off-by: Marco Cavenati <Marco.Cavenati@eurecom.fr>
---
 AUTHORS           |  1 +
 man/man2/ptrace.2 | 21 +++++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/AUTHORS b/AUTHORS
index 9035d405a..f332932e1 100644
--- a/AUTHORS
+++ b/AUTHORS
@@ -497,6 +497,7 @@ Marc-André Lureau <marcandre.lureau@redhat.com>
 Marcela Maslanova <mmaslano@redhat.com>
 Marcin Ślusarz <marcin.slusarz@gmail.com>
 Marco Bonelli <marco@mebeim.net>
+Marco Cavenati <marco.cavenati@eurecom.fr>
 Marcus Folkesson <marcus.folkesson@gmail.com>
 Marcus Gelderie <redmnic@gmail.com>
 Marcus Huewe <suse-tux@gmx.de>
diff --git a/man/man2/ptrace.2 b/man/man2/ptrace.2
index 2da43dcb9..45d4c4c84 100644
--- a/man/man2/ptrace.2
+++ b/man/man2/ptrace.2
@@ -1042,6 +1042,8 @@ structure contains the following fields:
 .EX
 struct ptrace_syscall_info {
     __u8 op;        /* Type of system call stop */
+    __u8 reserved;  /* Reserved for future use, must be zero */
+    __u16 flags;    /* Reserved for future use, must be zero */
     __u32 arch;     /* AUDIT_ARCH_* value; see seccomp(2) */
     __u64 instruction_pointer; /* CPU instruction pointer */
     __u64 stack_pointer;    /* CPU stack pointer */
@@ -1121,6 +1123,25 @@ is limited to type
 unless
 .B PTRACE_O_TRACESYSGOOD
 option is set before the corresponding system call stop has occurred.
+.TP
+.BR PTRACE_SET_SYSCALL_INFO " (since Linux 6.16)"
+.\" commit 26bb32768fe6552de044f782a58b3272073fbfc0
+Modify information about the system call that caused the stop.
+The
+.I data
+argument is a pointer to
+.I struct ptrace_syscall_info
+that specifies the system call information to be set.
+The
+.I addr
+argument should be set to
+.IR "sizeof(struct ptrace_syscall_info)" .
+Only the
+.IR nr ,
+.IR args ,
+and
+.I rval
+fields can be modified.
 .\"
 .SS Death under ptrace
 When a (possibly multithreaded) process receives a killing signal
-- 
2.51.0


