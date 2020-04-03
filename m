Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 38CBF19DF7E
	for <lists+linux-man@lfdr.de>; Fri,  3 Apr 2020 22:40:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727950AbgDCUkQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Apr 2020 16:40:16 -0400
Received: from mail.kernel.org ([198.145.29.99]:36102 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727835AbgDCUkQ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 3 Apr 2020 16:40:16 -0400
Received: from localhost.localdomain (c-71-198-47-131.hsd1.ca.comcast.net [71.198.47.131])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 7CAAD21841;
        Fri,  3 Apr 2020 20:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1585946415;
        bh=MODlg9cYxK/lxhCOzS2YFu6AOlGmEixc4isbrFvvsvI=;
        h=Date:From:To:Subject:From;
        b=esIlz2eP8ZQbN7Mx9wmuT/dpcDhN2rlc01UGW/0VugvZKE/oWHVU/pb9ASi4ggy0W
         0WuZyde12MyuISInQzFsv+LJ26J55WRLvsS9FO4Fj5Ra4hSMPsOVxiWew+rtwV7KhK
         HZgapLfanVGAPrrG9+z+NP/MfFtYIPuZfpNwBZ8M=
Date:   Fri, 03 Apr 2020 13:40:15 -0700
From:   akpm@linux-foundation.org
To:     linux-man@vger.kernel.org, lixinhai.lxh@gmail.com, mhocko@suse.com,
        mike.kravetz@oracle.com, mm-commits@vger.kernel.org,
        naoya.horiguchi@nec.com
Subject:  [merged]
 mm-mempolicy-support-mpol_mf_strict-for-huge-page-mapping.patch removed
 from -mm tree
Message-ID: <20200403204015.KvNBRqnnS%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/mempolicy: support MPOL_MF_STRICT for huge page mapping
has been removed from the -mm tree.  Its filename was
     mm-mempolicy-support-mpol_mf_strict-for-huge-page-mapping.patch

This patch was dropped because it was merged into mainline or a subsystem tree

------------------------------------------------------
From: Li Xinhai <lixinhai.lxh@gmail.com>
Subject: mm/mempolicy: support MPOL_MF_STRICT for huge page mapping

MPOL_MF_STRICT is used in mbind() for purposes:

(1) MPOL_MF_STRICT is set alone without MPOL_MF_MOVE or
    MPOL_MF_MOVE_ALL, to check if there is misplaced page and return -EIO;

(2) MPOL_MF_STRICT is set with MPOL_MF_MOVE or MPOL_MF_MOVE_ALL, to
    check if there is misplaced page which is failed to isolate, or page
    is success on isolate but failed to move, and return -EIO.

For non hugepage mapping, (1) and (2) are implemented as expectation.  For
hugepage mapping, (1) is not implemented.  And in (2), the part about
failed to isolate and report -EIO is not implemented.

This patch implements the missed parts for hugepage mapping.  Benefits
with it applied:

- User space can apply same code logic to handle mbind() on hugepage and
  non hugepage mapping;

- Reliably using MPOL_MF_STRICT alone to check whether there is
  misplaced page or not when bind policy on address range, especially for
  address range which contains both hugepage and non hugepage mapping.

Analysis of potential impact to existing users:

- If MPOL_MF_STRICT alone was previously used, hugetlb pages not
  following the memory policy would not cause an EIO error.  After this
  change, hugetlb pages are treated like all other pages.  If
  MPOL_MF_STRICT alone is used and hugetlb pages do not follow memory
  policy an EIO error will be returned.

- For users who using MPOL_MF_STRICT with MPOL_MF_MOVE or
  MPOL_MF_MOVE_ALL, the semantic about some pages could not be moved will
  not be changed by this patch, because failed to isolate and failed to
  move have same effects to users, so their existing code will not be
  impacted.

In mbind man page, the note about 'MPOL_MF_STRICT is ignored on huge page
mappings' can be removed after this patch is applied.

Mike:

: The current behavior with MPOL_MF_STRICT and hugetlb pages is inconsistent
: and does not match documentation (as described above).  The special
: behavior for hugetlb pages ideally should have been removed when hugetlb
: page migration was introduced.  It is unlikely that anyone relies on
: today's inconsistent behavior, and removing one more case of special
: handling for hugetlb pages is a good thing.

Link: http://lkml.kernel.org/r/1581559627-6206-1-git-send-email-lixinhai.lxh@gmail.com
Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
Reviewed-by: Mike Kravetz <mike.kravetz@oracle.com>
Reviewed-by: Naoya Horiguchi <naoya.horiguchi@nec.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: linux-man <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 mm/mempolicy.c |   37 +++++++++++++++++++++++++++++++++----
 1 file changed, 33 insertions(+), 4 deletions(-)

--- a/mm/mempolicy.c~mm-mempolicy-support-mpol_mf_strict-for-huge-page-mapping
+++ a/mm/mempolicy.c
@@ -557,9 +557,10 @@ static int queue_pages_hugetlb(pte_t *pt
 			       unsigned long addr, unsigned long end,
 			       struct mm_walk *walk)
 {
+	int ret = 0;
 #ifdef CONFIG_HUGETLB_PAGE
 	struct queue_pages *qp = walk->private;
-	unsigned long flags = qp->flags;
+	unsigned long flags = (qp->flags & MPOL_MF_VALID);
 	struct page *page;
 	spinlock_t *ptl;
 	pte_t entry;
@@ -571,16 +572,44 @@ static int queue_pages_hugetlb(pte_t *pt
 	page = pte_page(entry);
 	if (!queue_pages_required(page, qp))
 		goto unlock;
+
+	if (flags == MPOL_MF_STRICT) {
+		/*
+		 * STRICT alone means only detecting misplaced page and no
+		 * need to further check other vma.
+		 */
+		ret = -EIO;
+		goto unlock;
+	}
+
+	if (!vma_migratable(walk->vma)) {
+		/*
+		 * Must be STRICT with MOVE*, otherwise .test_walk() have
+		 * stopped walking current vma.
+		 * Detecting misplaced page but allow migrating pages which
+		 * have been queued.
+		 */
+		ret = 1;
+		goto unlock;
+	}
+
 	/* With MPOL_MF_MOVE, we migrate only unshared hugepage. */
 	if (flags & (MPOL_MF_MOVE_ALL) ||
-	    (flags & MPOL_MF_MOVE && page_mapcount(page) == 1))
-		isolate_huge_page(page, qp->pagelist);
+	    (flags & MPOL_MF_MOVE && page_mapcount(page) == 1)) {
+		if (!isolate_huge_page(page, qp->pagelist) &&
+			(flags & MPOL_MF_STRICT))
+			/*
+			 * Failed to isolate page but allow migrating pages
+			 * which have been queued.
+			 */
+			ret = 1;
+	}
 unlock:
 	spin_unlock(ptl);
 #else
 	BUG();
 #endif
-	return 0;
+	return ret;
 }
 
 #ifdef CONFIG_NUMA_BALANCING
_

Patches currently in -mm which might be from lixinhai.lxh@gmail.com are

mm-dont-prepare-anon_vma-if-vma-has-vm_wipeonfork.patch
revert-mm-rmapc-reuse-mergeable-anon_vma-as-parent-when-fork.patch
mm-set-vm_next-and-vm_prev-to-null-in-vm_area_dup.patch

