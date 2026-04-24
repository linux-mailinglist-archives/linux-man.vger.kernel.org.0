Return-Path: <linux-man+bounces-5396-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yN6lOmt762npNAAAu9opvQ
	(envelope-from <linux-man+bounces-5396-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 16:17:15 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 976F2460141
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 16:17:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 224A6300F9EF
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 14:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 607F23DA7C2;
	Fri, 24 Apr 2026 14:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="XIsfhMsA";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="VOKawgrw"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20A936215F;
	Fri, 24 Apr 2026 14:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777040172; cv=none; b=faMzYtg2GOqRVxZsjl7g2Gy9AmPuUnbPdqBYd+RfjPxFwSVYlc3JW60BH0v+jt23EkMNyKJ3Ogx9shb/hMmJWjuxrkzuqeEUJw9NYFXEXZBzMEE4/HbrFrl/Iq1srd63VCbfmKHfmF067j71N5hgbGynQYHvLuO0a+Sv7n/7cts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777040172; c=relaxed/simple;
	bh=hIBfMbUaD1OS53b5jqw7IVBPYFgpAC7mk3ZJpfoVpDM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Y28NQotq144IUcPhIFfEDqV7Kl0Y6PV5EbDVymjw9q9q0D+FlXC89HoopEASJ9aKCYBrmO4V5JYLyqFee5fqMeeI4n1rNF61xU+Z056538a9aUAu5EVMvxOKAJ6znweVC1YveSlgj+C1YyzJCkpp0o8qGbfuhN8xN5VzfhG4TUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=XIsfhMsA; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=VOKawgrw; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1777040169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Nnf5w0Quv+PTZ6xRTOC5Ut9ZfHwqUivD6tJWnKdJ5sU=;
	b=XIsfhMsAOHGOVSikOOaqPnCe28/h7USHYhutuQBKSIvFKi5NObMieQcN5MW1VrLdTIJeau
	PbSf0mxFh/KBPXx9V0nvBqSceZ2/TOaD8xlCLXrwyoexZZ9mEf9r9FY4WtBc1/el0NSI5v
	BfT09EzHZPIkIYDV8ZSi4GXsllraEfxjqzzk+9428js8t28yb4u3oukSn9/pcdCdozJzL/
	bgugLB1vb2efXjDGvNZ07u2hlwLTmMTdMzqKp0tj8L1EEKcwvpaUb1+LS6T9X6jNCdpZTa
	DKSgFxpm6r6cb1vuAHS6jUX9L52o+pFyNs8pv+AbfB974fuGJzJmel/zRwHiQQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1777040169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Nnf5w0Quv+PTZ6xRTOC5Ut9ZfHwqUivD6tJWnKdJ5sU=;
	b=VOKawgrwAk2LjHlmcqkr6TY07Qd5sMbsO+ylRRO8SAQ9u1nAseQHxA16OEcmcofQbWpDCC
	Kouv/Ms85MBmBiAA==
To: Mathias Stearn <mathias@mongodb.com>, Dmitry Vyukov <dvyukov@google.com>
Cc: Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org, Mark
 Rutland <mark.rutland@arm.com>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Boqun Feng
 <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, Chris
 Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Peter
 Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, Blake
 Oler <blake.oler@mongodb.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
In-Reply-To: <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
 <aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com> <87zf2u28d1.ffs@tglx>
 <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com> <87wlxy22x7.ffs@tglx>
 <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <87ik9i0xlj.ffs@tglx>
 <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx>
 <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
 <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
Date: Fri, 24 Apr 2026 16:16:08 +0200
Message-ID: <87v7dgzbo7.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 976F2460141
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5396-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@linutronix.de,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,google.com,lists.linux.dev,lists.infradead.org,infradead.org,mongodb.com];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linutronix.de:dkim]

On Fri, Apr 24 2026 at 10:32, Mathias Stearn wrote:
> On Fri, Apr 24, 2026 at 9:57=E2=80=AFAM Dmitry Vyukov <dvyukov@google.com=
> wrote:
>> The only problem is with membarrier (it used to force write to
>> __rseq_abi.cpu_id_start for all threads, but now it does not).
>> Otherwise the caching scheme works.
>
> I almost wrote a message last night saying that we didn't need
> cpu_id_start invalidation on preemption. However, I remembered that
> the Grow() function[1] does a load outside of a critical section then
> stores a derived value inside the critical section, guarded only by
> the cpu_id_start invalidation check in StoreCurrentCpu[2]. It really
> should be doing a compare against the original value inside the
> critical section (or just do the whole thing inside), but it doesn't.
> I haven't reasoned end-to-end through this fully to prove corruption
> is possible, but I suspect that it is if another thread same-cpu
> preempts between the loads and the store and updates the header before
> the original thread resumes and writes its original intended header
> value. Ditto for signals, which sometimes allocate even though they
> shouldn't.
>
> I was really hoping that we would only need to do the "redundant"
> cpu_id_start writes would only be needed on membarrier_rseq IPIs where
> it really is a pay-for-what-you-use functionality,

That's fine and can be solved without adding this sequence overhead into
the scheduler hotpath.

> I think existing binaries depend on invalidation on
> preemption. Luckily that should be cheap enough to be ~free.

That's only free when it can be burried in the rseq_cs update, which
means the ID update would not happen when rseq_cs is NULL.

If those two changes fix it w/o requiring additional tcmalloc changes,
I'm happy to hack that up tomorrow.

Thanks,

        tglx

