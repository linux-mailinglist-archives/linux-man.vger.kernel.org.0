Return-Path: <linux-man+bounces-5442-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJcTBY+/8WkbkQEAu9opvQ
	(envelope-from <linux-man+bounces-5442-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 10:21:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 588284911F9
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 10:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5452D301BCEA
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 08:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA7983B0ADA;
	Wed, 29 Apr 2026 08:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="akO3eoBz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E05A3AF642
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 08:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777450871; cv=pass; b=Gny1s4Ifu+CYB/2f773nGKlKNG2LIof/5UMtMEKaGp6BP6GbMvIy/eu7hmigXAfoMtOk5owsOuEl0s+cZKwOrhotunIjtrnYTUp3kh0eWv86g8AxxCi0q8Zze5cHkrZ/sekH5hhnmokczwT+ITHo7By1Tj3wy1HntgYsvWM3lyo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777450871; c=relaxed/simple;
	bh=13XwfqhLUv9YD2+OITsa1SDRM9/48Gva02HT41TUdvQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lYhIJv8yiIvsTqofMYn3IFhoTuOx5/oYFZ5OCi294/SXcTp2LfVGxq51ALclX46ToStHRTdrEbUt8DV5cmJIm66qaNx5w8Jg8OVDJ5lglt2/aQ/PvAHzJAeh6oQ08kxFpNFWavbWRPHi3PhU9Levy6KFKy8QFVhgdsuthmmPlSs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=akO3eoBz; arc=pass smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-38def541b0bso106299461fa.1
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 01:21:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777450868; cv=none;
        d=google.com; s=arc-20240605;
        b=TiUXToZ0S/hnc7XiJ5uRyuJQq+Dck+pToZLFNL1WZZwyEkKkbAhDtkcEmLjFeoPCnG
         FgtNvrBtO6U1FRA6ouTvzW4yjr7lAy7x7M1PTBLsWdYeQjT2NFd668VvsFMvpppMDqgH
         1DdW9TEhEwAlYi5zXUxnD3XEDsDZ8sNFtgCDzZwCKCPUibkQV/kymYoD2deq+xwa1JBn
         SRPh5SDTtygq3aXzeDesxxVTutI9sXBxkR+DuPiYKvZNCMz2bRPBRAE+UoKAwp2OfM+/
         21ficpya2khbgLeh23Xs9qlmDTx/gxE05Ov8FqVwCqbBhfHPgDgT3xVkOrWym5Na8zFA
         +ALg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Bu2VePOZ3zS8zvijxyqOnbIickAo3bdhMuuKFWMT/hQ=;
        fh=Hs7IvcycgUyiYo77GlnOwUBwnvd2aHFVofXgFlBsy7Y=;
        b=eQAjG6jWK2MyDhYsdFo0IZDBSkUd36JrAyqT8MsFJ2M8RE//c9BKAN+AyMqOa+F+pH
         /LhvTnRFF4JY8py3wEtK01JDNR8jIb0SKYY+pEE0+YEMmnZ4A0+nqHeNG0iCRnQ7+b5z
         ybkhvTppvrDoBhGCKU8sG2z/HTFZsVQs+LM8oaV9kSUj9el9urlyDyKNUfQreBm2vW6m
         ol+i3kvhKBi34/MSVIbvx1z6/da63t8mRJMYySfeoQHE7zTnhBn+Di7/DivvPFxwmKp7
         Zr4Ftod94KIhMpnBInZNt6N87E/Q2rxk/yU7pofzFdVw+UD+iq2klH462PqbpHnZr+6P
         TLYA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777450868; x=1778055668; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Bu2VePOZ3zS8zvijxyqOnbIickAo3bdhMuuKFWMT/hQ=;
        b=akO3eoBz+KaUqAnu09+TRaELVrfXfzUYDlTnG0GB62tGmyajmxDIud+xspgwQytkyM
         zxvBZcN3udn/MDDb09OCI2jnduPTBSvwSvtdhaebTnN5ScPzAAxYSM2CrVNegdKjsmir
         IFN65RrTO/psqLh+E7wgo3+fYxBaWNHM4n2DH2A7OhesfRcBe1ZT/Jkd0Pv/lBF9nva6
         2CrSbd5eFhTuNFClkus34geELlPQQXGCrEr0MOp9tQpogo1uCgmYm6rVVrqNafCzjYNP
         1hBIwYsZ94P56XxNwgcilij87wJ0o4m6tB6MxsKaFlAxJDF+b/IBGu2Qy0wO6h2fuOJZ
         aepw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777450868; x=1778055668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bu2VePOZ3zS8zvijxyqOnbIickAo3bdhMuuKFWMT/hQ=;
        b=pweW2I5nRxxv/cgYerXnuwj748QvxDwJ+OjnkK56hiCfgdzWZftQnuHwdhvY1/O4h8
         YdJt3qvb3I6TxTF8gawNTasJp65boRgohoRx7gQgo6HO5d3TVDtVEqithbSjF45xIqLO
         FeDvD2ROkFPP0Ch+mfGeJedF+mwFhLYfBVWuEOC8yx2kYSAMo3h7uSRjrTrdnicw9wNk
         YqXFCnLvAqErs0BJ9vxodwCYZvKfEbiUud5Vismhp16ScX40yhlKgyBTle7DppaEqRUT
         hObbi9Oap+1eXq43cT0ICf/+l5sfFZKNpl8t04QDUgcqwNjvRCAiIeq7PJ4AnQIGyvPA
         Z3OA==
X-Forwarded-Encrypted: i=1; AFNElJ/2gxLZrTGNzZ6zwBf0D1w5qaNMjOIlY0R/AMSsn6pzhzus3ctL7BwUzp+lXwaLVEn/wsBbJFIfSrQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ5b5mrRWRB09GA+oi82n31HNuZ7msipuRFY9e5OqGh/nGLNrb
	UJtk5kVMC1ZnyNIKkxKHosURWiBJ4VHo7GkD4DNjcBYSn1rXuyRM4icUS2WdoPysfYWc20M90Qj
	+k12fhlSm6Wf3XHP/1HSrwF9shplAXAZGbLMbHoaz
X-Gm-Gg: AeBDiet6TZfgZHMRNNnBL94k9jUHLQe8azZyz+BIgQudVwGl533WP+fV4isSsy+q5iu
	lrkvwgFu7tf3qWF7BGuo2D0+rJwzebeez28cK1znd8303FLXLgZk6QRVqJDQtaMMhIjOJGldTim
	jGCVuvJAQggVTT9Sy24cT7y6jozmpnUTrSsMacib6g9X68XmlUsIDVsP2hcM5NPeIbRzKR2sf+S
	U4t/wNu5AnmOkYvxNw1MUjRFGi5U3BNfP2601BrOw2lrlupL1ZCheaFYpUfZNzOHgXVzrbF817+
	k/SrVNSXTIZ5kqfkb2lQvGcY62/HT/IOqPrnWAMtZ39De9TYzkllaGxLvdrCyB5C3UmXdgbr5AM
	g98s8NnmOR6dI9ltHDg==
X-Received: by 2002:a2e:ad03:0:b0:38e:d64d:a511 with SMTP id
 38308e7fff4ca-39240cacf0bmr24624591fa.6.1777450867868; Wed, 29 Apr 2026
 01:21:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224427.271566313@kernel.org>
In-Reply-To: <20260428224427.271566313@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 10:20:54 +0200
X-Gm-Features: AVHnY4LaZJdd5XY_GbpBSDdNvmEl_dFGYyC97Ez6Bh5Frtx4kV_iigaasCfnRwc
Message-ID: <CACT4Y+YtK3+=nK1LDqwnFCMc60VDk7LZtcmEJQz4AGbTqb6NXA@mail.gmail.com>
Subject: Re: [patch 01/10] rseq: Set rseq::cpu_id_start to 0 on unregistration
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
X-Rspamd-Queue-Id: 588284911F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5442-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]

