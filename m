Return-Path: <linux-man+bounces-5450-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOEMKV7S8Wm3kgEAu9opvQ
	(envelope-from <linux-man+bounces-5450-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:41:50 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E06BA492247
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:41:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7800A3043839
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 09:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BC33A9618;
	Wed, 29 Apr 2026 09:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OpSQ7NzZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4223C3C3437
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 09:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777455343; cv=pass; b=AgANeAykKazcH4CJvWvojv2XiWy87FmcUA8w0URTVXVD9F9Q8fzy5HPXliKPouomB9MKxYOCslBvK0WzUQdZuw2KZI+yJiaN6PHrYRvp5kugsGUQv20ekIRX1akZGeJ5HNZriDPtqnX5ychaJYXCwBWenxWIBG6wyQ6fBqDZmuQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777455343; c=relaxed/simple;
	bh=WltXveIE3Ur6uZ2aEQ9lkY70EHenjUuyjd+X+miHZ5M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mOg4WBIRyzX5GCDeyKnG5nu/Dhyew++B1tj8LodcftVNqaZUoLikKjyG5qXudAa+16koJG3H/All0qvW7il0NCnSzFM90kAIlhiUFAQ0/EnYMHW0srqrva/f1kRgIVYE817Sxb0WH7XTPZ05YfdktbKE3DPRgW+g4Me8EtMV3rA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=OpSQ7NzZ; arc=pass smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-38def541b0bso106883741fa.1
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 02:35:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777455338; cv=none;
        d=google.com; s=arc-20240605;
        b=cRRhGQmJ3QGfD2hHn6TB22fK0GAD5ATt5ujIS6PefP97gW+yw5e0ugcJExnqiFhzry
         vf7U7ZuCeptsqjUuX1y5Tf/WDgr4ZRiFy26bY2m5j6wIe272FsL2o3yfDgve5DTW2mfN
         YLdab+GB9ua0FVjNvR7c4P/p5cMb6yIkVUP/aIl1cCSsHReic2T4wskH3Hw8X5wKT24o
         GnMLuXM68SL/A3rAWaUn0bfXN6oX0DF8FR5NvfSMQIJ8HIbfwK3n4g7N8eKyOlOr7z7F
         XjHDf3EBPJkhG1qCdb06MatJxSLEBDxnXYbL2cNCFJRbm309opIcASp2QW4HkpQ32LuW
         S6Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MC/t8j/mQ9vDSR1vAc9cFqH7pdGOSqVd0C7sXvmznkM=;
        fh=T5NBd/BkLfuxOYwHyF+Wsnz/1dQOOsFXGGNRSgi3r20=;
        b=bRzNqjk0o8BIyoWADbKjub2jegDjPBJXN+zYBGAc6wi2JvxgLT5U+NAJ8hCGnUKIAf
         mw4CZVYgwUfzHRzzPjj9EvnHU17PgZk7JbW865bYBRfvfiPsrKz28D72AEV8GALtoHMb
         5EcWiaJd9IxAc7pw5cIzxhzSnXQvalR9YXHvP+UczsRg9uy6LTktVDKMo+txvqaKhD+D
         dt79d2t7lwcfK8ekpzpepNwoTvgezvGTwjULOiRwLlI1tDb5W7qbCeXdAeqYjEC7fURe
         kCOHvAk4VEWEUUDesOnU1ChlybxIqUAUAr9USUU65tywLUmaP86O4rPOV2WCAz0OhgEU
         BoHQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777455338; x=1778060138; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MC/t8j/mQ9vDSR1vAc9cFqH7pdGOSqVd0C7sXvmznkM=;
        b=OpSQ7NzZqPHEpBkTeIazUJpVoH3RNMI3wwlSdPyOcm9y1D7iOPj6bKI5ehZKA/tOuj
         QeQWJjXscAOigHraIFK9Gr3T2SfzwHVFNwL3BqG/jHH7VMZTlbcmR5+ZbUnqu1LP93jM
         hKRiH4dILC/B8pOhjmG7mLOZb6s5bka86/5kW2h98IwlAwaWsZjhzQtkt3mGAHtnJz0s
         /CC+pdj7sINgEzNLZ08w9GO/JM5Q7v/pi752rY40rBnAbhRhn5NrWOaaB1eraReFYyOj
         xqkKS8MTy4nip29g6PXHTnQWmJhSSDaMKtKlHRfj4HYwf7aePxtVNQ8kfUBd0LTrn6Rg
         f8UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777455338; x=1778060138;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MC/t8j/mQ9vDSR1vAc9cFqH7pdGOSqVd0C7sXvmznkM=;
        b=OBGly47SKR3L3PpFUOgwNwUK+QXnKapB1Dku0eNPds+fBk/QHOu7S12hMMG6J+XF/B
         h219A2TTuEicP0d7nyQYLtxA79CLtIBqlUygyquGNqW39+1WSRMa+Ll9buSvOFbgij7/
         heKkeWlMhVrnAqDUaumhL6ZdKkS9i4WNmbW6ukZlLRf7L3v44zrO9eWKzJVcg2jnn1Mi
         s0hQzHnbADe9aOmCinqYiOQgYU07B+bHiGwGQPFUP2jZDlBFoqu8GklUz56J6FoAfioy
         P9BhSgAWxx3Mb3qZUg+KpgZXQtzMdqafgs1b8Uy8l+yp3lhlUpoEnmx86JrAetr93KBI
         gtcQ==
X-Forwarded-Encrypted: i=1; AFNElJ+npWYtuPlAAMXP3lf1vyvi8VkOXMOSpqU6aZxadNbpAjZ/2CKrJAYF1+XbPL5OjMC+JwuBdGbLOAM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwwv8h9RAROrbMpNSrRkCIifSsIQxfmND+065LCjaE6lsru3oC
	5+ZbmAXF8droHZHEKFCgRL2uEqk0gOwzFQJvBz0rNbHZEr7FTW7x0p0/fhkUWUWGoFK2lNXjpXx
	hMU4vYUwd4eDinqk2uTXJQgPh5tx83VeIz9prljQ/
X-Gm-Gg: AeBDiev/vdDBvSFMmxYSlAOOuuGrsHm3C3ojEUlTd9XUBWzQBX/UeLNdEg6r4NGHdGn
	1K4C8sRNlutebcYwSfXeAGfzQDoI/MX0UmvEZgbWOtdmPvw+UsofLoN7fCI4Nw7SK2ZDLvI2WNs
	t/LjL0/qsvRoEQmNwpDbZPwMjjdBK5picCMYqHchBXm4VwtAs/iNOrGvtNGDtSY9pJZFMDOeETZ
	L9dcSGRGAyrLs4oBoZRU4INMGH0OfpXT8ggz8Oza4cq+5slr9Tts5vDo5VZT7SMHZS6gE6MQkat
	ZqUTmYA5A/SmTcvZK5DOoVo+gIWuKMKvtOxAroRLsm0alXXE+XIJ4o+N5GMnB3VkXwppZMEOOx6
	vIa8/U3k5KciM5oCa8g==
X-Received: by 2002:a05:651c:1443:b0:38e:8503:6fb5 with SMTP id
 38308e7fff4ca-39240fd12dcmr24361711fa.30.1777455337912; Wed, 29 Apr 2026
 02:35:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224427.927160119@kernel.org>
In-Reply-To: <20260428224427.927160119@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 11:35:26 +0200
X-Gm-Features: AVHnY4JWcx5RwvS1ETBhUNaOwCsFOdCg0RFgx5GBjcKW4zCPpMNeUkqHv3utI4Q
Message-ID: <CACT4Y+aYy8H6ErGSh60ZUMCaqrMCeDh=jhH2WO=SOrsSyAhrNQ@mail.gmail.com>
Subject: Re: [patch 09/10] rseq: Reenable performance optimizations conditionally
To: Thomas Gleixner <tglx@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Mathias Stearn <mathias@mongodb.com>, 
	Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org, 
	Mark Rutland <mark.rutland@arm.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev, 
	Ingo Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>, 
	Florian Weimer <fweimer@redhat.com>, Rich Felker <dalias@libc.org>, 
	Matthew Wilcox <willy@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linus Torvalds <torvalds@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: E06BA492247
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5450-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dvyukov@google.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]

