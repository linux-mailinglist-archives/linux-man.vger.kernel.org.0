Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C24401765B8
	for <lists+linux-man@lfdr.de>; Mon,  2 Mar 2020 22:16:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726816AbgCBVQ3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Mar 2020 16:16:29 -0500
Received: from mail.kernel.org ([198.145.29.99]:52370 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726536AbgCBVQ3 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 2 Mar 2020 16:16:29 -0500
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4C98622B48;
        Mon,  2 Mar 2020 21:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1583183788;
        bh=ATQYbzdrzybmc+EDv/l56wo0oYoOkmAaxTt4CJuqBkY=;
        h=Date:From:To:Subject:From;
        b=fUImivYeNINU9P4+wrCW9gLa/noUVlRHSBFtvSJFyt+9PXVyzr5Ix2QK/tjhjjBe0
         j/1B7O46gLvvIcjgMm6fcVcDxaboQDB5+Hmd1Rlu68LROIz7oSI3jO5YwHhEdnkH+8
         J6gRKP3Vwsv0bUIG3XdM8YlYCZ3mJuBUMfZ5msB8=
Date:   Mon, 02 Mar 2020 13:16:26 -0800
From:   akpm@linux-foundation.org
To:     alexander.h.duyck@linux.intel.com, axboe@kernel.dk,
        bgeffon@google.com, christian@brauner.io, dancol@google.com,
        hannes@cmpxchg.org, jannh@google.com, joaodias@google.com,
        joel@joelfernandes.org, ktkhai@virtuozzo.com,
        linux-man@vger.kernel.org, mhocko@suse.com, minchan@kernel.org,
        mm-commits@vger.kernel.org, oleksandr@redhat.com,
        shakeelb@google.com, sj38.park@gmail.com, sjpark@amazon.de,
        sonnyrao@google.com, sspatil@google.com, surenb@google.com,
        timmurray@google.com
Subject:  + mm-pass-task-and-mm-to-do_madvise.patch added to -mm
 tree
Message-ID: <20200302211626.tkkNTHVFC%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/madvise: pass task and mm to do_madvise
has been added to the -mm tree.  Its filename is
     mm-pass-task-and-mm-to-do_madvise.patch

This patch should soon appear at
    http://ozlabs.org/~akpm/mmots/broken-out/mm-pass-task-and-mm-to-do_madvise.patch
and later at
    http://ozlabs.org/~akpm/mmotm/broken-out/mm-pass-task-and-mm-to-do_madvise.patch

Before you just go and hit "reply", please:
   a) Consider who else should be cc'ed
   b) Prefer to cc a suitable mailing list as well
   c) Ideally: find the original patch on the mailing list and do a
      reply-to-all to that, adding suitable additional cc's

*** Remember to use Documentation/process/submit-checklist.rst when testing your code ***

The -mm tree is included into linux-next and is updated
there every 3-4 working days

------------------------------------------------------
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
task_struct.  Furthermore, we couldn't access mm_struct via task->mm once
it's verified by access_mm which will be introduced in next patch[1].  And
let's pass *current* and current->mm as arguments of do_madvise so it
shouldn't change existing behavior but prepare next patch to make review
easy.

Note: io_madvise pass NULL as target_task argument of do_madvise because
it couldn't know who is target.

[1] http://lore.kernel.org/r/CAG48ez27=pwm5m_N_988xT1huO7g7h6arTQL44zev6TD-h-7Tg@mail.gmail.com

Link: http://lkml.kernel.org/r/20200302193630.68771-2-minchan@kernel.org
Signed-off-by: Minchan Kim <minchan@kernel.org>
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
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
Cc: <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 fs/io_uring.c      |    2 +-
 include/linux/mm.h |    3 ++-
 mm/madvise.c       |   34 +++++++++++++++++++---------------
 3 files changed, 22 insertions(+), 17 deletions(-)

