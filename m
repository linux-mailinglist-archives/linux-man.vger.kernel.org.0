Return-Path: <linux-man+bounces-5435-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNZmAk1H8WkcfgEAu9opvQ
	(envelope-from <linux-man+bounces-5435-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:48:29 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 827C648D7CB
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 01:48:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B86530D0E84
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2026 23:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB223F2101;
	Tue, 28 Apr 2026 23:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNcS27dq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFDB3F0755;
	Tue, 28 Apr 2026 23:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777419238; cv=none; b=lTE+IjOMDyYvODIXZY97HlYJc1g//KIqAwRv7sqM18dipJWOdDWU7GW0tD3RWPuzzXPv5wtYvBrn+C2mKzDbY9B3VKpwJe8poew5VyHuBskUyHvuo1823gI33l5X6NWYcbBeDYz6sh5T1EKqRrUvW51+SwQyNpau4LGCc/Yx9fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777419238; c=relaxed/simple;
	bh=DxGjH4TLyjWnbNss3J378kObrddEFdb4ue9MyBQ3Kzw=;
	h=Date:Message-ID:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type; b=B6XCNOKt7b+Rm7LUwwBVfJxXsDgIkSH8aDiuLn6LXH7+JHOkzHImP3mMJhT0FsR/aAcdTezAg0pCvDLXZcKQw1jEA0Grtjz0X1gYRfsykxmdLQL+HpAUb1A+hlvPRsfPYsM9E5q+98pnPjcL3vUuAYXaBfz1j+MBhtyp5HZU0yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNcS27dq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71C43C2BCAF;
	Tue, 28 Apr 2026 23:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777419237;
	bh=DxGjH4TLyjWnbNss3J378kObrddEFdb4ue9MyBQ3Kzw=;
	h=Date:From:To:Cc:Subject:References:From;
	b=kNcS27dq3m6eU1jsirtDl9fSmX6e/oTqSQiXQYnyjlgDhCQB6HpUq2/ATm30RLh2I
	 FOFBtq3O6BB7Qfkw0+zU9VBe/Lr4gIxHIER3AtvP82mZgLD233kieXHBcNUohLF6E2
	 U7nWtUHUJBMLEeKlQgsw2ht0018YVdwLGmEBpxaAQWHqbha5h60Xi5HlRFeocppYJf
	 k52xIHKj3D1YGZeo9EWb9WQbdvWl8Z0qW/YvY4nuVMoPkS2BIkD0oCaKX3WXVKt0AQ
	 qIKEFm2mRIgN+r9NMLfuV5TwDVKW3U8fAsGwkmSp+J659BInhOVDJFNsazBDrL+ilq
	 bgHx+Rfh1thtQ==
Date: Wed, 29 Apr 2026 01:33:54 +0200
Message-ID: <20260428224427.517051752@kernel.org>
User-Agent: quilt/0.68
From: Thomas Gleixner <tglx@kernel.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Mathias Stearn <mathias@mongodb.com>,
 Dmitry Vyukov <dvyukov@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 linux-man@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Chris Kennelly <ckennelly@google.com>,
 regressions@lists.linux.dev,
 Ingo Molnar <mingo@kernel.org>,
 Blake Oler <blake.oler@mongodb.com>,
 Florian Weimer <fweimer@redhat.com>,
 Rich Felker <dalias@libc.org>,
 Matthew Wilcox <willy@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>
Subject: [patch 04/10] rseq: Revert to historical performance killing
 behaviour
References: <20260428221058.149538293@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Rspamd-Queue-Id: 827C648D7CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5435-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mongodb.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

The recent RSEQ optimization work broke the TCMalloc abuse of the RSEQ ABI
as it not longer unconditionally updates the CPU, node, mm_cid fields,
which are documented as read only for user space. Due to the observed
behavior of the kernel it was possible for TCMalloc to overwrite the
cpu_id_start field for their own purposes and rely on the kernel to update
it unconditionally after each context switch and before signal delivery.

The RSEQ ABI only guarantees that these fields are updated when the data
changes, i.e. the task is migrated or the MMCID of the task changes due to
switching from or to per CPU ownership mode.

The optimization work eliminated the unconditional updates and reduced them
to the documented ABI guarantees, which results in a massive performance
win for syscall, scheduling heavy work loads, which in turn breaks the
TCMalloc expectations.

There have been several options discussed to restore the TCMalloc
functionality while preserving the optimization benefits. They all end up
in a series of hard to maintain workarounds, which in the worst case
introduce overhead for everyone, e.g. in the scheduler.

The requirements of TCMalloc and the optimization work are diametral and
the required work arounds are a maintainence burden. They end up as fragile
constructs, which are blocking further optimization work and are pretty
much guaranteed to cause more subtle issues down the road.

The optimization work heavily depends on the generic entry code, which is
not used by all architectures yet. So the rework preserved the original
mechanism moslty unmodified to keep the support for architectures, which
handle rseq in their own exit to user space loop. That code is currently
optimized out by the compiler on architectures which use the generic entry
code.

This allows to revert back to the original behaviour by replacing the
compile time constant conditions with a runtime condition where required,
which disables the optimization and the dependend time slice extension
feature until the run-time condition can be enabled in the RSEQ
registration code on a per task basis again.

The following changes are required to restore the original behavior, which
makes TCMalloc work again:

  1) Replace the compile time constant conditionals with runtime
     conditionals where appropriate to prevent the compiler from optimizing
     the legacy mode out

  2) Enforce unconditional update of IDs on context switch for the
     non-optimized v1 mode

  3) Enforce update of IDs in the pre signal delivery path for the
     non-optimized v1 mode

  4) Enforce update of IDs in the membarrier(RSEQ) IPI for the
     non-optimized v1 mode

  5) Make time slice and future extensions depend on optimized v2 mode