On Wed, 29 Apr 2026 at 01:34, Thomas Gleixner <tglx@kernel.org> wrote:
>
> Due to the incompatibility with TCMalloc the RSEQ optimizations and
> extended features (time slice extensions) have been disabled and made
> run-time conditional.
>
> The original RSEQ implementation, which TCMalloc depends on, registers a 32
> byte region (ORIG_RSEG_SIZE). This region has a 32 byte alignment
> requirement.
>
> The extension safe newer variant exposes the kernel RSEQ feature size via
> getauxval(AT_RSEQ_FEATURE_SIZE) and the alignment requirement via
> getauxval(AT_RSEQ_ALIGN). The alignment requirement is that the registered
> RSEQ region is aligned to the next power of two of the feature size. The
> kernel currently has a feature size of 33 bytes, which means the alignment
> requirement is 64 bytes.
>
> The TCMalloc RSEQ region is embedded into a cache line aligned data
> structure starting at offset 32 bytes so that bytes 28-31 and the
> cpu_id_start field at bytes 32-35 form a 64-bit little endian pointer with
> the top-most bit (63 set) to check whether the kernel has overwritten
> cpu_id_start with an actual CPU id value, which is guaranteed to not have
> the top most bit set.
>
> As this is part of their performance tuned magic, it's a pretty safe
> assumption, that TCMalloc won't use a larger RSEQ size.
>
> This allows the kernel to declare that registrations with a size greater
> than the original size of 32 bytes, which is the cases since time slice
> extensions got introduced, as RSEQ ABI v2 with the following differences to
> the original behaviour:
>
>   1) Unconditional updates of the user read only fields (CPU, node, MMCID)
>      are removed. Those fields are only updated on registration, task
>      migration and MMCID changes.
>
>   2) Unconditional evaluation of the criticial section pointer is
>      removed. It's only evaluated when user space was interrupted and was
>      scheduled out or before delivering a signal in the interrupted
>      context.
>
>   3) The read/only requirement of the ID fields is enforced. When the
>      kernel detects that userspace manipulated the fields, the process is
>      terminated. This ensures that multiple entities (libraries) can
>      utilize RSEQ without interfering.
>
>   4) Todays extended RSEQ feature (time slice extensions) and future
>      extensions are only enabled in the v2 enabled mode.
>
> Registrations with the original size of 32 bytes operate in backwards
> compatible legacy mode without performance improvements and extended
> features.
>
> Unfortunately that also affects users of older GLIBC versions which
> register the original size of 32 bytes and do not evaluate the kernel
> required size in the auxiliary vector AT_RSEQ_FEATURE_SIZE.
>
> That's the result of the lack of enforcement in the original implementation
> and the unwillingness of a single entity to cooperate with the larger
> ecosystem for many years.
>
> Implement the required registration changes by restructuring the spaghetti
> code and adding the size/version check. Also add documentation about the
> differences of legacy and optimized RSEQ V2 mode.
>
> Thanks to Mathieu for pointing out the ORIG_RSEQ_SIZE constraints!
>
> Fixes: d6200245c75e ("rseq: Allow registering RSEQ with slice extension")
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: stable@vger.kernel.org

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  Documentation/userspace-api/rseq.rst |   94 ++++++++++++++++++++++
>  kernel/rseq.c                        |  144 ++++++++++++++++++++---------------
>  2 files changed, 178 insertions(+), 60 deletions(-)
>
> --- a/Documentation/userspace-api/rseq.rst
> +++ b/Documentation/userspace-api/rseq.rst
> @@ -24,6 +24,97 @@ Quick access to CPU number, node ID
>  Allows to implement per CPU data efficiently. Documentation is in code and
>  selftests. :(
>
> +Optimized RSEQ V2
> +-----------------
> +
> +On architectures which utilize the generic entry code and generic TIF bits
> +the kernel supports runtime optimizations for RSEQ, which also enable
> +enhanced features like scheduler time slice extensions.
> +
> +To enable them a task has to register the RSEQ region with at least the
> +length advertised by getauxval(AT_RSEQ_FEATURE_SIZE).
> +
> +If existing binaries register with RSEQ_ORIG_SIZE (32 bytes), the kernel
> +keeps the legacy low performance mode enabled to fulfil the expectations
> +of existing users regarding the original RSEQ implementation behaviour.
> +
> +The following table documents the ABI and behavioral guarantees of the
> +legacy and the optimized V2 mode.
> +
> +.. list-table:: RSEQ modes
> +   :header-rows: 1
> +
> +   * - Nr
> +     - What
> +
> +     - Legacy
> +     - Optimized V2
> +
> +   * - 1
> +     - The cpu_id_start, cpu_id, node_id and mm_cid fields (User mode read
> +       only)
> +       .. Legacy
> +     - Updated by the kernel unconditionally after each context switch and
> +       before signal delivery
> +       .. Optimized V2
> +     - Updated by the kernel if and only if they change, i.e. if the task
> +       is migrated or mm_cid changes
> +
> +   * - 2
> +     - The rseq_cs critical section field
> +       .. Legacy
> +     - Evaluated and handled unconditionally after each context switch and
> +       before signal delivery
> +       .. Optimized V2
> +     - Evaluated and handled conditionally only when user space was
> +       interrupted and was scheduled out or before delivering a signal in
> +       the interrupted context.
> +
> +   * - 3
> +     - Read only fields
> +       .. Legacy
> +     - No strict enforcement except in debug mode
> +       .. Optimized V2
> +     - Strict enforcement
> +
> +   * - 4
> +     - membarrier(...RSEQ)
> +       .. Legacy
> +     - All running threads of the process are interrupted and the ID fields
> +       are rewritten and eventually active critical sections are aborted
> +       before they return to user space.  All threads which are scheduled
> +       out whether voluntary or not are covered by #1/#2 above.
> +       .. Optimized V2
> +     - All running threads of the process are interrupted and eventually
> +       active critical sections are aborted before these threads return to
> +       user space. The ID fields are only updated if changed as a
> +       consequence of the interrupt. All threads which are scheduled out
> +       whether voluntary or not are covered by #1/#2 above.
> +
> +   * - 5
> +     - Time slice extensions
> +       .. Legacy
> +     - Not supported
> +       .. Optimized V2
> +     - Supported
> +
> +The legacy mode is obviously less performant as it does unconditional
> +updates and critical section checks even if not strictly required by the
> +ABI contract. That can't be changed anymore as some users depend on that
> +observed behavior, which in turn enables them to violate the ABI and
> +overwrite the cpu_id_start field for their own purposes. This is obviously
> +discouraged as it renders RSEQ incompatible with the intended usage and
> +breaks the expectation of other libraries in the same application.
> +
> +The ABI compliant optimized v2 mode, which respects the read only fields,
> +does not require unconditional updates and therefore is way more
> +performant. The kernel validates the read only fields for compliance. If
> +user space modifies them, the process is killed. Compliant usage allows
> +multiple libraries in the same application to benefit from the RSEQ
> +functionality without disturbing each other. The ABI compliant optimized v2
> +mode also enables extended RSEQ features like time slice extensions.
> +
> +
>  Scheduler time slice extensions
>  -------------------------------
>
> @@ -37,7 +128,8 @@ scheduled out inside of the critical sec
>
>      * Enabled at boot time (default is enabled)
>
> -    * A rseq userspace pointer has been registered for the thread
> +    * A rseq userspace pointer has been registered for the thread in
> +      optimized V2 mode
>
>  The thread has to enable the functionality via prctl(2)::
>
> --- a/kernel/rseq.c
> +++ b/kernel/rseq.c
> @@ -413,70 +413,23 @@ static bool rseq_reset_ids(void)
>  /* The original rseq structure size (including padding) is 32 bytes. */
>  #define ORIG_RSEQ_SIZE         32
>
> -/*
> - * sys_rseq - setup restartable sequences for caller thread.
> - */
> -SYSCALL_DEFINE4(rseq, struct rseq __user *, rseq, u32, rseq_len, int, flags, u32, sig)
> +static long rseq_register(struct rseq __user * rseq, u32 rseq_len, int flags, u32 sig)
>  {
>         u32 rseqfl = 0;
>         u8 version = 1;
>
> -       if (flags & RSEQ_FLAG_UNREGISTER) {
> -               if (flags & ~RSEQ_FLAG_UNREGISTER)
> -                       return -EINVAL;
> -               /* Unregister rseq for current thread. */
> -               if (current->rseq.usrptr != rseq || !current->rseq.usrptr)
> -                       return -EINVAL;
> -               if (rseq_len != current->rseq.len)
> -                       return -EINVAL;
> -               if (current->rseq.sig != sig)
> -                       return -EPERM;
> -               if (!rseq_reset_ids())
> -                       return -EFAULT;
> -               rseq_reset(current);
> -               return 0;
> -       }
> -
> -       if (unlikely(flags & ~(RSEQ_FLAG_SLICE_EXT_DEFAULT_ON)))
> -               return -EINVAL;
> -
> -       if (current->rseq.usrptr) {
> -               /*
> -                * If rseq is already registered, check whether
> -                * the provided address differs from the prior
> -                * one.
> -                */
> -               if (current->rseq.usrptr != rseq || rseq_len != current->rseq.len)
> -                       return -EINVAL;
> -               if (current->rseq.sig != sig)
> -                       return -EPERM;
> -               /* Already registered. */
> -               return -EBUSY;
> -       }
> -
> -       /*
> -        * If there was no rseq previously registered, ensure the provided rseq
> -        * is properly aligned, as communcated to user-space through the ELF
> -        * auxiliary vector AT_RSEQ_ALIGN. If rseq_len is the original rseq
> -        * size, the required alignment is the original struct rseq alignment.
> -        *
> -        * The rseq_len is required to be greater or equal to the original rseq
> -        * size. In order to be valid, rseq_len is either the original rseq size,
> -        * or large enough to contain all supported fields, as communicated to
> -        * user-space through the ELF auxiliary vector AT_RSEQ_FEATURE_SIZE.
> -        */
> -       if (rseq_len < ORIG_RSEQ_SIZE ||
> -           (rseq_len == ORIG_RSEQ_SIZE && !IS_ALIGNED((unsigned long)rseq, ORIG_RSEQ_SIZE)) ||
> -           (rseq_len != ORIG_RSEQ_SIZE && (!IS_ALIGNED((unsigned long)rseq, rseq_alloc_align()) ||
> -                                           rseq_len < offsetof(struct rseq, end))))
> -               return -EINVAL;
>         if (!access_ok(rseq, rseq_len))
>                 return -EFAULT;
>
>         /*
> -        * The version check effectivly disables time slice extensions until the
> -        * RSEQ ABI V2 registration are implemented.
> +        * Architectures, which use the generic IRQ entry code (at least) enable
> +        * registrations with a size greater than the original v1 fixed sized
> +        * @rseq_len, which has been validated already to utilize the optimized
> +        * v2 ABI mode which also enables extended RSEQ features beyond MMCID.
>          */
> +       if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY) && rseq_len > ORIG_RSEQ_SIZE)
> +               version = 2;
> +
>         if (IS_ENABLED(CONFIG_RSEQ_SLICE_EXTENSION) && version > 1) {
>                 if (rseq_slice_extension_enabled()) {
>                         rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_AVAILABLE;
> @@ -524,11 +477,10 @@ SYSCALL_DEFINE4(rseq, struct rseq __user
>  #endif
>
>         /*
> -        * If rseq was previously inactive, and has just been
> -        * registered, ensure the cpu_id_start and cpu_id fields
> -        * are updated before returning to user-space.
> +        * Ensure the cpu_id_start and cpu_id fields are updated before
> +        * returning to user-space.
>          */
> -       current->rseq.event.has_rseq = true;
> +       current->rseq.event.has_rseq = version;
>         rseq_force_update();
>         return 0;
>
> @@ -536,6 +488,80 @@ SYSCALL_DEFINE4(rseq, struct rseq __user
>         return -EFAULT;
>  }
>
> +static long rseq_unregister(struct rseq __user * rseq, u32 rseq_len, int flags, u32 sig)
> +{
> +       if (flags & ~RSEQ_FLAG_UNREGISTER)
> +               return -EINVAL;
> +       if (current->rseq.usrptr != rseq || !current->rseq.usrptr)
> +               return -EINVAL;
> +       if (rseq_len != current->rseq.len)
> +               return -EINVAL;
> +       if (current->rseq.sig != sig)
> +               return -EPERM;
> +       if (!rseq_reset_ids())
> +               return -EFAULT;
> +       rseq_reset(current);
> +       return 0;
> +}
> +
> +static long rseq_reregister(struct rseq __user * rseq, u32 rseq_len, u32 sig)
> +{
> +       /*
> +        * If rseq is already registered, check whether the provided address
> +        * differs from the prior one.
> +        */
> +       if (current->rseq.usrptr != rseq || rseq_len != current->rseq.len)
> +               return -EINVAL;
> +       if (current->rseq.sig != sig)
> +               return -EPERM;
> +       /* Already registered. */
> +       return -EBUSY;
> +}
> +
> +static bool rseq_length_valid(struct rseq __user *rseq, unsigned int rseq_len)
> +{
> +       /*
> +        * Ensure the provided rseq is properly aligned, as communicated to
> +        * user-space through the ELF auxiliary vector AT_RSEQ_ALIGN. If
> +        * rseq_len is the original rseq size, the required alignment is the
> +        * original struct rseq alignment.
> +        *
> +        * In order to be valid, rseq_len is either the original rseq size, or
> +        * large enough to contain all supported fields, as communicated to
> +        * user-space through the ELF auxiliary vector AT_RSEQ_FEATURE_SIZE.
> +        */
> +       if (rseq_len < ORIG_RSEQ_SIZE)
> +               return false;
> +
> +       if (rseq_len == ORIG_RSEQ_SIZE)
> +               return IS_ALIGNED((unsigned long)rseq, ORIG_RSEQ_SIZE);
> +
> +       return IS_ALIGNED((unsigned long)rseq, rseq_alloc_align()) &&
> +               rseq_len >= offsetof(struct rseq, end);
> +}
> +
> +#define RSEQ_FLAGS_SUPPORTED   (RSEQ_FLAG_SLICE_EXT_DEFAULT_ON)
> +
> +/*
> + * sys_rseq - Register or unregister restartable sequences for the caller thread.
> + */
> +SYSCALL_DEFINE4(rseq, struct rseq __user *, rseq, u32, rseq_len, int, flags, u32, sig)
> +{
> +       if (flags & RSEQ_FLAG_UNREGISTER)
> +               return rseq_unregister(rseq, rseq_len, flags, sig);
> +
> +       if (unlikely(flags & ~RSEQ_FLAGS_SUPPORTED))
> +               return -EINVAL;
> +
> +       if (current->rseq.usrptr)
> +               return rseq_reregister(rseq, rseq_len, sig);
> +
> +       if (!rseq_length_valid(rseq, rseq_len))
> +               return -EINVAL;
> +
> +       return rseq_register(rseq, rseq_len, flags, sig);
> +}
> +
>  #ifdef CONFIG_RSEQ_SLICE_EXTENSION
>  struct slice_timer {
>         struct hrtimer  timer;
>

