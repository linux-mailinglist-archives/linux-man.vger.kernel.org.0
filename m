Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 190EC23C353
	for <lists+linux-man@lfdr.de>; Wed,  5 Aug 2020 04:13:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725904AbgHECN4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Aug 2020 22:13:56 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:51332 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725864AbgHECNz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Aug 2020 22:13:55 -0400
X-IronPort-AV: E=Sophos;i="5.75,435,1589212800"; 
   d="scan'208";a="97623746"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 05 Aug 2020 10:13:49 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id E9FE44CE34E0;
        Wed,  5 Aug 2020 10:13:48 +0800 (CST)
Received: from [10.167.220.84] (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 5 Aug 2020 10:13:49 +0800
Subject: Re: [PATCH] loop.4: Document loop_configure ioctl
To:     <mtk.manpages@gmail.com>
CC:     linux-man <linux-man@vger.kernel.org>
References: <1596422293-3122-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <CAKgNAkh=6rB653=auHyMRL=Xfo5+aDM7upbzaXDC9mofPO+hvg@mail.gmail.com>
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Message-ID: <a4753a28-0554-d0db-0397-4b2bb9d2684c@cn.fujitsu.com>
Date:   Wed, 5 Aug 2020 10:13:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkh=6rB653=auHyMRL=Xfo5+aDM7upbzaXDC9mofPO+hvg@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: E9FE44CE34E0.A1470
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
> Thank you for your patch. Please see my comments below.
> 
> On Mon, 3 Aug 2020 at 04:38, Yang Xu <xuyang2018.jy@cn.fujitsu.com> wrote:
>>
>> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
>> ---
>>   man4/loop.4 | 35 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 35 insertions(+)
>>
>> diff --git a/man4/loop.4 b/man4/loop.4
>> index 2dcbac807..abf722a25 100644
>> --- a/man4/loop.4
>> +++ b/man4/loop.4
>> @@ -177,6 +177,41 @@ This value must be a power of two in the range
>>   otherwise, an
>>   .B EINVAL
>>   error results.
>> +.TP
>> +.BR LOOP_CONFIGURE " (since Linux 5.8)"
>> +.\" commit 3448914e8cc550ba792d4ccc74471d1ca4293aae
>> +Setup and configure all loop device parameters using the (third)
>> +.BR ioctl (2)
>> +argument at once.
>> +This argument is a pointer to
>> +.I loop_config
>> +structure, defined in
>> +.I <linux/loop.h>
>> +as:
>> +.IP
>> +.in +4n
>> +.EX
>> +struct loop_config {
>> +    __u32               fd;
>> +    __u32               block_size;
>> +    struct loop_info64  info;
>> +    __u64               __reserved[8];
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
> The last two sentences (starting "Explicitly request") are hard for me
> to understand. Could you expand the wording here a little please to
> clarify?

In drivers/block/loop.c code, set status function(loop_set_status) 
doesn't handle LO_FLAGS_READ_ONLY flag and ingore it. it is the same for
LO_FLAGS_DIRECT_IO flag. "Explicitly request" is compared with 
LOOP_SET_STATUS ioctl.

Best Regards
Yang Xu
> 
> Thanks,
> 
> Michael
> 
>>   .PP
>>   Since Linux 2.6, there are two new
>>   .BR ioctl (2)
>> --
>> 2.23.0
>>
>>
>>
> 
> 


