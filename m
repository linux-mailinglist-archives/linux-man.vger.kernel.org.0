Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 99D6010E01D
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2019 02:56:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727213AbfLAB4S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Nov 2019 20:56:18 -0500
Received: from mail.kernel.org ([198.145.29.99]:58446 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726878AbfLAB4S (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 30 Nov 2019 20:56:18 -0500
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 852FE2084D;
        Sun,  1 Dec 2019 01:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1575165375;
        bh=SaBTKBsd7mt6lHS/YOr773gnLBMgslZzLgdw1dfwTAY=;
        h=Date:From:To:Subject:From;
        b=mXybSIMfyXpr7KCPZHv3i9P7+vlKliXmzAKL57KTQqgx0WToYK7q/FvgWIBeOyrBI
         xTs3/MOSv4bQf5W6lQcVUwQJlAV4I6R4OE/evBwBOY+/6CCArOxCa0h6zQo6iXPAms
         UgxUNLu8VszY1bA6PqrR0JBTmOnMYzx/6It3gVG0=
Date:   Sat, 30 Nov 2019 17:56:15 -0800
From:   akpm@linux-foundation.org
To:     akpm@linux-foundation.org, hughd@google.com,
        linux-man@vger.kernel.org, linux-mm@kvack.org,
        lixinhai.lxh@gmail.com, mhocko@suse.com,
        mm-commits@vger.kernel.org, n-horiguchi@ah.jp.nec.com,
        torvalds@linux-foundation.org, vbabka@suse.cz
Subject:  [patch 118/158] mm/mempolicy.c: check range first in
 queue_pages_test_walk
Message-ID: <20191201015615.KPQyOXwfq%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Li Xinhai <lixinhai.lxh@gmail.com>
Subject: mm/mempolicy.c: check range first in queue_pages_test_walk

Patch series "mm: Fix checking unmapped holes for mbind", v4.

This patchset fix checking unmapped holes for mbind().

First patch makes sure the vma been correctly tracked in .test_walk(),
so each time when .test_walk() is called, the neighborhood of two vma
is correct.

Current problem is that the !vma_migratable() check could cause return
immediately without update tracking to vma.

Second patch fix the inconsistent report of EFAULT when mbind() is
called for MPOL_DEFAULT and non MPOL_DEFAULT cases, so application do
not need to have workaround code to handle this special behavior. 
Currently there are two problems, one is that the .test_walk() can not
know there is hole at tail side of range, because .test_walk() only
call for vma not for hole.  The other one is that mbind_range() checks
for hole at head side of range but do not consider the
MPOL_MF_DISCONTIG_OK flag as done in .test_walk().


This patch (of 2):

Checking unmapped hole and updating the previous vma must be handled
first, otherwise the unmapped hole could be calculated from a wrong
previous vma.

Several commits were relevant to this error:
commit 6f4576e3687b
("mempolicy: apply page table walker on queue_pages_range()"),
This commit was correct, the VM_PFNMAP check was after updating previous
vma

commit 48684a65b4e3
(mm: pagewalk: fix misbehavior of walk_page_range for vma(VM_PFNMAP)),
This commit added VM_PFNMAP check before updating previous vma. Then,
there were two VM_PFNMAP check did same thing twice.

commit acda0c334028
(mm/mempolicy.c: get rid of duplicated check for vma(VM_PFNMAP) in queue_page
s_range()),
This commit tried to fix the duplicated VM_PFNMAP check, but it wrongly
removed the one which was after updating vma.

Link: http://lkml.kernel.org/r/1573218104-11021-2-git-send-email-lixinhai.lxh@gmail.com
Fixes: acda0c334028 (mm/mempolicy.c: get rid of duplicated check for vma(VM_PFNMAP) in queue_pages_range())
Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
Reviewed-by: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Hugh Dickins <hughd@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 mm/mempolicy.c |   19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

--- a/mm/mempolicy.c~mm-check-range-first-in-queue_pages_test_walk
+++ a/mm/mempolicy.c
@@ -618,6 +618,16 @@ static int queue_pages_test_walk(unsigne
 	unsigned long endvma = vma->vm_end;
 	unsigned long flags = qp->flags;
 
+	/* range check first */
+	if (!(flags & MPOL_MF_DISCONTIG_OK)) {
+		if (!vma->vm_next && vma->vm_end < end)
+			return -EFAULT;
+		if (qp->prev && qp->prev->vm_end < vma->vm_start)
+			return -EFAULT;
+	}
+
+	qp->prev = vma;
+
 	/*
 	 * Need check MPOL_MF_STRICT to return -EIO if possible
 	 * regardless of vma_migratable
@@ -631,15 +641,6 @@ static int queue_pages_test_walk(unsigne
 	if (vma->vm_start > start)
 		start = vma->vm_start;
 
-	if (!(flags & MPOL_MF_DISCONTIG_OK)) {
-		if (!vma->vm_next && vma->vm_end < end)
-			return -EFAULT;
-		if (qp->prev && qp->prev->vm_end < vma->vm_start)
-			return -EFAULT;
-	}
-
-	qp->prev = vma;
-
 	if (flags & MPOL_MF_LAZY) {
 		/* Similar to task_numa_work, skip inaccessible VMAs */
 		if (!is_vm_hugetlb_page(vma) &&
_
