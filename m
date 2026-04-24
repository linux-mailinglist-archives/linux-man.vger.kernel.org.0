Return-Path: <linux-man+bounces-5395-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPdsKRE562nRJwAAu9opvQ
	(envelope-from <linux-man+bounces-5395-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 11:34:09 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EA445C43F
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 11:34:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFB2F300822D
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 09:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1970203710;
	Fri, 24 Apr 2026 09:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="UWexewPz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFE531ED68
	for <linux-man@vger.kernel.org>; Fri, 24 Apr 2026 09:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777023072; cv=pass; b=m45LmLtyZc+oUkh/kITzYUm8Lqipu7UA5bE/AUVSWafrmvkXClqumyJK/IfzeM/IaMARhjOJfcdS8ZDK7BmEZ/R2ds3oFmXd4lzW7cbHcOQ2Ph75iY/S+aqBVxRjhZnRaom8fCalXFAOAM6Si6xNdGI+0yWqq9+c4V+S8jYBOQ8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777023072; c=relaxed/simple;
	bh=KYk/MnoNyp9ihi+fWXWaLDcuV7c9SfI0eGFa0QlHtJc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Qm1zJ2/OhKc1lj2fhpqTkLBoLi8V81HH5iYIppWZ2+0RD/4jpTQ80PWq4bdbKY1hewJz7R9nHHTRVijg04OXgK2weQ0+bwmy+fH4DSHKrh12M3lFydJ8AKhDoGxZ+veTOqN1a6F9qCpgATC3hdEJXgl8VcLlJYbnt7ft0XZOxXs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=UWexewPz; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5a40b2d26a1so5899337e87.0
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2026 02:31:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777023069; cv=none;
        d=google.com; s=arc-20240605;
        b=DketB2v/4cnTTbQewhRLQG8DAo7YlhzXUX9EMFnInc5vR/nswQoKHMWzaYTEBVpc9K
         OzNNRtuLD9sBVeWmwgYhiWk+4FdCVCLKPNshA7nuznD1hgwK/0AbgBr1H6Tln+NqwpuN
         N2ml1HKvMA10FCnK1+zgOquacLpYpOTNxa9c65p2W+xBzThyXMqH64/DYst+aJLOj2YC
         3xeJ1P4Hala5PxRMTMXcWnyu1X9pScNoWhr6GQ9TBWNpIBE0YqcR0SqUmJCY9+ewGG4v
         XcjklN7KbX+LB4Mb86BDgoAihL5u3yxuqd20Cxb03vuagp2mYVGo9t5rXqFmGUPPUU9p
         DLHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KYk/MnoNyp9ihi+fWXWaLDcuV7c9SfI0eGFa0QlHtJc=;
        fh=lQ8sow86BFolFvukerJosBQwgPLAfXUxLjW8P7Ikh1Y=;
        b=Lg9ko/AGAv4Yl1DhrIdKU1dKKIhm6jHurvPnYlGRAuhH5/i6kgojZdCbNKEUCKEZEr
         OmLys0wuY4Fxj6mVXtai0tseIyuyOSAF47uIY5fn5vuPDip0cgTvy22wmNjArA/4wmIs
         WGcoGU3N76AWjt5WkeCsMedJK8MaZWEpIehYtqEe/EMuLHFZPRjsXn8beZoifEF/jIey
         XhdMZ3U1hmn3qEzHUTSPR/poi3o0YNcBaK80I0jYtQBcjfBjDt7vdrYB699TQX2VtmE/
         uetH001NNwyVdQqTlH+EMDbiwzBozhVYgLAPGiQtfEzB1+Pa13SJ1EnDh89x6HbAutKU
         KDXg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777023069; x=1777627869; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KYk/MnoNyp9ihi+fWXWaLDcuV7c9SfI0eGFa0QlHtJc=;
        b=UWexewPzVDPh3WIhGFoQ6hNdvuSrrgs9gIwRZ+RKfD8LpNZ0b+/EnNXOsGjj267RHO
         qCiXv2kdNAKmX+19Wk/z4nkbuSLprysvKogSvZ7hfNaIxJcXAYMS8o2ih/FBZRmhoour
         DhEJIR5bejGl0EoYRTSgxZkj8BnirjncaYCN7RBMldzTfV/NRbSlrqM4eKplrUI2PbN5
         ELQRZDP8uOckx0OwZnojqLKN4clOczYreRsU5P07T5iwa9uvWL5cliO/w6pzy1gXMWS+
         9I8aENIF6PBhTyyL+C+N8F5szA7WrInaxac4rzZDVxSchuaA8M+55HcsalvIfor80Xs9
         l2gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777023069; x=1777627869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KYk/MnoNyp9ihi+fWXWaLDcuV7c9SfI0eGFa0QlHtJc=;
        b=Ipvnm7aOAq2rNqGSdOphBo0wg1i3qUCBviyp3FeNvJFMHMX/mEhIQo6ojpyAOzO20n
         nF7OA5++FMKq9Qwrwwl2hk8jY9f28V28k8CsmizRFuPtCf/2U7ProK5DW69NQ9yNT9b5
         WaqoeEB8nxaKUtsD14VEZuzrUKfZdyfQqFwLvOBoM/lPMKM1VHzrhsRZzrHtC1eMyCHr
         Dh7OwePt7njvK2le8TEBZNv7jUrmkEJgjCEsKzlkICZXPyQBOp+1dUeFyKfUCKCF732D
         89xbPlSBmFpTF+kHZQB7Q7oSs16F0+qAie6YjBoTCEh//SgGcqfK9ulSvRoDYsLNwOa6
         llmA==
X-Forwarded-Encrypted: i=1; AFNElJ8MSBPLRaVDTx4qYvk+F2k5lFpYQnIaAER6g8aJB7D1egUKENuDjJ5wEAgeUKeTdcytKPqG6cd+Uv4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyYv/CAH9ktgY0UMNvEcn5eiZBIUDR2k7uingtCbJEto+qoZCi7
	CFkJK1LP7o7LJa3Q5VMbYd99RfVq4loVsHHGX2Tw+BPwHDXTjpDhyibYfTh4LfEKVu8yXR7efRg
	toMI5LkC4Iluh33WsqngslySdaZ7xhiOMr3oO1je06m7hY1P6g3cvQaPrRW0=
X-Gm-Gg: AeBDietYh5ZOwyebeDqRLsr3+lZV3aRciG7FCkfeRpun8Ad2OIPzumnyRQT5xmpjx6e
	UXLUaec/Jrk1NJQW8Lfsp4irsAdcfsdJE+loaRywIXoPB3pH7kDyANsrqb47Ah6xO2nKFA91VNY
	EfrDvMgGKL1CIu0qBuGzFZVgoSxtZrSRb1Uj+63qPbFZCea52cd7ShJM6VmoSaxVfJz+UHfw6Ou
	p4Xjg6L5p/gZvSWKDzIfkH3UuS5X61ki/caLfOEDcfuVWAXhrQhbFZLIDVEswdQWy/kDlqlaTjW
	scISsMSd2MI3e4/GSLjiW2SrdmyreXyzncEmT4JYW6frNJti3QYRf8rg1ZndmV226tFjEPZiRdL
	T3JhOADuhzYWNTsrGkg==
X-Received: by 2002:a05:6512:6d6:b0:5a3:d30b:958a with SMTP id
 2adb3069b0e04-5a4172de887mr7940708e87.22.1777023068865; Fri, 24 Apr 2026
 02:31:08 -0700 (PDT)
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
 <87a4ut1njh.ffs@tglx> <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
 <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
In-Reply-To: <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 24 Apr 2026 11:30:57 +0200
X-Gm-Features: AQROBzBE4JDXzMDFtK-HkrG9FqByjQjur9lylNZcv0FqInRcXzflA0csSOUyg18
Message-ID: <CACT4Y+bhsxSJhXMvwpRi=Z4tfq54uDicp-Xrp7hmm_qEjKpttw@mail.gmail.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Mathias Stearn <mathias@mongodb.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org, 
	Mark Rutland <mark.rutland@arm.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Boqun Feng <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Blake Oler <blake.oler@mongodb.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 62EA445C43F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5395-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[linutronix.de,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,google.com,lists.linux.dev,lists.infradead.org,infradead.org,mongodb.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dvyukov@google.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Fri, 24 Apr 2026 at 10:32, Mathias Stearn <mathias@mongodb.com> wrote:
>
> On Fri, Apr 24, 2026 at 9:57=E2=80=AFAM Dmitry Vyukov <dvyukov@google.com=
> wrote:
> > > So if the code only requires to know when it got rescheduled to anoth=
er
> > > CPU then it still should work, no?
> >
> > This was my first thought too:
> > https://lore.kernel.org/lkml/CACT4Y+a9GnOh3wHKSRwzoKF6_OSksQ8qehnHfpCgk=
QSt_OOmYg@mail.gmail.com/
> > The only problem is with membarrier (it used to force write to
> > __rseq_abi.cpu_id_start for all threads, but now it does not).
> > Otherwise the caching scheme works.
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
> it really is a pay-for-what-you-use functionality, I think existing
> binaries depend on invalidation on preemption. Luckily that should be
> cheap enough to be ~free.

I've prototyped this idea too:
https://github.com/dvyukov/linux/commit/1284e3723047cb5afd247f75c53de43efc1=
8db82



> [1] https://github.com/google/tcmalloc/blob/8e98046ec5639bffbe70a53770a26=
99dd355b26d/tcmalloc/internal/percpu_tcmalloc.h#L964-L980
> [2] https://github.com/google/tcmalloc/blob/8e98046ec5639bffbe70a53770a26=
99dd355b26d/tcmalloc/internal/percpu_tcmalloc.h#L551-L605

