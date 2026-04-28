Return-Path: <linux-man+bounces-5421-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJJgDhNm8GmWSwEAu9opvQ
	(envelope-from <linux-man+bounces-5421-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 09:47:31 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2056947F2F8
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 09:47:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5498E301A8C9
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 07:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18852340281;
	Tue, 28 Apr 2026 07:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="cYqItfln"
X-Original-To: linux-man@vger.kernel.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FEA34F25C;
	Tue, 28 Apr 2026 07:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.155.50.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777361989; cv=none; b=Yfhu67ud8UHLaW02JMlvlaWolCCoq5iXuaQiuxKG5PxMM9gf3/q7nUDeIHUGPLUkGysiXsbhgCaPYr4WltR5iF5qNpt4SbL58cBx9usbXlRUTXMdO8xVJBOokw08+XPD7/O/cnnJ5/p/dzs0bIcu1bXj6ozOI5aUuFTSpSpU9T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777361989; c=relaxed/simple;
	bh=HjR9mNBc3rmKA9OA4BAbGe2qkGeDhWPIYIeGIljUhpc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LZQbrC4S+W5QhMt2496RY8PbjWVS7VBrDz7DU9PJ5jNTpJC6ENjlkV1nVWUYY21A9NPZC7XzC2mv5EQhvNcL8FX63A+uzmbyAxwcrVOcRXkH4/E3m/SVH2Wn7kbbGymEpEL53JrvJz+V7wgKzVp9g3dLFTHk6bHaRhF0uf+sUCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=cYqItfln; arc=none smtp.client-ip=90.155.50.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=C8wvQC+PlO9yc4+E3jHjYIgN0HUdkd2mf8qqNlIWkPM=; b=cYqItflnufIelnJ28a7y9m3gmz
	jM9orCHon1mV5yW7ku5+xXfxbxq/zdbbqjKuHvEDf6SR2TW4ISIRaC/+4ppeJmo2y+1XPJ3zIMS0n
	UNVPioix3Kg/x2MIv8ZDLjCc/3tWg2ZbtXPtYsonJF8TYfRMp5lbx6gRItwYYiCkU90ADZ/AXtEmo
	o1ssrUS5Kqh1lFdZ4oL/jyqd1hJL5T+nUhCLFlS7nBdNyMjd4lnpzP5dtBvkHeRQ0khOmPWQNLSRp
	naHzfeM1lowG4VjKi7v0faMjO6IEingSlMemMbcCG5BwxLZbNj0Ev/jvMFqf9ycHuk8Y282KZLu8x
	oTbbj+Xg==;
Received: from 77-249-17-252.cable.dynamic.v4.ziggo.nl ([77.249.17.252] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHd2i-00000003Oh5-184w;
	Tue, 28 Apr 2026 07:39:40 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
	id 5A32E301CEB; Tue, 28 Apr 2026 09:39:38 +0200 (CEST)
Date: Tue, 28 Apr 2026 09:39:38 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Thomas Gleixner <tglx@kernel.org>
Cc: Mathias Stearn <mathias@mongodb.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org,
	Mark Rutland <mark.rutland@arm.com>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Ingo Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>,
	Florian Weimer <fweimer@redhat.com>, Rich Felker <dalias@libc.org>,
	Matthew Wilcox <willy@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linus Torvalds <torvalds@linuxfoundation.org>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
Message-ID: <20260428073938.GH3126523@noisy.programming.kicks-ass.net>
References: <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <87ik9i0xlj.ffs@tglx>
 <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx>
 <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
 <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
 <87v7dgzbo7.ffs@tglx>
 <20260424150318.GE641209@noisy.programming.kicks-ass.net>
 <87se8kywhb.ffs@tglx>
 <87jyttz8cf.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87jyttz8cf.ffs@tglx>
X-Rspamd-Queue-Id: 2056947F2F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=casper.20170209];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5421-lists,linux-man=lfdr.de];
	FREEMAIL_CC(0.00)[mongodb.com,google.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,redhat.com,libc.org,infradead.org,linuxfoundation.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peterz@infradead.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[noisy.programming.kicks-ass.net:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,infradead.org:dkim]

On Mon, Apr 27, 2026 at 12:04:48AM +0200, Thomas Gleixner wrote:

> --- a/include/linux/rseq.h
> +++ b/include/linux/rseq.h
> @@ -9,6 +9,11 @@
>  
>  void __rseq_handle_slowpath(struct pt_regs *regs);
>  
> +static __always_inline bool rseq_optimized(struct task_struct *t)
> +{
> +	return IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY) && likely(t->rseq.event.optimized);
> +}
> +
>  /* Invoked from resume_user_mode_work() */
>  static inline void rseq_handle_slowpath(struct pt_regs *regs)
>  {
> @@ -30,7 +35,7 @@ void __rseq_signal_deliver(int sig, stru
>   */
>  static inline void rseq_signal_deliver(struct ksignal *ksig, struct pt_regs *regs)
>  {
> -	if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY)) {
> +	if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY) && rseq_optimized(current)) {

rseq_optimized() already implies GENERIC_IRQ_ENTRY

>  		/* '&' is intentional to spare one conditional branch */
>  		if (current->rseq.event.has_rseq & current->rseq.event.user_irq)
>  			__rseq_signal_deliver(ksig->sig, regs);
> @@ -50,15 +55,21 @@ static __always_inline void rseq_sched_s
>  {
>  	struct rseq_event *ev = &t->rseq.event;
>  
> -	if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY)) {
> +	/*
> +	 * Only apply the user_irq optimization for RSEQ ABI V2
> +	 * registrations. Legacy users like TCMalloc rely on the historical ABI
> +	 * V1 behaviour which updates IDs on every context swtich.
> +	 */
> +	if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY) && rseq_optimized(t)) {

idem.

> --- a/include/linux/rseq_types.h
> +++ b/include/linux/rseq_types.h
> @@ -18,6 +18,7 @@ struct rseq;
>   * @ids_changed:	Indicator that IDs need to be updated
>   * @user_irq:		True on interrupt entry from user mode
>   * @has_rseq:		True if the task has a rseq pointer installed
> + * @optimized:		RSEQ ABI V2 optimized mode
>   * @error:		Compound error code for the slow path to analyze
>   * @fatal:		User space data corrupted or invalid
>   * @slowpath:		Indicator that slow path processing via TIF_NOTIFY_RESUME
> @@ -41,7 +42,7 @@ struct rseq_event {
>  			};
>  
>  			u8			has_rseq;
> -			u8			__pad;
> +			u8			optimized;
>  			union {
>  				u16		error;
>  				struct {

I know you like the 'optimized' name, it is faster etc. However, the
description there suggests: has_rseq_v2 not be a bad name.

And while I write this, I figured we could have the value of has_rseq be
2, rather than 1, but this might end up generating worse code, dunno,
haven't tried yet.


> +static bool rseq_length_valid(struct rseq __user *rseq, unsigned int rseq_len)
> +{
> +	if (rseq_len < ORIG_RSEQ_SIZE)
> +		return false;
> +
> +	/*
> +	 * Ensure the provided rseq is properly aligned, as communicated to
> +	 * user-space through the ELF auxiliary vector AT_RSEQ_ALIGN. If
> +	 * rseq_len is the original rseq size, the required alignment is the
> +	 * original struct rseq alignment.
> +	 *
> +	 * The rseq_len is required to be greater or equal than the original
> +	 * rseq size.
> +	 *
> +	 * In order to be valid, rseq_len is either the original rseq size, or
> +	 * large enough to contain all supported fields, as communicated to
> +	 * user-space through the ELF auxiliary vector AT_RSEQ_FEATURE_SIZE.
> +	 */
> +	if (rseq_len < ORIG_RSEQ_SIZE)
> +		return false;

You just did that check, I doubt it'll have changed since the comment
;-)

> +	if (rseq_len == ORIG_RSEQ_SIZE)
> +		return IS_ALIGNED((unsigned long)rseq, ORIG_RSEQ_SIZE);
> +
> +	return IS_ALIGNED((unsigned long)rseq, rseq_alloc_align()) &&
> +		rseq_len >= offsetof(struct rseq, end);
> +}

Given we really only differentiate between ORIG_RSEQ_SIZE (32) and
sizeof(struct rseq), perhaps we should also add something like:

	if (rseq_len != sizeof(struct rseq))
		return false;

?

