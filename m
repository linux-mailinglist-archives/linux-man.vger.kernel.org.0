Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A69E4263ACB
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 04:46:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729911AbgIJCA5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 22:00:57 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:37573 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1730077AbgIJBu6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 21:50:58 -0400
X-IronPort-AV: E=Sophos;i="5.76,411,1592841600"; 
   d="scan'208";a="99074172"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 10 Sep 2020 09:12:51 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id DD0FA48990E9;
        Thu, 10 Sep 2020 09:12:46 +0800 (CST)
Received: from [10.167.220.84] (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 10 Sep 2020 09:12:46 +0800
Subject: Re: [PATCH v3 1/2] loop.4: add some details about lo_flags
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <wharms@bfs.de>
References: <5102fd63-a2e0-7bad-e8ef-e310acd65394@gmail>
 <1599653156-13115-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <9e6c3764-9a5e-70ab-a52b-0a0a6a6c249c@gmail.com>
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Message-ID: <0c6e32a0-b02b-234c-6b36-1b7dcd2ffb41@cn.fujitsu.com>
Date:   Thu, 10 Sep 2020 09:12:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9e6c3764-9a5e-70ab-a52b-0a0a6a6c249c@gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: DD0FA48990E9.AF85F
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael

> Hello Yang Xu,
> 
> On 9/9/20 2:05 PM, Yang Xu wrote:
>> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
>> ---
>>   man4/loop.4 | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/man4/loop.4 b/man4/loop.4
>> index f4cf48043..5cc9a7e79 100644
>> --- a/man4/loop.4
>> +++ b/man4/loop.4
>> @@ -136,6 +136,14 @@ Allow automatic partition scanning.
>>   Use direct I/O mode to access the backing file.
>>   .RE
>>   .TP
>> +The
>> +.BR LOOP_SET_STATUS
>> +can neither set the
>> +.BR LO_FLAGS_READ_ONLY
>> +nor
>> +.BR LO_FLAGS_DIRECT_IO
>> +lo_flags because they are exclusively set from kernel.
>> +.TP
>>   .B LOOP_GET_STATUS
>>   Get the status of the loop device.
>>   The (third)
> 
> Looking at the kernel code:
> 
> [[
>> /* LO_FLAGS that can be set using LOOP_SET_STATUS(64) */
> #define LOOP_SET_STATUS_SETTABLE_FLAGS (LO_FLAGS_AUTOCLEAR | LO_FLAGS_PARTSCAN)
> 
> /* LO_FLAGS that can be cleared using LOOP_SET_STATUS(64) */
> #define LOOP_SET_STATUS_CLEARABLE_FLAGS (LO_FLAGS_AUTOCLEAR)
> 
> /* LO_FLAGS that can be set using LOOP_CONFIGURE */
> #define LOOP_CONFIGURE_SETTABLE_FLAGS (LO_FLAGS_READ_ONLY | LO_FLAGS_AUTOCLEAR \
>                                         | LO_FLAGS_PARTSCAN | LO_FLAGS_DIRECT_IO)
> ]]
> 
> and
> 
> [[
>          /* Mask out flags that can't be set using LOOP_SET_STATUS. */
>          lo->lo_flags &= LOOP_SET_STATUS_SETTABLE_FLAGS;
>          /* For those flags, use the previous values instead */
>          lo->lo_flags |= prev_lo_flags & ~LOOP_SET_STATUS_SETTABLE_FLAGS;
>          /* For flags that can't be cleared, use previous values too */
>          lo->lo_flags |= prev_lo_flags & ~LOOP_SET_STATUS_CLEARABLE_FLAGS;
> ]]
> 
> would it not be clearer and simpler just to say something like:
> 
> [[
> The only lo_flags that can be modified using LOOP_SET_STATUS are
> LO_FLAGS_AUTOCLEAR and LO_FLAGS_PARTSCAN.
Thanks. Will use more clear sentence  on v4.

Best Regards
Yang Xu
> ]]
> 
> ?
> 
> Thanks,
> 
> Michael
> 