On Wed, 29 Apr 2026 at 01:33, Thomas Gleixner <tglx@kernel.org> wrote:
>
> The RSEQ rework changed that to RSEQ_CPU_UNINITILIZED, which is obviously
> incompatible. Revert back to the original behavior.
>
> Fixes: 0f085b41880e ("rseq: Provide and use rseq_set_ids()")
> Reported-by: Dmitry Vyukov <dvyukov@google.com>
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: stable@vger.kernel.org

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  kernel/rseq.c |   20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
>
> --- a/kernel/rseq.c
> +++ b/kernel/rseq.c
> @@ -236,11 +236,6 @@ static int __init rseq_debugfs_init(void
>  }
>  __initcall(rseq_debugfs_init);
>
> -static bool rseq_set_ids(struct task_struct *t, struct rseq_ids *ids, u32 node_id)
> -{
> -       return rseq_set_ids_get_csaddr(t, ids, node_id, NULL);
> -}
> -
>  static bool rseq_handle_cs(struct task_struct *t, struct pt_regs *regs)
>  {
>         struct rseq __user *urseq = t->rseq.usrptr;
> @@ -384,19 +379,22 @@ void rseq_syscall(struct pt_regs *regs)
>
>  static bool rseq_reset_ids(void)
>  {
> -       struct rseq_ids ids = {
> -               .cpu_id         = RSEQ_CPU_ID_UNINITIALIZED,
> -               .mm_cid         = 0,
> -       };
> +       struct rseq __user *rseq = current->rseq.usrptr;
>
>         /*
>          * If this fails, terminate it because this leaves the kernel in
>          * stupid state as exit to user space will try to fixup the ids
>          * again.
>          */
> -       if (rseq_set_ids(current, &ids, 0))
> -               return true;
> +       scoped_user_rw_access(rseq, efault) {
> +               unsafe_put_user(0, &rseq->cpu_id_start, efault);
> +               unsafe_put_user(RSEQ_CPU_ID_UNINITIALIZED, &rseq->cpu_id, efault);
> +               unsafe_put_user(0, &rseq->node_id, efault);
> +               unsafe_put_user(0, &rseq->mm_cid, efault);
> +       }
> +       return true;
>
> +efault:
>         force_sig(SIGSEGV);
>         return false;
>  }
>

