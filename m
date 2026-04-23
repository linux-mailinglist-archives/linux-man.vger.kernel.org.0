Return-Path: <linux-man+bounces-5390-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLIPFC8Z6mk7uAIAu9opvQ
	(envelope-from <linux-man+bounces-5390-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 15:05:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB275452749
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 15:05:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBD283014C0F
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A85523845BC;
	Thu, 23 Apr 2026 12:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="bG2u0Aop"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DB83ED137
	for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 12:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776949144; cv=pass; b=n5nQm3swl+dG6fyK1EKKkbm5xL2feKxbzCEro7Vvylda0H1Kiv4cDKhFJqXsmARmHKpPebYzsuigPf4ZN19SCACijg+XNsZTQGpbEw5CauPBuuYtYYudsiCvVurDbBzze7rzMpQaTGBzPfDaD04hgl2QOhI6TgldbVCRRoy6vB8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776949144; c=relaxed/simple;
	bh=4rae3jvkCjQWMcvHSde4gAJUq4nke8pE4IKBx+HyCyg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b4oQkUoJWPXIoMVHLrV6oGcWKIOzhoY6ir7Xa4tF7unE/2r1W+fKkMx3Ct4bWzsVy3I2NVwjObcjVNw9es26esEdWPbRcimQo8PXsvNBaMysXCDCC7Oooi9RDUH2qVyRoZFTARuB4GdZuoQ6fk8G3Msj+IM5cIy7eX8yiD7m+C8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=bG2u0Aop; arc=pass smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-38e12c67a6fso65693341fa.1
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 05:59:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776949141; cv=none;
        d=google.com; s=arc-20240605;
        b=KlPESyqKtjmAl1EE3KhEoxH1snlObXW/NIE42YyHKT4HTdfUTHPm0sHeIZazHN+OCo
         5XNj4tvdUlYG2sxoHVMTpT3u7UMZXJ7DTev9Nz5jOZ8eqjwp7yrUn53XYu1JrIzzmue2
         z168brYmE6eWMPy3eRZgstPK2LtyzXi7RQvL5uQf61uZD7yI9GDnBN2K2Ze4JgIQquan
         V9teC06XORy8PcT0y37ooP7LxZh5y6VXrZM0FO032AK0xH8F2mVSE6VBFA/4F5DhwPKI
         gySsmWv6lsJD8qRxjksmDkyCLwULV/9mPBpQ7QtrKp4/60I+QBSJlmmtX3o3UjGdH0Ke
         9eZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EBoOCn6MiDkjwqqV0dZhBM0Mdu5029Jkm3x6gtbaC2A=;
        fh=VTWHpDpUhHds2uj34ETBc4nqU8m/B2XquH+S9h87JD0=;
        b=PqlFNG1XJ/utuvwUFbUIfl9j4Rsr9idtN9jY1VZHJRAqjvFa6ZlpDR+TOq7tyvlEvq
         NNu1ejDFkjRdLfIaIqhtjiJJMbSUyNSUxpSadl/5+bTCupGLLef2DpVFq6iLM9soC5Uk
         XCl3zb2ca7Iaa38WZ2bbJlJaKXGUhdL14u/Pwcd3f21B7mJsWi2HD3/Pr0aFkz6U5Npo
         Jx1SSRg3bQezBRdrYqmB4yYI59JUiSUozx/L+a9FehuXo7bXIlRsG7OOrUsklGkzuHd0
         mqrHQAfmx/Z+MduH/+MQplCZn9x6KOAdpVp2wUgo956wNDhPUWgHe8iuXM8y0KJiPXa5
         NOdw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1776949141; x=1777553941; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EBoOCn6MiDkjwqqV0dZhBM0Mdu5029Jkm3x6gtbaC2A=;
        b=bG2u0Aop56vhc+nRqkpeoGvOZnMa226qONh/rVp0mOEW8Jb5ARrCa+hd1kb1ia+SLt
         3ZoBTUOdUPjOVYP2U0RpbAmgr7am8+MB1MnxOJrP4odc2kEL0gTiomU+tTqZ0294oA8F
         0g2FKQqQWvJuSl1SPR9TG68yQJH3iraqMicM8U5aNP46RFaZ8yNdyu+jwSO2cLxhJfg7
         hZWIdjuuGhCbcX7Gf10Gwdg3wWi51sS75wZ+bCWqTafp3KKkMmBP1nreH8BV+rdGUIw+
         ifgtDS/EnSg6hTo8+qxoGPX4ErP+kMR/QoiXA/xMsHh7Zjw02LLYsAXFW5q0KUFuBdZs
         XJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776949141; x=1777553941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EBoOCn6MiDkjwqqV0dZhBM0Mdu5029Jkm3x6gtbaC2A=;
        b=oS3J1GFPbafASzQiDKMT+bZcLun1Y6RyVpFqTxccl4UnnQWzLyZaovhhg9qV7iqOs+
         gGL0X0TVJe4r0Ha3I4hJUpKJiJh5jSDIhZibhFs/rQajGhdzHGtxJ2/XwOfjsZb/EB2H
         /oi+S2cHOM1XMiU/kw9UhM9c/G8EawO6xaOfyRmEawOF+hcrMIXD7zeMN9uwUHSKpl2P
         vVkNHuL+1xYipVY45ouebJ3Qrk7wr5feAW9gNaKREZWXXxhPpeOh5c0BR5k8ESQAk8Lx
         33y7nODCuuUqIRBWjsQbWjZmcEOTQjghLUHuzbEwL7d8Km1IW4HbEQgcx/3bW0IxSYNq
         UuAg==
X-Forwarded-Encrypted: i=1; AFNElJ9LsV1Prbb+2BLDH6bbMuRzDk80lI8XgN2J59HJwTg9vBO2W6EHg9jMeODvAm+88tCEPKB5STpItEg=@vger.kernel.org
X-Gm-Message-State: AOJu0YzuwijVg44K0qff7TBZrcUn2rLlepmxBCVWxDXGhnxoD9DABUxg
	X+ALeIKTVbbCofN8ULmxh5/m/iitaRDuSxA96Yd4aGKRmNwB5eJpDi/OwL7LBYNbCowPKlXYtH7
	HOkUGfV6FuPvfEg2Vvar5lU/yy7iqqHUSenFrypjT
X-Gm-Gg: AeBDieuewTEeNayUteNY8Lz4hHWYrPtw+qggBExOgbJ+dVcL0lyfgaRjU81ULfc3v2u
	uerGpjpHwt2QxHT8yP/2bytIavdu8RBSoX0Fm/ZG5MnVQlB7WKGiLpUeN+3UBwOUfdiSsGCDJ8P
	HPTKblz4DGkSpkGiwcK0ThQfuVLSQwIkSFiDOk4OCZ5v3rJY217QVKQYxWNbuZFOvieDRKCKtGQ
	WnKaV1qxdyJh5bv/Vkug+P39Qj5KhQRGg1021MKtDMIJWiAiZinI+eL0UgFz/ptw3TSP5wAZTGr
	/7xr2oOs1aNEw3Rg9Nyfnzufdr0UAFmp5j17frFAu4p+43oQ6GeOI+S6X5JBo44zU0GWFh0TqMG
	ZDmkt5ZDnfQHJEUY=
X-Received: by 2002:a05:651c:4209:b0:38e:d870:1db5 with SMTP id
 38308e7fff4ca-38ed8701e80mr69433801fa.7.1776949140643; Thu, 23 Apr 2026
 05:59:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
 <aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com> <87zf2u28d1.ffs@tglx>
 <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com> <87wlxy22x7.ffs@tglx>
 <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com> <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <1e839a25-d15f-40d3-ad6a-20469fb6137c@efficios.com> <CACT4Y+bMH+q2C7Xg9oHRP5ZbmvLpMpYzrdAd7B6XoXYc8=22sQ@mail.gmail.com>
 <84e0a8f6-c24c-469a-82a4-e82e33b764b4@efficios.com>
In-Reply-To: <84e0a8f6-c24c-469a-82a4-e82e33b764b4@efficios.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 23 Apr 2026 14:58:48 +0200
X-Gm-Features: AQROBzBMZhPIR5gRUuR2Cv8QJN7ZCnPb8ovR-0L9yVQuuYL1RfgenAYTSh02Kxg
Message-ID: <CACT4Y+aSvv-n4gknRm8D=pLGsnh7PU3f5MTJSq4tTPqUWn80+A@mail.gmail.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org, 
	Thomas Gleixner <tglx@linutronix.de>, Mark Rutland <mark.rutland@arm.com>, 
	Mathias Stearn <mathias@mongodb.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Blake Oler <blake.oler@mongodb.com>, Michael Jeanson <mjeanson@efficios.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5390-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[huawei.com,vger.kernel.org,linutronix.de,arm.com,mongodb.com,kernel.org,gmail.com,google.com,lists.linux.dev,lists.infradead.org,infradead.org,efficios.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MAILSPIKE_FAIL(0.00)[2600:3c0a:e001:db::12fc:5321:query timed out];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dvyukov@google.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,efficios.com:url,efficios.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: BB275452749
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 23 Apr 2026 at 14:53, Mathieu Desnoyers
<mathieu.desnoyers@efficios.com> wrote:
>
> On 2026-04-23 08:36, Dmitry Vyukov wrote:
> > On Thu, 23 Apr 2026 at 14:29, Mathieu Desnoyers
> > <mathieu.desnoyers@efficios.com> wrote:
> >>
> >> On 2026-04-23 01:53, Dmitry Vyukov wrote:
> >> [...]
> >>> +linux-man
> >>>
> >>> This part of the rseq man page needs to be fixed as well I think. The
> >>> kernel no longer reliably provides clearing of rseq_cs on preemption,
> >>> right?
> >>>
> >>> https://git.kernel.org/pub/scm/libs/librseq/librseq.git/tree/doc/man/=
rseq.2#n241
> >>
> >> I'm maintaining this manual page in librseq.
> >>
> >>>
> >>> "and set to NULL by the kernel when it restarts an assembly
> >>> instruction sequence block,
> >>> as well as when the kernel detects that it is preempting or deliverin=
g
> >>> a signal outside of the range targeted by the rseq_cs."
> >>
> >> I think you got two things confused here.
> >>
> >> 1) There is currently a bug on arm64 where it fails to honor the
> >>      rseq ABI contract wrt critical section abort. AFAIU there is a
> >>      fix proposed for this.
> >>
> >> 2) Thomas relaxed the implementation of cpu_id_start field updates
> >>      so it only stores to the rseq area when the current cpu actually
> >>      changes (migration).
> >>
> >> So AFAIU the statement in the man page is still fine. It's just arm64
> >> that needs fixing.
> >
> >
> > My understanding was that due to the ev->user_irq check here:
> >
> > +static __always_inline void rseq_sched_switch_event(struct task_struct=
 *t)
