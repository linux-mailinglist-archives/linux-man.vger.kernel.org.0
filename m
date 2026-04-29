Return-Path: <linux-man+bounces-5444-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIdhOWjD8WkbkQEAu9opvQ
	(envelope-from <linux-man+bounces-5444-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 10:38:00 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 677E449143B
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 10:37:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4DFA30277C4
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 08:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6176438BF75;
	Wed, 29 Apr 2026 08:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wSICSQ+q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1137B3AE19D
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 08:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777451836; cv=pass; b=OIowHwiuEPj2/3hjOX6c3b9h+Cvok+zIOE3bEzGgyYrif6RlkHuOTi0PiZ2y7Vmx5PPT7g1BdjlttEZ775ZjI4rTPsaq7u76YrY92rkoPzUowNEllYLhVK1GRpoMh1Zo4401t8M3Obcdm+mDG13wsPpkn6MXFWBli72sHto93wc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777451836; c=relaxed/simple;
	bh=p+wBY0juLjY+wIPI3CEUuk+q//2kCqOjNQiqSgAGMYA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=usA9SdWEBmpiSQeJm7L+43ezPKeAOA34VIJgkh2zv1Tkj1ZKPZ7F7LJbNusaqGcj5MSqFxDxsodH6c+WQzG7k93BmYfN1ygVl96+F/VTN2zi9h9QogzZN2BJvUuWySXkTnnOzjUdwOP61JKFwQw/VfiIkGMaGELtB1xegLDsU9w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wSICSQ+q; arc=pass smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5a3d42263e4so12207022e87.2
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 01:37:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777451831; cv=none;
        d=google.com; s=arc-20240605;
        b=JzITizqVrB+ZTgJrUc/6Ep888Hx3wm3gF9K2YHSltVc2D+BxThLnw5KlA6SydwFj0t
         PiLgJ5ayHroekYza2L6JfJgDrk2n9sNClYSicGAeoQDppPfm6ZA6qweB6tuzePERlCiv
         Yt4S/ceIb1linNrXkd02LSzTkSW1wowhchgFtBKH1cnIqzkNrvjqdmI0/DnprE7U/InS
         DSoViFSsRo/KyV0qe0Fj8W5PrqwhWDBDpeli78Pkibl4SKvxZefIu2sShq9AjfG4ORYZ
         eDJhvA57n/iG+lV8o/ZtDnaj9MoOfOqmTkX+ksOpYClzeRHS8rcT0kqRMEJyCGCHYMhe
         bVMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TMm2b6fcDJ4VCBGYQ5BqcAM0hKQDzqSm7Hl9JCLIH6w=;
        fh=FMAxpBpDBOEwYf/vMavmsUCp29tOJl550ZkpMxO9HvU=;
        b=TbV9KupWZEd6c8f5ODlFk3R++YMF06w/uxCY2nQf9BL+O1TR6A2mcOyC6dA2MfhTZw
         f2cKQcXhiUKoUw1bAg7S2cMjFdZS6HAZb0VJ8M52YxCJEd3XGHidcSMP5N3hPq6vZ1re
         NwQRfOJYD7DGSm9TaBIuUWWE11a3cV90NbfzeBQzwaAxa9XcFHpYd1Loc8nhDbKKgE5d
         aYPk+D58Capf5ttGDlrRH+XTK6TD7Nc9u+ljA/0uzyb7UfrBvuYtR2eft2qwo0qgFb/S
         edgmykzZYYGEEiEUABJEfG8ytr+S1mBRgFwQeBN2xyu6R5RDaPqqP09jpDkMC4i9MBim
         fbRg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777451831; x=1778056631; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TMm2b6fcDJ4VCBGYQ5BqcAM0hKQDzqSm7Hl9JCLIH6w=;
        b=wSICSQ+q7iJTl/1WkHk6I5v2lZAsMuQv7ugPwX1EXzVzlBTq5ya48LV3A5WDdFpTDR
         EIRCCyliz7GCrqemHk4hm9yMTurUrdcCXHelNixeVB1PiEEsP/xN87VNf3DCh74hbEEQ
         P9Pdbp4UjIEz1o1Cdtgxh0XhuBEDLCGPvvdvGgUCBFieplUcaOvWODg9R6dYa7J6AAOg
         nRd/qQEgDGKTcOKCFJv22IzvzNYXyZ5D8bizpi6r+9egM+slTxgm5d3H/4DVKAOzQGx/
         8VAQzgglLJTxPXLXCrtrArnZvlz+rTDbtMEY0FjnLSDHLYH+Pwkaf8Z1OwkMpa/Z5Y1z
         H6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777451831; x=1778056631;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TMm2b6fcDJ4VCBGYQ5BqcAM0hKQDzqSm7Hl9JCLIH6w=;
        b=LCL8ik9HaTeh18zr0GbmIF0HjllUOAQM00CAVpsqWguv5vETe+NBxTHzZsW3Z2M0+b
         5QFh/lVlBGHVtWW/5b0cC5V6lUujmuU6QqCGFhAGdib4HsakgXNDkoyvTosXEVv2HSoV
         cLiLLHdUCyAnTebj+nM7FlfxRhAf1Grl2WiwKe2hNnKtzcTuGvF1ZzGQ6L4xT5B7lDmQ
         LmuyUHD8AYt51HVjkrA/LdF3p29ke/EFfehXYfuP4TAJhLtdx373l/18M3bW+hjmqXRW
         MQGCteW+qMBdQbdKAkeq7i6WlO515+xL4y+5W0SLUsrBQdoD03pZJc48Fn03B2X9E6cu
         rwiQ==
X-Forwarded-Encrypted: i=1; AFNElJ/VPe3qZHEWGJ0wVeNs5PwdzgtYkWChErQGUsOqmUxFpYEMne4kUb56QPGhVAQ8pmX2EIyTaHm811U=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+BVNcctnlD3yZsQIUPcQJJZzusmJwrvxH94lSaHHjNqyEp43N
	Q4iCFvh5OOPtE4mkOPcd4oDVKm7QgQmvUF6eKnrRu8ldbuazhTx3bqf/yRGw2tquP7ECmbLF10c
	LfjLCygjCvRThw/tzp0JuahEt10JraKrSbar+E4Mk
X-Gm-Gg: AeBDiev2/8zeP7nG9SjCYg/33pocxH6hlQ7DwTeKLyK4ySFub58CgV8L/vpMjwtikUt
	gxOYJbtMXHYURf0Swf8mcFqFz1byMBHBfThD0cG+ilYAmNHIrtmjDfwMi85fZCnNgo7muhW5M4T
	1Hqsf0ZqXlPrRSJOSuIru4CT3wxH0sj8CqmQvacPVniA3hmheSBZoZRIQGgHr1yyIsoa5+KOb9R
	6FEd8ecDNm+F6PELXcF9hUaD5nZ1y/TlzAc2xTR/DcaxJNt0Vd5FI9jYpKEivQOKsuSCLntejfm
	MHBxl5iwnokqpU+WnK+yxUM0F2P1NJNFA6ftlNia5DIctO5cBdMN/yIvEpcRpcsRqG/CzkU2ryO
	vK5aXnW9BrTUOlxwUdA==
X-Received: by 2002:a05:6512:10c7:b0:5a2:c05c:1199 with SMTP id
 2adb3069b0e04-5a749cf3cb3mr1165203e87.15.1777451830245; Wed, 29 Apr 2026
 01:37:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224427.437059375@kernel.org>
In-Reply-To: <20260428224427.437059375@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 10:36:58 +0200
X-Gm-Features: AVHnY4Igk12Oy_shlJR0om__FeFvofb63SKKJnxwMZ7_ZWH22zkZb_Rsi2ddxN8
Message-ID: <CACT4Y+bQrTsZg1nzRsMzBcRcYrf8jW99UMKpmhtY30=5kV0vTA@mail.gmail.com>
Subject: Re: [patch 03/10] rseq: Dont advertise time slice extensions if disabled
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
X-Rspamd-Queue-Id: 677E449143B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5444-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]

