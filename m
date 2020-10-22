Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49434296789
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 01:09:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S373251AbgJVXJx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 19:09:53 -0400
Received: from mail.kernel.org ([198.145.29.99]:50156 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S373127AbgJVXJv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 22 Oct 2020 19:09:51 -0400
Received: from localhost.localdomain (c-71-198-47-131.hsd1.ca.comcast.net [71.198.47.131])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 29049208B3;
        Thu, 22 Oct 2020 23:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603408190;
        bh=LWTwTRaEsAwltHb9NFCBKjSuNEKu14hqv2nmMvaaPaQ=;
        h=Date:From:To:Subject:From;
        b=Rhm4XwfMFQfa1nuCWsvGbzBUHaOYAHjgifawR1O7EziYQgoCjPYQ+UhqmqwtBusMd
         VaMfMa51G2ZnMOjiVGcKAkacLDnbod4suNHNQabxtQx9jYbeX6fe7uwNY6LowoUL3S
         IPfAdqM+8IJImKJoO53aRAz9Xc52ZYCq0FsiODdo=
Date:   Thu, 22 Oct 2020 16:09:48 -0700
From:   akpm@linux-foundation.org
To:     alexander.h.duyck@linux.intel.com, axboe@kernel.dk,
        bgeffon@google.com, christian.brauner@ubuntu.com,
        christian@brauner.io, dancol@google.com, fw@deneb.enyo.de,
        hannes@cmpxchg.org, jannh@google.com, joaodias@google.com,
        joel@joelfernandes.org, ktkhai@virtuozzo.com,
        linux-man@vger.kernel.org, mhocko@suse.com, minchan@kernel.org,
        mm-commits@vger.kernel.org, oleksandr@redhat.com,
        rientjes@google.com, shakeelb@google.com, sj38.park@gmail.com,
        sjpark@amazon.de, sonnyrao@google.com, sspatil@google.com,
        surenb@google.com, timmurray@google.com, vbabka@suse.cz
Subject:  [merged] mm-madvise-pass-mm-to-do_madvise.patch removed
 from -mm tree
Message-ID: <20201022230948.ULh2rThf2%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/madvise: pass mm to do_madvise
has been removed from the -mm tree.  Its filename was
     mm-madvise-pass-mm-to-do_madvise.patch

This patch was dropped because it was merged into mainline or a subsystem tree

------------------------------------------------------
From: Minchan Kim <minchan@kernel.org>
Subject: mm/madvise: pass mm to do_madvise

Patch series "introduce memory hinting API for external process", v9.

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

2. It supports only MADV_{COLD|PAGEOUT|MERGEABLE|UNMEREABLE} at this
   moment.  Other hints in madvise will be opened when there are explicit
   requests from community to prevent unexpected bugs we couldn't support.

3. Only privileged processes can do something for other process's
   address space.

For more detail of the new API, please see "mm: introduce external memory
hinting API" description in this patchset.

This patch (of 3):

In upcoming patches, do_madvise will be called from external process
context so we shouldn't asssume "current" is always hinted process's
task_struct.

Furthermore, we must not access mm_struct via task->mm, but obtain it via
access_mm() once (in the following patch) and only use that pointer [1],
so pass it to do_madvise() as well.  Note the vma->vm_mm pointers are
safe, so we can use them further down the call stack.

And let's pass current->mm as arguments of do_madvise so it shouldn't
change existing behavior but prepare next patch to make review easy.

[vbabka@suse.cz: changelog tweak]
[minchan@kernel.org: use current->mm for io_uring]
  Link: http://lkml.kernel.org/r/20200423145215.72666-1-minchan@kernel.org
[akpm@linux-foundation.org: fix it for upstream changes]
[akpm@linux-foundation.org: whoops]
[rdunlap@infradead.org: add missing includes]
Link: https://lkml.kernel.org/r/20200901000633.1920247-1-minchan@kernel.org
Link: http://lkml.kernel.org/r/20200622192900.22757-1-minchan@kernel.org
Link: http://lkml.kernel.org/r/20200302193630.68771-2-minchan@kernel.org
Link: http://lkml.kernel.org/r/20200622192900.22757-2-minchan@kernel.org
Link: https://lkml.kernel.org/r/20200901000633.1920247-2-minchan@kernel.org
Signed-off-by: Minchan Kim <minchan@kernel.org>
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
Acked-by: David Rientjes <rientjes@google.com>
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
Cc: Florian Weimer <fw@deneb.enyo.de>
Cc: <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 fs/io_uring.c      |    2 +-
 include/linux/mm.h |    2 +-
 mm/madvise.c       |   32 ++++++++++++++++++--------------
 3 files changed, 20 insertions(+), 16 deletions(-)

--- a/fs/io_uring.c~mm-madvise-pass-mm-to-do_madvise
+++ a/fs/io_uring.c
@@ -3989,7 +3989,7 @@ static int io_madvise(struct io_kiocb *r
 	if (force_nonblock)
 		return -EAGAIN;
 
-	ret = do_madvise(ma->addr, ma->len, ma->advice);
+	ret = do_madvise(current->mm, ma->addr, ma->len, ma->advice);
 	if (ret < 0)
 		req_set_fail_links(req);
 	io_req_complete(req, ret);
--- a/include/linux/mm.h~mm-madvise-pass-mm-to-do_madvise
+++ a/include/linux/mm.h
@@ -2579,7 +2579,7 @@ extern int __do_munmap(struct mm_struct
 		       struct list_head *uf, bool downgrade);
 extern int do_munmap(struct mm_struct *, unsigned long, size_t,
 		     struct list_head *uf);
-extern int do_madvise(unsigned long start, size_t len_in, int behavior);
+extern int do_madvise(struct mm_struct *mm, unsigned long start, size_t len_in, int behavior);
 
 #ifdef CONFIG_MMU
 extern int __mm_populate(unsigned long addr, unsigned long len,
--- a/mm/madvise.c~mm-madvise-pass-mm-to-do_madvise
+++ a/mm/madvise.c
@@ -258,6 +258,7 @@ static long madvise_willneed(struct vm_a
 			     struct vm_area_struct **prev,
 			     unsigned long start, unsigned long end)
 {
+	struct mm_struct *mm = vma->vm_mm;
 	struct file *file = vma->vm_file;
 	loff_t offset;
 
@@ -294,10 +295,10 @@ static long madvise_willneed(struct vm_a
 	get_file(file);
 	offset = (loff_t)(start - vma->vm_start)
 			+ ((loff_t)vma->vm_pgoff << PAGE_SHIFT);
-	mmap_read_unlock(current->mm);
+	mmap_read_unlock(mm);
 	vfs_fadvise(file, offset, end - start, POSIX_FADV_WILLNEED);
 	fput(file);
-	mmap_read_lock(current->mm);
+	mmap_read_lock(mm);
 	return 0;
 }
 
@@ -766,6 +767,8 @@ static long madvise_dontneed_free(struct
 				  unsigned long start, unsigned long end,
 				  int behavior)
 {
+	struct mm_struct *mm = vma->vm_mm;
+
 	*prev = vma;
 	if (!can_madv_lru_vma(vma))
 		return -EINVAL;
@@ -773,8 +776,8 @@ static long madvise_dontneed_free(struct
 	if (!userfaultfd_remove(vma, start, end)) {
 		*prev = NULL; /* mmap_lock has been dropped, prev is stale */
 
-		mmap_read_lock(current->mm);
-		vma = find_vma(current->mm, start);
+		mmap_read_lock(mm);
+		vma = find_vma(mm, start);
 		if (!vma)
 			return -ENOMEM;
 		if (start < vma->vm_start) {
@@ -828,6 +831,7 @@ static long madvise_remove(struct vm_are
 	loff_t offset;
 	int error;
 	struct file *f;
+	struct mm_struct *mm = vma->vm_mm;
 
 	*prev = NULL;	/* tell sys_madvise we drop mmap_lock */
 
@@ -855,13 +859,13 @@ static long madvise_remove(struct vm_are
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
 
@@ -1045,7 +1049,7 @@ madvise_behavior_valid(int behavior)
  *  -EBADF  - map exists, but area maps something that isn't a file.
  *  -EAGAIN - a kernel resource was temporarily unavailable.
  */
-int do_madvise(unsigned long start, size_t len_in, int behavior)
+int do_madvise(struct mm_struct *mm, unsigned long start, size_t len_in, int behavior)
 {
 	unsigned long end, tmp;
 	struct vm_area_struct *vma, *prev;
@@ -1083,10 +1087,10 @@ int do_madvise(unsigned long start, size
 
 	write = madvise_need_mmap_write(behavior);
 	if (write) {
-		if (mmap_write_lock_killable(current->mm))
+		if (mmap_write_lock_killable(mm))
 			return -EINTR;
 	} else {
-		mmap_read_lock(current->mm);
+		mmap_read_lock(mm);
 	}
 
 	/*
@@ -1094,7 +1098,7 @@ int do_madvise(unsigned long start, size
 	 * ranges, just ignore them, but return -ENOMEM at the end.
 	 * - different from the way of handling in mlock etc.
 	 */
-	vma = find_vma_prev(current->mm, start, &prev);
+	vma = find_vma_prev(mm, start, &prev);
 	if (vma && start > vma->vm_start)
 		prev = vma;
 
@@ -1131,19 +1135,19 @@ int do_madvise(unsigned long start, size
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
+	return do_madvise(current->mm, start, len_in, behavior);
 }
_

Patches currently in -mm which might be from minchan@kernel.org are