> > ...
> > +               bool raise =3D (ev->user_irq | ev->ids_changed) & ev->h=
as_rseq;
> > +
> > +               if (raise) {
> > +                       ev->sched_switch =3D true;
> > +                       rseq_raise_notify_resume(t);
> > +               }
> >
> > There won't be any rseq-related processing for threads preempted in
> > syscalls, which means that rseq_cs won't be NULLed for threads
> > preempted inside of syscalls.
>
> Let's see if I understand your concern correctly. Scenario:
>
> A thread is within a rseq critical section. It exits the critical
> section without clearing the rseq_cs pointer, expecting the kernel
> to lazily clear the rseq_cs pointer eventually when it detects that
> it's not nested on top of the userspace critical section anymore.
> It then calls a system call _outside_ of the rseq critical section,
> but with rseq_cs pointer set. Based on the rseq man page wording,
> it would then expect the preemption within the system call to guarantee
> clearing that that pointer.

Yes, this is the scenario I had in mind.

> Here is the relevant comment block in the man page:
>
>                       Updated by user-space, which sets the address of  t=
he  cur=E2=80=90
>                       rently active rseq_cs at the beginning of assembly =
instruc=E2=80=90
>                       tion sequence block, and set to NULL by the kernel =
when  it
>                       restarts an assembly instruction sequence block, as=
 well as
> >>>>>>>>>
>                       when the kernel detects that it is preempting or de=
livering
>                       a  signal  outside  of  the  range targeted by the =
rseq_cs.
> >>>>>>>>>
>                            ^^^ this
>
> The whole point about lazy-clearing of rseq_cs is that it _may_ happen wh=
en
> the kernel preempts or delivers a signal (or at any point really), but it=
's
> just an optimization.
>
> Updating the manual page with this wording would match the intent:
>
>                       Updated by user-space, which sets the address of  t=
he  cur=E2=80=90
>                       rently active rseq_cs at the beginning of assembly =
instruc=E2=80=90
>                       tion sequence block, and set to NULL by the kernel =
when  it
>                       restarts an assembly instruction sequence block. Ma=
y be set
>                       to NULL by the kernel when it detects that the curr=
ent
>                       instruction pointer is outside of the range targete=
d by
>                       the rseq_cs.
>                       Also needs to be set to NULL by user-space before  =
reclaim=E2=80=90
>                       ing memory that contains the targeted struct rseq_c=
s.
>
> Thoughts ?
>
> Thanks,
>
> Mathieu
>
> --
> Mathieu Desnoyers
> EfficiOS Inc.
> https://www.efficios.com

