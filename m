Return-Path: <linux-man+bounces-5445-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFk8JZfG8WkbkQEAu9opvQ
	(envelope-from <linux-man+bounces-5445-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 10:51:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4DA4915CB
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 10:51:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E8FB30330AD
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 08:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9418346777;
	Wed, 29 Apr 2026 08:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="NVUk27Z0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A617D344052
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 08:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777452691; cv=pass; b=KsfzCBQ08LsqUIfnKzhJuOchccxW7e+UpTI5PxpEhtdMrcpssIYuKJFrg4npgYBBHFKd8nMN7z+bv3fvR9K6pG3AyHc2F2CHbbRYeRJN1PNTEZ12ohq5JYCVL2RK1oTGJ8IwtmUh6lSZUQn222Q8orojahZikPew30VuIE5XR7M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777452691; c=relaxed/simple;
	bh=MRV1hXtUrislw6PN5lGNl8TaQvl0ZlQKmNJiJkcghlM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tmMPw8iXtJSqY9al6ueUSVccZ2kDu7sk1YeSjlNdQt89Wt5LCgKw16hY1a1sjTjwpygXCWUWf5K7P1LUb3Umcp0/nUls9WoTthI8OL58JlDn0oQxZI8WGIlaQogP1fQ1Vqm6fbkieCYpLjNQ0uQTe3POP3T5nCc8r5lYtuCx5N8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=NVUk27Z0; arc=pass smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-38e7d983f91so125937271fa.2
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 01:51:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777452688; cv=none;
        d=google.com; s=arc-20240605;
        b=WG/R+6dvTMXQmqEXwUYwyLcrghNuqaLFBukOAfeZKNJRSvTvlcv/R7M6xdVWGXKCRi
         Yz4396lE+RulCFZki1rQFkpAsKFTqjJSxYpSARut/z5T76+vaiT6HCeXngJr696B/anI
         88d2JXC7ZqPxmamuDXiSquzon8I+A3/Q1/dIIsaojlhX50fhe4ZWS3Yn19b80QYqVFMV
         pYzFML1bn11KBuTT75hojrbJ7aI4+Z5tOdGJ5ZSsBUF415oTc20jqmMtBtEs51/IxPll
         eygUGJk/5b/AixQicMJRmT1tL0uWo34AWCfYyyI59dS+mSE1sXWxGqhArw+XSXVLfgCo
         d1Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2fSM4h7IpoKy3vmLYojrQe19oW19uM8IWarlqEQ9490=;
        fh=Jm100pPyjU/khd4oEGZxdb2LkgHYuicq3CUBZrxp9a4=;
        b=BFite9GSjk3WDSnRSNDXgf3B3in9LxFEENxrK8N/LITrSuL8jKxzEue/P3o5qQSLeW
         Y5P1MCHNcw3cJYP9ZbCkT8hIzQsYnVQ3h/wLPYUGRJ7LI5adKnVGCOggFLp7D+0WvsY9
         M16exC89pWpepV8AkVjcFlFN217LSSzL671Z7mXXL/5dk0eY43XSimtqNP4wFWDaKXYz
         UGvCbLB9bvaX77HdS32YSkNXmIsfdXlMw7EodbyTWBdxB5ZMTiGBzeQiRlLA6OF45aVw
         HGqxBXHrEL3/YkNvCF2/+pncVvz+taC83EwKPwuzqn2wx2DmutLe9DxjEMrh1Qqo906c
         O7DA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777452688; x=1778057488; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2fSM4h7IpoKy3vmLYojrQe19oW19uM8IWarlqEQ9490=;
        b=NVUk27Z0FPUPK2UD0F//UtLW83GJbmSypbNNuINExIPbrwhRMZUGwbt+1HDXHdG1PP
         0oVXS6vyjtb0iTXVvOngKoZC36IYv688jWMLhScjOZPVH630NWQyxqESy/XH86oEEacm
         8/FuPK7KSusvJQVtwAOVQzn0bWjyQR8NX9WfI+4emjZ8inyrAFxzNAuFjTPml73SQX6t
         Kb5vsbGc8+ACdYrGbqy1zSs/ommhjh3qv3NEw6WYd4sNuyquLPbTzFUGUYkHgmb4mD8m
         hbOM+W2luK0xY8PkEeO0e9UNnzZ9KphaNCFmgc34kJ6GonkOPouwxdgqUoaNunGeIAj5
         VFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777452688; x=1778057488;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2fSM4h7IpoKy3vmLYojrQe19oW19uM8IWarlqEQ9490=;
        b=Td9bgztYAominazFA00E3KmdlwafEEC2HROdZsSNiXVTiqaZCZNVX37fxNJDZ8vFQW
         efpV4gSGOQ/NGgHuEZaVdIYaxeTl4bCCyfE5UoitUeRrUjUrnGKTUXSFWLWU7B98KDpW
         eW3JtDa/mOdLlUD8JrdkJJt6YNNb4n5wkZd2h0C+oNeHk78YS9YkBHEx++nMjaCZrmsL
         t2cyS4S77nIlGRMYse8WMy/+WaBxgKTjDzJvNsEox9Mi/h2LtWqtjKjcAEoN9N0xQAPc
         nj8SJ843x2nEVqENczA3TYaJWqbg5Ec1YjL+2BnNidA2bI0SPf4M5XbQprFDo5tDwy6+
         z8sQ==
X-Forwarded-Encrypted: i=1; AFNElJ82ooycSCRqmdj70Wnnk1JAbqhczUo3PvqRvOhj7MxcOiDkvCMAMOItMq3Kmtop65Yl0kxrGTsNB/o=@vger.kernel.org
X-Gm-Message-State: AOJu0YwO8XFOjQsfG/lUBh4ondRgv9r4nEDlajCumsgY1wKPN6bi/klF
	nX8eeN3DwLSpqZKw29bQ6ZP+gm4UiVFiA1fFRMOai7MUCNwneBWwD8lfdsqYCCACx1WQRMlGEEH
	4Qm4L2xcArrrrH8rZ5crIhIps8imcJT6MAJgFV1NX
X-Gm-Gg: AeBDievvkPY+uHLfWRn82oeM+PcST9t5wYwRvwI5VoU259bOEzw1puPGmx4b7KORGgs
	9gaMLfMSBXas0DMPnD5n1WTiDHSKq1peyByKz/EW9lY2/0SHK0qYX3BlmGrEcVYNaZ5kIMZ2Xcr
	Tk1jPuIU5+M5Go7k+iafh21e4xKmhrRTUjpiV6woaS50fwXx0kf9eGORYLBgNopkwvFzrdg2yvS
	7WgbkVQrl9bHeXkFftqTmIiLO5EAkKPEbTflIZnd4Nm5GylhVq3qO9XjjiHMF7YCCSQ1Lt4LuCl
	8i2IR38bYLBy+WF1cNHDsM2FDDRqoJpcU5+nSPJR0tEbETKwCWTavJemungRRDgBIpKaoJ4dCL2
	ckef/ZME+k6nw1J4mbw==
X-Received: by 2002:a2e:a613:0:b0:38d:d6eb:6307 with SMTP id
 38308e7fff4ca-3924bd137c4mr7659371fa.31.1777452687320; Wed, 29 Apr 2026
 01:51:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428221058.149538293@kernel.org> <20260428224427.517051752@kernel.org>
In-Reply-To: <20260428224427.517051752@kernel.org>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 Apr 2026 10:51:15 +0200
X-Gm-Features: AVHnY4J_cVo6S_cMBBngeVrGMqrUFEL5g-yPWqVKwJceufPFNjNKWY9ok9Wl4kE
Message-ID: <CACT4Y+a9CPbxOuws0gAsYzs8MuEFmPMVEaGGPmC0_yjvD4cmXw@mail.gmail.com>
Subject: Re: [patch 04/10] rseq: Revert to historical performance killing behaviour
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
X-Rspamd-Queue-Id: DF4DA4915CB
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
	TAGGED_FROM(0.00)[bounces-5445-lists,linux-man=lfdr.de];
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
> The recent RSEQ optimization work broke the TCMalloc abuse of the RSEQ ABI
> as it not longer unconditionally updates the CPU, node, mm_cid fields,
> which are documented as read only for user space. Due to the observed
> behavior of the kernel it was possible for TCMalloc to overwrite the
> cpu_id_start field for their own purposes and rely on the kernel to update
> it unconditionally after each context switch and before signal delivery.
>
> The RSEQ ABI only guarantees that these fields are updated when the data
> changes, i.e. the task is migrated or the MMCID of the task changes due to
> switching from or to per CPU ownership mode.
>
> The optimization work eliminated the unconditional updates and reduced them
> to the documented ABI guarantees, which results in a massive performance
> win for syscall, scheduling heavy work loads, which in turn breaks the
> TCMalloc expectations.
>
> There have been several options discussed to restore the TCMalloc
> functionality while preserving the optimization benefits. They all end up
> in a series of hard to maintain workarounds, which in the worst case
> introduce overhead for everyone, e.g. in the scheduler.
>
> The requirements of TCMalloc and the optimization work are diametral and
> the required work arounds are a maintainence burden. They end up as fragile
> constructs, which are blocking further optimization work and are pretty
> much guaranteed to cause more subtle issues down the road.
>
> The optimization work heavily depends on the generic entry code, which is
> not used by all architectures yet. So the rework preserved the original
> mechanism moslty unmodified to keep the support for architectures, which
> handle rseq in their own exit to user space loop. That code is currently
> optimized out by the compiler on architectures which use the generic entry
> code.
>
> This allows to revert back to the original behaviour by replacing the
> compile time constant conditions with a runtime condition where required,
> which disables the optimization and the dependend time slice extension
> feature until the run-time condition can be enabled in the RSEQ
> registration code on a per task basis again.
>
> The following changes are required to restore the original behavior, which
> makes TCMalloc work again:
>
>   1) Replace the compile time constant conditionals with runtime
>      conditionals where appropriate to prevent the compiler from optimizing
>      the legacy mode out
>
>   2) Enforce unconditional update of IDs on context switch for the
>      non-optimized v1 mode
>
>   3) Enforce update of IDs in the pre signal delivery path for the
>      non-optimized v1 mode
>
>   4) Enforce update of IDs in the membarrier(RSEQ) IPI for the
>      non-optimized v1 mode
>
>   5) Make time slice and future extensions depend on optimized v2 mode
>
> This brings back the full performance problems, but preserves the v2
> optimization code and for generic entry code using architectures also the
> TIF_RSEQ optimization which avoids a full evaluation of the exit to user
> mode loop in many cases.
>
> Fixes: 566d8015f7ee ("rseq: Avoid CPU/MM CID updates when no event pending")
> Reported-by: Mathias Stearn <mathias@mongodb.com>
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: stable@vger.kernel.org
> Closes: https://lore.kernel.org/CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com

