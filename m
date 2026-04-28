Return-Path: <linux-man+bounces-5427-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGAsMl1+8GlSUAEAu9opvQ
	(envelope-from <linux-man+bounces-5427-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 11:31:09 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1FF481754
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 11:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D444930A3D00
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 08:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E64D63D648C;
	Tue, 28 Apr 2026 08:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXmN98cV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E7A3D47AA;
	Tue, 28 Apr 2026 08:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777366293; cv=none; b=Ti6Mt8bCsc4XVDaVfMD76L74lytgMcddBFCLS4dLYV6628ncDnyabA/n7sdvXbSnAGjiljc5NKv4pxEHCMSREL9I4MBvTUIE9x0/eOBRSr4oOS5h6HUqRFeTUOzPHrqTUdsUV4sCghE5/E1xYH82UCB8bVoSkhEH+KOHsQy7DNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777366293; c=relaxed/simple;
	bh=i+gw1fUS40ohLdc9hars3DbakHqzU1swpdINODPO6os=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=fEjts995R7PRttbbT05uw1kISVgTC58kMwxixEQiPA6HnIYmNUM6sgxHzbO2+PkRA2i9TYlWyUsLOZNaw3RXET+v2JIEXIgC7Fr6s4hPgG3jz6fFNWxfj4jsj9Hz+FE9xVcMq18xzHNarFE0HrLUHxKi5T8UwgsPkY4aUojZ6PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXmN98cV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AF33C2BCAF;
	Tue, 28 Apr 2026 08:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777366293;
	bh=i+gw1fUS40ohLdc9hars3DbakHqzU1swpdINODPO6os=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=eXmN98cVMNrCbnHMFjHbGS84RGWKEra7LXonBvzfuwfGmIXZisbJcekgqvKFDgY7L
	 PuUUw/a9cU4yFuq3aiogZuzehQ6GhvTRcFM1+3BateDmaE/2WnyKHzIqzU6f3a11bM
	 cD6k/HarW9MZRR7lSuQtaLOuTMq5NXOwO9m0zI1L6UQFvhJrIYEBCMU5TpXYSjfLaP
	 JuU4TZFger38FLg2yc+xVZTKSd7w5GDTpHloQL4Cw32Lni6JRZLELf98vzQ2XblLEv
	 i1MI8atlgEEo6NOjevfuR77HjT2qhgXnHS82eqxwlvAMae3CoZWlPxWjHGszWEvvtT
	 ibFsXcT1i3h/w==
From: Thomas Gleixner <tglx@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Mathias Stearn <mathias@mongodb.com>, Dmitry Vyukov
 <dvyukov@google.com>, Jinjie Ruan <ruanjinjie@huawei.com>,
 linux-man@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Boqun Feng
 <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, Chris
 Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Ingo
 Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>, Florian
 Weimer <fweimer@redhat.com>, Rich Felker <dalias@libc.org>, Matthew Wilcox
 <willy@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
In-Reply-To: <20260428073938.GH3126523@noisy.programming.kicks-ass.net>
References: <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <87ik9i0xlj.ffs@tglx>
 <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx>
 <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
 <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
 <87v7dgzbo7.ffs@tglx>
 <20260424150318.GE641209@noisy.programming.kicks-ass.net>
 <87se8kywhb.ffs@tglx> <87jyttz8cf.ffs@tglx>
 <20260428073938.GH3126523@noisy.programming.kicks-ass.net>
Date: Tue, 28 Apr 2026 10:51:29 +0200
Message-ID: <87zf2nxyb2.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: 6B1FF481754
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5427-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[mongodb.com,google.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,redhat.com,libc.org,infradead.org,linuxfoundation.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Tue, Apr 28 2026 at 09:39, Peter Zijlstra wrote:
> On Mon, Apr 27, 2026 at 12:04:48AM +0200, Thomas Gleixner wrote:
>>  static inline void rseq_signal_deliver(struct ksignal *ksig, struct pt_regs *regs)
>>  {
>> -	if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY)) {
>> +	if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY) && rseq_optimized(current)) {
>
> rseq_optimized() already implies GENERIC_IRQ_ENTRY

Indeed.

>> +			u8			optimized;
>>  			union {
>>  				u16		error;
>>  				struct {
>
> I know you like the 'optimized' name, it is faster etc. However, the
> description there suggests: has_rseq_v2 not be a bad name.
>
> And while I write this, I figured we could have the value of has_rseq be
> 2, rather than 1, but this might end up generating worse code, dunno,
> haven't tried yet.

Tried that early on and it was worse, but back the approach has changed
since then and I just validated that it's actually fine to do so. Fixed.

Thanks,

        tglx

