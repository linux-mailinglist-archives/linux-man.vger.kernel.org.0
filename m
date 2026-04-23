Return-Path: <linux-man+bounces-5387-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qO8WKeIS6mmytQIAu9opvQ
	(envelope-from <linux-man+bounces-5387-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:38:58 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD00452184
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D71673014782
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:36:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9E3E3E8C54;
	Thu, 23 Apr 2026 12:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="reCHMywn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8B63081D6
	for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 12:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776947790; cv=pass; b=kBMVpYycXIo5PNDKkxHME/v9U97/szHNiFzB1wq/rmq1YVB6OBFVzq+DqAtiWpkfHIegS2dMRs3QUQNLCrSICsDuKmFdyrjBe1qzboEyNbbIS2FGBDVoUBkyMSzeefS81RL6NFsA8zjFb2hYiEolvBBEfLhpNXH1FKLizL/nIWE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776947790; c=relaxed/simple;
	bh=TKhCTQv37tUfdCqzTtpw+wDi6EmFC1dW3WGcHmM9ocY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eR1BrEnmJpvlB51c8MdGv40sv09d5hlT0P3hjZG+SMq4R6IUAyoW9681ABiUQgjvn0E2qg6m7pJBceeoW7L8XGXLSOVKv8q6Qf8Euu58BKyvrr+s1xSxv4hu1Pzq6rTVQLNLUcTkthS+5Mc0PjlMHHMt+z7eOggB31htDkvbxvY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=reCHMywn; arc=pass smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-38e7c3a2deaso42603221fa.2
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 05:36:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776947787; cv=none;
        d=google.com; s=arc-20240605;
        b=TOe20oh2KUPtghSBi3nXfXz/o5RFgq4ciLi0Gw/mxYifVNFCLSPvzf3nLANQ+dbb7z
         1+a/umazwtY+3qkHgRH4BlCquOEWs6Z6dXZG3C3uw6y7kgSsycxjdpXCjlEIFwx6bEro
         WynB0jhBohuoERA15iU8fi+8W4cIpJMyzVypVCWyyxYMm0EE5qnd7lFJn/11mK6vWi0Y
         46aIem6wiM91jp4cXC3Jhi01TOHrgPCyDM0jae+/wC4ld+oYh7pH0DcGLuHq4UnLcISn
         t0MQIiNOTULGxFVCt/MkoUAXko+awdBLnK/qJkcgLtsdHZRnpheV2+Lfpi6W2a+//vk6
         BrCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A3l35eJicdA9ttVOYKMPZgwAhNep30y27OnDLG1eCTQ=;
        fh=VkSk4Cvo7Zyaxpq47sn6VJGtiMvHOp+KuTvyDkI7fQ4=;
        b=WRU9hHYpKcTM54vTsiz4kzqra3SiM7NLOnpMKlV9r0FYAhbDHPxSIP+7z6URhxoeb1
         ynLlvXgc0gIOXG7z5ux2hGjnQxaCucaHZirWdGzJHCULT3/SnXzNkUbEnS4rCHyHAxaQ
         F6uL1kCyIVlki0/eaLvfrBp93FRcyc7DrVg9bwB57F6ZjU2yzXoTjfMEOZA7B4/JjoqV
         UFN5NIGTqnMExwhQMb6lV4itK1IhRbolJsEDUkhDstfiiP3ds+MDJAyNijmELCR0yOVU
         J4ub9FlXDzgcGvJfOSjLT0uSYHAb4pvMsYNYgZO4hyXA3/lclNqhb+XBLUn+F8+c4CEP
         SUnw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1776947787; x=1777552587; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A3l35eJicdA9ttVOYKMPZgwAhNep30y27OnDLG1eCTQ=;
        b=reCHMywnHxtfIRx+NjnP/j1WaSCgiGjBvLrVfRoG0+8c9n/sJLq3jE6zGy77Di/WUy
         D0eP9w1uMh3kHbm++TVeF2qiZtEbkF1pSWISXSTEoZWDU7vmhacTxnMErbHMPhuy6sv2
         ZKi9s+80/zDaCjzwD+bWM2lPfGXe+s8/HGCd+jUq4AsBcki7/DK11jpEztcmjsojGmzF
         HkL0D+7RsN3A6s0H3foT98JFVwTmTXmjAxsq60Vtzddlvi191BF+AL0NgyKf3Eg4duL7
         r2dtixTgTUOyDhGwvRXuy2hA23N2ru27EsyH6QxI0RqhthAMSI4ba8ZFBhn2AGfYJaTq
         5g6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776947787; x=1777552587;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A3l35eJicdA9ttVOYKMPZgwAhNep30y27OnDLG1eCTQ=;
        b=MqZ26epwNzJqXJE3xHAgHzoemmmDns1jutygrcemNTmNQjW4w8v7CcnAjRMTZbL7w8
         ObhJf7Y38uD0JVy3CYQ5F28QLEc2DcSPHpvqdE+4hyUIaSrhiKUBOh5KNtHRPRSWGdfJ
         tCMAZeGNa2OxZACmZ4KcCvqJmRXGva4L04M1WQrFt+TIanHDzwOdSJJo5As0Ai6ykG1y
         ETQjgFAi9a0HpYJF7Lg5pcexYBmnyyFj0psgQCzstM9TLFc/Ql+yUq2msrNAV6OUb9BR
         IzB1JhOXtW6CYU5S+oze5yJ4c6Qo6zWzoqfp1evEy98SqRDQO+A6xcpAd1skujfsR20E
         OSjg==
X-Forwarded-Encrypted: i=1; AFNElJ9voLj92zmUBTHkzCea1x8J/jPy6y2ibPsj3deeHm8sv930G+UjfskxO2oB/JDnL7rrcAhOrAj6w3o=@vger.kernel.org
X-Gm-Message-State: AOJu0YxgSJxCvoD8Krc/tgVE6SmyxVT2ddXwXJ3GO39Sjurk9NMuQDfG
	zdk807+OZcdUHNQcuxHPLckaw5yk/sklR9QpPYFq3itNxbGbXZRDtNbJmxFSt87U+HRejq5hbzY
	seOnzB5SbIh4F/q9uQGMLtG6y82PK0yerzNxzQmN+
X-Gm-Gg: AeBDievb05WBF6jMkrWoIvALJbZaQ7po1rlaS14TxSu1W0la2PdQse8ezHZ4jBc+hQz
	GEbASpuyxlex0hEmCOa1FrqKOhDGBBj7qZdzHHfKzZp2Dqr225CXcd8icv/ceyAbmqR1vSnSiOJ
	CrqjyDAEjpKb3aJIru0VOCvD71z7VbJBTqUnBCj7zupjaCHcJ7Lja0/9fLdfXcY2smr7uDD24p4
	6+e5HvUjCUMMtdnCuxzB5w+kC4BWHJLtizM7rLRDSaXFzRTPnWEeUveodVSeACi4YTcKurKtv+V
	mHrsUCKlhQC/C9hJh+4cQn0tZobjHFpYLPecTzvUFKtiFFHxPtXL6ARz+Rfe9C+LqVm3cje7YYY
	OvU/rdmvM1BR143pgXHS9mvdGwA==
X-Received: by 2002:a05:651c:2129:b0:38c:4231:91df with SMTP id
 38308e7fff4ca-38ec7843861mr104639501fa.10.1776947786923; Thu, 23 Apr 2026
 05:36:26 -0700 (PDT)
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
 <1e839a25-d15f-40d3-ad6a-20469fb6137c@efficios.com>
In-Reply-To: <1e839a25-d15f-40d3-ad6a-20469fb6137c@efficios.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 23 Apr 2026 14:36:15 +0200
X-Gm-Features: AQROBzBeN0_imLCp4YRP1WQt-rdOLNehWGA1b8A-XdhmUjECxUTrglkEDT8uDp8
Message-ID: <CACT4Y+bMH+q2C7Xg9oHRP5ZbmvLpMpYzrdAd7B6XoXYc8=22sQ@mail.gmail.com>
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
	Blake Oler <blake.oler@mongodb.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5387-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[huawei.com,vger.kernel.org,linutronix.de,arm.com,mongodb.com,kernel.org,gmail.com,google.com,lists.linux.dev,lists.infradead.org,infradead.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MAILSPIKE_FAIL(0.00)[104.64.211.4:query timed out];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dvyukov@google.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,efficios.com:email]
X-Rspamd-Queue-Id: 8BD00452184
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 23 Apr 2026 at 14:29, Mathieu Desnoyers
<mathieu.desnoyers@efficios.com> wrote:
>
> On 2026-04-23 01:53, Dmitry Vyukov wrote:
> [...]
> > +linux-man
> >
> > This part of the rseq man page needs to be fixed as well I think. The
> > kernel no longer reliably provides clearing of rseq_cs on preemption,
> > right?
> >
> > https://git.kernel.org/pub/scm/libs/librseq/librseq.git/tree/doc/man/rseq.2#n241
>
> I'm maintaining this manual page in librseq.
>
> >
> > "and set to NULL by the kernel when it restarts an assembly
> > instruction sequence block,
> > as well as when the kernel detects that it is preempting or delivering
> > a signal outside of the range targeted by the rseq_cs."
>
> I think you got two things confused here.
>
> 1) There is currently a bug on arm64 where it fails to honor the
>     rseq ABI contract wrt critical section abort. AFAIU there is a
>     fix proposed for this.
>
> 2) Thomas relaxed the implementation of cpu_id_start field updates
>     so it only stores to the rseq area when the current cpu actually
>     changes (migration).
>
> So AFAIU the statement in the man page is still fine. It's just arm64
> that needs fixing.


My understanding was that due to the ev->user_irq check here:

+static __always_inline void rseq_sched_switch_event(struct task_struct *t)
...
+               bool raise = (ev->user_irq | ev->ids_changed) & ev->has_rseq;
+
+               if (raise) {
+                       ev->sched_switch = true;
+                       rseq_raise_notify_resume(t);
+               }

There won't be any rseq-related processing for threads preempted in
syscalls, which means that rseq_cs won't be NULLed for threads
preempted inside of syscalls.