I've stress tested the whole series on my end:

Reviewed-and-tested-by: Dmitry Vyukov <dvyukov@google.com>




> ---
>  include/linux/rseq.h       |   34 +++++++++++++++++++++++-----------
>  include/linux/rseq_entry.h |   39 +++++++++++++++++++++++++++++----------
>  include/linux/rseq_types.h |    9 ++++++++-
>  kernel/rseq.c              |   42 ++++++++++++++++++++++++++++++++++--------
>  kernel/sched/membarrier.c  |   11 ++++++++++-
>  5 files changed, 104 insertions(+), 31 deletions(-)
>
> --- a/include/linux/rseq.h
> +++ b/include/linux/rseq.h
> @@ -9,6 +9,11 @@
>
>  void __rseq_handle_slowpath(struct pt_regs *regs);
>
> +static __always_inline bool rseq_v2(struct task_struct *t)
> +{
> +       return IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY) && likely(t->rseq.event.has_rseq > 1);
> +}
> +
>  /* Invoked from resume_user_mode_work() */
>  static inline void rseq_handle_slowpath(struct pt_regs *regs)
>  {
> @@ -16,8 +21,7 @@ static inline void rseq_handle_slowpath(
>                 if (current->rseq.event.slowpath)
>                         __rseq_handle_slowpath(regs);
>         } else {
> -               /* '&' is intentional to spare one conditional branch */
> -               if (current->rseq.event.sched_switch & current->rseq.event.has_rseq)
> +               if (current->rseq.event.sched_switch && current->rseq.event.has_rseq)
>                         __rseq_handle_slowpath(regs);
>         }
>  }
> @@ -30,9 +34,9 @@ void __rseq_signal_deliver(int sig, stru
>   */
>  static inline void rseq_signal_deliver(struct ksignal *ksig, struct pt_regs *regs)
>  {
> -       if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY)) {
> -               /* '&' is intentional to spare one conditional branch */
> -               if (current->rseq.event.has_rseq & current->rseq.event.user_irq)
> +       if (rseq_v2(current)) {
> +               /* has_rseq is implied in rseq_v2() */
> +               if (current->rseq.event.user_irq)
>                         __rseq_signal_deliver(ksig->sig, regs);
>         } else {
>                 if (current->rseq.event.has_rseq)
> @@ -50,15 +54,22 @@ static __always_inline void rseq_sched_s
>  {
>         struct rseq_event *ev = &t->rseq.event;
>
> -       if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY)) {
> +       /*
> +        * Only apply the user_irq optimization for RSEQ ABI V2 registrations.
> +        * Legacy users like TCMalloc rely on the original ABI V1 behaviour
> +        * which updates IDs on every context swtich.
> +        */
> +       if (rseq_v2(t)) {
>                 /*
> -                * Avoid a boat load of conditionals by using simple logic
> -                * to determine whether NOTIFY_RESUME needs to be raised.
> +                * Avoid a boat load of conditionals by using simple logic to
> +                * determine whether TIF_NOTIFY_RESUME or TIF_RSEQ needs to be
> +                * raised.
>                  *
> -                * It's required when the CPU or MM CID has changed or
> -                * the entry was from user space.
> +                * It's required when the CPU or MM CID has changed or the entry
> +                * was via interrupt from user space. ev->has_rseq does not have
> +                * to be evaluated here because rseq_v2() implies has_rseq.
>                  */
> -               bool raise = (ev->user_irq | ev->ids_changed) & ev->has_rseq;
> +               bool raise = ev->user_irq | ev->ids_changed;
>
>                 if (raise) {
>                         ev->sched_switch = true;
> @@ -66,6 +77,7 @@ static __always_inline void rseq_sched_s
>                 }
>         } else {
>                 if (ev->has_rseq) {
> +                       t->rseq.event.ids_changed = true;
>                         t->rseq.event.sched_switch = true;
>                         rseq_raise_notify_resume(t);
>                 }
> --- a/include/linux/rseq_entry.h
> +++ b/include/linux/rseq_entry.h
> @@ -111,6 +111,20 @@ static __always_inline void rseq_slice_c
>         t->rseq.slice.state.granted = false;
>  }
>
> +/*
> + * Open coded, so it can be invoked within a user access region.
> + *
> + * This clears the user space state of the time slice extensions field only when
> + * the task has registered the optimized RSEQ_ABI V2. Some legacy registrations,
> + * e.g. TCMalloc, have conflicting non-ABI fields in struct RSEQ, which would be
> + * overwritten by an unconditional write.
> + */
> +#define rseq_slice_clear_user(rseq, efault)                            \
> +do {                                                                   \
> +       if (rseq_slice_extension_enabled())                             \
> +               unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);     \
> +} while (0)
> +
>  static __always_inline bool __rseq_grant_slice_extension(bool work_pending)
>  {
>         struct task_struct *curr = current;
> @@ -230,6 +244,7 @@ static __always_inline bool rseq_slice_e
>  static __always_inline bool rseq_arm_slice_extension_timer(void) { return false; }
>  static __always_inline void rseq_slice_clear_grant(struct task_struct *t) { }
>  static __always_inline bool rseq_grant_slice_extension(unsigned long ti_work, unsigned long mask) { return false; }
> +#define rseq_slice_clear_user(rseq, efault) do { } while (0)
>  #endif /* !CONFIG_RSEQ_SLICE_EXTENSION */
>
>  bool rseq_debug_update_user_cs(struct task_struct *t, struct pt_regs *regs, unsigned long csaddr);
> @@ -517,11 +532,9 @@ bool rseq_set_ids_get_csaddr(struct task
>                 if (csaddr)
>                         unsafe_get_user(*csaddr, &rseq->rseq_cs, efault);
>
> -               /* Open coded, so it's in the same user access region */
> -               if (rseq_slice_extension_enabled()) {
> -                       /* Unconditionally clear it, no point in conditionals */
> -                       unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);
> -               }
> +               /* RSEQ ABI V2 only operations */
> +               if (rseq_v2(t))
> +                       rseq_slice_clear_user(rseq, efault);
>         }
>
>         rseq_slice_clear_grant(t);
> @@ -612,6 +625,14 @@ static __always_inline bool rseq_exit_us
>          * interrupts disabled
>          */
>         guard(pagefault)();
> +       /*
> +        * This optimization is only valid when the task registered for the
> +        * optimized RSEQ_ABI_V2 variant. Some legacy users rely on the original
> +        * RSEQ implementation behaviour which unconditionally updated the IDs.
> +        * rseq_sched_switch_event() ensures that legacy registrations always
> +        * have both sched_switch and ids_changed set, which is compatible with
> +        * the historical TIF_NOTIFY_RESUME behaviour.
> +        */
>         if (likely(!t->rseq.event.ids_changed)) {
>                 struct rseq __user *rseq = t->rseq.usrptr;
>                 /*
> @@ -623,11 +644,9 @@ static __always_inline bool rseq_exit_us
>                 scoped_user_rw_access(rseq, efault) {
>                         unsafe_get_user(csaddr, &rseq->rseq_cs, efault);
>
> -                       /* Open coded, so it's in the same user access region */
> -                       if (rseq_slice_extension_enabled()) {
> -                               /* Unconditionally clear it, no point in conditionals */
> -                               unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);
> -                       }
> +                       /* RSEQ ABI V2 only operations */
> +                       if (rseq_v2(t))
> +                               rseq_slice_clear_user(rseq, efault);
>                 }
>
>                 rseq_slice_clear_grant(t);
> --- a/include/linux/rseq_types.h
> +++ b/include/linux/rseq_types.h
> @@ -9,6 +9,12 @@
>  #ifdef CONFIG_RSEQ
>  struct rseq;
>
> +/*
> + * rseq_event::has_rseq contains the ABI version number so preserving it
> + * in AND operations requires a mask.
> + */
> +#define RSEQ_HAS_RSEQ_VERSION_MASK     0xff
> +
>  /**
>   * struct rseq_event - Storage for rseq related event management
>   * @all:               Compound to initialize and clear the data efficiently
> @@ -17,7 +23,8 @@ struct rseq;
>   *                     exit to user
>   * @ids_changed:       Indicator that IDs need to be updated
>   * @user_irq:          True on interrupt entry from user mode
> - * @has_rseq:          True if the task has a rseq pointer installed
> + * @has_rseq:          Greater than 0 if the task has a rseq pointer installed.
> + *                     Contains the RSEQ version number
>   * @error:             Compound error code for the slow path to analyze
>   * @fatal:             User space data corrupted or invalid
>   * @slowpath:          Indicator that slow path processing via TIF_NOTIFY_RESUME
> --- a/kernel/rseq.c
> +++ b/kernel/rseq.c
> @@ -253,11 +253,14 @@ static bool rseq_handle_cs(struct task_s
>  static void rseq_slowpath_update_usr(struct pt_regs *regs)
>  {
>         /*
> -        * Preserve rseq state and user_irq state. The generic entry code
> -        * clears user_irq on the way out, the non-generic entry
> -        * architectures are not having user_irq.
> -        */
> -       const struct rseq_event evt_mask = { .has_rseq = true, .user_irq = true, };
> +        * Preserve has_rseq and user_irq state. The generic entry code clears
> +        * user_irq on the way out, the non-generic entry architectures are not
> +        * setting user_irq.
> +        */
> +       const struct rseq_event evt_mask = {
> +               .has_rseq       = RSEQ_HAS_RSEQ_VERSION_MASK,
> +               .user_irq       = true,
> +       };
>         struct task_struct *t = current;
>         struct rseq_ids ids;
>         u32 node_id;
> @@ -330,8 +333,9 @@ void __rseq_handle_slowpath(struct pt_re
>  void __rseq_signal_deliver(int sig, struct pt_regs *regs)
>  {
>         rseq_stat_inc(rseq_stats.signal);
> +
>         /*
> -        * Don't update IDs, they are handled on exit to user if
> +        * Don't update IDs yet, they are handled on exit to user if
>          * necessary. The important thing is to abort a critical section of
>          * the interrupted context as after this point the instruction
>          * pointer in @regs points to the signal handler.
> @@ -344,6 +348,13 @@ void __rseq_signal_deliver(int sig, stru
>                 current->rseq.event.error = 0;
>                 force_sigsegv(sig);
>         }
> +
> +       /*
> +        * In legacy mode, force the update of IDs before returning to user
> +        * space to stay compatible.
> +        */
> +       if (!rseq_v2(current))
> +               rseq_force_update();
>  }
>
>  /*
> @@ -408,6 +419,7 @@ static bool rseq_reset_ids(void)
>  SYSCALL_DEFINE4(rseq, struct rseq __user *, rseq, u32, rseq_len, int, flags, u32, sig)
>  {
>         u32 rseqfl = 0;
> +       u8 version = 1;
>
>         if (flags & RSEQ_FLAG_UNREGISTER) {
>                 if (flags & ~RSEQ_FLAG_UNREGISTER)
> @@ -461,7 +473,11 @@ SYSCALL_DEFINE4(rseq, struct rseq __user
>         if (!access_ok(rseq, rseq_len))
>                 return -EFAULT;
>
> -       if (IS_ENABLED(CONFIG_RSEQ_SLICE_EXTENSION)) {
> +       /*
> +        * The version check effectivly disables time slice extensions until the
> +        * RSEQ ABI V2 registration are implemented.
> +        */
> +       if (IS_ENABLED(CONFIG_RSEQ_SLICE_EXTENSION) && version > 1) {
>                 if (rseq_slice_extension_enabled()) {
>                         rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_AVAILABLE;
>                         if (flags & RSEQ_FLAG_SLICE_EXT_DEFAULT_ON)
> @@ -484,7 +500,15 @@ SYSCALL_DEFINE4(rseq, struct rseq __user
>                 unsafe_put_user(RSEQ_CPU_ID_UNINITIALIZED, &rseq->cpu_id, efault);
>                 unsafe_put_user(0U, &rseq->node_id, efault);
>                 unsafe_put_user(0U, &rseq->mm_cid, efault);
> -               unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);
> +
> +               /*
> +                * All fields past mm_cid are only valid for non-legacy v2
> +                * registrations.
> +                */
> +               if (version > 1) {
> +                       if (IS_ENABLED(CONFIG_RSEQ_SLICE_EXTENSION))
> +                               unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);
> +               }
>         }
>
>         /*
> @@ -712,6 +736,8 @@ int rseq_slice_extension_prctl(unsigned
>                         return -ENOTSUPP;
>                 if (!current->rseq.usrptr)
>                         return -ENXIO;
> +               if (!rseq_v2(current))
> +                       return -ENOTSUPP;
>
>                 /* No change? */
>                 if (enable == !!current->rseq.slice.state.enabled)
> --- a/kernel/sched/membarrier.c
> +++ b/kernel/sched/membarrier.c
> @@ -199,7 +199,16 @@ static void ipi_rseq(void *info)
>          * is negligible.
>          */
>         smp_mb();
> -       rseq_sched_switch_event(current);
> +       /*
> +        * Legacy mode requires that IDs are written and the critical section is
> +        * evaluated. V2 optimized mode handles the critical section and IDs are
> +        * only updated if they change as a consequence of preemption after
> +        * return from this IPI.
> +        */
> +       if (rseq_v2(current))
> +               rseq_sched_switch_event(current);
> +       else
> +               rseq_force_update();
>  }
>
>  static void ipi_sync_rq_state(void *info)
>

