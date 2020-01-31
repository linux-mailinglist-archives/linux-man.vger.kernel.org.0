Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C529A14E6D7
	for <lists+linux-man@lfdr.de>; Fri, 31 Jan 2020 02:35:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727693AbgAaBfV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Jan 2020 20:35:21 -0500
Received: from mail-lf1-f66.google.com ([209.85.167.66]:43395 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727673AbgAaBfU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Jan 2020 20:35:20 -0500
Received: by mail-lf1-f66.google.com with SMTP id 9so3647954lfq.10
        for <linux-man@vger.kernel.org>; Thu, 30 Jan 2020 17:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=FnewTHL9O3dn1OwrugaG7gamQ9ZOrHSnXA1DIdYS5OQ=;
        b=HJwE4NJrHGRBsk1B67jtByJXvxTWODNgj628+KEkhJDH8IM7Bb+w5pxVHQHd8oWyTZ
         KXWx2H/f3AV1/vZNCF6ZHVSjrtoe1k5q2oOoyCwEXoFwi+jm5ESIRnoq4fNRzuQPOqTd
         XqxKFm8zLL7wZTb6o+FWhlWjP7lb3oOmLDbtS6TFopHcqeZiIf1JtNUaew9QIoAn5JhT
         oAtZ8JSdOY9UeDMdS3iq4iXAoOV4oK0sRJddUy35eNLaetZ5bNuI/u3GYwErifjppdgD
         HuoCMsp/zO6mrh8aG1EAuTE9NzMDrNSOSAPU01HMYmOA0kCptH3j9ELLsLSHe9q0e5Kq
         QJAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FnewTHL9O3dn1OwrugaG7gamQ9ZOrHSnXA1DIdYS5OQ=;
        b=U8RuRgeJUIXh8Jh2PXIYfMjXRiBn7gx0JxQU6LxEYt2XB/U9qzRxNvtjfAXXforc4H
         Pq/LXDwfgohe82YDcoSKaLrQ7Wii1PsBQZptWT0Pcr5mMhN63hv/s/PezGGafb2Lvtg9
         rWofi3HNNjzvWOxxCHrwXL6HIO4Ks8+xt28GuqyBvwj4POcc5c179z7D6Cn0ZYoIL3E7
         rLWv+K/7FhGY3Q3vTTd8CJxCZ+g0m0RFNzGOzI+jV9HR743ecwx6X3lGIQM2/zWaNS7r
         ygq+o4oFhW/bmLPmVEdQFwzokpvqgHai9EVphpgrfxsG70zdyFH7n6IJ54wHUS/CBLmj
         lESg==
X-Gm-Message-State: APjAAAXKIx3TNUKSsiC13xb0geXb7Fa1Do5P8jAL2tdHKVb/IHJdoF8v
        jsUyGVTcr0wxaW0cjL0dllI=
X-Google-Smtp-Source: APXvYqwe0n44cg33eDQNX+7OYgPaUbx7NfTqA6I5zmvXZ6NQ2HHM+vlGzfBSAM8yeFP6BCGyxHL2IQ==
X-Received: by 2002:ac2:5979:: with SMTP id h25mr4170132lfp.203.1580434516557;
        Thu, 30 Jan 2020 17:35:16 -0800 (PST)
Received: from localhost.localdomain.localdomain ([131.228.2.20])
        by smtp.gmail.com with ESMTPSA id n3sm3778613ljc.100.2020.01.30.17.35.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jan 2020 17:35:16 -0800 (PST)
From:   Li Xinhai <lixinhai.lxh@gmail.com>
To:     linux-mm@kvack.org
Cc:     akpm@linux-foundation.org, Michal Hocko <mhocko@suse.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: [PATCH] mm/mempolicy: support MPOL_MF_STRICT for huge page mapping
Date:   Fri, 31 Jan 2020 01:33:15 +0000
Message-Id: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>
X-Mailer: git-send-email 1.8.3.1
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

MPOL_MF_STRICT is used in mbind() for purposes:
(1) MPOL_MF_STRICT is set alone without MPOL_MF_MOVE or MPOL_MF_MOVE_ALL,
    to check if there is misplaced page and return -EIO;
(2) MPOL_MF_STRICT is set with MPOL_MF_MOVE or MPOL_MF_MOVE_ALL, to check
    if there is misplaced page which is failed to isolate, or page is
    success on isolate but failed to move, and return -EIO.

For non hugepage mapping, (1) and (2) are implemented as expectation.
For hugepage mapping, (1) is not implemented. And in (2), the part about
failed to isolate and report -EIO is not implemented.

This patch implements the missed parts for hugepage mapping. Benefits
with it applied:
- User space can apply same code logic to handle mbind() on hugepage and
  non hugepage mapping;
- Reliably using MPOL_MF_STRICT alone to check whether there is misplaced
  page or not when bind policy on address range, especially for address
  range which contains both hugepage and non hugepage mapping.

Analysis of potential impact on existing users:
- For users who using MPOL_MF_STRICT alone, since mbind() don't report
  reliable answer about misplaced page, their existing code have to
  utilize other facilities, e.g. numa_maps of proc, to check misplaced
  page. After this patch applied, that dedicated checking will still work
  without been impacted;
- For users who using MPOL_MF_STRICT with MPOL_MF_MOVE or
  MPOL_MF_MOVE_ALL, the semantic about some pages could not be moved will
  not be changed by this patch, because failed to isolate and failed to
  move have same effects to users, so their existing code will not be
  impacted.

In mbind man page, the note about 'MPOL_MF_STRICT is ignored on huge page
mappings' can be removed after this patch is applied.

Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Mike Kravetz <mike.kravetz@oracle.com>
Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
Cc: linux-man <linux-man@vger.kernel.org>
---
Link to relevant discussion:
https://lore.kernel.org/linux-mm/1578993378-10860-2-git-send-email-lixinhai.lxh@gmail.com/


 mm/mempolicy.c | 37 +++++++++++++++++++++++++++++++++----
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/mm/mempolicy.c b/mm/mempolicy.c
index b2920ae..ec897d1 100644
--- a/mm/mempolicy.c
+++ b/mm/mempolicy.c
@@ -557,9 +557,10 @@ static int queue_pages_hugetlb(pte_t *pte, unsigned long hmask,
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
@@ -571,16 +572,44 @@ static int queue_pages_hugetlb(pte_t *pte, unsigned long hmask,
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
-- 
1.8.3.1

