Return-Path: <linux-man+bounces-5449-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDhvMwnS8Wm3kgEAu9opvQ
	(envelope-from <linux-man+bounces-5449-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:40:25 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AB7492225
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 11:40:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DFFF13039A4D
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 09:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB453A75A4;
	Wed, 29 Apr 2026 09:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hh1GqYEE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA0739B97D
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 09:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777455328; cv=pass; b=dLkkThFu499QMmqJ/CYRhz8KeWxRDQotQDQeeQOryKb01gWOgDhClTzONG+ZOhJvrixjU/ch1OzJzZRv/NnhzCzYPUl2mOx4p3PaaFi4rMHhk7eoBTET9XeQusBkPwURtL7DU54PLKMHGUT7aqm+jO9CGRtIqLLDXBKFYtQc7PU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777455328; c=relaxed/simple;
	bh=yWRy3/rX4HlGUwt43yKWLOR1TvgC7BCQHNThoCg9RDQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kKdN8Pc9nokNF29WtYoyxKw/tsxxhqeyzpDr5K+3pL1Woiy2ZvCy8/ws0hdhtylww1uOiSM1EIE+RgV0WNJ1Ab6nWUcJwxMsr3EOxQQCHj5SxaGY1GB3TMoT3r1QZN/CX80nOPYcUTQ9J9hef0eBQV7iwQYoYGA6PbPKlZ/8qXc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hh1GqYEE; arc=pass smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5a2c77c62d7so13243712e87.0
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 02:35:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777455326; cv=none;
        d=google.com; s=arc-20240605;
        b=H88DqXKuLT2ABQGD1g8+YvTyPV+0oReSWdiOCZogigT40lKxj5vx6vtrrdqwjHQEGa
         NhsmzYVgBhA4rTlbLXcjjNQiyQMYifLNGpXn8MBsg5RZXz+i+pNnFhwf/tin3D9KGNay
         1Ed4lmhIywq0LbtlagJVRM1onU26M645uVJjkQHlilSttB+hOTQKk//QZvd3X0u3A+e0
         tD14wjU4vgCt017YC2YWFTmDXpMiDt3LCdVnjZ+AB9nJB9ls8N0puQzI1e+QsCkJOfjb
         DjfXwN/mPK29XIitz5rCtzfxBEOQhPhfEp9mzPo/YXBAI3hNQWj6P6DssRY/JxQfAEbm
         CbhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3AwfjorQ+tMEORsUtmbNIUNVt8zfCtFt99rh3uL24tk=;
        fh=mdbnbKDua9Ws5ebdEw1IKt+lwHRgNcOdS+6pkCqs5CY=;
        b=TtB2e8Zhkn1pWBYxZumO4VOhbJVMFs0s07G1DHpq0OOMO4IeTOqFyehyqGLPHTd51w
         DqQkpq2IHPcQrCPEHiOvdfqaDbpvr4N9AnnjaKSKjeg16CFy5tmJ1vKs52bXXjcySHZn
         zsQtZic/E6V3Gvr5ITBnX1Xi6k6w4nBpNLTiIoxWd63Y25fpm2T+tqtFWj4pE9AiKW/S
         sHKWfVyZ9K28o6ZFTiNWZfLTdmxFuCXICQQFCAtqfzzxz9q3C136RnP/ntIAs4Nmh6BN
         n7Y6ol2d+b32CFaZcy8XUSUuKQSqC34PHyslkHaDUVJEtrtPbWz1CRJ3kM3IetevU1jo
         o2aA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777455326; x=1778060126; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3AwfjorQ+tMEORsUtmbNIUNVt8zfCtFt99rh3uL24tk=;
        b=hh1GqYEE1uXADh/5dp2JrhK3+c7yEYm4tmuKPD4ovyq4oyK2jFs4OniPpS+raD9xIU
         OJh/Lw5gVeI4PYtqzcM8IJZQdc79wuNu4LtOFpnMdL9ltAYzquMEcLmJgepphcbm4TpY
         mXVR58de/MHh4KDGfTf1N+aTVvZpTvy7S7xGCF1x4lAB8IeZzyh3g5AGHtkVtQtShHv8
         qhP3llt/9l1aE3hN/zmBpAqRamyvqrdW0m6rUFrdON8m2EdLmoEXnuHBk8YChbRNcad0
         CetPaqRd3lIn02LuiQO/uOto3YXqosC47rVkFZjYg/7s86YeeG52Ckf3zVtNQXmk4xjg
         Zzfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777455326; x=1778060126;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3AwfjorQ+tMEORsUtmbNIUNVt8zfCtFt99rh3uL24tk=;
        b=maGugclnAXT/bva5Fz35XPl8/qRa7fHbwYkXgYtoT2QdPkGaGATNAPscrl2mcxx0G6
         ZTLmbCHujQefQScfcjQWMhEVjpUj1bh255VKL1bIGiTsxdH2o7v5hEyV8O3fUZC2YP9T
         mSQ0TboKh/Pjcd5FS0kR12E+zrdq6OuyitE6MxY+a/N4djEr84tHZC8Ti07OO85W6hXP
         oJzVG3Q9LSfUATnya/1gSokmjwxHt290nfYoI65Eb1XDbRYOdew8KpykH7t1eAAAPLoQ
         rpnL8A4PD16EXZnE2Dt2Zp0Y8Lf/YDSNDJO3BEpTLpiqH+4ZBWyKcHtY0Py1QBUpHhrK
         CPBA==
X-Forwarded-Encrypted: i=1; AFNElJ+R0Rwh8ysomI9IsBInZzH6yAbUC7NFQtB7juT4AqBV7Fnmwo4euFBpYiCn98ZyYSPQxcXlvc+vUwU=@vger.kernel.org
X-Gm-Message-State: AOJu0YzSJSrL98NVPjxQO6zpLqSbazZrcAbEgXeh2PCOXGvOLTcB8VRo
	5u5pLq7ZjgWKoYEGtdfxC2mkqVyV6ko1w1IvI82wwdrKe0/ksV5csJlJtJawtQ+1u1LYFIKIFHe
	n3V44wzKWmVaxJkL4+jP4j2QGmhZtfYtpeCxogQHf
X-Gm-Gg: AeBDieualUo4atnf0jlKWAvmyPhxvkEVERZQyzsLpYs8/s+if8A7lMQkGu6m441DPMd
	CNIGqIp7SkI77/t2bmg7JyC98hFo19GuL5G8OsL4MABmp2fPSq6NsKoUxPeiAvCS5w9ku9dzCD5
	gWMJbJ4q6q4NQGCKxFYF1zjn877qM8Y0+icp3LzNUNv76d5doeiGRj1QxlGS5E7TxCb4rcc9PN5
	hte3pFFcfBPosMae8o+qAH8WbEIaYNEtI1uBrfDvg5CzCf9XCsWgzJnnchhfo2HzZPgA1gltjVm
	HCJDQGby09YzaqIlTnyCHoq99v94wwB2tk61VKGuH1g8FoeU/1gjevMgYBqP54Axy3elr4kEIMP
	au7lWs2aqkwbuTuBc0A==
X-Received: by 2002:a05:6512:3b82:b0:5a2:9635:b1e0 with SMTP id
 2adb3069b0e04-5a74640e40emr2689337e87.16.1777455325069; Wed, 29 Apr 2026
 02:35:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224427.845230956@kernel.org>
In-Reply-To: <20260428224427.845230956@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 11:35:13 +0200
X-Gm-Features: AVHnY4IoVStYd0J6ExzzUtm9b73jfrUxpLXfek-vYcKQZwm9GgG4ZOv0vMQUzp4
Message-ID: <CACT4Y+bDX=766hTAAKus3-VYKFwmS0EeTKxW_S=DTiYp+QYECg@mail.gmail.com>
Subject: Re: [patch 08/10] rseq: Implement read only ABI enforcement for
 optimized RSEQ V2 mode
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
X-Rspamd-Queue-Id: E3AB7492225
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5449-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]

