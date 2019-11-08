Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6436CF4C65
	for <lists+linux-man@lfdr.de>; Fri,  8 Nov 2019 14:03:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730968AbfKHNC2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Nov 2019 08:02:28 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:55294 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730813AbfKHNC1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Nov 2019 08:02:27 -0500
Received: by mail-wm1-f67.google.com with SMTP id z26so6099201wmi.4
        for <linux-man@vger.kernel.org>; Fri, 08 Nov 2019 05:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HPUhRkeh9B8kThmSnedxU9rFzUdfov5nG5Mv0o35La0=;
        b=ICNCj4oQpjkXiCCB0Lw81MOO95U7sKM5Kz8xpYLhoYoWOKMuZcvUoxtjKKt2jzSR7j
         B5OcXsUWasqOl0HZX88fjBqFaXzGpC64lEeWV8KES7451owMHRVYqpNcYa8q1l9gkETF
         br3nnWpAHxXNr8f4eAl6i72qi5FXxL1bDa0YlPKuOwRhzyLe8wDnrcT2pDYGNVQd7Ocs
         9dotwsT9e/h2pKNp3/4UkbAKNYNPk8pwxD0kVfAtblBd7oSiuVGpBsOJN0Y65EQQxRTI
         uZOwvTSHB605E3E1LdbBCOnGxJN0/arC/Pkpx3ucDiXxdTXVSrX+eu8y1K+aMLNYeIaP
         bzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HPUhRkeh9B8kThmSnedxU9rFzUdfov5nG5Mv0o35La0=;
        b=GoXhV3ChERbgWR4D9PMvfgQGRNl1Humo8KGCdGMzsJthNC5N2tc3yb/ph+LL/rF6Qj
         A3XKE4BxGiYONmxoue/T//2HwCFvKm/W+8Ouf6oazRE1DYNzIWHxUfaheUyEhu8Ohcsk
         HqGOjkTonkzG8mNwy1BnfMRacu58vJr67k/2sY76NJc/UeGQeeL+Duc9VZNLIxTWPGBE
         Yf442+1mp2pKEgM45pIQWlMYNQqumSfRCNV+iThGGwilM7BuRCLce7rr6f/R0FrC/M2A
         otjffZV6hNbwaHk5+jFr/bBBwakx8pYYXN92h5Su53JBQGmxUMMfy66wAO5gjxdUvvoR
         +TuA==
X-Gm-Message-State: APjAAAVvmXsJsrcyaTa37ffCuT3XJ4m4AMYzTTCkt1zdFnzabjokzRbt
        mO7bsB8n1cBcPc8on2jjiIQ=
X-Google-Smtp-Source: APXvYqwMwb1ZXdjI8mkjWvVMXye8zLX+KycPXPXcNRDkji1B7sfa2iwgQH1CXXp9MvDKphQ3FqPzNw==
X-Received: by 2002:a1c:9d07:: with SMTP id g7mr8198735wme.53.1573218145734;
        Fri, 08 Nov 2019 05:02:25 -0800 (PST)
Received: from binjiang-hz-dhcp091254.china.nsn-net.net ([131.228.2.20])
        by smtp.gmail.com with ESMTPSA id b8sm5873976wrt.39.2019.11.08.05.02.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Nov 2019 05:02:25 -0800 (PST)
From:   Li Xinhai <lixinhai.lxh@gmail.com>
To:     linux-mm@kvack.org
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        Michal Hocko <mhocko@suse.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Hugh Dickins <hughd@google.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: [PATCH v4 1/2] mm: Check range first in queue_pages_test_walk
Date:   Fri,  8 Nov 2019 21:01:43 +0800
Message-Id: <1573218104-11021-2-git-send-email-lixinhai.lxh@gmail.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1573218104-11021-1-git-send-email-lixinhai.lxh@gmail.com>
References: <1573218104-11021-1-git-send-email-lixinhai.lxh@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Checking unmapped hole and updating the previous vma must be handled first,
otherwise the unmapped hole could be calculated from a wrong previous vma.

Several commits were relevant to this error:
commit 6f4576e3687b
("mempolicy: apply page table walker on queue_pages_range()"),
This commit was correct, the VM_PFNMAP check was after updateing previous
vma

commit 48684a65b4e3
(mm: pagewalk: fix misbehavior of walk_page_range for vma(VM_PFNMAP)),
This commit added VM_PFNMAP check before updateing previous vma. Then,
there were two VM_PFNMAP check did same thing twice.

commit acda0c334028
(mm/mempolicy.c: get rid of duplicated check for vma(VM_PFNMAP) in queue_page
s_range()),
This commit tried to fix the duplicated VM_PFNMAP check, but it wrongly
removed the one which was after updateing vma.

Fixes: acda0c334028 (mm/mempolicy.c: get rid of duplicated check for vma(VM_PFNMAP) in queue_page
s_range())
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Hugh Dickins <hughd@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
---
 mm/mempolicy.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/mm/mempolicy.c b/mm/mempolicy.c
index 4ae967b..807f06f 100644
--- a/mm/mempolicy.c
+++ b/mm/mempolicy.c
@@ -618,6 +618,16 @@ static int queue_pages_test_walk(unsigned long start, unsigned long end,
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
@@ -631,15 +641,6 @@ static int queue_pages_test_walk(unsigned long start, unsigned long end,
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
-- 
1.8.3.1

