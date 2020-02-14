Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3C9D315D16E
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 06:19:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725975AbgBNFTV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Feb 2020 00:19:21 -0500
Received: from mail.kernel.org ([198.145.29.99]:47976 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725777AbgBNFTV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 14 Feb 2020 00:19:21 -0500
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E03072187F;
        Fri, 14 Feb 2020 05:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1581657559;
        bh=WZZbqL4LTkMzEGS6MY+k/bxJ/2zffm8BCVjI6Wb4QCk=;
        h=Date:From:To:Subject:In-Reply-To:From;
        b=s2Km77Y/GzuiPhznhfhSIykCOpzFOaeetbjCi4nIIxZDXvGVLh70m/ZBlPkLRU4hH
         gyOSPeA/lMd5aK9EMNWUN8I7wKErVJ8ReQjfFd/kdiqlISLVq63l4wyjNqnUMsMpg+
         gLnVPEO252NhhDEomkvqNYFhGIQf/ETY9Mt72Otg=
Date:   Thu, 13 Feb 2020 21:19:18 -0800
From:   Andrew Morton <akpm@linux-foundation.org>
To:     linux-man@vger.kernel.org, lixinhai.lxh@gmail.com, mhocko@suse.com,
        mike.kravetz@oracle.com, mm-commits@vger.kernel.org,
        naoya.horiguchi@nec.com
Subject:  +
 mm-mempolicy-support-mpol_mf_strict-for-huge-page-mapping.patch added to
 -mm tree
Message-ID: <20200214051918.3B4_7ee6w%akpm@linux-foundation.org>
In-Reply-To: <20200203173311.6269a8be06a05e5a4aa08a93@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/mempolicy: support MPOL_MF_STRICT for huge page mapping
has been added to the -mm tree.  Its filename is
     mm-mempolicy-support-mpol_mf_strict-for-huge-page-mapping.patch

This patch should soon appear at
    http://ozlabs.org/~akpm/mmots/broken-out/mm-mempolicy-support-mpol_mf_strict-for-huge-page-mapping.patch
and later at
    http://ozlabs.org/~akpm/mmotm/broken-out/mm-mempolicy-support-mpol_mf_strict-for-huge-page-mapping.patch

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
mm-mempolicy-support-mpol_mf_strict-for-huge-page-mapping.patch

