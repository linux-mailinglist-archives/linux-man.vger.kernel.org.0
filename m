Return-Path: <linux-man+bounces-5381-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4eoEMQe06WkJiAIAu9opvQ
	(envelope-from <linux-man+bounces-5381-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 07:54:15 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A5A44D582
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 07:54:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A909301C966
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 05:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D8E13806D9;
	Thu, 23 Apr 2026 05:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tmLJgEok"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11B9381B00
	for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 05:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776923651; cv=pass; b=M+uoB9p3Im5YFdqI8v8oFybQyHDp6OzL7fSRi8OBTgZRLKbqwHShywAkrGbDXyJGR8VIciKYtDgKkHUTgEWhq9SJX/BHUMz1ee0kYBdG6it0VhYPxdXNJaF/OtAsIZdqcZiDWvQWkvb4dqzwhUEatALktriotkneg0JzdgFcipc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776923651; c=relaxed/simple;
	bh=vHrBdwKKKidXyWyBJfuc2Ee2FZ3EZtkXD+yyVir6jas=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LKQPYUiwR0pITOJnFi2zC/5bousSHi9KtLwnB0Xad6IpLSGFwERwmbJgSImaLBnHO4OS1CyGBU0yiAKd6pYEFMLVBl7zO/IprvtpuXx/8KVm9ZKUR/ffumoVWjJsObFQgQ22VYyW7UU0n7nM0SZIXvpYCAkJV2+TyK119Jq+ouo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tmLJgEok; arc=pass smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-386b553c70eso50782741fa.0
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 22:54:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776923648; cv=none;
        d=google.com; s=arc-20240605;
        b=KXpPMVJ6CwIiEO1scOdB7n6RBe06q14Z0mHrvWU0orArwMgkfm85A0xaUqSgIMrbwz
         mv0juY+uk96BtZ4p/kswgEN6m+bh7tA744wWGTBhj46QIT4cKBmxMr1zaNYCbeYqSsQ1
         kUbELIOmv4q/bY7NIe5za2ZmmWSMUiDKsjmPYR33W7OXBebmIXZ/yodMlw96L1R5g/z8
         yk+9VdXb/nuCLZiVnn6geYWocrzvVwYa0LMdkYsbwO/HgOlD0o1SlTzkk+k0FOcMjERN
         sWLzYdobwP2D9EooIa2OQ1S5Q6M1n55R85JauHrb+4R3pi1r0bFwvzdI1bOGGGyC2fkO
         92qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WzRgT3Fy0ZOQHjWDkavm7hE9jcAag/PmRRQNI2oPYmE=;
        fh=wV8OhYb+j/TJKWRh7GtHtBSwm11QbE4T4ZXeFKb6dBs=;
        b=Z20zm/NpIpc0bubetO/QdlYkbRtmvg7p5S79NOz6txqn8zytBGNqxBQM1FdSVljGkz
         FK8Z6aeS2dcozAye9oLTkELW1SjGd5rK4aipQP/q9rvlXZSjKpvCZRt+Mlzy9SaRMhjQ
         nQlVRz85t9M2TUREnJlH2XQ+nQqpqbpbdc9/SqgzuSSn1XysP/Rp+CbRthCMqxblEcsq
         5GxHh/cCGvlSB28T4vQzbIltawrXPTQAvJWu2Br8PSvWzsO8989kEI9CC+nz+4Sx59BD
         44GvL+VEPRVBaNVs+K8eHgzJUvbQNTOp3gvGeDlJrgVhG8YiKpkqC8WakPv7JmS3dG/S
         GYGA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1776923648; x=1777528448; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WzRgT3Fy0ZOQHjWDkavm7hE9jcAag/PmRRQNI2oPYmE=;
        b=tmLJgEokJVuS0ke3zX0gKRgpZbXS5pQXqMtrZtuQyfgPFsa2nZMaYD07RrQPNUFWHg
         u7KbmOF+Dhozcns+0YGpjDEHzTep4oPf7eKEGu9Jve4QL+T1D70tDgLYnj4T5+QwLTfc
         eHpnc/hRXeVyT1ExKMWOqpBg6dk5ur8bltRkBQMHUZCv8TXYapjTs4NBOI9TE2xMpa0d
         fiIl+rPgyqEiueFW288eJ3ZPCgUlMx3yHMtgOt7WHN8UIZ7HSx6MsBo/U+xpnBtdS0Om
         x69vvObbPSO1FDIP0f5IXeteHcTsUTVSs5M3lWB5q11kvI8dpw2Fq+s/SrcPZ5semlb+
         d/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776923648; x=1777528448;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WzRgT3Fy0ZOQHjWDkavm7hE9jcAag/PmRRQNI2oPYmE=;
        b=p7YOnRjmvCpHtRpr1rEo5JjnQpe04Y/nzlMkBXh0i5RkfqVaqNrsjmSI4uMzMoivAA
         SKcVs4UlgVimdsKFw12eluMCUsVV+UWKDFrWovl/Y7RYpEN0h7sc8pGFeZZ96zAV3GKn
         UrPcIAE6pABAcyb0LjE4y0jzRqmzSwlHAwlwe/HI0jq5IQWB00azb3MXDkqDGky6WbQF
         R9gUeJMfRbSHEGzWZ05w9pg9+u/NMmnXzVf5GCOK9Gkcu3NKHgfZgXlfvQJRa2FRL0xC
         5VoTLfCCy8yV/38yPFfslw+BKP4Oz6+RHW+g268ecmJ7nntBlQ6QRonRImLwBj2tHHZd
         ZnVg==
X-Forwarded-Encrypted: i=1; AFNElJ82/LG2vFjDPL7aqlELu6YmsQ6i/FDZXKvz7cbGMXRxjTIHSjDDKIRn43NOH1y4M12CsQGHkoFXWP8=@vger.kernel.org
X-Gm-Message-State: AOJu0YwMv4bCDwsuimaLYq8ifTaehsGFTLinw7qd0jdoMve6T7MYbMOW
	Ekp+0q3wHod/PEdue0xvUvfyO3ok3edzKFrA0IpOccgbHifnbUl9+kRF30ZA1DXxY8jQCkQV94c
	9PkdAU4fntXrKAeR3zS/SjXybOmWYDZSe+5Z8LmKt
X-Gm-Gg: AeBDietfb29x7AKbcUWs3R2SrDKAJzJzRaJyRNacxkRPYfpxUSLBJhxP44GH0DcDYWT
	zvF7Fs7pl2NTJouXlQ9uSNzqNehi7p3pJPGDkH3RCu6raQKWswXuK3M25cckk1ya9JtF9sUGIdP
	VnNbHaZtjY7muRy3+Zgd3EomxACRWs646qupzt2maUsHYVA2LACPFU5wjV2EelN8Mqd1yT1LeCC
	NZ41AG6bYh2UwsY02Z/Jzdubtxlp677Tmo1GebXLwBQJIy+A3/Dczkk62QXfpfxaVyHsCR7IXTx
	/0T5N2X8fXMVodCEFTkPbKJQjeVHOgO3dGG/XtI/xYHHj946g0O1FKJ1u4z3tuEu9usGfhlTh+1
	9G3RfH42dbtGptOeJ1g==
X-Received: by 2002:a05:651c:555:b0:38e:99ba:ec77 with SMTP id
 38308e7fff4ca-38ec783f2ffmr78727471fa.14.1776923647481; Wed, 22 Apr 2026
 22:54:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
 <aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com> <87zf2u28d1.ffs@tglx>
 <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com> <87wlxy22x7.ffs@tglx> <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
In-Reply-To: <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 23 Apr 2026 07:53:55 +0200
X-Gm-Features: AQROBzDiWg3BhfVAmxsSMzsrj4-DDyCRyJJ_hjD1dpJPTaQSNdduKsPUw0QTTv0
Message-ID: <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>, Mark Rutland <mark.rutland@arm.com>, 
	Mathias Stearn <mathias@mongodb.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Boqun Feng <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Blake Oler <blake.oler@mongodb.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5381-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[linutronix.de,arm.com,mongodb.com,efficios.com,kernel.org,gmail.com,google.com,lists.linux.dev,vger.kernel.org,lists.infradead.org,infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dvyukov@google.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huawei.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 31A5A44D582
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 23 Apr 2026 at 03:48, Jinjie Ruan <ruanjinjie@huawei.com> wrote:
>
> On 4/23/2026 3:47 AM, Thomas Gleixner wrote:
> > On Wed, Apr 22 2026 at 19:11, Mark Rutland wrote:
> >> On Wed, Apr 22, 2026 at 07:49:30PM +0200, Thomas Gleixner wrote:
> >> Conceptually we just need to use syscall_enter_from_user_mode() and
> >> irqentry_enter_from_user_mode() appropriately.
> >
> > Right. I figured that out.
> >
> >> In practice, I can't use those as-is without introducing the exception
> >> masking problems I just fixed up for irqentry_enter_from_kernel_mode(),
> >> so I'll need to do some similar refactoring first.
> >
> > See below.
> >
> >> I haven't paged everything in yet, so just to cehck, is there anything
> >> that would behave incorrectly if current->rseq.event.user_irq were set
> >> for syscall entry? IIUC it means we'll effectively do the slow path, and
> >> I was wondering if that might be acceptable as a one-line bodge for
> >> stable.
> >
> > It might work, but it's trivial enough to avoid that. See below. That on
> > top of 6.19.y makes the selftests pass too.
>
> This aligns with my thoughts when convert arm64 to generic syscall
> entry. Currently, the arm64 entry code does not distinguish between IRQ
> and syscall entries. It fails to call rseq_note_user_irq_entry() for IRQ
> entries as the generic entry framework does, because arm64 uses
> enter_from_user_mode() exclusively instead of
> irqentry_enter_from_user_mode().
>
> https://lore.kernel.org/all/20260320102620.1336796-10-ruanjinjie@huawei.com/
>
> >
> > Thanks,
> >
> >         tglx
> > ---
> >  arch/arm64/kernel/entry-common.c |   14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> >
> > --- a/arch/arm64/kernel/entry-common.c
> > +++ b/arch/arm64/kernel/entry-common.c
> > @@ -58,6 +58,12 @@ static void noinstr exit_to_kernel_mode(
> >       irqentry_exit(regs, state);
> >  }
> >
> > +static __always_inline void arm64_enter_from_user_mode_syscall(struct pt_regs *regs)
> > +{
> > +     enter_from_user_mode(regs);
> > +     mte_disable_tco_entry(current);
> > +}
> > +
> >  /*
> >   * Handle IRQ/context state management when entering from user mode.
> >   * Before this function is called it is not safe to call regular kernel code,
> > @@ -65,8 +71,8 @@ static void noinstr exit_to_kernel_mode(
> >   */
> >  static __always_inline void arm64_enter_from_user_mode(struct pt_regs *regs)
> >  {
> > -     enter_from_user_mode(regs);
> > -     mte_disable_tco_entry(current);
> > +     arm64_enter_from_user_mode_syscall(regs);
> > +     rseq_note_user_irq_entry();
> >  }
> >
> >  /*
> > @@ -717,7 +723,7 @@ static void noinstr el0_brk64(struct pt_
> >
> >  static void noinstr el0_svc(struct pt_regs *regs)
> >  {
> > -     arm64_enter_from_user_mode(regs);
> > +     arm64_enter_from_user_mode_syscall(regs);
> >       cortex_a76_erratum_1463225_svc_handler();
> >       fpsimd_syscall_enter();
> >       local_daif_restore(DAIF_PROCCTX);
> > @@ -869,7 +875,7 @@ static void noinstr el0_cp15(struct pt_r
> >
> >  static void noinstr el0_svc_compat(struct pt_regs *regs)
> >  {
> > -     arm64_enter_from_user_mode(regs);
> > +     arm64_enter_from_user_mode_syscall(regs);
> >       cortex_a76_erratum_1463225_svc_handler();
> >       local_daif_restore(DAIF_PROCCTX);
> >       do_el0_svc_compat(regs);


+linux-man

This part of the rseq man page needs to be fixed as well I think. The
kernel no longer reliably provides clearing of rseq_cs on preemption,
right?

https://git.kernel.org/pub/scm/libs/librseq/librseq.git/tree/doc/man/rseq.2#n241

"and set to NULL by the kernel when it restarts an assembly
instruction sequence block,
as well as when the kernel detects that it is preempting or delivering
a signal outside of the range targeted by the rseq_cs."

