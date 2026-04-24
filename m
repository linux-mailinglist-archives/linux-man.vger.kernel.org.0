Return-Path: <linux-man+bounces-5398-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCzINT7K62nVRQAAu9opvQ
	(envelope-from <linux-man+bounces-5398-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 21:53:34 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A06E4630C8
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 21:53:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F6C3300D977
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 19:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 483C73E51E2;
	Fri, 24 Apr 2026 19:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="4RH1XcFR";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="iqLfAh0z"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A763D9DC2;
	Fri, 24 Apr 2026 19:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777059861; cv=none; b=mTpRpJ+aIaZqHNAJ+PZ3u7FjNNmAIWfF5PZg1Ffu3F6HI9MUJq6Jvc743iHOZsFnNL3WaTpTTaxns9qeUlWtLjbUKs2ZjMch6i0r5O6tg9+B4rQvHiKjIjnRSxEaJs74cjXhCKBp88FXfRLbO+hAv7Bh2j8eTIxOKR3dd7TxoEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777059861; c=relaxed/simple;
	bh=Rv1h3iMVnDwYM9WG0Iqg1RxCc654GhyoQ7lLcU+Zr20=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=OGGEbaeAta/7M5S3GfxidI1cVGVEGbgbPwuBYTjyBghxVKeUjetIEphzTHCaLAtyLbGsNaqKSRPYuV3BQWNPco+i9p+UD9TM7iJjB4uK3we8SeSlbzhlCYUMotvEUoBFf0+xaNgPpqt67+hL0+j6SHc+/MwVPKfMLDSQCTnnWCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=4RH1XcFR; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=iqLfAh0z; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1777059857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2+rliU4cCrurJTfrKWYSNMc97AT2PbQ8kt0LrYzMJys=;
	b=4RH1XcFRCUI4pUKFbbaE2ynLn8NOaT602kfQD31J3RDvJfJo7XD92FNpJWLLlcewr0T0mx
	vN065gMMtlaUbKpjo3gXmlXENzp23fTKmDuJxX9zay6l/eNhSStIrom9wHBQBfbpJhHUA1
	n1WNq9N84pxe7o/+aHeImeRSB/w6hav2SbDOfsSgxSIfr/h2nypcGrNEJ6dmcmcKyN/V6z
	rijeVmFkNDQY6InHkE5L5GhmFG5i2y1E9RO2nJwnNqaelod8gOb4/N9/+AJiTaWHK5f013
	w/eRZCDT3NHFxYWTwvBUMPhyE9BD8eLGG77wcpWUwsrikwt4aL2/Kd6ACssj7g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1777059857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2+rliU4cCrurJTfrKWYSNMc97AT2PbQ8kt0LrYzMJys=;
	b=iqLfAh0zDX4+KsEUDE175S10unwiIU8nPBL256ZhVyzK9+tvLFrNWGmxv0kvMxKW1j2tRu
	GSek67fxRGEDh5BQ==
To: Peter Zijlstra <peterz@infradead.org>
Cc: Mathias Stearn <mathias@mongodb.com>, Dmitry Vyukov
 <dvyukov@google.com>, Jinjie Ruan <ruanjinjie@huawei.com>,
 linux-man@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Boqun Feng
 <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, Chris
 Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Ingo
 Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
In-Reply-To: <20260424150318.GE641209@noisy.programming.kicks-ass.net>
References: <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com>
 <87wlxy22x7.ffs@tglx> <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <87ik9i0xlj.ffs@tglx>
 <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx>
 <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
 <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
 <87v7dgzbo7.ffs@tglx>
 <20260424150318.GE641209@noisy.programming.kicks-ass.net>
Date: Fri, 24 Apr 2026 21:44:16 +0200
Message-ID: <87se8kywhb.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: 6A06E4630C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5398-lists,linux-man=lfdr.de];
	GREYLIST(0.00)[pass,body];
	DKIM_TRACE(0.00)[linutronix.de:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@linutronix.de,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[mongodb.com,google.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]

On Fri, Apr 24 2026 at 17:03, Peter Zijlstra wrote:
> On Fri, Apr 24, 2026 at 04:16:08PM +0200, Thomas Gleixner wrote:
>> > I was really hoping that we would only need to do the "redundant"
>> > cpu_id_start writes would only be needed on membarrier_rseq IPIs where
>> > it really is a pay-for-what-you-use functionality,
>> 
>> That's fine and can be solved without adding this sequence overhead into
>> the scheduler hotpath.
>
> Something like so? (probably needs help for !GENERIC bits)

Yes and yes :)

Let me stare at that !generic tif bits case.


