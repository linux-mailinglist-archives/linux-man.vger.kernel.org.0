Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C901414F606
	for <lists+linux-man@lfdr.de>; Sat,  1 Feb 2020 04:28:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726668AbgBAD2S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Jan 2020 22:28:18 -0500
Received: from userp2130.oracle.com ([156.151.31.86]:43852 "EHLO
        userp2130.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726636AbgBAD2R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Jan 2020 22:28:17 -0500
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
        by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0113CxlY066122;
        Sat, 1 Feb 2020 03:28:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=yGdDRVckIrw5bqKnnsN7v+wk19P3bFiaPC43XZUWGvM=;
 b=MVQLdAasudw/GzAZELUFvBHKa4hD2Wg9YEI6DKHP6bJ5oILKiMlmABHmyrFNrKl/OsXC
 ditXt/KHzeLWnxKICKWrOdVMDHC5sCZn7D8Q15fbRGBwfCbv5QOqnaQ6EwDKLVJGjZTC
 0tWlB4AveFQAGtdpQQyJLA8U3o8Lyio+82svatpeke7oG74CrNE9OMsm7Y5/jp+6HqTZ
 eLqpz/WEr3ldFSmnzt7ScaXw4lm9joYYsylzUes/hhzwoLkYLultE/6CpEvAiDoMLMgl
 8a7dbAgs28j2IA+AkMHa7CSMjLhYyjOlPLI03KmR2Debza7UAJk/ttHYK3a5Tb+gAyyB CA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
        by userp2130.oracle.com with ESMTP id 2xw0rtr4kr-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Sat, 01 Feb 2020 03:28:06 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
        by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0113Da8o113808;
        Sat, 1 Feb 2020 03:28:05 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
        by aserp3030.oracle.com with ESMTP id 2xvycx7hbp-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Sat, 01 Feb 2020 03:28:05 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
        by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0113S2Nd005579;
        Sat, 1 Feb 2020 03:28:02 GMT
Received: from [192.168.1.206] (/71.63.128.209)
        by default (Oracle Beehive Gateway v4.0)
        with ESMTP ; Fri, 31 Jan 2020 19:28:02 -0800
Subject: Re: [PATCH] mm/mempolicy: support MPOL_MF_STRICT for huge page
 mapping
To:     Li Xinhai <lixinhai.lxh@gmail.com>, linux-mm@kvack.org
Cc:     akpm@linux-foundation.org, Michal Hocko <mhocko@suse.com>,
        Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        linux-man <linux-man@vger.kernel.org>
References: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>
From:   Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <3b12c3ff-d591-d3a6-3ee8-600940e8b30d@oracle.com>
Date:   Fri, 31 Jan 2020 19:28:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9517 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002010019
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9517 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002010019
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/30/20 5:33 PM, Li Xinhai wrote:
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
> Analysis of potential impact on existing users:
> - For users who using MPOL_MF_STRICT alone, since mbind() don't report
>   reliable answer about misplaced page, their existing code have to
>   utilize other facilities, e.g. numa_maps of proc, to check misplaced
>   page. After this patch applied, that dedicated checking will still work
>   without been impacted;

I do not agree with this characterization of impact to existing users.  If
someone uses MPOL_MF_STRICT alone with hugetlb pages today, they will never
get EIO.  After this patch, they will get EIO if the hugetlb pages do not
follow the policy.

Yes, this is the desired behavior after the change with updated documentation.
However, it is a potential change for existing users.  I honestly do not
believe anyone will notice.  But, it is a change in behavior.

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
> ---
> Link to relevant discussion:
> https://lore.kernel.org/linux-mm/1578993378-10860-2-git-send-email-lixinhai.lxh@gmail.com/
> 

Thanks for doing this and the commit message.  I do not see any issues with
the code.

I believe removing the special case for hugetlb pages in mbind is a good
thing.  It is unfortunate that it will cause a change in behavior.  My
belief is that this change will go unnoticed.  Providing consistent
behavior that matches the (updated) documentation is better that maintaining
the current functionality into the future.

-- 
Mike Kravetz
