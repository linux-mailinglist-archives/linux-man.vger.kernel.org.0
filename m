Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 87604F57F7
	for <lists+linux-man@lfdr.de>; Fri,  8 Nov 2019 21:06:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388137AbfKHT4T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Nov 2019 14:56:19 -0500
Received: from mail.kernel.org ([198.145.29.99]:36386 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387487AbfKHT4T (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 8 Nov 2019 14:56:19 -0500
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0CB0C2075C;
        Fri,  8 Nov 2019 19:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1573242978;
        bh=hAEZdqQvRbxEiwMcj91RGal4Y7pkW+ARj23CJiWM+XY=;
        h=Date:From:To:Subject:From;
        b=LFRk5tTEMKsEotlKivkZXsRdjxW1GYfno5U09udVzFUijdSJLHewYjwWsDy/wVr8h
         Q2ZCDrBm/qZbvnvTWQDPMEh7AX7vl5igoYJph3TxXf1rSNkgZ+2pfX0SwTgPbvwD6F
         tTTK5n1/n9zBV5q7Z2O2s6t5D3MpgTwjjtnfGqoE=
Date:   Fri, 08 Nov 2019 11:56:17 -0800
From:   akpm@linux-foundation.org
To:     hughd@google.com, linux-man@vger.kernel.org,
        lixinhai.lxh@gmail.com, mhocko@suse.com,
        mm-commits@vger.kernel.org, n-horiguchi@ah.jp.nec.com,
        vbabka@suse.cz
Subject:  + mm-fix-checking-unmapped-holes-for-mbind.patch added to
 -mm tree
Message-ID: <20191108195617.DUw7SW5xy%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/mempolicy.c: fix checking unmapped holes for mbind
has been added to the -mm tree.  Its filename is
     mm-fix-checking-unmapped-holes-for-mbind.patch

This patch should soon appear at
    http://ozlabs.org/~akpm/mmots/broken-out/mm-fix-checking-unmapped-holes-for-mbind.patch
and later at
    http://ozlabs.org/~akpm/mmotm/broken-out/mm-fix-checking-unmapped-holes-for-mbind.patch

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
Subject: mm/mempolicy.c: fix checking unmapped holes for mbind

mbind() is required to report EFAULT if range, specified by addr and len,
contains unmapped holes.  In current implementation, below rules are
applied for this checking:

1: Unmapped holes at any part of the specified range should be reported
   as EFAULT if mbind() for none MPOL_DEFAULT cases;

2: Unmapped holes at any part of the specified range should be ignored
   (do not reprot EFAULT) if mbind() for MPOL_DEFAULT case;

3: The whole range in an unmapped hole should be reported as EFAULT;

Note that rule 2 does not fullfill the mbind() API definition, but since
that behavior has existed for long days (the internal flag
MPOL_MF_DISCONTIG_OK is for this purpose), this patch does not plan to
change it.

In current code, application observed inconsistent behavior on rule 1 and
rule 2 respectively.  That inconsistency is fixed as below details.

Cases of rule 1:
1) Hole at head side of range. Current code reprot EFAULT, no change by
this patch.
[  vma  ][ hole ][  vma  ]
            [  range  ]
2) Hole at middle of range. Current code report EFAULT, no change by
this patch.
[  vma  ][ hole ][ vma ]
   [     range      ]
3) Hole at tail side of range. Current code do not report EFAULT, this
patch fix it.
[  vma  ][ hole ][ vma ]
   [  range  ]

Cases of rule 2:
1) Hole at head side of range. Current code reprot EFAULT, this patch
fix it.
[  vma  ][ hole ][  vma  ]
            [  range  ]
2) Hole at middle of range. Current code do not report EFAULT, no change
by this patch.
this patch.
[  vma  ][ hole ][ vma]
   [     range      ]
3) Hole at tail side of range. Current code do not report EFAULT, no
change by this patch.
[  vma  ][ hole ][ vma]
   [  range  ]

