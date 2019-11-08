Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F1DE3F4C5E
	for <lists+linux-man@lfdr.de>; Fri,  8 Nov 2019 14:03:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726770AbfKHNCg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Nov 2019 08:02:36 -0500
Received: from mail-wm1-f65.google.com ([209.85.128.65]:39313 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731034AbfKHNCa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Nov 2019 08:02:30 -0500
Received: by mail-wm1-f65.google.com with SMTP id t26so6139894wmi.4
        for <linux-man@vger.kernel.org>; Fri, 08 Nov 2019 05:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wm52qWln6nKBa085qfQNtnNeEWZRtoqJRillJ/Ah59U=;
        b=tpePoT97xn/Nwg6H7ECR1e7JP1Rr9UIDWVqxdLwPBHaH/iaYlwaUTUOVVNtyq/mcgC
         U5K9qNyWp2ydpZk9TZe5IzJn9/FRufzIuO75vMhTAyGQwCKw4QMUIC2egz+6Ab1P1Geq
         9faNBba4w2oxFbLECsTcN+VT9NFlNnK1rhGrDUZfvxwyG/+/KHl3ZOdhtvAXBV6RgXhU
         yHeA/DmXd4vpEyXTIVfA32K0HFPnntOJ08y3Q3MR4ukHM4J1qALZV+1DLMHikfvsM9OQ
         AT0As2TFGVMfW0N42d0pEjM0n2S87fygf7AY7HeKcOs7QJtUMkzuPnD2UeXEaUHYfSze
         IQsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wm52qWln6nKBa085qfQNtnNeEWZRtoqJRillJ/Ah59U=;
        b=dsDcRe5R5TTOuuQXrWjLT9IpP80p9pjFB4srtJhUufH46FH1pvWFc/KQOI1cEDon/z
         rT4ug0SiZaFenaHrTqkkENGZo4vhtIn3q6HBXZphv2mPqNHbXog12k8m3r9mOabI+Ir4
         qzWYJN5AOL5Ix7e60WQCo0ncTBPtYuo90YzoIzzuphjN5ql1K47FfFnKfF5EiOUX/c2t
         E9AgrX0C5ypj5UjLMwjqOie0T7QBQwcU48lpa2hb4bQkt2ut2ML50WxoL3w5ZgpB/gEA
         1gJuK0tnW2WDJo2mE6L3fZWSLE97VzZqxUGJfDavE0nc+T07jthcyGPLzzYMA45JRqhN
         tc5Q==
X-Gm-Message-State: APjAAAVgDxnrsy4QtweygffLwJgPGxRVDPIr45FHv5FbUA98TCz+iHXJ
        dsqfqrYvRzULx3UZ3HXMTzQ=
X-Google-Smtp-Source: APXvYqwaU4qzxuZPOZjnZoL2Fqe2tfvasmQoY9qoxcQ809/SDKCxhpSmn7Iyicb39G2j4n0RGF8ghQ==
X-Received: by 2002:a1c:6a09:: with SMTP id f9mr8136838wmc.15.1573218148321;
        Fri, 08 Nov 2019 05:02:28 -0800 (PST)
Received: from binjiang-hz-dhcp091254.china.nsn-net.net ([131.228.2.20])
        by smtp.gmail.com with ESMTPSA id b8sm5873976wrt.39.2019.11.08.05.02.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Nov 2019 05:02:27 -0800 (PST)
From:   Li Xinhai <lixinhai.lxh@gmail.com>
To:     linux-mm@kvack.org
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        Michal Hocko <mhocko@suse.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Hugh Dickins <hughd@google.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: [PATCH v4 2/2] mm: Fix checking unmapped holes for mbind
Date:   Fri,  8 Nov 2019 21:01:44 +0800
Message-Id: <1573218104-11021-3-git-send-email-lixinhai.lxh@gmail.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1573218104-11021-1-git-send-email-lixinhai.lxh@gmail.com>
References: <1573218104-11021-1-git-send-email-lixinhai.lxh@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

mbind() is required to report EFAULT if range, specified by addr and len,
contains unmapped holes. In current implementation, below rules are applied
for this checking:
1 Unmapped holes at any part of the specified range should be reported as
  EFAULT if mbind() for none MPOL_DEFAULT cases;
2 Unmapped holes at any part of the specified range should be ignored (do
  not reprot EFAULT) if mbind() for MPOL_DEFAULT case;
3 The whole range in an unmapped hole should be reported as EFAULT;
Note that rule 2 does not fullfill the mbind() API definition, but since
that behavior has existed for long days (the internal flag
MPOL_MF_DISCONTIG_OK is for this purpose), this patch does not plan to
change it.

In current code, application observed inconsistent behavior on rule 1 and
rule 2 respectively. That inconsistency is fixed as below details.

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
instead of .test_walk(). But .pte_hole() is called for holes inside and
outside vma, which causes more cost, so this patch keeps the original
design with .test_walk().

Fixes: 6f4576e3687b ("mempolicy: apply page table walker on queue_pages_range()")
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Hugh Dickins <hughd@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
---
 mm/mempolicy.c | 40 +++++++++++++++++++++++++++-------------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/mm/mempolicy.c b/mm/mempolicy.c
index 807f06f..c697b29 100644
--- a/mm/mempolicy.c
+++ b/mm/mempolicy.c
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
@@ -619,14 +621,20 @@ static int queue_pages_test_walk(unsigned long start, unsigned long end,
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
@@ -638,8 +646,6 @@ static int queue_pages_test_walk(unsigned long start, unsigned long end,
 
 	if (endvma > end)
 		endvma = end;
-	if (vma->vm_start > start)
-		start = vma->vm_start;
 
 	if (flags & MPOL_MF_LAZY) {
 		/* Similar to task_numa_work, skip inaccessible VMAs */
@@ -680,14 +686,23 @@ static int queue_pages_test_walk(unsigned long start, unsigned long end,
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
@@ -739,8 +754,7 @@ static int mbind_range(struct mm_struct *mm, unsigned long start,
 	unsigned long vmend;
 
 	vma = find_vma(mm, start);
-	if (!vma || vma->vm_start > start)
-		return -EFAULT;
+	VM_BUG_ON(!vma);
 
 	prev = vma->vm_prev;
 	if (start > vma->vm_start)
-- 
1.8.3.1