This brings back the full performance problems, but preserves the v2
optimization code and for generic entry code using architectures also the
TIF_RSEQ optimization which avoids a full evaluation of the exit to user
mode loop in many cases.

Fixes: 566d8015f7ee ("rseq: Avoid CPU/MM CID updates when no event pending")
Reported-by: Mathias Stearn <mathias@mongodb.com>
Signed-off-by: Thomas Gleixner <tglx@kernel.org>
Cc: stable@vger.kernel.org
Closes: https://lore.kernel.org/CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com
---
 include/linux/rseq.h       |   34 +++++++++++++++++++++++-----------
 include/linux/rseq_entry.h |   39 +++++++++++++++++++++++++++++----------
 include/linux/rseq_types.h |    9 ++++++++-
 kernel/rseq.c              |   42 ++++++++++++++++++++++++++++++++++--------
 kernel/sched/membarrier.c  |   11 ++++++++++-
 5 files changed, 104 insertions(+), 31 deletions(-)

--- a/include/linux/rseq.h
+++ b/include/linux/rseq.h
@@ -9,6 +9,11 @@
 
 void __rseq_handle_slowpath(struct pt_regs *regs);
 
+static __always_inline bool rseq_v2(struct task_struct *t)
+{
+	return IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY) && likely(t->rseq.event.has_rseq > 1);
+}
+
 /* Invoked from resume_user_mode_work() */
 static inline void rseq_handle_slowpath(struct pt_regs *regs)
 {
@@ -16,8 +21,7 @@ static inline void rseq_handle_slowpath(
 		if (current->rseq.event.slowpath)
 			__rseq_handle_slowpath(regs);
 	} else {
-		/* '&' is intentional to spare one conditional branch */
-		if (current->rseq.event.sched_switch & current->rseq.event.has_rseq)
+		if (current->rseq.event.sched_switch && current->rseq.event.has_rseq)
 			__rseq_handle_slowpath(regs);
 	}
 }
