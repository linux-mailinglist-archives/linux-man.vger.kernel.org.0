Return-Path: <linux-man+bounces-5397-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODaGBkuG62lBNwAAu9opvQ
	(envelope-from <linux-man+bounces-5397-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 17:03:39 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CA5460785
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 17:03:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C1E383002F45
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2026 15:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC932282F27;
	Fri, 24 Apr 2026 15:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="JY7598aQ"
X-Original-To: linux-man@vger.kernel.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604C7281369;
	Fri, 24 Apr 2026 15:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.155.50.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777043011; cv=none; b=Hla8PGLeXG+I4r9E9X2LHSmEwALPFm9YLtmeRkylEZw/ubrsgO4cqN2VLoaEpPXZUQuyNLnB+APW9hA9AuEnn1er4FnRD2n6LNgDfdoSnwFCgJBpc/6kdMyMShGMDIIhJkyX3ipjXRz8Ts+TIqEdvUTgCGYh4RimfjBLD/sY59Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777043011; c=relaxed/simple;
	bh=ILInss1EeZoc/8Olr2HLvGjiVgRJ5csStWcBiAJbwIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fTisn8jGpKeFgEXxTyUoyjspEtDFqzL2rKzMwv45eKZq2jyK38HK5mPjFz7j41ZKIe3o45RzDnKZM/hKQiK4WvibRxAovoYysry5qu5xNi8i1s6N2nqvIT9/fZvg2GHdOd8jTnb14uluQe8zqdrQkgIGL/FwtFWTDg5i6CKDDbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=JY7598aQ; arc=none smtp.client-ip=90.155.50.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jp5I3YVV3IMi72Sbykn4N4JHT7WAZ2XdR9LFxVLpZI0=; b=JY7598aQXXRv4U8//4S4j/GI5s
	PjkN9CxXhZKejaSm6OwtRSjuzpD016ogOdLyq2+MN6fEef+jK8Ze0MfdZwToG3MRMOX94phLv+oih
	/OdUbK5f76RK0N8jvjirAZf1aEDNaUEikSVKDEHe15zoB4z5W8vmWnXP4p8o6VwxNykpyMVRVOJ4t
	tkV2WObks+GpYhtbYsFh7ueTzhKPcUxHCJAEZZfsDYf19SI12uTbXde57PJsd/pM9bsl++noXtvvx
	w+S67lp0i5o9ihE4U5NBXqXeyfa3AT8BrCw5z1RP3EDbdn7aCIRzX7uOBzKWt36nSCP5RSoxqTtvg
	fM0sM37Q==;
Received: from 2001-1c00-8d85-4b00-266e-96ff-fe07-7dcc.cable.dynamic.v6.ziggo.nl ([2001:1c00:8d85:4b00:266e:96ff:fe07:7dcc] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGI3r-0000000FNsV-38KB;
	Fri, 24 Apr 2026 15:03:19 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
	id 56C6A301261; Fri, 24 Apr 2026 17:03:18 +0200 (CEST)
Date: Fri, 24 Apr 2026 17:03:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Mathias Stearn <mathias@mongodb.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org,
	Mark Rutland <mark.rutland@arm.com>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Ingo Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
Message-ID: <20260424150318.GE641209@noisy.programming.kicks-ass.net>
References: <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com>
 <87wlxy22x7.ffs@tglx>
 <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <87ik9i0xlj.ffs@tglx>
 <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx>
 <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
 <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
 <87v7dgzbo7.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87v7dgzbo7.ffs@tglx>
X-Rspamd-Queue-Id: 04CA5460785
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=casper.20170209];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5397-lists,linux-man=lfdr.de];
	FREEMAIL_CC(0.00)[mongodb.com,google.com,huawei.com,vger.kernel.org,arm.com,efficios.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peterz@infradead.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:dkim,noisy.programming.kicks-ass.net:mid]

On Fri, Apr 24, 2026 at 04:16:08PM +0200, Thomas Gleixner wrote:
> On Fri, Apr 24 2026 at 10:32, Mathias Stearn wrote:
> > On Fri, Apr 24, 2026 at 9:57 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >> The only problem is with membarrier (it used to force write to
> >> __rseq_abi.cpu_id_start for all threads, but now it does not).
> >> Otherwise the caching scheme works.
> >
> > I almost wrote a message last night saying that we didn't need
> > cpu_id_start invalidation on preemption. However, I remembered that
> > the Grow() function[1] does a load outside of a critical section then
> > stores a derived value inside the critical section, guarded only by
> > the cpu_id_start invalidation check in StoreCurrentCpu[2]. It really
> > should be doing a compare against the original value inside the
> > critical section (or just do the whole thing inside), but it doesn't.
> > I haven't reasoned end-to-end through this fully to prove corruption
> > is possible, but I suspect that it is if another thread same-cpu
> > preempts between the loads and the store and updates the header before
> > the original thread resumes and writes its original intended header
> > value. Ditto for signals, which sometimes allocate even though they
> > shouldn't.
> >
> > I was really hoping that we would only need to do the "redundant"
> > cpu_id_start writes would only be needed on membarrier_rseq IPIs where
> > it really is a pay-for-what-you-use functionality,
> 
> That's fine and can be solved without adding this sequence overhead into
> the scheduler hotpath.

Something like so? (probably needs help for !GENERIC bits)

---

