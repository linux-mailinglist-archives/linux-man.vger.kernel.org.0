Return-Path: <linux-man+bounces-5434-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBPGNx1G8WkcfgEAu9opvQ
	(envelope-from <linux-man+bounces-5434-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:43:25 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E41D448D62C
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:43:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 00C0930528E5
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 23:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C29003E9580;
	Tue, 28 Apr 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jnsy/F5z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843853EF0C9;
	Tue, 28 Apr 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777419233; cv=none; b=uODfOBQa/BSjr5fe2u/u8ofJ8LQ7DuIWE7j+sMxZ5glN/bfIgQC7EIimwrFR1P5BPXXcVmw9WuS1jotAlII2jvGKZS9ZmOUgRGnAcHf21uYtG/vZ3soZuyP6P00AfU+emBO5kklcOXg/w7gL7qGtYnM+aIfitUCXLLBl8gjTFWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777419233; c=relaxed/simple;
	bh=pXX6/6G2YvqxHO4PQJxwtcOMRv1WqdDb6PMnhuNhHx4=;
	h=Date:Message-ID:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type; b=nnSFuWGUvecvos7ec2+ot6DFpDL1ch2Ns/HUpVkWMZRrG0pjO6eatNeSZ15CpffW3cIh92Z8nsI2VG+VuUh5frYbZOQiF8x+MQZ5dUG/ovqvY+FwkEOcp8qB5l5J8Ej4p1QJEuoq7d2Wq06lWDiXrdgePAv5JYKXp78p/1HlHXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jnsy/F5z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C7FCC2BCC4;
	Tue, 28 Apr 2026 23:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777419233;
	bh=pXX6/6G2YvqxHO4PQJxwtcOMRv1WqdDb6PMnhuNhHx4=;
	h=Date:From:To:Cc:Subject:References:From;
	b=Jnsy/F5zzv9629ULkVTJwrMJgRAYduWoiPfMRS7VfrylJJFtFEqf2WExUdQc55m8D
	 3iFnY0Xwsfrl28vWm65iMBmZfiMgmbRKgYplg/TDY7IAWwnVChLh9fYlXRg1Cvd6+2
	 WlHKCFcdYF4aQoa2Q1Jhjq0c2mTMT9Q3CdIXkOcCpoIFT0GoABkS3kXl0xCrCN9NHW
	 e39LGfZVrkgOzMjnvowivZmhZlaMSyJz3vRX81Of1KbojnIxDoACfnkIP/NjSny/W6
	 jjRVQasYjcVBKssjrYwyyqRRGbR36pMjp2nSkH3GkTqbLxeaWLQq85jrEnX5uFoXm5
	 9tE//ZloX9hRg==
Date: Wed, 29 Apr 2026 01:33:49 +0200
Message-ID: <20260428224427.437059375@kernel.org>
User-Agent: quilt/0.68
From: Thomas Gleixner <tglx@kernel.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Mathias Stearn <mathias@mongodb.com>,
 Dmitry Vyukov <dvyukov@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 linux-man@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Chris Kennelly <ckennelly@google.com>,
 regressions@lists.linux.dev,
 Ingo Molnar <mingo@kernel.org>,
 Blake Oler <blake.oler@mongodb.com>,
 Florian Weimer <fweimer@redhat.com>,
 Rich Felker <dalias@libc.org>,
 Matthew Wilcox <willy@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>
Subject: [patch 03/10] rseq: Dont advertise time slice extensions if disabled
References: <20260428221058.149538293@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Rspamd-Queue-Id: E41D448D62C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5434-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

If time slice extensions have been disabled on the kernel command line,
then advertising them in RSEQ flags is wrong.

Adjust the conditionals to reflect reality, fixup the misleading comments
about the gap of these flags and the rseq::flags field.

Fixes: d6200245c75e ("rseq: Allow registering RSEQ with slice extension")
Signed-off-by: Thomas Gleixner <tglx@kernel.org>
Cc: stable@vger.kernel.org
---
 include/uapi/linux/rseq.h |    5 ++++-
 kernel/rseq.c             |    9 +++++----
 2 files changed, 9 insertions(+), 5 deletions(-)

--- a/include/uapi/linux/rseq.h
+++ b/include/uapi/linux/rseq.h
@@ -28,7 +28,7 @@ enum rseq_cs_flags_bit {
 	RSEQ_CS_FLAG_NO_RESTART_ON_PREEMPT_BIT	= 0,
 	RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL_BIT	= 1,
 	RSEQ_CS_FLAG_NO_RESTART_ON_MIGRATE_BIT	= 2,
-	/* (3) Intentional gap to put new bits into a separate byte */
+	/* (3) Intentional gap to keep new bits separate */
 
 	/* User read only feature flags */
 	RSEQ_CS_FLAG_SLICE_EXT_AVAILABLE_BIT	= 4,
@@ -161,6 +161,9 @@ struct rseq {
 	 *	- RSEQ_CS_FLAG_NO_RESTART_ON_PREEMPT
 	 *	- RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL
 	 *	- RSEQ_CS_FLAG_NO_RESTART_ON_MIGRATE
+	 *
+	 * It is now used for feature status advertisement by the kernel.
+	 * See: enum rseq_cs_flags_bit for further information.
 	 */
 	__u32 flags;
 
--- a/kernel/rseq.c
+++ b/kernel/rseq.c
@@ -462,10 +462,11 @@ SYSCALL_DEFINE4(rseq, struct rseq __user
 		return -EFAULT;
 
 	if (IS_ENABLED(CONFIG_RSEQ_SLICE_EXTENSION)) {
-		rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_AVAILABLE;
-		if (rseq_slice_extension_enabled() &&
-		    (flags & RSEQ_FLAG_SLICE_EXT_DEFAULT_ON))
-			rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_ENABLED;
+		if (rseq_slice_extension_enabled()) {
+			rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_AVAILABLE;
+			if (flags & RSEQ_FLAG_SLICE_EXT_DEFAULT_ON)
+				rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_ENABLED;
+		}
 	}
 
 	scoped_user_write_access(rseq, efault) {