--- a/fs/io_uring.c~mm-pass-task-and-mm-to-do_madvise
+++ a/fs/io_uring.c
@@ -2735,7 +2735,7 @@ static int io_madvise(struct io_kiocb *r
 	if (force_nonblock)
 		return -EAGAIN;
 
-	ret = do_madvise(ma->addr, ma->len, ma->advice);
+	ret = do_madvise(NULL, req->work.mm, ma->addr, ma->len, ma->advice);
 	if (ret < 0)
 		req_set_fail_links(req);
 	io_cqring_add_event(req, ret);
--- a/include/linux/mm.h~mm-pass-task-and-mm-to-do_madvise
+++ a/include/linux/mm.h
@@ -2433,7 +2433,8 @@ extern int __do_munmap(struct mm_struct
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
@@ -254,6 +254,7 @@ static long madvise_willneed(struct vm_a
 			     struct vm_area_struct **prev,
 			     unsigned long start, unsigned long end)
 {
+	struct mm_struct *mm = vma->vm_mm;
 	struct file *file = vma->vm_file;
 	loff_t offset;
 
@@ -288,12 +289,12 @@ static long madvise_willneed(struct vm_a
 	 */
 	*prev = NULL;	/* tell sys_madvise we drop mmap_sem */
 	get_file(file);
-	up_read(&current->mm->mmap_sem);
+	up_read(&mm->mmap_sem);
 	offset = (loff_t)(start - vma->vm_start)
 			+ ((loff_t)vma->vm_pgoff << PAGE_SHIFT);
 	vfs_fadvise(file, offset, end - start, POSIX_FADV_WILLNEED);
 	fput(file);
-	down_read(&current->mm->mmap_sem);
+	down_read(&mm->mmap_sem);
 	return 0;
 }
 
@@ -676,7 +677,6 @@ out:
 	if (nr_swap) {
 		if (current->mm == mm)
 			sync_mm_rss(mm);
-
 		add_mm_counter(mm, MM_SWAPENTS, nr_swap);
 	}
 	arch_leave_lazy_mmu_mode();
@@ -756,6 +756,8 @@ static long madvise_dontneed_free(struct
 				  unsigned long start, unsigned long end,
 				  int behavior)
 {
+	struct mm_struct *mm = vma->vm_mm;
+
 	*prev = vma;
 	if (!can_madv_lru_vma(vma))
 		return -EINVAL;
@@ -763,8 +765,8 @@ static long madvise_dontneed_free(struct
 	if (!userfaultfd_remove(vma, start, end)) {
 		*prev = NULL; /* mmap_sem has been dropped, prev is stale */
 
-		down_read(&current->mm->mmap_sem);
-		vma = find_vma(current->mm, start);
+		down_read(&mm->mmap_sem);
+		vma = find_vma(mm, start);
 		if (!vma)
 			return -ENOMEM;
 		if (start < vma->vm_start) {
@@ -818,6 +820,7 @@ static long madvise_remove(struct vm_are
 	loff_t offset;
 	int error;
 	struct file *f;
+	struct mm_struct *mm = vma->vm_mm;
 
 	*prev = NULL;	/* tell sys_madvise we drop mmap_sem */
 
@@ -845,13 +848,13 @@ static long madvise_remove(struct vm_are
 	get_file(f);
 	if (userfaultfd_remove(vma, start, end)) {
 		/* mmap_sem was not released by userfaultfd_remove() */
-		up_read(&current->mm->mmap_sem);
+		up_read(&mm->mmap_sem);
 	}
 	error = vfs_fallocate(f,
 				FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
 				offset, end - start);
 	fput(f);
-	down_read(&current->mm->mmap_sem);
+	down_read(&mm->mmap_sem);
 	return error;
 }
 
@@ -1044,7 +1047,8 @@ madvise_behavior_valid(int behavior)
  *  -EBADF  - map exists, but area maps something that isn't a file.
  *  -EAGAIN - a kernel resource was temporarily unavailable.
  */
-int do_madvise(unsigned long start, size_t len_in, int behavior)
+int do_madvise(struct task_struct *target_task, struct mm_struct *mm,
+		unsigned long start, size_t len_in, int behavior)
 {
 	unsigned long end, tmp;
 	struct vm_area_struct *vma, *prev;
@@ -1082,10 +1086,10 @@ int do_madvise(unsigned long start, size
 
 	write = madvise_need_mmap_write(behavior);
 	if (write) {
-		if (down_write_killable(&current->mm->mmap_sem))
+		if (down_write_killable(&mm->mmap_sem))
 			return -EINTR;
 	} else {
-		down_read(&current->mm->mmap_sem);
+		down_read(&mm->mmap_sem);
 	}
 
 	/*
@@ -1093,7 +1097,7 @@ int do_madvise(unsigned long start, size
 	 * ranges, just ignore them, but return -ENOMEM at the end.
 	 * - different from the way of handling in mlock etc.
 	 */
-	vma = find_vma_prev(current->mm, start, &prev);
+	vma = find_vma_prev(mm, start, &prev);
 	if (vma && start > vma->vm_start)
 		prev = vma;
 
@@ -1130,19 +1134,19 @@ int do_madvise(unsigned long start, size
 		if (prev)
 			vma = prev->vm_next;
 		else	/* madvise_remove dropped mmap_sem */
-			vma = find_vma(current->mm, start);
+			vma = find_vma(mm, start);
 	}
 out:
 	blk_finish_plug(&plug);
 	if (write)
-		up_write(&current->mm->mmap_sem);
+		up_write(&mm->mmap_sem);
 	else
-		up_read(&current->mm->mmap_sem);
+		up_read(&mm->mmap_sem);
 
 	return error;
 }
 
 SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
 {
-	return do_madvise(start, len_in, behavior);
+	return do_madvise(current, current->mm, start, len_in, behavior);
 }
_

Patches currently in -mm which might be from minchan@kernel.org are

mm-pass-task-and-mm-to-do_madvise.patch
mm-introduce-external-memory-hinting-api.patch
mm-check-fatal-signal-pending-of-target-process.patch
pid-move-pidfd_get_pid-function-to-pidc.patch
mm-support-both-pid-and-pidfd-for-process_madvise.patch

