Return-Path: <linux-man+bounces-5385-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIJuI58P6mn4sgIAu9opvQ
	(envelope-from <linux-man+bounces-5385-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:25:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74684451EC0
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:25:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 533853004C93
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E59682899;
	Thu, 23 Apr 2026 12:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aPl4O9Su"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F803E5597
	for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 12:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776947093; cv=none; b=LL5uGbGVPQstvKhM660fgGNr2/rWPBOtKXYrU7/IBhe/mUGXhabKsyt59vLHCu0y0KvfyKwGkXiwr4l4JbHlvoysygYzXc65bfjiLH0rX2q3ZUaxprazCdzs8OnMIr9k/fYYbNV74TZDUWoXdMviiWcJRusJFb3AS/ONX+T3GOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776947093; c=relaxed/simple;
	bh=22csvG9GRaf/BX6GuMwQHlvP8c0dhRAphlpB2jAkWO0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dUElTm+u3l56NrqLNtBVlySdtSXAMnGCw7HLtLgoCvg+QL2ZPeIWgGhsKsgrBLp+FuKs5B9vjCOXPXr5KUljALTydHP2zYdRxmaRdFsGvDUmya3zvkiU2vIJvC/n2Ps2Yyi3rmoyVgl11EF53br+gAO6TrPXqUmqPg9Pxm580uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aPl4O9Su; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43cff5dafc3so5360607f8f.1
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 05:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776947088; x=1777551888; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VtlmVXsrBR7qEczShYHnYwWDm+M14LhdN7rkrKGVul8=;
        b=aPl4O9SutdkPoOu5eUvsyG+DNN818D/eDmIfqPup67YXe8BTEGbr3KlqY82Qa+ClrE
         ZRkQy1wGQvuE01ykTPgfzeig8J4sOvuVtBMW8NOb6IPJ+PBh/GRNEx6IJjSpZMvEt4VU
         PHfXfyeI21XW86Dc/B1i4uMDtdacFd4g8Se27xtgPdcUkjb7FNjfmzbpU4hAf4s+3ZQ/
         VGfsvWdpSuJUz3ymDJ1Xn/HxStwcL7IVYxPgh/kIKtOpMv8XBS1cdSlnOFP4VAGJvllt
         5aMtbonZUEbt2Z4R/ZYqQh0nKG/l3llM1J7k2nYfxfPHPFzWw8eDgTwjo7AqzNZ2EmHV
         te2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776947088; x=1777551888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VtlmVXsrBR7qEczShYHnYwWDm+M14LhdN7rkrKGVul8=;
        b=EGVGXmWDVwZstR6nCuu4okudNfO5sjJJzyuZVFJXdZbDRSWc4DjMJxhdkOnOfmAb1w
         18HWpTylmFKMMgsi4PTcCwIdKou4PWvJHYVaE3MGB4sjQx9B+TFYyJh7S2BaHFzZVqTB
         pBeHfvnL4xSWJ+xlxyHL/SyG2WkGruZKnj1TqGSKmxjvcOV2Fh1lkP1o7GCC1lJroYJV
         EidLFQhE2JzrTPcY3Kn3ijCMhGYPcytBTQ5yc8/CwCX2/RRxTyVFk0IN10drkGI5AZMI
         3/K3tTCgUuUB4/+QFBEkN2mTqJD2SgahygPgS2wGji+hOEBxDDYXuANfq7SgUxEt8jyl
         3JQQ==
X-Forwarded-Encrypted: i=1; AFNElJ+bh+RnWcdEsgFyrtttCV+YW9GsvuTae/ykp8KU58uk8y5t6q6HbuNG6/AZ0DrtPqcspw6T2nO6cl0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/RGcx4kz7ekgklXPLxS2+3Z3F1iUFEHHyjfBA502M55jbVjpe
	POriTIMN1CZgEVOie1bmFLcoG/sLN8XD7v0dydQfWQZ4rGB6NQD91lLU
X-Gm-Gg: AeBDievAvbKzZefBGKh03bboET5i4iGVXwBsH4fRAcyUb86m+K+GV+T3azqSjznOBsZ
	z4+OUO1B3zuG/TwDm6ReBvGKIHzORm2Lj0zZ0oymUairf5bIfIIoUOMNAkN3+lxFfUKyRsvanat
	nV4lDeNzVcgYYsb0itgjndzeL7sumhoazPRd/wFMr6VHNWgohJmG24NrR+Y+Hmg92MHvOaSh6Jn
	DKmltcmy+5DOa5ZH6V+vacI9GqwM/U6Vjcf9ej7ewudli7xI+cC354NheUluna4g+hQ805UfeL+
	UrgZz1m0/vpO3Od0CryRj1CbGcV4xGa+R4OcPy1QDBgBlS64l14z6eZSJIxK3SH6cBGCQXXZiVg
	WCY+5tDTNpkCAjkh7HScsul0Fxs1FRakTE+s7u7PItwy38HzOWABaVypdp0ecgfarxzwQD1UWww
	WRLiEgXtQl9RPebZnbMgys8KkZVWA7hm9+Ql6h9dNchS3S4svS7uvOKNXNlzPX/OSGnJolx4bUj
	l0=
X-Received: by 2002:a05:6000:25c6:b0:43d:7af0:3a7c with SMTP id ffacd0b85a97d-43fe3e0d44emr40367257f8f.29.1776947088049;
        Thu, 23 Apr 2026 05:24:48 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e3a341sm57552815f8f.24.2026.04.23.05.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 05:24:47 -0700 (PDT)
Date: Thu, 23 Apr 2026 13:24:46 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Mathias Stearn <mathias@mongodb.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov
 <dvyukov@google.com>, Jinjie Ruan <ruanjinjie@huawei.com>,
 linux-man@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Boqun Feng
 <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, Chris
 Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Peter
 Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, Blake Oler
 <blake.oler@mongodb.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
Message-ID: <20260423132446.70478a78@pumpkin>
In-Reply-To: <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
	<aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com>
	<87zf2u28d1.ffs@tglx>
	<aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com>
	<87wlxy22x7.ffs@tglx>
	<c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
	<CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
	<87ik9i0xlj.ffs@tglx>
	<CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5385-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linutronix.de,google.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,infradead.org,mongodb.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MAILSPIKE_FAIL(0.00)[2600:3c15:e001:75::12fc:5321:server fail];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,mongodb.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 74684451EC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 23 Apr 2026 12:51:22 +0200
Mathias Stearn <mathias@mongodb.com> wrote:

> On Thu, Apr 23, 2026 at 12:39=E2=80=AFPM Thomas Gleixner <tglx@linutronix=
.de> wrote:
> > The kernel clears rseq_cs reliably when user space was interrupted and:
> >
> >     the task was preempted
> > or
> >     the return from interrupt delivers a signal
> >
> > If the task invoked a syscall then there is absolutely no reason to do
> > either of this because syscalls from within a critical section are a
> > bug and catched when enabling rseq debugging.
> >
> > The original code did this along with unconditionally updating CPU/MMCID
> > which resulted in ~15% performance regression on a syscall heavy
> > database benchmark once glibc started to register rseq. =20
>=20
> Just to be clear TCMalloc does not need either rseq_cs to be cleared
> or cpu_id_start to be written to on syscalls because it doesn't do
> syscalls from critical sections. It will actually benefit (slightly)
> from not updating cpu_id_start on syscalls.
>=20
> It is specifically in the cases where an rseq would need to be aborted
> (preemption, signals, migration, and membarrier IPI with the rseq
> flag) that TCMalloc relies on cpu_id_start being written. It does rely
> on that write even when not inside the critical section, because it
> effectively uses that to detect if there were any would-cause-abort
> events in between two critical sections. But since it leaves the
> rseq_cs pointer non-null between critical sections, so you dont need
> to add _any_ overhead for programs that never make use of rseq after
> registration, or add any overhead to syscalls even for those who do.
>=20

That sounds like one long rseq sequence where the 'restart' path
detects that some of the operations have already been done.

	David