On Wed, 29 Apr 2026 at 01:34, Thomas Gleixner <tglx@kernel.org> wrote:
>
> The optimized RSEQ V2 mode requires that user space adheres to the ABI
> specification and does not modify the read-only fields cpu_id_start,
> cpu_id, node_id and mm_cid behind the kernel's back.
>
> While the kernel does not rely on these fields, the adherence to this is a
> fundamental prerequisite to allow multiple entities, e.g. libraries, in an
> application to utilize the full potential of RSEQ without stepping on each
> other toes.
>
> Validate this adherence on every update of these fields. If the kernel
> detects that user space modified the fields, the application is force
> terminated.
>
> Fixes: d6200245c75e ("rseq: Allow registering RSEQ with slice extension")
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: stable@vger.kernel.org

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  include/linux/rseq_entry.h |   71 +++++++++++++++++----------------------------
>  1 file changed, 28 insertions(+), 43 deletions(-)
>
> --- a/include/linux/rseq_entry.h
> +++ b/include/linux/rseq_entry.h
> @@ -248,7 +248,6 @@ static __always_inline bool rseq_grant_s
>  #endif /* !CONFIG_RSEQ_SLICE_EXTENSION */
>
>  bool rseq_debug_update_user_cs(struct task_struct *t, struct pt_regs *regs, unsigned long csaddr);
> -bool rseq_debug_validate_ids(struct task_struct *t);
>
>  static __always_inline void rseq_note_user_irq_entry(void)
>  {
> @@ -368,43 +367,6 @@ bool rseq_debug_update_user_cs(struct ta
>         return false;
>  }
>
> -/*
> - * On debug kernels validate that user space did not mess with it if the
> - * debug branch is enabled.
> - */
> -bool rseq_debug_validate_ids(struct task_struct *t)
> -{
> -       struct rseq __user *rseq = t->rseq.usrptr;
> -       u32 cpu_id, uval, node_id;
> -
> -       /*
> -        * On the first exit after registering the rseq region CPU ID is
> -        * RSEQ_CPU_ID_UNINITIALIZED and node_id in user space is 0!
> -        */
> -       node_id = t->rseq.ids.cpu_id != RSEQ_CPU_ID_UNINITIALIZED ?
> -                 cpu_to_node(t->rseq.ids.cpu_id) : 0;
> -
> -       scoped_user_read_access(rseq, efault) {
> -               unsafe_get_user(cpu_id, &rseq->cpu_id_start, efault);
> -               if (cpu_id != t->rseq.ids.cpu_id)
> -                       goto die;
> -               unsafe_get_user(uval, &rseq->cpu_id, efault);
> -               if (uval != cpu_id)
> -                       goto die;
> -               unsafe_get_user(uval, &rseq->node_id, efault);
> -               if (uval != node_id)
> -                       goto die;
> -               unsafe_get_user(uval, &rseq->mm_cid, efault);
> -               if (uval != t->rseq.ids.mm_cid)
> -                       goto die;
> -       }
> -       return true;
> -die:
> -       t->rseq.event.fatal = true;
> -efault:
> -       return false;
> -}
> -
>  #endif /* RSEQ_BUILD_SLOW_PATH */
>
>  /*
> @@ -519,12 +481,32 @@ bool rseq_set_ids_get_csaddr(struct task
>  {
>         struct rseq __user *rseq = t->rseq.usrptr;
>
> -       if (static_branch_unlikely(&rseq_debug_enabled)) {
> -               if (!rseq_debug_validate_ids(t))
> -                       return false;
> -       }
> -
>         scoped_user_rw_access(rseq, efault) {
> +               /* Validate the R/O fields for debug and optimized mode */
> +               if (static_branch_unlikely(&rseq_debug_enabled) || rseq_v2(t)) {
> +                       u32 cpu_id, uval, node_id;
> +
> +                       /*
> +                        * On the first exit after registering the rseq region CPU ID is
> +                        * RSEQ_CPU_ID_UNINITIALIZED and node_id in user space is 0!
> +                        */
> +                       node_id = t->rseq.ids.cpu_id != RSEQ_CPU_ID_UNINITIALIZED ?
> +                               cpu_to_node(t->rseq.ids.cpu_id) : 0;
> +
> +                       unsafe_get_user(cpu_id, &rseq->cpu_id_start, efault);
> +                       if (cpu_id != t->rseq.ids.cpu_id)
> +                               goto die;
> +                       unsafe_get_user(uval, &rseq->cpu_id, efault);
> +                       if (uval != cpu_id)
> +                               goto die;
> +                       unsafe_get_user(uval, &rseq->node_id, efault);
> +                       if (uval != node_id)
> +                               goto die;
> +                       unsafe_get_user(uval, &rseq->mm_cid, efault);
> +                       if (uval != t->rseq.ids.mm_cid)
> +                               goto die;
> +               }
> +
>                 unsafe_put_user(ids->cpu_id, &rseq->cpu_id_start, efault);
>                 unsafe_put_user(ids->cpu_id, &rseq->cpu_id, efault);
>                 unsafe_put_user(node_id, &rseq->node_id, efault);
> @@ -543,6 +525,9 @@ bool rseq_set_ids_get_csaddr(struct task
>         rseq_stat_inc(rseq_stats.ids);
>         rseq_trace_update(t, ids);
>         return true;
> +
> +die:
> +       t->rseq.event.fatal = true;
>  efault:
>         return false;
>  }
>