@@ -30,9 +34,9 @@ void __rseq_signal_deliver(int sig, stru
  */
 static inline void rseq_signal_deliver(struct ksignal *ksig, struct pt_regs *regs)
 {
-	if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY)) {
-		/* '&' is intentional to spare one conditional branch */
-		if (current->rseq.event.has_rseq & current->rseq.event.user_irq)
+	if (rseq_v2(current)) {
+		/* has_rseq is implied in rseq_v2() */
+		if (current->rseq.event.user_irq)
 			__rseq_signal_deliver(ksig->sig, regs);
 	} else {
 		if (current->rseq.event.has_rseq)
@@ -50,15 +54,22 @@ static __always_inline void rseq_sched_s
 {
 	struct rseq_event *ev = &t->rseq.event;
 
-	if (IS_ENABLED(CONFIG_GENERIC_IRQ_ENTRY)) {
+	/*
+	 * Only apply the user_irq optimization for RSEQ ABI V2 registrations.
+	 * Legacy users like TCMalloc rely on the original ABI V1 behaviour
+	 * which updates IDs on every context swtich.
+	 */
+	if (rseq_v2(t)) {
 		/*
-		 * Avoid a boat load of conditionals by using simple logic
-		 * to determine whether NOTIFY_RESUME needs to be raised.
+		 * Avoid a boat load of conditionals by using simple logic to
+		 * determine whether TIF_NOTIFY_RESUME or TIF_RSEQ needs to be
+		 * raised.
 		 *
-		 * It's required when the CPU or MM CID has changed or
-		 * the entry was from user space.
+		 * It's required when the CPU or MM CID has changed or the entry
+		 * was via interrupt from user space. ev->has_rseq does not have
+		 * to be evaluated here because rseq_v2() implies has_rseq.
 		 */
-		bool raise = (ev->user_irq | ev->ids_changed) & ev->has_rseq;
+		bool raise = ev->user_irq | ev->ids_changed;
 
 		if (raise) {
 			ev->sched_switch = true;
@@ -66,6 +77,7 @@ static __always_inline void rseq_sched_s
 		}
 	} else {
 		if (ev->has_rseq) {
+			t->rseq.event.ids_changed = true;
 			t->rseq.event.sched_switch = true;
 			rseq_raise_notify_resume(t);
 		}
--- a/include/linux/rseq_entry.h
+++ b/include/linux/rseq_entry.h
@@ -111,6 +111,20 @@ static __always_inline void rseq_slice_c
 	t->rseq.slice.state.granted = false;
 }
 
+/*
+ * Open coded, so it can be invoked within a user access region.
+ *
+ * This clears the user space state of the time slice extensions field only when
+ * the task has registered the optimized RSEQ_ABI V2. Some legacy registrations,
+ * e.g. TCMalloc, have conflicting non-ABI fields in struct RSEQ, which would be
+ * overwritten by an unconditional write.
+ */
+#define rseq_slice_clear_user(rseq, efault)				\
+do {									\
+	if (rseq_slice_extension_enabled())				\
+		unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);	\
+} while (0)
+
 static __always_inline bool __rseq_grant_slice_extension(bool work_pending)
 {
 	struct task_struct *curr = current;
@@ -230,6 +244,7 @@ static __always_inline bool rseq_slice_e
 static __always_inline bool rseq_arm_slice_extension_timer(void) { return false; }
 static __always_inline void rseq_slice_clear_grant(struct task_struct *t) { }
 static __always_inline bool rseq_grant_slice_extension(unsigned long ti_work, unsigned long mask) { return false; }
+#define rseq_slice_clear_user(rseq, efault) do { } while (0)
 #endif /* !CONFIG_RSEQ_SLICE_EXTENSION */
 
 bool rseq_debug_update_user_cs(struct task_struct *t, struct pt_regs *regs, unsigned long csaddr);
@@ -517,11 +532,9 @@ bool rseq_set_ids_get_csaddr(struct task
 		if (csaddr)
 			unsafe_get_user(*csaddr, &rseq->rseq_cs, efault);
 
-		/* Open coded, so it's in the same user access region */
-		if (rseq_slice_extension_enabled()) {
-			/* Unconditionally clear it, no point in conditionals */
-			unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);
-		}
+		/* RSEQ ABI V2 only operations */
+		if (rseq_v2(t))
+			rseq_slice_clear_user(rseq, efault);
 	}
 
 	rseq_slice_clear_grant(t);
@@ -612,6 +625,14 @@ static __always_inline bool rseq_exit_us
 	 * interrupts disabled
 	 */
 	guard(pagefault)();
+	/*
+	 * This optimization is only valid when the task registered for the
+	 * optimized RSEQ_ABI_V2 variant. Some legacy users rely on the original
+	 * RSEQ implementation behaviour which unconditionally updated the IDs.
+	 * rseq_sched_switch_event() ensures that legacy registrations always
+	 * have both sched_switch and ids_changed set, which is compatible with
+	 * the historical TIF_NOTIFY_RESUME behaviour.
+	 */
 	if (likely(!t->rseq.event.ids_changed)) {
 		struct rseq __user *rseq = t->rseq.usrptr;
 		/*
@@ -623,11 +644,9 @@ static __always_inline bool rseq_exit_us
 		scoped_user_rw_access(rseq, efault) {
 			unsafe_get_user(csaddr, &rseq->rseq_cs, efault);
 
-			/* Open coded, so it's in the same user access region */
-			if (rseq_slice_extension_enabled()) {
-				/* Unconditionally clear it, no point in conditionals */
-				unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);
-			}
+			/* RSEQ ABI V2 only operations */
+			if (rseq_v2(t))
+				rseq_slice_clear_user(rseq, efault);
 		}
 
 		rseq_slice_clear_grant(t);
--- a/include/linux/rseq_types.h
+++ b/include/linux/rseq_types.h
@@ -9,6 +9,12 @@
 #ifdef CONFIG_RSEQ
 struct rseq;
 
+/*
+ * rseq_event::has_rseq contains the ABI version number so preserving it
+ * in AND operations requires a mask.
+ */
+#define RSEQ_HAS_RSEQ_VERSION_MASK	0xff
+
 /**
  * struct rseq_event - Storage for rseq related event management
  * @all:		Compound to initialize and clear the data efficiently
@@ -17,7 +23,8 @@ struct rseq;
  *			exit to user
  * @ids_changed:	Indicator that IDs need to be updated
  * @user_irq:		True on interrupt entry from user mode
- * @has_rseq:		True if the task has a rseq pointer installed
+ * @has_rseq:		Greater than 0 if the task has a rseq pointer installed.
+ *			Contains the RSEQ version number
  * @error:		Compound error code for the slow path to analyze
  * @fatal:		User space data corrupted or invalid
  * @slowpath:		Indicator that slow path processing via TIF_NOTIFY_RESUME
--- a/kernel/rseq.c
+++ b/kernel/rseq.c
@@ -253,11 +253,14 @@ static bool rseq_handle_cs(struct task_s
 static void rseq_slowpath_update_usr(struct pt_regs *regs)
 {
 	/*
-	 * Preserve rseq state and user_irq state. The generic entry code
-	 * clears user_irq on the way out, the non-generic entry
-	 * architectures are not having user_irq.
-	 */
-	const struct rseq_event evt_mask = { .has_rseq = true, .user_irq = true, };
+	 * Preserve has_rseq and user_irq state. The generic entry code clears
+	 * user_irq on the way out, the non-generic entry architectures are not
+	 * setting user_irq.
+	 */
+	const struct rseq_event evt_mask = {
+		.has_rseq	= RSEQ_HAS_RSEQ_VERSION_MASK,
+		.user_irq	= true,
+	};
 	struct task_struct *t = current;
 	struct rseq_ids ids;
 	u32 node_id;
@@ -330,8 +333,9 @@ void __rseq_handle_slowpath(struct pt_re
 void __rseq_signal_deliver(int sig, struct pt_regs *regs)
 {
 	rseq_stat_inc(rseq_stats.signal);
+
 	/*
-	 * Don't update IDs, they are handled on exit to user if
+	 * Don't update IDs yet, they are handled on exit to user if
 	 * necessary. The important thing is to abort a critical section of
 	 * the interrupted context as after this point the instruction
 	 * pointer in @regs points to the signal handler.
@@ -344,6 +348,13 @@ void __rseq_signal_deliver(int sig, stru
 		current->rseq.event.error = 0;
 		force_sigsegv(sig);
 	}
+
+	/*
+	 * In legacy mode, force the update of IDs before returning to user
+	 * space to stay compatible.
+	 */
+	if (!rseq_v2(current))
+		rseq_force_update();
 }
 
 /*
@@ -408,6 +419,7 @@ static bool rseq_reset_ids(void)
 SYSCALL_DEFINE4(rseq, struct rseq __user *, rseq, u32, rseq_len, int, flags, u32, sig)
 {
 	u32 rseqfl = 0;
+	u8 version = 1;
 
 	if (flags & RSEQ_FLAG_UNREGISTER) {
 		if (flags & ~RSEQ_FLAG_UNREGISTER)
@@ -461,7 +473,11 @@ SYSCALL_DEFINE4(rseq, struct rseq __user
 	if (!access_ok(rseq, rseq_len))
 		return -EFAULT;
 
-	if (IS_ENABLED(CONFIG_RSEQ_SLICE_EXTENSION)) {
+	/*
+	 * The version check effectivly disables time slice extensions until the
+	 * RSEQ ABI V2 registration are implemented.
+	 */
+	if (IS_ENABLED(CONFIG_RSEQ_SLICE_EXTENSION) && version > 1) {
 		if (rseq_slice_extension_enabled()) {
 			rseqfl |= RSEQ_CS_FLAG_SLICE_EXT_AVAILABLE;
 			if (flags & RSEQ_FLAG_SLICE_EXT_DEFAULT_ON)
@@ -484,7 +500,15 @@ SYSCALL_DEFINE4(rseq, struct rseq __user
 		unsafe_put_user(RSEQ_CPU_ID_UNINITIALIZED, &rseq->cpu_id, efault);
 		unsafe_put_user(0U, &rseq->node_id, efault);
 		unsafe_put_user(0U, &rseq->mm_cid, efault);
-		unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);
+
+		/*
+		 * All fields past mm_cid are only valid for non-legacy v2
+		 * registrations.
+		 */
+		if (version > 1) {
+			if (IS_ENABLED(CONFIG_RSEQ_SLICE_EXTENSION))
+				unsafe_put_user(0U, &rseq->slice_ctrl.all, efault);
+		}
 	}
 
 	/*
@@ -712,6 +736,8 @@ int rseq_slice_extension_prctl(unsigned
 			return -ENOTSUPP;
 		if (!current->rseq.usrptr)
 			return -ENXIO;
+		if (!rseq_v2(current))
+			return -ENOTSUPP;
 
 		/* No change? */
 		if (enable == !!current->rseq.slice.state.enabled)
--- a/kernel/sched/membarrier.c
+++ b/kernel/sched/membarrier.c
@@ -199,7 +199,16 @@ static void ipi_rseq(void *info)
 	 * is negligible.
 	 */
 	smp_mb();
-	rseq_sched_switch_event(current);
+	/*
+	 * Legacy mode requires that IDs are written and the critical section is
+	 * evaluated. V2 optimized mode handles the critical section and IDs are
+	 * only updated if they change as a consequence of preemption after
+	 * return from this IPI.
+	 */
+	if (rseq_v2(current))
+		rseq_sched_switch_event(current);
+	else
+		rseq_force_update();
 }
 
 static void ipi_sync_rq_state(void *info)


