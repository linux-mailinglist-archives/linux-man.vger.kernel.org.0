Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C6F73FC2A5
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2019 10:33:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726599AbfKNJc6 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Thu, 14 Nov 2019 04:32:58 -0500
Received: from tyo162.gate.nec.co.jp ([114.179.232.162]:42436 "EHLO
        tyo162.gate.nec.co.jp" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726057AbfKNJc6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Nov 2019 04:32:58 -0500
Received: from mailgate02.nec.co.jp ([114.179.233.122])
        by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xAE9VI5i015505
        (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Thu, 14 Nov 2019 18:31:18 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
        by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xAE9VIwZ024210;
        Thu, 14 Nov 2019 18:31:18 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
        by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xAE9TScB014027;
        Thu, 14 Nov 2019 18:31:18 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.151] [10.38.151.151]) by mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-10367646; Thu, 14 Nov 2019 18:30:19 +0900
Received: from BPXM23GP.gisp.nec.co.jp ([10.38.151.215]) by
 BPXC23GP.gisp.nec.co.jp ([10.38.151.151]) with mapi id 14.03.0439.000; Thu,
 14 Nov 2019 18:30:19 +0900
From:   Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
To:     Li Xinhai <lixinhai.lxh@gmail.com>
CC:     "linux-mm@kvack.org" <linux-mm@kvack.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michal Hocko <mhocko@suse.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Hugh Dickins <hughd@google.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 2/2] mm: Fix checking unmapped holes for mbind
Thread-Topic: [PATCH v4 2/2] mm: Fix checking unmapped holes for mbind
Thread-Index: AQHVljTJZA3Warc7ZUmc7XsrCEqQ6qeJ2PgA
Date:   Thu, 14 Nov 2019 09:30:19 +0000
Message-ID: <20191114093018.GA2144@hori.linux.bs1.fc.nec.co.jp>
References: <1573218104-11021-1-git-send-email-lixinhai.lxh@gmail.com>
 <1573218104-11021-3-git-send-email-lixinhai.lxh@gmail.com>
In-Reply-To: <1573218104-11021-3-git-send-email-lixinhai.lxh@gmail.com>
Accept-Language: en-US, ja-JP
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.34.125.150]
Content-Type: text/plain; charset="iso-2022-jp"
Content-ID: <3FB603DA63AA5D4AB837590454F62DE0@gisp.nec.co.jp>
Content-Transfer-Encoding: 8BIT
MIME-Version: 1.0
X-TM-AS-MML: disable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Nov 08, 2019 at 09:01:44PM +0800, Li Xinhai wrote:
> mbind() is required to report EFAULT if range, specified by addr and len,
> contains unmapped holes. In current implementation, below rules are applied
> for this checking:
> 1 Unmapped holes at any part of the specified range should be reported as
>   EFAULT if mbind() for none MPOL_DEFAULT cases;
> 2 Unmapped holes at any part of the specified range should be ignored (do
>   not reprot EFAULT) if mbind() for MPOL_DEFAULT case;
> 3 The whole range in an unmapped hole should be reported as EFAULT;
> Note that rule 2 does not fullfill the mbind() API definition, but since
> that behavior has existed for long days (the internal flag
> MPOL_MF_DISCONTIG_OK is for this purpose), this patch does not plan to
> change it.
> 
> In current code, application observed inconsistent behavior on rule 1 and
> rule 2 respectively. That inconsistency is fixed as below details.
> 
> Cases of rule 1:
> 1) Hole at head side of range. Current code reprot EFAULT, no change by
> this patch.
> [  vma  ][ hole ][  vma  ]
>             [  range  ]
> 2) Hole at middle of range. Current code report EFAULT, no change by
> this patch.
> [  vma  ][ hole ][ vma ]
>    [     range      ]
> 3) Hole at tail side of range. Current code do not report EFAULT, this
> patch fix it.
> [  vma  ][ hole ][ vma ]
>    [  range  ]
> 
> Cases of rule 2:
> 1) Hole at head side of range. Current code reprot EFAULT, this patch
> fix it.
> [  vma  ][ hole ][  vma  ]
>             [  range  ]
> 2) Hole at middle of range. Current code do not report EFAULT, no change
> by this patch.
> this patch.
> [  vma  ][ hole ][ vma]
>    [     range      ]
> 3) Hole at tail side of range. Current code do not report EFAULT, no
> change by this patch.
> [  vma  ][ hole ][ vma]
>    [  range  ]
> 
> This patch has no changes to rule 3.
> 
> The unmapped hole checking can also be handled by using .pte_hole(),
> instead of .test_walk(). But .pte_hole() is called for holes inside and
> outside vma, which causes more cost, so this patch keeps the original
> design with .test_walk().
> 
> Fixes: 6f4576e3687b ("mempolicy: apply page table walker on queue_pages_range()")
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Hugh Dickins <hughd@google.com>
> Cc: linux-man <linux-man@vger.kernel.org>
> Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
> ---
>  mm/mempolicy.c | 40 +++++++++++++++++++++++++++-------------
>  1 file changed, 27 insertions(+), 13 deletions(-)
> 
> diff --git a/mm/mempolicy.c b/mm/mempolicy.c
> index 807f06f..c697b29 100644
> --- a/mm/mempolicy.c
> +++ b/mm/mempolicy.c
> @@ -410,7 +410,9 @@ struct queue_pages {
>  	struct list_head *pagelist;
>  	unsigned long flags;
>  	nodemask_t *nmask;
> -	struct vm_area_struct *prev;
> +	unsigned long start;
> +	unsigned long end;
> +	struct vm_area_struct *first;
>  };
>  
>  /*
> @@ -619,14 +621,20 @@ static int queue_pages_test_walk(unsigned long start, unsigned long end,
>  	unsigned long flags = qp->flags;
>  
>  	/* range check first */
> -	if (!(flags & MPOL_MF_DISCONTIG_OK)) {
> -		if (!vma->vm_next && vma->vm_end < end)
> -			return -EFAULT;
> -		if (qp->prev && qp->prev->vm_end < vma->vm_start)
> +	VM_BUG_ON((vma->vm_start > start) || (vma->vm_end < end));
> +
> +	if (!qp->first) {
> +		qp->first = vma;
> +		if (!(flags & MPOL_MF_DISCONTIG_OK) &&
> +			(qp->start < vma->vm_start))
> +			/* hole at head side of range */
>  			return -EFAULT;
>  	}
> -
> -	qp->prev = vma;
> +	if (!(flags & MPOL_MF_DISCONTIG_OK) &&
> +		((vma->vm_end < qp->end) && 

You here have a trailing whitespace.

Otherwise, looks good to me.

Reviewed-by: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