This patch has no changes to rule 3.

The unmapped hole checking can also be handled by using .pte_hole(),
instead of .test_walk().  But .pte_hole() is called for holes inside and
outside vma, which causes more cost, so this patch keeps the original
design with .test_walk().

Link: http://lkml.kernel.org/r/1573218104-11021-3-git-send-email-lixinhai.lxh@gmail.com
Fixes: 6f4576e3687b ("mempolicy: apply page table walker on queue_pages_range()")
Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Hugh Dickins <hughd@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 mm/mempolicy.c |   40 +++++++++++++++++++++++++++-------------
 1 file changed, 27 insertions(+), 13 deletions(-)

--- a/mm/mempolicy.c~mm-fix-checking-unmapped-holes-for-mbind
+++ a/mm/mempolicy.c
@@ -410,7 +410,9 @@ struct queue_pages {
 	struct list_head *pagelist;
 	unsigned long flags;
 	nodemask_t *nmask;
-	struct vm_area_struct *prev;
+	unsigned long start;
+	unsigned long end;
+	struct vm_area_struct *first;
 };
 
 /*
@@ -619,14 +621,20 @@ static int queue_pages_test_walk(unsigne
 	unsigned long flags = qp->flags;
 
 	/* range check first */
-	if (!(flags & MPOL_MF_DISCONTIG_OK)) {
-		if (!vma->vm_next && vma->vm_end < end)
-			return -EFAULT;
-		if (qp->prev && qp->prev->vm_end < vma->vm_start)
+	VM_BUG_ON((vma->vm_start > start) || (vma->vm_end < end));
+
+	if (!qp->first) {
+		qp->first = vma;
+		if (!(flags & MPOL_MF_DISCONTIG_OK) &&
+			(qp->start < vma->vm_start))
+			/* hole at head side of range */
 			return -EFAULT;
 	}
-
-	qp->prev = vma;
+	if (!(flags & MPOL_MF_DISCONTIG_OK) &&
+		((vma->vm_end < qp->end) &&
+		(!vma->vm_next || vma->vm_end < vma->vm_next->vm_start)))
+		/* hole at middle or tail of range */
+		return -EFAULT;
 
 	/*
 	 * Need check MPOL_MF_STRICT to return -EIO if possible
@@ -638,8 +646,6 @@ static int queue_pages_test_walk(unsigne
 
 	if (endvma > end)
 		endvma = end;
-	if (vma->vm_start > start)
-		start = vma->vm_start;
 
 	if (flags & MPOL_MF_LAZY) {
 		/* Similar to task_numa_work, skip inaccessible VMAs */
@@ -682,14 +688,23 @@ queue_pages_range(struct mm_struct *mm,
 		nodemask_t *nodes, unsigned long flags,
 		struct list_head *pagelist)
 {
+	int err;
 	struct queue_pages qp = {
 		.pagelist = pagelist,
 		.flags = flags,
 		.nmask = nodes,
-		.prev = NULL,
+		.start = start,
+		.end = end,
+		.first = NULL,
 	};
 
-	return walk_page_range(mm, start, end, &queue_pages_walk_ops, &qp);
+	err = walk_page_range(mm, start, end, &queue_pages_walk_ops, &qp);
+
+	if (!qp.first)
+		/* whole range in hole */
+		err = -EFAULT;
+
+	return err;
 }
 
 /*
@@ -741,8 +756,7 @@ static int mbind_range(struct mm_struct
 	unsigned long vmend;
 
 	vma = find_vma(mm, start);
-	if (!vma || vma->vm_start > start)
-		return -EFAULT;
+	VM_BUG_ON(!vma);
 
 	prev = vma->vm_prev;
 	if (start > vma->vm_start)
_

Patches currently in -mm which might be from lixinhai.lxh@gmail.com are

mm-check-range-first-in-queue_pages_test_walk.patch
mm-fix-checking-unmapped-holes-for-mbind.patch

