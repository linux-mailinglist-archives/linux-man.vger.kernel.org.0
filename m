Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1DF3EF57F6
	for <lists+linux-man@lfdr.de>; Fri,  8 Nov 2019 21:06:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388074AbfKHT4S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Nov 2019 14:56:18 -0500
Received: from mail.kernel.org ([198.145.29.99]:36262 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387487AbfKHT4R (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 8 Nov 2019 14:56:17 -0500
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0DC402067B;
        Fri,  8 Nov 2019 19:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1573242975;
        bh=SyYo7pIDh21TesJn66RLbSpOBbZhE99jMXq7iWb7fmw=;
        h=Date:From:To:Subject:From;
        b=w6tjVN1vQbCFRue0eTQDS4xB/wi+6c7jOe3BLwVjJ+keJDxQnevCasepsvZYoILBg
         qPm8n1DuLlUlQ4sRIfa5DzHNFGmdm/68sEZ15n12Qb4/C+9eNfz6un7mRTsk2zl/OV
         AxjKJ/bmPh3LWSut46GB1khA15XbGbIcYnyUMgBk=
Date:   Fri, 08 Nov 2019 11:56:14 -0800
From:   akpm@linux-foundation.org
To:     hughd@google.com, linux-man@vger.kernel.org,
        lixinhai.lxh@gmail.com, mhocko@suse.com,
        mm-commits@vger.kernel.org, n-horiguchi@ah.jp.nec.com,
        vbabka@suse.cz
Subject:  + mm-check-range-first-in-queue_pages_test_walk.patch
 added to -mm tree
Message-ID: <20191108195614.6VicBAzof%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/mempolicy.c: check range first in queue_pages_test_walk
has been added to the -mm tree.  Its filename is
     mm-check-range-first-in-queue_pages_test_walk.patch

This patch should soon appear at
    http://ozlabs.org/~akpm/mmots/broken-out/mm-check-range-first-in-queue_pages_test_walk.patch
and later at
    http://ozlabs.org/~akpm/mmotm/broken-out/mm-check-range-first-in-queue_pages_test_walk.patch

Before you just go and hit "reply", please:
   a) Consider who else should be cc'ed
   b) Prefer to cc a suitable mailing list as well
   c) Ideally: find the original patch on the mailing list and do a
      reply-to-all to that, adding suitable additional cc's

*** Remember to use Documentation/process/submit-checklist.rst when testing your code ***

The -mm tree is included into linux-next and is updated
there every 3-4 working days

------------------------------------------------------
From: Li Xinhai <lixinhai.lxh@gmail.com>
Subject: mm/mempolicy.c: check range first in queue_pages_test_walk

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
Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
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

Patches currently in -mm which might be from lixinhai.lxh@gmail.com are

mm-check-range-first-in-queue_pages_test_walk.patch
mm-fix-checking-unmapped-holes-for-mbind.patch

