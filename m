Return-Path: <linux-man+bounces-5382-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENWaIP366WnkpwIAu9opvQ
	(envelope-from <linux-man+bounces-5382-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:57:01 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBE8450FAC
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:57:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 630AA30046AD
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 10:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DDF937EFF6;
	Thu, 23 Apr 2026 10:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="AuW1xLgt";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="HRXq/Pfn"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC413803D6;
	Thu, 23 Apr 2026 10:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776940780; cv=none; b=jlikeKZosBZddOZOIS2ifEXvNT21eq6Edgg5pLVJe+gNKwh6dXuVfW7ZnPGzabQQAThJBMmZ41GVOj0LLox7d7Sal+IvgwU7LXmWRP+LdXS+yo0OEKhKMWsYNsmblfllaCZSlbnzpWO0LWxQSjRg4goqe5fiVNPawHG5CiV0dbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776940780; c=relaxed/simple;
	bh=YvqwC9Ximwz+0MdnRR3v4UcqD9U84FwX3TF72tfh6Eo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=fYc5adUlaOup8HUwjqM/glSXMsINc9lMM++Lse46XkjiGuaYHOWlATKvuvTzaRA0wYqSJMjh+U3HMsrI6TqVNygINqYGZDH437JqV34GelfxCeG1HJ4qMrlQsMYCS533k31ZNWkUwFha7UFCHN3aNITNp+9qgA6ExG/Ialux/mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=AuW1xLgt; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=HRXq/Pfn; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1776940777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cGEO2F0ScelrhYb0KLha9yRxuMqwCHKRlDug71W0idc=;
	b=AuW1xLgtZm+C8AnaQKzWFF9ZB1yEB+dmq6Pz4OGcKHDgIWWmYYXSJGGFIdfxk7VyzA+Znm
	MQtCwuJoUu5RkUE16EMgFycJkQBRJkQXe6IP0y+ewDd3ag329+5l1zkCDJpwebMtt3om/r
	G0EfMn8H9+BC4sRMaQWQuBNEprFpp3rVgR2wjM/KdPLo/kBaIHHumei7A369z2YjQWlcpm
	NnZM7hbFPGB6YVoBAvSjgFDa19IWRewfsnmZK19tOsxYrporbOnSFtl1vG/hrIUg9a8e4i
	HN2jEdG/NYNTUrH/sqg2G6NvMZvP03wAuIawYNA6eG/67A3CXob8UKH8PGHr2Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1776940777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cGEO2F0ScelrhYb0KLha9yRxuMqwCHKRlDug71W0idc=;
	b=HRXq/PfnQegrvLWQuStXBRMN299tx2QwQeuxH8m0oYNyaMoxm4tb4mGPSv/bPhl2C+9y3s
	551qIyszJd9b2LCw==
To: Dmitry Vyukov <dvyukov@google.com>, Jinjie Ruan <ruanjinjie@huawei.com>,
 linux-man@vger.kernel.org
Cc: Mark Rutland <mark.rutland@arm.com>, Mathias Stearn
 <mathias@mongodb.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Boqun Feng <boqun.feng@gmail.com>, "Paul E. McKenney"
 <paulmck@kernel.org>, Chris Kennelly <ckennelly@google.com>,
 regressions@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Peter Zijlstra
 <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, Blake Oler
 <blake.oler@mongodb.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
In-Reply-To: <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
 <aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com> <87zf2u28d1.ffs@tglx>
 <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com> <87wlxy22x7.ffs@tglx>
 <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
Date: Thu, 23 Apr 2026 12:39:36 +0200
Message-ID: <87ik9i0xlj.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5382-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,body];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@linutronix.de,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,mongodb.com,efficios.com,kernel.org,gmail.com,google.com,lists.linux.dev,vger.kernel.org,lists.infradead.org,infradead.org];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,huawei.com:email,linutronix.de:dkim]
X-Rspamd-Queue-Id: 7FBE8450FAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 23 2026 at 07:53, Dmitry Vyukov wrote:
> On Thu, 23 Apr 2026 at 03:48, Jinjie Ruan <ruanjinjie@huawei.com> wrote:
>
> This part of the rseq man page needs to be fixed as well I think. The
> kernel no longer reliably provides clearing of rseq_cs on preemption,
> right?
>
> https://git.kernel.org/pub/scm/libs/librseq/librseq.git/tree/doc/man/rseq.2#n241
>
> "and set to NULL by the kernel when it restarts an assembly
> instruction sequence block,
> as well as when the kernel detects that it is preempting or delivering
> a signal outside of the range targeted by the rseq_cs."

The kernel clears rseq_cs reliably when user space was interrupted and:

    the task was preempted
or
    the return from interrupt delivers a signal

If the task invoked a syscall then there is absolutely no reason to do
either of this because syscalls from within a critical section are a
bug and catched when enabling rseq debugging.

The original code did this along with unconditionally updating CPU/MMCID
which resulted in ~15% performance regression on a syscall heavy
database benchmark once glibc started to register rseq.

Thanks,

        tglx







