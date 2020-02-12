Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E1D2915B539
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2020 00:50:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729103AbgBLXu0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Feb 2020 18:50:26 -0500
Received: from userp2120.oracle.com ([156.151.31.85]:44020 "EHLO
        userp2120.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727117AbgBLXuZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Feb 2020 18:50:25 -0500
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
        by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01CNo5sl181038;
        Wed, 12 Feb 2020 23:50:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=jCnwpb7DiCIZDUVhTqk9j54Zp/9vu9TDq6BMBg+b96c=;
 b=P7ajGiSRHN3VmVU3wBf17HNH0ogElmrSunxM8zJdKOdrudD5mSM5yohBgnYTvnZrg3MP
 OZPa5hnr+fQnq2EXGXLXf7hiQlb8ziMMISB7/mmJSmCZJG+/R8PnyfI10rA6cqFReRMa
 XPTufxIht+iYZzvSnQtJ6m0sealybYZt7gO1KlWlLGdaPiVcvh1PNqMlN1Gf+j890MXF
 lc7u8RYn/VI6enDEVs9sFqI9/DPEQGYT/xrc3mKjNBXmiruI4UkHb+VlzkZPb4Bx49yg
 fbcZL9xXXHIMlqY7oG2KdISX5bIOa/D94wzHuyeJtr7P4jxdn1sjrx/SaiUDJiP4xSN0 6A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
        by userp2120.oracle.com with ESMTP id 2y2p3sp4cx-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 12 Feb 2020 23:50:10 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
        by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01CNl6nx027945;
        Wed, 12 Feb 2020 23:50:10 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
        by userp3030.oracle.com with ESMTP id 2y4kah5b4b-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 12 Feb 2020 23:50:10 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
        by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01CNo9fq014234;
        Wed, 12 Feb 2020 23:50:09 GMT
Received: from [192.168.1.206] (/71.63.128.209)
        by default (Oracle Beehive Gateway v4.0)
        with ESMTP ; Wed, 12 Feb 2020 15:50:08 -0800
Subject: Re: [PATCH] mm/mempolicy: support MPOL_MF_STRICT for huge page
 mapping
To:     Li Xinhai <lixinhai.lxh@gmail.com>,
        =?UTF-8?B?SE9SSUdVQ0hJIE5BT1lBICjloIDlj6Mg55u05LmfKQ==?= 
        <naoya.horiguchi@nec.com>
Cc:     n-horiguchi <n-horiguchi@ah.jp.nec.com>,
        "linux-mm@kvack.org" <linux-mm@kvack.org>,
        akpm <akpm@linux-foundation.org>, mhocko <mhocko@suse.com>,
        linux-man <linux-man@vger.kernel.org>
References: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>
 <07cd0750-d908-dd3b-dee1-bc3fcf5bf771@oracle.com>
 <20200212032139.GA31425@hori.linux.bs1.fc.nec.co.jp>
 <2020021213250278382352@gmail.com>
From:   Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <e135a4d1-c713-2003-13ea-f8b5695a7745@oracle.com>
Date:   Wed, 12 Feb 2020 15:50:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2020021213250278382352@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9529 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 malwarescore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002120165
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9529 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1011
 impostorscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002120165
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/11/20 9:25 PM, Li Xinhai wrote:
> On 2020-02-12 at 11:21 HORIGUCHI NAOYA(堀口　直也) wrote:
>> On Mon, Feb 10, 2020 at 09:19:48AM -0800, Mike Kravetz wrote:
>>> On 1/30/20 5:33 PM, Li Xinhai wrote:
>> ...
>>>>
>>>> Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
>>>> Cc: Michal Hocko <mhocko@suse.com>
>>>> Cc: Mike Kravetz <mike.kravetz@oracle.com>
>>>> Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
>>>> Cc: linux-man <linux-man@vger.kernel.org>
>>>
>>> Hello Naoya,
>>>
>>> Do you have any thoughts on this?  In previous discussions you suggested this
>>> approach of removing the special casing for hugetlb pages.  The code looks
>>> good to me and patch is fine with commmit message modification.  Just wanted
>>> to get your opinion.
>>
>> Hi Mike, Xinhai,
>>
>> The suggested change looks good to me, too.
>>
>> Thanks,
>> Naoya Horiguchi 
> 
> Naoya, thanks for inspecting the change!

Can you please send V2 of patch with an updated commit message.

I would like the section that which lists the impact to "users using
MPOL_MF_STRICT alone" to say something like this:
If MPOL_MF_STRICT alone was previously used, hugetlb pages not following the
memory policy would not cause an EIO error.  After this change, hugetlb pages
are treated like all other pages.  If  MPOL_MF_STRICT alone is used and hugetlb
pages do not follow memory policy an EIO error will be returned.
-- 
Mike Kravetz
