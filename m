Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1AF11F5F93
	for <lists+linux-man@lfdr.de>; Thu, 11 Jun 2020 03:42:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726396AbgFKBmR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Jun 2020 21:42:17 -0400
Received: from mail.kernel.org ([198.145.29.99]:51014 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726163AbgFKBmR (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 10 Jun 2020 21:42:17 -0400
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 71E1E207ED;
        Thu, 11 Jun 2020 01:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1591839735;
        bh=Ht+3bLbETTrK2W5rdNlzKSBsPif2lyhZaIZhNpPTkE4=;
        h=Date:From:To:Subject:In-Reply-To:From;
        b=gNuFr64yLnd/sgZvscU5u1m/EusELFrKRoFSi5ciGAiYVm0e92H0H+znm+/4lS//d
         eb7rCXnvZ0m9NX6x0pfxo//9VG9adRC9SEPs8cVZfwabkP+TJJrqhbw/h6wuOgxa6l
         UY9098kYlh0dJLw/gwslYpAxc+m9bXdExTot1Iuo=
Date:   Wed, 10 Jun 2020 18:42:14 -0700
From:   Andrew Morton <akpm@linux-foundation.org>
To:     akpm@linux-foundation.org, alexander.h.duyck@linux.intel.com,
        axboe@kernel.dk, bgeffon@google.com, christian.brauner@ubuntu.com,
        christian@brauner.io, dancol@google.com, hannes@cmpxchg.org,
        jannh@google.com, joaodias@google.com, joel@joelfernandes.org,
        ktkhai@virtuozzo.com, linux-man@vger.kernel.org,
        linux-mm@kvack.org, mhocko@suse.com, minchan@kernel.org,
        mm-commits@vger.kernel.org, oleksandr@redhat.com,
        shakeelb@google.com, sj38.park@gmail.com, sjpark@amazon.de,
        sonnyrao@google.com, sspatil@google.com, surenb@google.com,
        timmurray@google.com, torvalds@linux-foundation.org, vbabka@suse.cz
Subject:  [patch 17/25] mm/madvise: pass task and mm to do_madvise
Message-ID: <20200611014214.oyKel0pkk%akpm@linux-foundation.org>
In-Reply-To: <20200610184053.3fa7368ab80e23bfd44de71f@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Minchan Kim <minchan@kernel.org>
Subject: mm/madvise: pass task and mm to do_madvise

Patch series "introduce memory hinting API for external process", v7.

Now, we have MADV_PAGEOUT and MADV_COLD as madvise hinting API.  With
that, application could give hints to kernel what memory range are
preferred to be reclaimed.  However, in some platform(e.g., Android), the
information required to make the hinting decision is not known to the app.
Instead, it is known to a centralized userspace daemon(e.g.,
ActivityManagerService), and that daemon must be able to initiate reclaim
on its own without any app involvement.

To solve the concern, this patch introduces new syscall -
process_madvise(2).  Bascially, it's same with madvise(2) syscall but it
has some differences.

1. It needs pidfd of target process to provide the hint

2.  It supports only MADV_{COLD|PAGEOUT|MERGEABLE|UNMEREABLE} at this
   moment.  Other hints in madvise will be opened when there are explicit
   requests from community to prevent unexpected bugs we couldn't support.

3.  Only privileged processes can do something for other process's
   address space.

For more detail of the new API, please see "mm: introduce external memory
hinting API" description in this patchset.


This patch (of 7):

In upcoming patches, do_madvise will be called from external process
context so we shouldn't asssume "current" is always hinted process's
task_struct.

Furthermore, we must not access mm_struct via task->mm, but obtain it
via access_mm() once (in the following patch) and only use that pointer
[1], so pass it to do_madvise() as well.  Note the vma->vm_mm pointers
are safe, so we can use them further down the call stack.

And let's pass *current* and current->mm as arguments of do_madvise so
it shouldn't change existing behavior but prepare next patch to make
review easy.

Note: io_madvise passes NULL as target_task argument of do_madvise because
it couldn't know who is target.

[1] http://lore.kernel.org/r/CAG48ez27=pwm5m_N_988xT1huO7g7h6arTQL44zev6TD-h-7Tg@mail.gmail.com

[vbabka@suse.cz: changelog tweak]
[minchan@kernel.org: use current->mm for io_uring]
  Link: http://lkml.kernel.org/r/20200423145215.72666-1-minchan@kernel.org
[akpm@linux-foundation.org: fix it for upstream changes]
[akpm@linux-foundation.org: whoops]
[rdunlap@infradead.org: add missing includes]
Link: http://lkml.kernel.org/r/20200302193630.68771-2-minchan@kernel.org
Signed-off-by: Minchan Kim <minchan@kernel.org>
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Jann Horn <jannh@google.com>
Cc: Tim Murray <timmurray@google.com>
Cc: Daniel Colascione <dancol@google.com>
Cc: Sandeep Patil <sspatil@google.com>
Cc: Sonny Rao <sonnyrao@google.com>
Cc: Brian Geffon <bgeffon@google.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Cc: Shakeel Butt <shakeelb@google.com>
Cc: John Dias <joaodias@google.com>
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Cc: SeongJae Park <sj38.park@gmail.com>
Cc: Christian Brauner <christian@brauner.io>
Cc: Kirill Tkhai <ktkhai@virtuozzo.com>
Cc: Oleksandr Natalenko <oleksandr@redhat.com>
Cc: SeongJae Park <sjpark@amazon.de>
Cc: Christian Brauner <christian.brauner@ubuntu.com>
Cc: <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 fs/io_uring.c      |    2 +-
 include/linux/mm.h |    3 ++-
 mm/madvise.c       |   40 +++++++++++++++++++++++-----------------
 3 files changed, 26 insertions(+), 19 deletions(-)

--- a/fs/io_uring.c~mm-pass-task-and-mm-to-do_madvise
+++ a/fs/io_uring.c
@@ -3321,7 +3321,7 @@ static int io_madvise(struct io_kiocb *r
 	if (force_nonblock)
 		return -EAGAIN;
 
-	ret = do_madvise(ma->addr, ma->len, ma->advice);
+	ret = do_madvise(NULL, current->mm, ma->addr, ma->len, ma->advice);
 	if (ret < 0)
 		req_set_fail_links(req);
 	io_cqring_add_event(req, ret);
--- a/include/linux/mm.h~mm-pass-task-and-mm-to-do_madvise
+++ a/include/linux/mm.h
@@ -2585,7 +2585,8 @@ extern int __do_munmap(struct mm_struct
 		       struct list_head *uf, bool downgrade);
 extern int do_munmap(struct mm_struct *, unsigned long, size_t,
 		     struct list_head *uf);
-extern int do_madvise(unsigned long start, size_t len_in, int behavior);
+extern int do_madvise(struct task_struct *target_task, struct mm_struct *mm,
+		unsigned long start, size_t len_in, int behavior);
 
 static inline unsigned long
 do_mmap_pgoff(struct file *file, unsigned long addr,
--- a/mm/madvise.c~mm-pass-task-and-mm-to-do_madvise
+++ a/mm/madvise.c
@@ -22,12 +22,14 @@
 #include <linux/file.h>
 #include <linux/blkdev.h>
 #include <linux/backing-dev.h>
+#include <linux/compat.h>
 #include <linux/pagewalk.h>
 #include <linux/swap.h>
 #include <linux/swapops.h>
 #include <linux/shmem_fs.h>
 #include <linux/mmu_notifier.h>
 #include <linux/sched/mm.h>
+#include <linux/uio.h>
 
 #include <asm/tlb.h>
 
@@ -255,6 +257,7 @@ static long madvise_willneed(struct vm_a
 			     struct vm_area_struct **prev,
 			     unsigned long start, unsigned long end)
 {
+	struct mm_struct *mm = vma->vm_mm;
 	struct file *file = vma->vm_file;
 	loff_t offset;
 
@@ -289,12 +292,12 @@ static long madvise_willneed(struct vm_a
 	 */
 	*prev = NULL;	/* tell sys_madvise we drop mmap_lock */
 	get_file(file);
-	mmap_read_unlock(current->mm);
+	mmap_read_unlock(mm);
 	offset = (loff_t)(start - vma->vm_start)
 			+ ((loff_t)vma->vm_pgoff << PAGE_SHIFT);
 	vfs_fadvise(file, offset, end - start, POSIX_FADV_WILLNEED);
 	fput(file);
-	mmap_read_lock(current->mm);
+	mmap_read_lock(mm);
 	return 0;
 }
 
@@ -683,7 +686,6 @@ out:
 	if (nr_swap) {
 		if (current->mm == mm)
 			sync_mm_rss(mm);
-
 		add_mm_counter(mm, MM_SWAPENTS, nr_swap);
 	}
 	arch_leave_lazy_mmu_mode();
@@ -763,6 +765,8 @@ static long madvise_dontneed_free(struct
 				  unsigned long start, unsigned long end,
 				  int behavior)
 {
+	struct mm_struct *mm = vma->vm_mm;
+
 	*prev = vma;
 	if (!can_madv_lru_vma(vma))
 		return -EINVAL;
@@ -770,8 +774,8 @@ static long madvise_dontneed_free(struct
 	if (!userfaultfd_remove(vma, start, end)) {
 		*prev = NULL; /* mmap_lock has been dropped, prev is stale */
 
-		mmap_read_lock(current->mm);
-		vma = find_vma(current->mm, start);
+		mmap_read_lock(mm);
+		vma = find_vma(mm, start);
 		if (!vma)
 			return -ENOMEM;
 		if (start < vma->vm_start) {
@@ -825,6 +829,7 @@ static long madvise_remove(struct vm_are
 	loff_t offset;
 	int error;
 	struct file *f;
+	struct mm_struct *mm = vma->vm_mm;
 
 	*prev = NULL;	/* tell sys_madvise we drop mmap_lock */
 
@@ -852,13 +857,13 @@ static long madvise_remove(struct vm_are
 	get_file(f);
 	if (userfaultfd_remove(vma, start, end)) {
 		/* mmap_lock was not released by userfaultfd_remove() */
-		mmap_read_unlock(current->mm);
+		mmap_read_unlock(mm);
 	}
 	error = vfs_fallocate(f,
 				FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
 				offset, end - start);
 	fput(f);
-	mmap_read_lock(current->mm);
+	mmap_read_lock(mm);
 	return error;
 }
 
@@ -1051,7 +1056,8 @@ madvise_behavior_valid(int behavior)
  *  -EBADF  - map exists, but area maps something that isn't a file.
  *  -EAGAIN - a kernel resource was temporarily unavailable.
  */
-int do_madvise(unsigned long start, size_t len_in, int behavior)
+int do_madvise(struct task_struct *target_task, struct mm_struct *mm,
+		unsigned long start, size_t len_in, int behavior)
 {
 	unsigned long end, tmp;
 	struct vm_area_struct *vma, *prev;
@@ -1089,7 +1095,7 @@ int do_madvise(unsigned long start, size
 
 	write = madvise_need_mmap_write(behavior);
 	if (write) {
-		if (mmap_write_lock_killable(current->mm))
+		if (mmap_write_lock_killable(mm))
 			return -EINTR;
 
 		/*
@@ -1104,12 +1110,12 @@ int do_madvise(unsigned long start, size
 		 * but for now we have the mmget_still_valid()
 		 * model.
 		 */
-		if (!mmget_still_valid(current->mm)) {
-			mmap_write_unlock(current->mm);
+		if (!mmget_still_valid(mm)) {
+			mmap_write_unlock(mm);
 			return -EINTR;
 		}
 	} else {
-		mmap_read_lock(current->mm);
+		mmap_read_lock(mm);
 	}
 
 	/*
@@ -1117,7 +1123,7 @@ int do_madvise(unsigned long start, size
 	 * ranges, just ignore them, but return -ENOMEM at the end.
 	 * - different from the way of handling in mlock etc.
 	 */
-	vma = find_vma_prev(current->mm, start, &prev);
+	vma = find_vma_prev(mm, start, &prev);
 	if (vma && start > vma->vm_start)
 		prev = vma;
 
@@ -1154,19 +1160,19 @@ int do_madvise(unsigned long start, size
 		if (prev)
 			vma = prev->vm_next;
 		else	/* madvise_remove dropped mmap_lock */
-			vma = find_vma(current->mm, start);
+			vma = find_vma(mm, start);
 	}
 out:
 	blk_finish_plug(&plug);
 	if (write)
-		mmap_write_unlock(current->mm);
+		mmap_write_unlock(mm);
 	else
-		mmap_read_unlock(current->mm);
+		mmap_read_unlock(mm);
 
 	return error;
 }
 
 SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
 {
-	return do_madvise(start, len_in, behavior);
+	return do_madvise(current, current->mm, start, len_in, behavior);
 }
_
