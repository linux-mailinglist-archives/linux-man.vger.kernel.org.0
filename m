Return-Path: <linux-man+bounces-5393-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cbpvCYwi62muIwAAu9opvQ
	(envelope-from <linux-man+bounces-5393-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 09:58:04 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 836E145B02B
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 09:58:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA3C8300D30A
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 07:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 128A8371CE3;
	Fri, 24 Apr 2026 07:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qJTWQzpc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228E2372ED2
	for <linux-man@vger.kernel.org>; Fri, 24 Apr 2026 07:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777017432; cv=pass; b=LS886w+edaglqGyba+COG60iP8cBYeui3Onuam7ackhKgRdO+6cSg/8wt+fguSV/hH+m5heqy2NU6WYzCP9EmK3fRNfKxh9dHIzlS3CeOUe3EWy8ea4Z3XKhtlXm/OkXh7PuQjfS5eALpWebQXEW9TWSgXK1zA6NsZ3G+bMbUHE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777017432; c=relaxed/simple;
	bh=HCb0SMH+1JGy/xLd8LWsIFi5YiWSKOjijV9SvLdq1C0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Cp2u2+Uz3n4/DPs6GfIVkrPGEaJKitqTRbpLXiMPBXllcogrYBfxLRwmyrcdqWeHBpxtVio7qjS60QZXxZUqMXphO6FB/30juz65d0fW+AifidNP9k8QXQ8JKyjNlk9Z0T1U63YGfnbnj0RytUG7QiuHL2QUdb2R+ahNRMha8MM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qJTWQzpc; arc=pass smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-38dd575bca3so75884231fa.1
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2026 00:57:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777017427; cv=none;
        d=google.com; s=arc-20240605;
        b=cazt2zvFmFrwiGK1uEHQ5XJad3q5Czpmm7oOD8DWMB4rdeJoDFVEGsNIMqu6nXEZZC
         8TmdS/QnpBkUQRtASEM1BDi6mpOfeY3wn1NCHAqhTOElivdpiarpNhE/aav4JbTdJvFP
         RgIBC/K3oidLgv22nivrz1x25cyYafu6moIhvXONwG1pr98csUoo7NV6SZZqvIpeOPOg
         WIsowsE0xSOtkdvcaiQzuY+rJwWeNnXLO7Kgvzg5m5+GuTiY7iWCevO8PsHgO4FFE/EC
         83HrFCqOzR51D8UnggxKg5EetDChpl0vaC+dhjKzcW4s3bSGz3/MpiiYQdzSCRLeOx9P
         WA0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tH1PYd1ytZ2gVkG2S56kMVCpAGOPHrHwrakfrH4hUps=;
        fh=KeZmQKwPngKqaKKMA3GelA9KtYK6JSny4jTV6/bbqCg=;
        b=ftqpClFJfmHgrOutOLhuJ17LSs3l3HIeMdDG7DxHobsqeeGR6LwQmNxprdeCHM7Vil
         paIiHfKpM0lhr8O0Ck/wyB+PeUv7tWowIK1YNWu8DzxEoFAJeV/LYv/apEUHb38ugE+B
         zEFqdEmX+fRslWyXRahpF+eh/FxTCNZbmxYb1hXV+PMddNVz9ov6Kysq52lESrUF5rcN
         aYGHz6KkdO3Meze2qW98uDYcOOlo74ebtCQSjzPWThWxttZHgfGxwpPXtH8z+x3KjTaK
         4z8BdH2H7H2CSXJ7WcPjOxk5e5TIBOdqa80uG/hCdAi6C+jJOiNHQ7sRiWGBAd7D+JNC
         Y2sQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777017427; x=1777622227; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tH1PYd1ytZ2gVkG2S56kMVCpAGOPHrHwrakfrH4hUps=;
        b=qJTWQzpchr16BgYsTzDFF4giTSmR8Sj40X+sj0KECVWOEcHAxLGH9dosHL8vaYFjHC
         GFXNAsLoIKIPVW//FIBW+nOhhWzKaVtkjZuw495ugX0OWPGqYpCMnArI49YtldvOH/SJ
         g+OP3Sz8LfxEbW1V5gG8J0eOHg7boiyKSFsqO/Rb4oM59AIziI5/DQkqyHg92lOWh4ji
         2EsIDRJ2h5G3XZm6dmpMlBaiz9jaqampiR86zPLa1mIbgGDSBdpz2p86hZaNJNuUdKKu
         sLpp38YajEFnRjt1jIT5wngybmne+G1GM2jnx/3eDse64snCJ8q1zjQbnRwdIB8M8Shj
         jBSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777017427; x=1777622227;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tH1PYd1ytZ2gVkG2S56kMVCpAGOPHrHwrakfrH4hUps=;
        b=K/ETPpuuIek6fZU+0+xmDbwLyTWm/j2nEtnW7/t4KZLQeddEJ8kgC50EQz2ycJjC1J
         Zjiv7hEF2sjLqdYUhk8v6pK1t3fiydRpBCHYD4kw6u/aM69OhxvamQyTDpvOz/6sbHMX
         8qQ/LFhyUnfE8I3kfcIUo9GGBZrMdnNV74kkpffm7fz5QNkSH8zJ6AdhTRFycy4g9bPr
         axByOeh7n7C+7bf6o2Gaa62UXiqbdfMbVcLs/9HHfvV2WscVq5uW9dgS3cy4dogWS74O
         gTed59M110Y6QmURQMfYjpo24IijzVcasyc8qXLD6HneZcf26jPuUZjncxv8NwO/deuL
         zpIA==
X-Forwarded-Encrypted: i=1; AFNElJ+pfGjEINsdwgWJAeviOfrZRmWWQlV71EmN5wJhdlyoqe9m1dbwIZ+ad0CBnU03vLNcd0VHrXRWkhc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7Nu86o8Evn1P10qAFzARf1IxRD0T/phGCkSjQWCJKFOuliNBy
	H5Imtr+HhW+J4RSas4vndpDy0pbwbX06KaI+KYguVzD1TRMXc4XJLJRwzL5xQA2LVxsxP8WvwZu
	G+WRvhoRLV+N+L1SvKU9XvaNTK4Hn920Rn1tivOww
X-Gm-Gg: AeBDievwksqb5AkoKV8m+QzZEc1P/IvjndeiVmT2WE35dTgDY2HrLRkpayvjWzPTDxw
	MvgZx1nj7Lwdf8ThgHNIxQtuMqzDjBVhJMnX9IrQ6/zs41EInAXWmu2W/KJpdBXIO8/JfbGD68S
	Eg27D4ltkbHT65qhFmSxdRRn4mEpXHZYa1DvyFmmg2kfhphgkBqWqYP4J+GQZay3GUyRWIhtAbw
	ssDlvINl3wtHu9+m4hkHpg2alcK0bwwq4Ne2hBvEbKQcMR7r6ylF68tonRvHfus5SCtU7+80a9L
	HVRUNNqUOso4vS3amPc6WD3zr312jjkzrBCCUHYQfLB6Zf5d1rPeuq4fxKAAdv1YW1Im/PkRHuL
	qwqUVVbvh473q4uxkPQxsS4ekwMw=
X-Received: by 2002:a05:6512:61b3:b0:5a3:e7f1:5946 with SMTP id
 2adb3069b0e04-5a4171766e8mr10818350e87.9.1777017426431; Fri, 24 Apr 2026
 00:57:06 -0700 (PDT)
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
 <87ik9i0xlj.ffs@tglx> <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx>
In-Reply-To: <87a4ut1njh.ffs@tglx>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 24 Apr 2026 09:56:54 +0200
X-Gm-Features: AQROBzACQ3yI2kl8vg3Kcy5MxWLQ9Q6j6OYD-UEZj9wyuB3F1SqwdpFTVc0GJDU
Message-ID: <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Mathias Stearn <mathias@mongodb.com>, Jinjie Ruan <ruanjinjie@huawei.com>, 
	linux-man@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Blake Oler <blake.oler@mongodb.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 836E145B02B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5393-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[mongodb.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,google.com,lists.linux.dev,lists.infradead.org,infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dvyukov@google.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linutronix.de:email]

On Thu, 23 Apr 2026 at 21:31, Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Thu, Apr 23 2026 at 12:51, Mathias Stearn wrote:
> > On Thu, Apr 23, 2026 at 12:39=E2=80=AFPM Thomas Gleixner <tglx@linutron=
ix.de> wrote:
> >> The kernel clears rseq_cs reliably when user space was interrupted and=
:
> >>
> >>     the task was preempted
> >> or
> >>     the return from interrupt delivers a signal
> >>
> >> If the task invoked a syscall then there is absolutely no reason to do
> >> either of this because syscalls from within a critical section are a
> >> bug and catched when enabling rseq debugging.
> >>
> >> The original code did this along with unconditionally updating CPU/MMC=
ID
> >> which resulted in ~15% performance regression on a syscall heavy
> >> database benchmark once glibc started to register rseq.
> >
> > Just to be clear TCMalloc does not need either rseq_cs to be cleared
> > or cpu_id_start to be written to on syscalls because it doesn't do
> > syscalls from critical sections. It will actually benefit (slightly)
> > from not updating cpu_id_start on syscalls.
>
> I know that it does not do syscalls from within critical sections, but
> it relies on cpu_id_start being unconditionally updated in one way or
> the other.
>
> > It is specifically in the cases where an rseq would need to be aborted
> > (preemption, signals, migration, and membarrier IPI with the rseq
> > flag) that TCMalloc relies on cpu_id_start being written. It does rely
> > on that write even when not inside the critical section, because it
> > effectively uses that to detect if there were any would-cause-abort
> > events in between two critical sections. But since it leaves the
> > rseq_cs pointer non-null between critical sections, so you dont need
> > to add _any_ overhead for programs that never make use of rseq after
> > registration, or add any overhead to syscalls even for those who do.
>
> Well. According to the comment in the tcmalloc code:
>
> // Calculation of the address of the current CPU slabs region is needed f=
or
> // allocation/deallocation fast paths, but is quite expensive. Due to var=
iable
> // shift and experimental support for "virtual CPUs", the calculation inv=
olves
> // several additional loads and dependent calculations. Pseudo-code for t=
he
> // address calculation is as follows:
> //
> //   cpu_offset =3D TcmallocSlab.virtual_cpu_id_offset_;
> //   cpu =3D *(&__rseq_abi + virtual_cpu_id_offset_);
> //   slabs_and_shift =3D TcmallocSlab.slabs_and_shift_;
> //   shift =3D slabs_and_shift & kShiftMask;
> //   shifted_cpu =3D cpu << shift;
> //   slabs =3D slabs_and_shift & kSlabsMask;
> //   slabs +=3D shifted_cpu;
> //
> // To remove this calculation from fast paths, we cache the slabs address
> // for the current CPU in thread local storage. However, when a thread is
> // rescheduled to another CPU, we somehow need to understand that the cac=
hed
>
>                   ^^^^^^^^^^^
>
> // address is not valid anymore. To achieve this, we overlap the top 4 by=
tes
> // of the cached address with __rseq_abi.cpu_id_start. When a thread is
> // rescheduled the kernel overwrites cpu_id_start with the current CPU nu=
mber,
> // which gives us the signal that the cached address is not valid anymore=
.
>
> The kernel still as of today (the arm64 bug aside) updates the
> cpu_id_start and cpu_id fields in rseq when a task is rescheduled to
> another CPU.
>
> So if the code only requires to know when it got rescheduled to another
> CPU then it still should work, no?

This was my first thought too:
https://lore.kernel.org/lkml/CACT4Y+a9GnOh3wHKSRwzoKF6_OSksQ8qehnHfpCgkQSt_=
OOmYg@mail.gmail.com/
The only problem is with membarrier (it used to force write to
__rseq_abi.cpu_id_start for all threads, but now it does not).
Otherwise the caching scheme works.

I have a tentative fix for tcmalloc:
https://github.com/dvyukov/tcmalloc/commit/58d0eca91503f539b26d20b6f55fb2f6=
f8bc0c37

The crux is as follows.
Tcmalloc needs to make all threads stop using old cached slab
pointers. The stopping procedure is now:

slab->stopped =3D true;
membarrier();

and all rseq critical sections now check the stopped flag in the
cached slab pointer. If it's set, the thread does not proceed to use
the slab.




> But it does not, which makes it clear that it relies on this
> undocumented behaviour of the kernel to rewrite rseq::cpu_id_start
> unconditionally. I'm not yet convinced that it relies on it only when
> interrupted between two subsequent critical sections. We'll see.
>
> ....
>
> Now we come to the best part of this comment:
>
> // Note: this makes __rseq_abi.cpu_id_start unusable for its original pur=
pose.
>
> So any code sequence which ends up in:
>
>    x =3D tcmalloc();
>    dostuff(x)
>      evaluate(rseq::cpu_id_start, rseq::cpu_id)
>
> is doomed. This might be acceptable for Google internal usage where they
> control the full stack and can prevent anyone else to utilize rseq, but
> in an open ecosystem that's obviously a non-starter.
>
> And they definitely forgot to add this to the comment:
>
> // Never enable CONFIG_RSEQ_DEBUG in the kernel when you use tcmalloc as
> // it will expose the blatant ABI abuse and therefore will kill your
> // application.
>
> If your assumption that the rewrite is only required when rseq::rseq_cs
> is non NULL and user space was interrupted is correct, then the obvious
> no-brainer would have been to add:
>
>         __u64   rseq_usr_data;
>
> to struct rseq and clear that unconditionally when rseq::rseq_cs is
> cleared.
>
> But that would have been too simple, would work independent of endianess
> and not in the way of anybody else.
>
> But I know that's incompatible with the features first, correctness
> later and we own the world anyway mindset.
>
> Just for giggles I asked Google Gemini about the implications of
> tmalloc's rseq abuse. The answer is pretty clear:
>
>    "In short, TCMalloc treats RSEQ as a private optimization rather than
>     a shared system resource, which compromises the stability and
>     extensibility of any application that needs RSEQ for anything other
>     than memory allocation."
>
> It's also very clear about the wilful ignorance of the tcmalloc people:
>
>    "In summary, the developers have known for at least 6 years that the
>     implementation was non-standard and conflicting with other rseq
>     usage. The github issue which requested glibc compatibility was
>     opened in 2022 and has been unresolved since then."
>
> Thanks,
>
>         tglx

