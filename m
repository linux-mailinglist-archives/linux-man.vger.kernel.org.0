Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9492262DE8
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 13:35:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726801AbgIILet (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 07:34:49 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:28160 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1729614AbgIILdZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 07:33:25 -0400
X-IronPort-AV: E=Sophos;i="5.76,409,1592841600"; 
   d="scan'208";a="99056470"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 09 Sep 2020 19:20:36 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id 7D70F48990E5;
        Wed,  9 Sep 2020 19:20:30 +0800 (CST)
Received: from [10.167.220.84] (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 9 Sep 2020 19:20:31 +0800
Subject: Re: [PATCH v2 3/3] loop.4: Document loop_configure ioctl
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
References: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <1596707314-2361-3-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <5102fd63-a2e0-7bad-e8ef-e310acd65394@gmail.com>
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Message-ID: <76784ab4-7be9-f271-9668-46665b595f04@cn.fujitsu.com>
Date:   Wed, 9 Sep 2020 19:20:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5102fd63-a2e0-7bad-e8ef-e310acd65394@gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 7D70F48990E5.AC12E
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
> On 8/6/20 11:48 AM, Yang Xu wrote:
>> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
>> ---
>>   man4/loop.4 | 35 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 35 insertions(+)
>>
>> diff --git a/man4/loop.4 b/man4/loop.4
>> index 41abe0122..44dfd9a8c 100644
>> --- a/man4/loop.4
>> +++ b/man4/loop.4
>> @@ -181,6 +181,41 @@ This value must be a power of two in the range
>>   otherwise, an
>>   .B EINVAL
>>   error results.
>> +.TP
>> +.BR LOOP_CONFIGURE " (since Linux 5.8)"
>> +.\" commit 3448914e8cc550ba792d4ccc74471d1ca4293aae
>> +Setup and configure all loop device parameters using the (third)
>> +.BR ioctl (2)
>> +argument at once.
> 
> I suggest rewording as
> 
> [[
> Setup and configure all loop device parameters in a single step using
> the (third)
> .BR ioctl (2)
> argument.
> ]]
> 
>> +This argument is a pointer to
> 
> s/to/to a/
> Will do these on v3.
>> +.I loop_config
>> +structure, defined in
>> +.I <linux/loop.h>
>> +as:
>> +.IP
>> +.in +4n
>> +.EX
>> +struct loop_config {
>> +     __u32               fd;
>> +     __u32               block_size;
>> +     struct loop_info64  info;
>> +     __u64               __reserved[8];
>> +};
>> +.EE
>> +.in
>> +.IP
>> +In addition to doing what
>> +.BR LOOP_SET_STATUS
>> +can do,
>> +.BR LOOP_CONFIGURE
>> +can also be used to set the correct block size immediately
>> +by setting loop_config.block_size. Explicitly request
>> +direct I/O mode by setting
>> +.BR LO_FLAGS_DIRECT_IO
>> +in loop_config.info.lo_flags. Explicitly request read-only
>> +mode by setting
>> +.BR LO_FLAGS_READ_ONLY
>> +in loop_config.info.lo_flags.
> 
> On an earlier version of this patch, I commented that this piece is
> unclear (the language is difficult to understand). If I correctly
> guess what you are trying to say, then I think it would be better
> worded as something like:
> 
> [[
> In addition to doing what
> .BR LOOP_SET_STATUS
> can do,
> .BR LOOP_CONFIGURE
> can also be used to the following:
> .IP * 2
> Set the correct block size immediately by setting
> .IR loop_config.block_size ;
> .IP *
> explicitly request direct I/O mode by setting
> .BR LO_FLAGS_DIRECT_IO
> in loop_config.info.lo_flags;
> .IP *
> explicitly request read-only mode by setting
> .BR LO_FLAGS_READ_ONLY
> in
> .IR loop_config.info.lo_flags .
> ]]
> 
> In other words, I think you mean to say that LOOP_CONFIGURE can be used
> to any one of the things in the list, right?
Yes. you are right.
> 
> If I'm right, could you redraft the patch please. If I'm not right, I
> think we better discuss some more how the text should look :-).Will do it on v3.
> 
> Thanks,
> 
> Michael
> 


