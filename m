Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1EEB215B6FE
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2020 03:09:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729348AbgBMCJT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Feb 2020 21:09:19 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:39017 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729333AbgBMCJT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Feb 2020 21:09:19 -0500
Received: by mail-wm1-f66.google.com with SMTP id c84so4820707wme.4
        for <linux-man@vger.kernel.org>; Wed, 12 Feb 2020 18:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=PemMGzOpUHAyOrQBqw0/tPQ6XlJ6e8+AeiArgqBwNNw=;
        b=mWjHfJ+72lDIBR4E9gotUYHDr0V+c1zGOR80Nx5+a7rNbpdOaB+LZJy6ubBDMNDl6R
         Xu0SFN9s/7h5znxzLeqfztD0GlRZO7/WQeqIdEjFXLB7Eu+80fL7TA60BqX33nEICknv
         1LNTMsKo/+vk+0yjG1qlKOg5iK24RDVJSY1XbvNb3/CdjuhOZiowhHEbyixWeLCYpofK
         zRPD0Uyrq64XDf53Px5E0X2Zz0H4rJtFNOKy8ZjqO3anKFXYQbsaIPyji5q+cZm3sKbJ
         0BpsZjW8t3tbqWm6LkBYUQn36nQCsuaDmWtmNn3vcwDbNvxWozSpilWFR5gLltFYEw8n
         2JGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PemMGzOpUHAyOrQBqw0/tPQ6XlJ6e8+AeiArgqBwNNw=;
        b=M2SIf5/OSy1Iz6Eqfgq5g+AwLn38PFa72AuP7hAjQVoUPppoeBoRIlWyjC0kY/i1kh
         Pf0pzFIrxXWjC6mT8dzRSXUM2kPZsEV84xumQrXGiSmLHoHCsdBtptTl2wr3Xrz4/Vcb
         odPax0dLpKESaOyCNC4AJK0DUWRERBeiR3hYaDIpncc6856qiZU74ZVYzopyhzLlwn5q
         3dEbL3qNQnokRrdwIN8/jFw1yUY39VJCPRyP8Do9dMA3a9b9XfpG6X0X4ZkaLJRTY9cH
         yhzJNx5p2cQc4bp9V+PVilrE8WUm84y1onPqtIN5XrUZ8LLpNajao0ZVxJy8ncPN5mM0
         USYQ==
X-Gm-Message-State: APjAAAX4JGuL0wF8mS/FudzXRkTNE3JWkdN8qPnXvD3+BJ70N6ZeeIYD
        tUUj7uB2MbTGjYxovkxJuizEnvU+
X-Google-Smtp-Source: APXvYqz2yi/bNOcFW8JMBcuRR2S/F/IzuHIHyLWLF5Ikw28Apkb59Zujx/WJ0zpSiCOrveGcvMJNaQ==
X-Received: by 2002:a1c:9854:: with SMTP id a81mr2247454wme.1.1581559755868;
        Wed, 12 Feb 2020 18:09:15 -0800 (PST)
Received: from localhost.localdomain.localdomain ([131.228.2.20])
        by smtp.gmail.com with ESMTPSA id r6sm838013wrq.92.2020.02.12.18.09.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Feb 2020 18:09:14 -0800 (PST)
From:   Li Xinhai <lixinhai.lxh@gmail.com>
To:     linux-mm@kvack.org
Cc:     akpm@linux-foundation.org, Michal Hocko <mhocko@suse.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: [PATCH v2] mm/mempolicy: support MPOL_MF_STRICT for huge page mapping
Date:   Thu, 13 Feb 2020 02:07:07 +0000
Message-Id: <1581559627-6206-1-git-send-email-lixinhai.lxh@gmail.com>
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

Analysis of potential impact to existing users:
- If MPOL_MF_STRICT alone was previously used, hugetlb pages not following
  the memory policy would not cause an EIO error.  After this change,
  hugetlb pages are treated like all other pages. If  MPOL_MF_STRICT alone
  is used and hugetlb pages do not follow memory policy an EIO error will
  be returned.
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
v1 -> v2:
Revise the commit message(i.e., the first part about impaction) according
to Mike.

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