On Wed, 29 Apr 2026 at 01:33, Thomas Gleixner <tglx@kernel.org> wrote:
>
> If time slice extensions have been disabled on the kernel command line,
> then advertising them in RSEQ flags is wrong.
>
> Adjust the conditionals to reflect reality, fixup the misleading comments
> about the gap of these flags and the rseq::flags field.
>
> Fixes: d6200245c75e ("rseq: Allow registering RSEQ with slice extension")
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: stable@vger.kernel.org

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  include/uapi/linux/rseq.h |    5 ++++-
>  kernel/rseq.c             |    9 +++++----
>  2 files changed, 9 insertions(+), 5 deletions(-)
>
> --- a/include/uapi/linux/rseq.h
> +++ b/include/uapi/linux/rseq.h
> @@ -28,7 +28,7 @@ enum rseq_cs_flags_bit {
>         RSEQ_CS_FLAG_NO_RESTART_ON_PREEMPT_BIT  = 0,
>         RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL_BIT   = 1,
>         RSEQ_CS_FLAG_NO_RESTART_ON_MIGRATE_BIT  = 2,
> -       /* (3) Intentional gap to put new bits into a separate byte */
> +       /* (3) Intentional gap to keep new bits separate */
>
>         /* User read only feature flags */
>         RSEQ_CS_FLAG_SLICE_EXT_AVAILABLE_BIT    = 4,
> @@ -161,6 +161,9 @@ struct rseq {
>          *      - RSEQ_CS_FLAG_NO_RESTART_ON_PREEMPT
>          *      - RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL
>          *      - RSEQ_CS_FLAG_NO_RESTART_ON_MIGRATE
> +        *
> +        * It is now used for feature status advertisement by the kernel.
> +        * See: enum rseq_cs_flags_bit for further information.
>          */
>         __u32 flags;
>
> --- a/kernel/rseq.c
> +++ b/kernel/rseq.c
> @@ -462,10 +462,11 @@ SYSCALL_DEFINE4(rseq, struct rseq __user
>                 return -EFAULT;
>
>         if (IS_ENABLED(CONFIG_RSEQ_SLICE_EXTENSION)) {
> -               rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_AVAILABLE;
> -               if (rseq_slice_extension_enabled() &&
> -                   (flags & RSEQ_FLAG_SLICE_EXT_DEFAULT_ON))
> -                       rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_ENABLED;
> +               if (rseq_slice_extension_enabled()) {
> +                       rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_AVAILABLE;
> +                       if (flags & RSEQ_FLAG_SLICE_EXT_DEFAULT_ON)
> +                               rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_ENABLED;
> +               }
>         }
>
>         scoped_user_write_access(rseq, efault) {
>