diff --git a/include/asm-generic/thread_info_tif.h b/include/asm-generic/thread_info_tif.h
index 528e6fc7efe9..1d786003e42a 100644
--- a/include/asm-generic/thread_info_tif.h
+++ b/include/asm-generic/thread_info_tif.h
@@ -48,7 +48,10 @@
 #define TIF_RSEQ		11	// Run RSEQ fast path
 #define _TIF_RSEQ		BIT(TIF_RSEQ)
 
-#define TIF_HRTIMER_REARM	12       // re-arm the timer
+#define TIF_RSEQ_FORCE_RESTART	12	// Reset RSEQ-CS from membarrier
+#define _TIF_RSEQ_FORCE_RESTART	BIT(TIF_RSEQ_FORCE_RESTART)
+
+#define TIF_HRTIMER_REARM	13       // re-arm the timer
 #define _TIF_HRTIMER_REARM	BIT(TIF_HRTIMER_REARM)
 
 #endif /* _ASM_GENERIC_THREAD_INFO_TIF_H_ */
diff --git a/include/linux/rseq.h b/include/linux/rseq.h
index b9d62fc2140d..2cbee6d41198 100644
--- a/include/linux/rseq.h
+++ b/include/linux/rseq.h
@@ -158,6 +158,8 @@ static inline unsigned int rseq_alloc_align(void)
 	return 1U << get_count_order(offsetof(struct rseq, end));
 }
 
+extern void rseq_prepare_membarrier(struct mm_struct *mm);
+
 #else /* CONFIG_RSEQ */
 static inline void rseq_handle_slowpath(struct pt_regs *regs) { }
 static inline void rseq_signal_deliver(struct ksignal *ksig, struct pt_regs *regs) { }
@@ -167,6 +169,7 @@ static inline void rseq_force_update(void) { }
 static inline void rseq_virt_userspace_exit(void) { }
 static inline void rseq_fork(struct task_struct *t, u64 clone_flags) { }
 static inline void rseq_execve(struct task_struct *t) { }
+static inline void rseq_prepare_membarrier(struct mm_struct *mm) { }
 #endif  /* !CONFIG_RSEQ */
 
 #ifdef CONFIG_DEBUG_RSEQ
diff --git a/include/linux/rseq_entry.h b/include/linux/rseq_entry.h
index f11ebd34f8b9..3dfaca776971 100644
--- a/include/linux/rseq_entry.h
+++ b/include/linux/rseq_entry.h
@@ -686,7 +686,12 @@ static __always_inline bool __rseq_exit_to_user_mode_restart(struct pt_regs *reg
 #ifdef CONFIG_HAVE_GENERIC_TIF_BITS
 static __always_inline bool test_tif_rseq(unsigned long ti_work)
 {
-	return ti_work & _TIF_RSEQ;
+	return ti_work & (_TIF_RSEQ | _TIF_RSEQ_FORCE_RESTART);
+}
+
+static __always_inline void clear_tif_rseq_force_restart(void)
+{
+	clear_thread_flag(TIF_RSEQ_FORCE_RESTART);
 }
 
 static __always_inline void clear_tif_rseq(void)
@@ -696,6 +701,7 @@ static __always_inline void clear_tif_rseq(void)
 }
 #else
 static __always_inline bool test_tif_rseq(unsigned long ti_work) { return true; }
+static __always_inline void clear_tif_rseq_force_restart(void) { }
 static __always_inline void clear_tif_rseq(void) { }
 #endif
 
@@ -703,6 +709,11 @@ static __always_inline bool
 rseq_exit_to_user_mode_restart(struct pt_regs *regs, unsigned long ti_work)
 {
 	if (unlikely(test_tif_rseq(ti_work))) {
+		if (unlikely(ti_work & _TIF_RSEQ_FORCE_RESTART)) {
+			current->rseq.event.sched_switch = true;
+			current->rseq.event.ids_changed = true;
+			clear_tif_rseq_force_restart();
+		}
 		if (unlikely(__rseq_exit_to_user_mode_restart(regs))) {
 			current->rseq.event.slowpath = true;
 			set_tsk_thread_flag(current, TIF_NOTIFY_RESUME);
diff --git a/kernel/rseq.c b/kernel/rseq.c
index 38d3ef540760..9adc7f63adf5 100644
--- a/kernel/rseq.c
+++ b/kernel/rseq.c
@@ -255,6 +255,19 @@ static bool rseq_handle_cs(struct task_struct *t, struct pt_regs *regs)
 	return false;
 }
 
+void rseq_prepare_membarrier(struct mm_struct *mm)
+{
+	struct task_struct *t;
+
+	guard(mutex)(&mm->mm_cid.mutex);
+
+	hlist_for_each_entry(t, &mm->mm_cid.user_list, mm_cid.node) {
+		if (t == current)
+			continue;
+		set_tsk_thread_flag(t, TIF_RSEQ_FORCE_RESTART);
+	}
+}
+
 static void rseq_slowpath_update_usr(struct pt_regs *regs)
 {
 	/*
diff --git a/kernel/sched/membarrier.c b/kernel/sched/membarrier.c
index 623445603725..696988bb991b 100644
--- a/kernel/sched/membarrier.c
+++ b/kernel/sched/membarrier.c
@@ -334,6 +334,7 @@ static int membarrier_private_expedited(int flags, int cpu_id)
 		      MEMBARRIER_STATE_PRIVATE_EXPEDITED_RSEQ_READY))
 			return -EPERM;
 		ipi_func = ipi_rseq;
+		rseq_prepare_membarrier(mm);
 	} else {
 		WARN_ON_ONCE(flags);
 		if (!(atomic_read(&mm->membarrier_state) &

