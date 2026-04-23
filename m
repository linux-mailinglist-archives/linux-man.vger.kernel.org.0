Return-Path: <linux-man+bounces-5383-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN74ITT76WnkpwIAu9opvQ
	(envelope-from <linux-man+bounces-5383-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:57:56 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E64E8450FD1
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:57:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4AA1D301C16F
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 10:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCB433E4C97;
	Thu, 23 Apr 2026 10:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mongodb.com header.i=@mongodb.com header.b="cV3e3j+c"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518C37C11D
	for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 10:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776941512; cv=pass; b=ngGYHmbGxse7epaqdMm2g23VjxhR0T6o2yc6VoDGhIqswPGJPmctI/lof+O8qVU2JTNIZGwa4A7ZOxguSol9xlcStMSWR3h5BGvOvxGompGKAEkfPDJW+KgVUj4Gb5PNHd4Tc9HZmp2N8qh3xLYkj2ongZWA0g/HB+X8kvUe2kA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776941512; c=relaxed/simple;
	bh=HwJeUPIs3Q9zE26Fm/1dIX8r2a7GFCDoFLztB0f7WGs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NkNCH2de65u+Y1y4L5Z9RVdR1HFw48iJUbxxV1XZPAw3gvdVhL4o09R01UhdkKeZhkU1RMxwxXTW6+Xd+UnlDTa21Ty61HaR1Vs6YyoBQEQ4Hzlk2Z44Z/xOEom/Vi2RJ57xfqXFFcmR01KYWohDDT/a9kZf/h9++fMxm9TSh+U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mongodb.com; spf=fail smtp.mailfrom=mongodb.com; dkim=pass (1024-bit key) header.d=mongodb.com header.i=@mongodb.com header.b=cV3e3j+c; arc=pass smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mongodb.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mongodb.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6714fa8b955so11538238a12.0
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2026 03:51:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776941510; cv=none;
        d=google.com; s=arc-20240605;
        b=C10baGjks7NC7by3ojB1sG3NAQBYW+2dHS7yvGZBcm4Ag9u3slxgTIqu8H+LOvFYZi
         IrMENjbDNxNsFylNUCrHsYdVUYB+Mu0fK2n0NgXodUGT84tZQ/jTuGNpAV5U3MlXJidN
         Fqk3Ux3lTKW+vDDoDu6qPYpL88qudjah7IcNdws0/jHU3AhZY2SRwp7B5B5/TDZ6Q76T
         cubPGBMchBFQt10gsdYm6SeVHLe4lI0mm0N/HfcU26/yzPhI6jCNtwygKpsRxC/gr0DZ
         qI2KhbmwVjvU/vLSGSlP66D6diVJs5H2uu03zATjETp2fXSLtNsG3ukUgpKIl6hV6B7n
         9dKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4u0NLqUbLY9OPqLjh5qipvi/NJ3ZqeW6p4Eergru/hM=;
        fh=3adpBnRvpaDh3GpNIlkF0Oluj36xknmF2SQnHENfXTE=;
        b=e5sa9FUnxNGLVkUvGeso/RWp5lDdOgDh2CPybVHNov1GEqPr6eMuP3sjc22E++KY4u
         ZQb4VGM5qV7WNtPhTN0lhknfrds57oOqd8f7osn8gjTc5gqjXxbh/zEUkpCkIyrUR8U1
         2Z9fic5NI5okLRrGHAqIqbm4nYXfN/JT8TyJHUCkcsgiNPwAwqQk4gLMDtSkXdpYuhaA
         oLImzkE/yVDo5uVWdJC7FIhqoVKmxPpIa9Qdo5FOxMHJ6VkTGJye9VNoKgsypTvpy95w
         ARUAAP89WD+4ekqJCWMU4MpO4+XgdaZ0ZZIIyEddk4FgsA+6odY3gvwmOLFPiAwP0wQj
         2bCQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mongodb.com; s=google; t=1776941510; x=1777546310; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4u0NLqUbLY9OPqLjh5qipvi/NJ3ZqeW6p4Eergru/hM=;
        b=cV3e3j+coG+ea8vuj/Z+IwnYtCaGoKxN3eGKnWSYJNldzx+MZEJmEaH8ZznpGizyyI
         5fGw3a+7ZLK7UVFu3yO7aPVNQ6EwDLZ3WWKi6jpyyi68wvMb7+fee8McoA5evyvjjNj9
         uZ3BCBpOqs0jNuwgQyNVQ5+N1iq2tUjLkTsxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776941510; x=1777546310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4u0NLqUbLY9OPqLjh5qipvi/NJ3ZqeW6p4Eergru/hM=;
        b=tDiT3QqOWjIogjjq3YVciKei/kfCPV2YZ2Q7ftgY/KghUXbUcGHU+B0jlBtpXuK0DW
         LC0OqZ5N++N+B4qlD1l4ZGbhbGlTdbUkZXmH4U61FIZ3xFaSee1CM2hDyQfRSDQsgmvj
         Kp0DfSES9rS2qxOAIBte+5s2pcpdCEAB4xAxNG0kYhyrH/w47RwE0MdI5zWZBDvSVXh+
         V1DlkGO8uQ8HeqDwnh9u5ZfBxWY+N6JCgNcjCuA3wDF2rLd0BxaGuNhUCjNeiAxvPn0A
         flxYYkAOuOc/U5t3Wq2dz8H09AYFyXyME3x8Y1k0bt0wg7UEg2662OTeu4a2j0rHeO9i
         TtIQ==
X-Forwarded-Encrypted: i=1; AFNElJ+FcW3K3NtfAmZaEVo9/ztuK2vNH8i7IFMwn+iyuLaMxJJ/Cc0Jy4rsh3Sb3OwgaApLScnBW77Jq74=@vger.kernel.org
X-Gm-Message-State: AOJu0YxXn9mmgAxLSL/j7j4ixne76hBJiEbvgJxHFd85KnRuFSsSrKUF
	dEu5bSaoC741+8/JtPuSF3r3EU5SNWl1VHEcf/m9/Tk70zNex1FkdAUoim39aagehagoFB3D5jk
	LNODm3FoSxzyhBiS4M+kTsjGscYeONoD9PF0hyTSmCQ==
X-Gm-Gg: AeBDietsODiV5dMbyjiSX6V26DqBv3aCn03JnPP72MUcf/IiY/HvEs33HF8K7VdrFMt
	tsReZlCNUPHFW0ymOvSI1njSkAMwFpuzSHfq16MKQfArPzE7yGCu0BrJJ9pItUmTZKjqE3iUcXs
	OJndHp2UgG3eqjtxsDzC0DeFkgHpN/E8fo/uD+30PD6e3O3+l1LIzPZIUwxt0P0EhofjyM/jwNz
	aIcD6DKRG5U1T2Zd6OBhu5QiNRdV1oU1Abaa/XW0g+e/mstBqFkQvi+PV1ktYXtETB6xCzveLMd
	3JeufEsFD5cax6vj9YW9RxxYAJo=
X-Received: by 2002:a17:907:6c0e:b0:ba5:216c:56e6 with SMTP id
 a640c23a62f3a-ba5216c6068mr1253044166b.0.1776941509520; Thu, 23 Apr 2026
 03:51:49 -0700 (PDT)
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
 <87ik9i0xlj.ffs@tglx>
In-Reply-To: <87ik9i0xlj.ffs@tglx>
From: Mathias Stearn <mathias@mongodb.com>
Date: Thu, 23 Apr 2026 12:51:22 +0200
X-Gm-Features: AQROBzA3iSwpg4ayUbVJtTBbvtVziiX6iVRBdfeBowQbJ9gb9fUCrFN004zqE30
Message-ID: <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Dmitry Vyukov <dvyukov@google.com>, Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org, 
	Mark Rutland <mark.rutland@arm.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Boqun Feng <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Blake Oler <blake.oler@mongodb.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[mongodb.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[mongodb.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5383-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[google.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,infradead.org,mongodb.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathias@mongodb.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[mongodb.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linutronix.de:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E64E8450FD1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 23, 2026 at 12:39=E2=80=AFPM Thomas Gleixner <tglx@linutronix.d=
e> wrote:
> The kernel clears rseq_cs reliably when user space was interrupted and:
>
>     the task was preempted
> or
>     the return from interrupt delivers a signal
>
> If the task invoked a syscall then there is absolutely no reason to do
> either of this because syscalls from within a critical section are a
> bug and catched when enabling rseq debugging.
>
> The original code did this along with unconditionally updating CPU/MMCID
> which resulted in ~15% performance regression on a syscall heavy
> database benchmark once glibc started to register rseq.

Just to be clear TCMalloc does not need either rseq_cs to be cleared
or cpu_id_start to be written to on syscalls because it doesn't do
syscalls from critical sections. It will actually benefit (slightly)
from not updating cpu_id_start on syscalls.

It is specifically in the cases where an rseq would need to be aborted
(preemption, signals, migration, and membarrier IPI with the rseq
flag) that TCMalloc relies on cpu_id_start being written. It does rely
on that write even when not inside the critical section, because it
effectively uses that to detect if there were any would-cause-abort
events in between two critical sections. But since it leaves the
rseq_cs pointer non-null between critical sections, so you dont need
to add _any_ overhead for programs that never make use of rseq after
registration, or add any overhead to syscalls even for those who do.

