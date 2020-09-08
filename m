Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F73C260F0E
	for <lists+linux-man@lfdr.de>; Tue,  8 Sep 2020 11:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728804AbgIHJzo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Sep 2020 05:55:44 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:33550 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1728798AbgIHJzo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Sep 2020 05:55:44 -0400
X-IronPort-AV: E=Sophos;i="5.76,405,1592841600"; 
   d="scan'208";a="99004472"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 08 Sep 2020 17:55:41 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id 6373748990D9;
        Tue,  8 Sep 2020 17:55:39 +0800 (CST)
Received: from [10.167.220.84] (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Tue, 8 Sep 2020 17:55:38 +0800
Subject: Re: AW: AW: [PATCH v2 2/3] loop.4: add some details about lo_flag
To:     Walter Harms <wharms@bfs.de>, <mtk.manpages@gmail.com>
References: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <1596707314-2361-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <f25c32a3f4934b329523505796964f63@bfs.de>
 <2ba1ca61-cf3d-0103-d3de-b3bc6e8bd0af@cn.fujitsu.com>
 <81fa86757a3e463f8e103f23e06ab67e@bfs.de>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Message-ID: <726b1166-e77a-0580-7927-d2f324fda4ff@cn.fujitsu.com>
Date:   Tue, 8 Sep 2020 17:55:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <81fa86757a3e463f8e103f23e06ab67e@bfs.de>
Content-Type: text/plain; charset="gbk"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 6373748990D9.AD000
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi  Walter


> ok, i understand now (i hope).
> 
> maybe this version is more clear:
> 
> The LOOP_SET_STATUS can neither set the
> .B lo_flags
> LO_FLAGS_READ_ONLY  nor the LO_FLAGS_DIRECT_IO
> because they are exclusively set from kernel.
Sorry for the late reply.
I think it is better.
Thanks.
Let's wait for Michael's review.

Best Regards
Yang Xu
> 
> hope that helps
> wh
> 
> ________________________________________
> Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im Auftrag von Yang Xu [xuyang2018.jy@cn.fujitsu.com]
> Gesendet: Montag, 10. August 2020 08:53
> An: Walter Harms; linux-man@vger.kernel.org
> Betreff: Re: AW: [PATCH v2 2/3] loop.4: add some details about lo_flag
> 
> Hi Walter
> 
>> Hi,
>> IMHO "first" and "last" is something that should be avoided in documentation
>> because the meaning may change in future releases.
> Thanks, I see.
>> I guess you want to say: lo_number and reserved ?
> No, I just said the loop_set_status ioctl can not set read-only and
> direct io flag.
> 
> Best Regards
> Yang Xu
>>
>> re,
>>    wh
>> ________________________________________
>> Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im Auftrag von Yang Xu [xuyang2018.jy@cn.fujitsu.com]
>> Gesendet: Donnerstag, 6. August 2020 11:48
>> An: linux-man@vger.kernel.org
>> Cc: Yang Xu
>> Betreff: [PATCH v2 2/3] loop.4: add some details about lo_flag
>>
>> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
>> ---
>>    man4/loop.4 | 3 +++
>>    1 file changed, 3 insertions(+)
>>
>> diff --git a/man4/loop.4 b/man4/loop.4
>> index 1f8a31ac7..41abe0122 100644
>> --- a/man4/loop.4
>> +++ b/man4/loop.4
>> @@ -136,6 +136,9 @@ Allow automatic partition scanning.
>>    Use direct io mode to access backing file.
>>    .RE
>>    .TP
>> +.I The LOOP_SET_STATUS can not set the first and last flag because
>> +they are both set from kernel.
>> +.TP
>>    .B LOOP_GET_STATUS
>>    Get the status of the loop device.
>>    The (third)
>> --
>> 2.23.0
>>
>>
>>
>>
>>
> 
> 
> 
> 


