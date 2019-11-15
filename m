Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC4F0FE138
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2019 16:29:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727507AbfKOP3E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Nov 2019 10:29:04 -0500
Received: from mail-pl1-f194.google.com ([209.85.214.194]:45556 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727412AbfKOP3D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Nov 2019 10:29:03 -0500
Received: by mail-pl1-f194.google.com with SMTP id w7so4870456plz.12
        for <linux-man@vger.kernel.org>; Fri, 15 Nov 2019 07:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vpMmpk2iFEnj8y0QkqI43ompgmnFwk5ZKVJJu7bsWBo=;
        b=aj0AHUPF7QInmjcbAtOPITbgZVzRStfF+WoKwqErATFS6oRR0vcq3G55/blhPTUW9o
         XX8mOP7MyT3rxRmSWclv7LkVDftEjXOmcx2/+dNdm2alSDTLLPQpgFpwOW2xUCU55y/h
         61jmmXxLadXstgA05y0QRsB/T8hVC0MY5t7XQVT8yY3wJC80xYz51pDk47J/vzvP8x3V
         YSavhFwu7U5xFXm0672fAe5+cDBwtwzxboc/GBs1DmZCysMZQlF2Z8pxMpaslu1ZEua9
         VC9s4gNCJcWh104FaUZsNqfybyBQCEdctKQ+4GiWJ2hyZY+kcAhnNszGgaR0pfdeb5c/
         7hUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vpMmpk2iFEnj8y0QkqI43ompgmnFwk5ZKVJJu7bsWBo=;
        b=ucD7tvci+a6pip3uogcapucN8WvI/9/ddEDq8Q8KnvccgLwjp1rmB2Xt29HXVU0m+B
         rq+nxsUzJhhncx5kcTaPf6Gba97s9R1pONQB2ut2Z3wEU4p7a14Uc8o4StWQ1zcD7fMc
         mbOpGtRa1VfbGYfYORf5QXJACeQNboNegyKMRpDL54+kJOJRwf5CpGPejGZ/lnu00hil
         oXyBKTRHooevdaG9GoakKLAkCcACPW8I724Bv46x/gXVdgAPAV22j6XT42Ys//OO65Gk
         ygb3ZHpjB9r+2zG2QFwuUFePOX0rJB1Y0vQwvZ1OqjOQPl5a8Mv+BYqZt1A/Xb1V7Zc3
         pvLA==
X-Gm-Message-State: APjAAAUoOqrkp51DKjMG4WTDiXpRWdZYVUyirxi4K4FZD/Bdc2PEwfP9
        Dug/y/4J2MtnGNEnUSIP6ds=
X-Google-Smtp-Source: APXvYqzyMfFEp3XqbK4oc3IHTq7CHUrjmffAsdK6oHQsITGLDpjeJYUXXG9sLuA3hxwp+mGv9iuJbg==
X-Received: by 2002:a17:90b:30cc:: with SMTP id hi12mr20189706pjb.80.1573831742617;
        Fri, 15 Nov 2019 07:29:02 -0800 (PST)
Received: from binjiang-hz-dhcp091254.china.nsn-net.net ([131.228.2.20])
        by smtp.gmail.com with ESMTPSA id a28sm11949513pfg.51.2019.11.15.07.28.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Nov 2019 07:29:01 -0800 (PST)
From:   Li Xinhai <lixinhai.lxh@gmail.com>
To:     linux-mm@kvack.org
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        Michal Hocko <mhocko@suse.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Hugh Dickins <hughd@google.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: [PATCH v4 2/2] mm: Fix checking unmapped holes for mbind
Date:   Fri, 15 Nov 2019 23:28:18 +0800
Message-Id: <1573831698-7700-1-git-send-email-lixinhai.lxh@gmail.com>
X-Mailer: git-send-email 1.8.3.1
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
send again for removing space

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

