Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4259C15813A
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2020 18:20:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727738AbgBJRUD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Feb 2020 12:20:03 -0500
Received: from userp2130.oracle.com ([156.151.31.86]:39616 "EHLO
        userp2130.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727695AbgBJRUD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Feb 2020 12:20:03 -0500
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
        by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01AHII6G056874;
        Mon, 10 Feb 2020 17:19:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=dyAcogwnHcfNE909nAOukweApWhJHWcagckpN+ztZU4=;
 b=u0JG65AP/HvGus8Kw7G9pSj3jzjX07fEjnjNju0J2Or/opPZBEWytSKEsH8xCrIXKEjH
 ZuTD35PSkWhgYOSuYPkHX4QairllQqxqciO8DS8AYdAMqvapIfNrcG9uWwKOSvqiS0Bm
 JqsMn6k+tw/UhUmNXpd4htJCTzT7h8bNVUqvRx7ooGwAVByJ8Z9b76goGR8xkfHjjmt6
 06nE/9K3U+Jhm5VsOLw+DUr67klv3TD3hHmMa3Y2BNHBImZ4z/jKp1w5d48h/p9WJJoU
 ISN5RcKo2QM9sVDsn37rMS/UcR9mxz7HOljBAwzq9pYkNZ0lM+pUErr563A3NGE+KeB7 oA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
        by userp2130.oracle.com with ESMTP id 2y2k87x0gj-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 10 Feb 2020 17:19:52 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
        by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01AHIMNX195997;
        Mon, 10 Feb 2020 17:19:51 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
        by aserp3020.oracle.com with ESMTP id 2y26sk1sba-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 10 Feb 2020 17:19:51 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
        by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01AHJnh5003779;
        Mon, 10 Feb 2020 17:19:49 GMT
Received: from [192.168.1.206] (/71.63.128.209)
        by default (Oracle Beehive Gateway v4.0)
        with ESMTP ; Mon, 10 Feb 2020 09:19:49 -0800
Subject: Re: [PATCH] mm/mempolicy: support MPOL_MF_STRICT for huge page
 mapping
To:     Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        Li Xinhai <lixinhai.lxh@gmail.com>, linux-mm@kvack.org
Cc:     akpm@linux-foundation.org, Michal Hocko <mhocko@suse.com>,
        linux-man <linux-man@vger.kernel.org>
References: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>
From:   Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <07cd0750-d908-dd3b-dee1-bc3fcf5bf771@oracle.com>
Date:   Mon, 10 Feb 2020 09:19:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 mlxscore=0
 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002100130
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002100130
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

Hello Naoya,

Do you have any thoughts on this?  In previous discussions you suggested this
approach of removing the special casing for hugetlb pages.  The code looks
good to me and patch is fine with commmit message modification.  Just wanted
to get your opinion.
-- 
Mike Kravetz
