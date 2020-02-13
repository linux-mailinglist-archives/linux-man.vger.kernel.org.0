Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 389DD15C7F5
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2020 17:26:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730358AbgBMQRQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Feb 2020 11:17:16 -0500
Received: from userp2130.oracle.com ([156.151.31.86]:46472 "EHLO
        userp2130.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730145AbgBMQRP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Feb 2020 11:17:15 -0500
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
        by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01DG8bse081743;
        Thu, 13 Feb 2020 16:17:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=JVJepUq6czkv9TV2Wl6THtfXO7P0/KwUGW2xcP8Qchw=;
 b=UGQOA3d/aGy6A2fAQKf+rp4GeFSPde2RNG7BNA8fTgpajWDY7jvMQB/c3/chE/tGIoCG
 I4zs0I/nSv6KyPPeh8MKJP2HNhloN7KdWC9kE7tfQvJ+wVfnKwwIytD2hIOI3pS2nS2Q
 Vk+QVtTQtURU/FLeeM1jHGXCxzpCThy2bwpmPcxF19pmSNYhdhB1lEVxn+PNtKLtlbkT
 VOcqnt/TVCASTxnjiQZn9XiNjj3F0hqDgyylX1SWLdwr4kMUiHG9pX4iGaUAxckR8TVI
 B7b/ifEmLul/rGKWp3pNFBnHUhsjQyi9Jhnqbv3JkvFhYeQ1eMyM7Kiw95ROgGCM793f DA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
        by userp2130.oracle.com with ESMTP id 2y2k88kbng-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 13 Feb 2020 16:17:03 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
        by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01DFvZr6131641;
        Thu, 13 Feb 2020 16:17:02 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
        by aserp3020.oracle.com with ESMTP id 2y4k3723jj-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 13 Feb 2020 16:17:02 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
        by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01DGH15U002922;
        Thu, 13 Feb 2020 16:17:01 GMT
Received: from [192.168.1.206] (/71.63.128.209)
        by default (Oracle Beehive Gateway v4.0)
        with ESMTP ; Thu, 13 Feb 2020 08:17:01 -0800
Subject: Re: [PATCH v2] mm/mempolicy: support MPOL_MF_STRICT for huge page
 mapping
To:     Li Xinhai <lixinhai.lxh@gmail.com>, linux-mm@kvack.org
Cc:     akpm@linux-foundation.org, Michal Hocko <mhocko@suse.com>,
        Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        linux-man <linux-man@vger.kernel.org>
References: <1581559627-6206-1-git-send-email-lixinhai.lxh@gmail.com>
From:   Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <ae20284f-5a1e-0668-f299-0edcd445e487@oracle.com>
Date:   Thu, 13 Feb 2020 08:17:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1581559627-6206-1-git-send-email-lixinhai.lxh@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9530 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 adultscore=0
 bulkscore=0 malwarescore=0 phishscore=0 suspectscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002130121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9530 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002130121
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/12/20 6:07 PM, Li Xinhai wrote:
> MPOL_MF_STRICT is used in mbind() for purposes:
> (1) MPOL_MF_STRICT is set alone without MPOL_MF_MOVE or MPOL_MF_MOVE_ALL,
>     to check if there is misplaced page and return -EIO;
> (2) MPOL_MF_STRICT is set with MPOL_MF_MOVE or MPOL_MF_MOVE_ALL, to check
>     if there is misplaced page which is failed to isolate, or page is
>     success on isolate but failed to move, and return -EIO.
> 
> For non hugepage mapping, (1) and (2) are implemented as expectation.
> For hugepage mapping, (1) is not implemented. And in (2), the part about
> failed to isolate and report -EIO is not implemented.
> 
> This patch implements the missed parts for hugepage mapping. Benefits
> with it applied:
> - User space can apply same code logic to handle mbind() on hugepage and
>   non hugepage mapping;
> - Reliably using MPOL_MF_STRICT alone to check whether there is misplaced
>   page or not when bind policy on address range, especially for address
>   range which contains both hugepage and non hugepage mapping.
> 
> Analysis of potential impact to existing users:
> - If MPOL_MF_STRICT alone was previously used, hugetlb pages not following
>   the memory policy would not cause an EIO error.  After this change,
>   hugetlb pages are treated like all other pages. If  MPOL_MF_STRICT alone
>   is used and hugetlb pages do not follow memory policy an EIO error will
>   be returned.
> - For users who using MPOL_MF_STRICT with MPOL_MF_MOVE or
>   MPOL_MF_MOVE_ALL, the semantic about some pages could not be moved will
>   not be changed by this patch, because failed to isolate and failed to
>   move have same effects to users, so their existing code will not be
>   impacted.
> 
> In mbind man page, the note about 'MPOL_MF_STRICT is ignored on huge page
> mappings' can be removed after this patch is applied.
> 
> Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Mike Kravetz <mike.kravetz@oracle.com>
> Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
> Cc: linux-man <linux-man@vger.kernel.org>

Thanks for the update.

The current behavior with MPOL_MF_STRICT and hugetlb pages is inconsistent
and does not match documentation (as described above).  The special behavior
for hugetlb pages ideally should have been removed when hugetlb page migration
was introduced.  It is unlikely that anyone relies on today's inconsistent
behavior, and removing one more case of special handling for hugetlb pages
is a good thing.

Reviewed-by: Mike Kravetz <mike.kravetz@oracle.com>
-- 
Mike Kravetz
