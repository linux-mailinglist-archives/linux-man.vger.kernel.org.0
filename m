Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C5F11F5F96
	for <lists+linux-man@lfdr.de>; Thu, 11 Jun 2020 03:42:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726517AbgFKBmY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Jun 2020 21:42:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:51194 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726417AbgFKBmY (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 10 Jun 2020 21:42:24 -0400
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6CF292078D;
        Thu, 11 Jun 2020 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1591839743;
        bh=9D4u2wARkuJuKIxDaxGXZ1vuP5GJZ8JFbgrWzfgDBKA=;
        h=Date:From:To:Subject:In-Reply-To:From;
        b=NQt8vVe7RkAebuB6oW15hSkxp+QVraBC4sDMLcB0YvkaF9VC2sPSGS3j/gmhKXPjF
         DUBCEz+aOz2HXaMGPEy9vT/op+/YWaHWIa9acgZfz+ovSyzhYyltwLQvq3e/YD66SJ
         +xKwaMIfks3Y7B8o1zBZkNw/TT94r8NJNXKy7ZRY=
Date:   Wed, 10 Jun 2020 18:42:22 -0700
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
Subject:  [patch 19/25] mm/madvise: check fatal signal pending of
 target process
Message-ID: <20200611014222.h9Hjskoun%akpm@linux-foundation.org>
In-Reply-To: <20200610184053.3fa7368ab80e23bfd44de71f@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Minchan Kim <minchan@kernel.org>
Subject: mm/madvise: check fatal signal pending of target process

Bail out to prevent unnecessary CPU overhead if target process has pending
fatal signal during (MADV_COLD|MADV_PAGEOUT) operation.

Link: http://lkml.kernel.org/r/20200302193630.68771-4-minchan@kernel.org
Signed-off-by: Minchan Kim <minchan@kernel.org>
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Cc: Brian Geffon <bgeffon@google.com>
Cc: Christian Brauner <christian@brauner.io>
Cc: Daniel Colascione <dancol@google.com>
Cc: Jann Horn <jannh@google.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Cc: John Dias <joaodias@google.com>
Cc: Kirill Tkhai <ktkhai@virtuozzo.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Oleksandr Natalenko <oleksandr@redhat.com>
Cc: Sandeep Patil <sspatil@google.com>
Cc: SeongJae Park <sj38.park@gmail.com>
Cc: SeongJae Park <sjpark@amazon.de>
Cc: Shakeel Butt <shakeelb@google.com>
Cc: Sonny Rao <sonnyrao@google.com>
Cc: Tim Murray <timmurray@google.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>
Cc: <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 mm/madvise.c |   29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

--- a/mm/madvise.c~mm-check-fatal-signal-pending-of-target-process
+++ a/mm/madvise.c
@@ -39,6 +39,7 @@
 struct madvise_walk_private {
 	struct mmu_gather *tlb;
 	bool pageout;
+	struct task_struct *target_task;
 };
 
 /*
@@ -319,6 +320,10 @@ static int madvise_cold_or_pageout_pte_r
 	if (fatal_signal_pending(current))
 		return -EINTR;
 
+	if (private->target_task &&
+			fatal_signal_pending(private->target_task))
+		return -EINTR;
+
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
 	if (pmd_trans_huge(*pmd)) {
 		pmd_t orig_pmd;
@@ -480,12 +485,14 @@ static const struct mm_walk_ops cold_wal
 };
 
 static void madvise_cold_page_range(struct mmu_gather *tlb,
+			     struct task_struct *task,
 			     struct vm_area_struct *vma,
 			     unsigned long addr, unsigned long end)
 {
 	struct madvise_walk_private walk_private = {
 		.pageout = false,
 		.tlb = tlb,
+		.target_task = task,
 	};
 
 	tlb_start_vma(tlb, vma);
@@ -493,7 +500,8 @@ static void madvise_cold_page_range(stru
 	tlb_end_vma(tlb, vma);
 }
 
-static long madvise_cold(struct vm_area_struct *vma,
+static long madvise_cold(struct task_struct *task,
+			struct vm_area_struct *vma,
 			struct vm_area_struct **prev,
 			unsigned long start_addr, unsigned long end_addr)
 {
@@ -506,19 +514,21 @@ static long madvise_cold(struct vm_area_
 
 	lru_add_drain();
 	tlb_gather_mmu(&tlb, mm, start_addr, end_addr);
-	madvise_cold_page_range(&tlb, vma, start_addr, end_addr);
+	madvise_cold_page_range(&tlb, task, vma, start_addr, end_addr);
 	tlb_finish_mmu(&tlb, start_addr, end_addr);
 
 	return 0;
 }
 
 static void madvise_pageout_page_range(struct mmu_gather *tlb,
+			     struct task_struct *task,
 			     struct vm_area_struct *vma,
 			     unsigned long addr, unsigned long end)
 {
 	struct madvise_walk_private walk_private = {
 		.pageout = true,
 		.tlb = tlb,
+		.target_task = task,
 	};
 
 	tlb_start_vma(tlb, vma);
@@ -542,7 +552,8 @@ static inline bool can_do_pageout(struct
 		inode_permission(file_inode(vma->vm_file), MAY_WRITE) == 0;
 }
 
-static long madvise_pageout(struct vm_area_struct *vma,
+static long madvise_pageout(struct task_struct *task,
+			struct vm_area_struct *vma,
 			struct vm_area_struct **prev,
 			unsigned long start_addr, unsigned long end_addr)
 {
@@ -558,7 +569,7 @@ static long madvise_pageout(struct vm_ar
 
 	lru_add_drain();
 	tlb_gather_mmu(&tlb, mm, start_addr, end_addr);
-	madvise_pageout_page_range(&tlb, vma, start_addr, end_addr);
+	madvise_pageout_page_range(&tlb, task, vma, start_addr, end_addr);
 	tlb_finish_mmu(&tlb, start_addr, end_addr);
 
 	return 0;
@@ -938,7 +949,8 @@ static int madvise_inject_error(int beha
 #endif
 
 static long
-madvise_vma(struct vm_area_struct *vma, struct vm_area_struct **prev,
+madvise_vma(struct task_struct *task, struct vm_area_struct *vma,
+		struct vm_area_struct **prev,
 		unsigned long start, unsigned long end, int behavior)
 {
 	switch (behavior) {
@@ -947,9 +959,9 @@ madvise_vma(struct vm_area_struct *vma,
 	case MADV_WILLNEED:
 		return madvise_willneed(vma, prev, start, end);
 	case MADV_COLD:
-		return madvise_cold(vma, prev, start, end);
+		return madvise_cold(task, vma, prev, start, end);
 	case MADV_PAGEOUT:
-		return madvise_pageout(vma, prev, start, end);
+		return madvise_pageout(task, vma, prev, start, end);
 	case MADV_FREE:
 	case MADV_DONTNEED:
 		return madvise_dontneed_free(vma, prev, start, end, behavior);
@@ -1166,7 +1178,8 @@ int do_madvise(struct task_struct *targe
 			tmp = end;
 
 		/* Here vma->vm_start <= start < tmp <= (end|vma->vm_end). */
-		error = madvise_vma(vma, &prev, start, tmp, behavior);
+		error = madvise_vma(target_task, vma, &prev,
+					start, tmp, behavior);
 		if (error)
 			goto out;
 		start = tmp;
_
