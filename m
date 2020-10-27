Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E598B29ADD0
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 14:49:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1752558AbgJ0Nth (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 09:49:37 -0400
Received: from mx2.suse.de ([195.135.220.15]:48522 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1752555AbgJ0Ntg (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 27 Oct 2020 09:49:36 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1603806574;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=kR4ZMQOdSqWHzwU8uaBkXR+VPOZ2F5SxpZjaQXiCUwA=;
        b=ZpFOBLj/szIPAY0RVlSOnzsYL53xcOqISiLB7jOACsqvaeH7Fm05uL3X3flAx0ZsOriB7w
        IeUsFQEviRwWRnhOkzsWZ7lzHqpwnl6LYX/mpQOOYGd9sXzwPOzJFlmcg7ed6wuFp3gd1W
        FSKOaN7WnaSrxxiYURbwfPjZATkh6hk=
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id B9571AC1D;
        Tue, 27 Oct 2020 13:49:34 +0000 (UTC)
Date:   Tue, 27 Oct 2020 14:49:33 +0100
From:   Michal Hocko <mhocko@suse.com>
To:     Jann Horn <jannh@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>,
        Mark Mossberg <mark.mossberg@gmail.com>
Subject: Re: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
Message-ID: <20201027134933.GU20500@dhcp22.suse.cz>
References: <20201012114940.1317510-1-jannh@google.com>
 <CAG48ez17=x9eHLGR-Uyx3xsVJv3W=4WsTs3HG5Fam5UP=CWXbQ@mail.gmail.com>
 <0a090c14-6b70-4284-bb2d-4fbfd1146aaf@gmail.com>
 <CAG48ez2gigjfi3_nmbyhDnb2bsi9K0Yc24y7HdSNDvtumWGbiw@mail.gmail.com>
 <20201027121816.GS20500@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201027121816.GS20500@dhcp22.suse.cz>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue 27-10-20 13:18:17, Michal Hocko wrote:
> On Tue 27-10-20 11:35:35, Jann Horn wrote:
> > On Tue, Oct 27, 2020 at 8:05 AM Michael Kerrisk (man-pages)
> > <mtk.manpages@gmail.com> wrote:
> > > On 10/12/20 4:52 PM, Jann Horn wrote:
> > > > On Mon, Oct 12, 2020 at 1:49 PM Jann Horn <jannh@google.com> wrote:
> > > >> Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
> > > >> v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
> > > >> the per-mm counters. With a 4K page size, that means that you can end up
> > > >> with the counters off by up to 252KiB per thread.
> > > >
> > > > Actually, as Mark Mossberg pointed out to me off-thread, the counters
> > > > can actually be off by many times more...
> > >
> > > So, does your patch to proc.5 need tweaking, or can I just apply as is?
> > 
> > The "(up to 63 pages per thread)" would have to go, the rest should be correct.
> > 
> > But as Michal said, if someone volunteers to get rid of this
> > optimization, maybe we don't need the documentation after all? But
> > that would probably require actually doing some careful
> > heavily-multithreaded benchmarking on a big machine with a few dozen
> > cores, or something like that, so that we know whether this
> > optimization actually is unimportant enough that we can just get rid
> > of it...
> 
> Well, the original micro optimization didn't really come with some solid
> numbers based on real workloads. Artificial workloads are likely not
> very representative for this case because any potential counters overhead
> normally gets dispersed.
> 
> I think this is the case where the benefit is so unclear that I would
> simply revert the whole thing and try to tune up for a real life
> workloads that actually sees a regression.

And here we go with an RFC. Just from the look at diffstat this looks
interesting. Please not I haven't tested this at all so it is mostly to
show how much code we really need for a historical optimization which is
not really backed by any real data.

I think this is worth it just from the code maintenance point of view.
sync_mm_rss hooks are quite arbitrary to say the least. I also do
remember that some Android folks cared about this because they couldn't
get the data they needed with a sufficient precision.

--- 
 fs/exec.c                     |  2 --
 include/linux/mm.h            | 16 --------------
 include/linux/mm_types_task.h |  9 --------
 include/linux/sched.h         |  3 ---
 kernel/exit.c                 |  4 ----
 kernel/fork.c                 |  4 ----
 kernel/kthread.c              |  1 -
 mm/madvise.c                  |  6 +-----
 mm/memory.c                   | 49 -------------------------------------------
 9 files changed, 1 insertion(+), 93 deletions(-)

diff --git a/fs/exec.c b/fs/exec.c
index a91003e28eaa..a8d8d5578ba3 100644
--- a/fs/exec.c
+++ b/fs/exec.c
@@ -1107,8 +1107,6 @@ static int exec_mmap(struct mm_struct *mm)
 	tsk = current;
 	old_mm = current->mm;
 	exec_mm_release(tsk, old_mm);
-	if (old_mm)
-		sync_mm_rss(old_mm);
 
 	ret = mutex_lock_killable(&tsk->signal->exec_update_mutex);
 	if (ret)
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 16b799a0522c..2a945f044f1a 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -1864,14 +1864,6 @@ static inline unsigned long get_mm_counter(struct mm_struct *mm, int member)
 {
 	long val = atomic_long_read(&mm->rss_stat.count[member]);
 
-#ifdef SPLIT_RSS_COUNTING
-	/*
-	 * counter is updated in asynchronous manner and may go to minus.
-	 * But it's never be expected number for users.
-	 */
-	if (val < 0)
-		val = 0;
-#endif
 	return (unsigned long)val;
 }
 
@@ -1958,14 +1950,6 @@ static inline void setmax_mm_hiwater_rss(unsigned long *maxrss,
 		*maxrss = hiwater_rss;
 }
 
-#if defined(SPLIT_RSS_COUNTING)
-void sync_mm_rss(struct mm_struct *mm);
-#else
-static inline void sync_mm_rss(struct mm_struct *mm)
-{
-}
-#endif
-
 #ifndef CONFIG_ARCH_HAS_PTE_SPECIAL
 static inline int pte_special(pte_t pte)
 {
diff --git a/include/linux/mm_types_task.h b/include/linux/mm_types_task.h
index c1bc6731125c..a00327c663db 100644
--- a/include/linux/mm_types_task.h
+++ b/include/linux/mm_types_task.h
@@ -48,15 +48,6 @@ enum {
 	NR_MM_COUNTERS
 };
 
-#if USE_SPLIT_PTE_PTLOCKS && defined(CONFIG_MMU)
-#define SPLIT_RSS_COUNTING
-/* per-thread cached information, */
-struct task_rss_stat {
-	int events;	/* for synchronization threshold */
-	int count[NR_MM_COUNTERS];
-};
-#endif /* USE_SPLIT_PTE_PTLOCKS */
-
 struct mm_rss_stat {
 	atomic_long_t count[NR_MM_COUNTERS];
 };
diff --git a/include/linux/sched.h b/include/linux/sched.h
index afe01e232935..46fbe466767f 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -751,9 +751,6 @@ struct task_struct {
 	/* Per-thread vma caching: */
 	struct vmacache			vmacache;
 
-#ifdef SPLIT_RSS_COUNTING
-	struct task_rss_stat		rss_stat;
-#endif
 	int				exit_state;
 	int				exit_code;
 	int				exit_signal;
diff --git a/kernel/exit.c b/kernel/exit.c
index 733e80f334e7..ae861b977368 100644
--- a/kernel/exit.c
+++ b/kernel/exit.c
@@ -438,7 +438,6 @@ static void exit_mm(void)
 	exit_mm_release(current, mm);
 	if (!mm)
 		return;
-	sync_mm_rss(mm);
 	/*
 	 * Serialize with any possible pending coredump.
 	 * We must hold mmap_lock around checking core_state
@@ -761,9 +760,6 @@ void __noreturn do_exit(long code)
 
 	exit_signals(tsk);  /* sets PF_EXITING */
 
-	/* sync mm's RSS info before statistics gathering */
-	if (tsk->mm)
-		sync_mm_rss(tsk->mm);
 	acct_update_integrals(tsk);
 	group_dead = atomic_dec_and_test(&tsk->signal->live);
 	if (group_dead) {
diff --git a/kernel/fork.c b/kernel/fork.c
index da8d360fb032..aa4c22e2b51c 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -1983,10 +1983,6 @@ static __latent_entropy struct task_struct *copy_process(
 	p->vtime.state = VTIME_INACTIVE;
 #endif
 
-#if defined(SPLIT_RSS_COUNTING)
-	memset(&p->rss_stat, 0, sizeof(p->rss_stat));
-#endif
-
 	p->default_timer_slack_ns = current->timer_slack_ns;
 
 #ifdef CONFIG_PSI
diff --git a/kernel/kthread.c b/kernel/kthread.c
index 3edaa380dc7b..c421e54dabe7 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -1276,7 +1276,6 @@ void kthread_unuse_mm(struct mm_struct *mm)
 	force_uaccess_end(to_kthread(tsk)->oldfs);
 
 	task_lock(tsk);
-	sync_mm_rss(mm);
 	local_irq_disable();
 	tsk->mm = NULL;
 	/* active_mm is still 'mm' */
diff --git a/mm/madvise.c b/mm/madvise.c
index 0e0d61003fc6..cf779cf9c15c 100644
--- a/mm/madvise.c
+++ b/mm/madvise.c
@@ -680,12 +680,8 @@ static int madvise_free_pte_range(pmd_t *pmd, unsigned long addr,
 		mark_page_lazyfree(page);
 	}
 out:
-	if (nr_swap) {
-		if (current->mm == mm)
-			sync_mm_rss(mm);
-
+	if (nr_swap)
 		add_mm_counter(mm, MM_SWAPENTS, nr_swap);
-	}
 	arch_leave_lazy_mmu_mode();
 	pte_unmap_unlock(orig_pte, ptl);
 	cond_resched();
diff --git a/mm/memory.c b/mm/memory.c
index fcfc4ca36eba..5cef79be41a1 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -162,53 +162,9 @@ void mm_trace_rss_stat(struct mm_struct *mm, int member, long count)
 	trace_rss_stat(mm, member, count);
 }
 
-#if defined(SPLIT_RSS_COUNTING)
-
-void sync_mm_rss(struct mm_struct *mm)
-{
-	int i;
-
-	for (i = 0; i < NR_MM_COUNTERS; i++) {
-		if (current->rss_stat.count[i]) {
-			add_mm_counter(mm, i, current->rss_stat.count[i]);
-			current->rss_stat.count[i] = 0;
-		}
-	}
-	current->rss_stat.events = 0;
-}
-
-static void add_mm_counter_fast(struct mm_struct *mm, int member, int val)
-{
-	struct task_struct *task = current;
-
-	if (likely(task->mm == mm))
-		task->rss_stat.count[member] += val;
-	else
-		add_mm_counter(mm, member, val);
-}
-#define inc_mm_counter_fast(mm, member) add_mm_counter_fast(mm, member, 1)
-#define dec_mm_counter_fast(mm, member) add_mm_counter_fast(mm, member, -1)
-
-/* sync counter once per 64 page faults */
-#define TASK_RSS_EVENTS_THRESH	(64)
-static void check_sync_rss_stat(struct task_struct *task)
-{
-	if (unlikely(task != current))
-		return;
-	if (unlikely(task->rss_stat.events++ > TASK_RSS_EVENTS_THRESH))
-		sync_mm_rss(task->mm);
-}
-#else /* SPLIT_RSS_COUNTING */
-
 #define inc_mm_counter_fast(mm, member) inc_mm_counter(mm, member)
 #define dec_mm_counter_fast(mm, member) dec_mm_counter(mm, member)
 
-static void check_sync_rss_stat(struct task_struct *task)
-{
-}
-
-#endif /* SPLIT_RSS_COUNTING */
-
 /*
  * Note: this doesn't free the actual pages themselves. That
  * has been handled earlier when unmapping all the memory regions.
@@ -485,8 +441,6 @@ static inline void add_mm_rss_vec(struct mm_struct *mm, int *rss)
 {
 	int i;
 
-	if (current->mm == mm)
-		sync_mm_rss(mm);
 	for (i = 0; i < NR_MM_COUNTERS; i++)
 		if (rss[i])
 			add_mm_counter(mm, i, rss[i]);
@@ -4612,9 +4566,6 @@ vm_fault_t handle_mm_fault(struct vm_area_struct *vma, unsigned long address,
 	count_vm_event(PGFAULT);
 	count_memcg_event_mm(vma->vm_mm, PGFAULT);
 
-	/* do counter updates before entering really critical section. */
-	check_sync_rss_stat(current);
-
 	if (!arch_vma_access_permitted(vma, flags & FAULT_FLAG_WRITE,
 					    flags & FAULT_FLAG_INSTRUCTION,
 					    flags & FAULT_FLAG_REMOTE))
-- 
Michal Hocko
SUSE Labs
