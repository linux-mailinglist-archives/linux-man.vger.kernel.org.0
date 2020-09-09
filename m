Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8940726305E
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 17:19:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728971AbgIIPQ3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 11:16:29 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:37810 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1729251AbgIILao (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 07:30:44 -0400
X-IronPort-AV: E=Sophos;i="5.76,409,1592841600"; 
   d="scan'208";a="99056415"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 09 Sep 2020 19:18:06 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id 80FE748990DE;
        Wed,  9 Sep 2020 19:17:58 +0800 (CST)
Received: from [10.167.220.84] (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 9 Sep 2020 19:18:00 +0800
Subject: Re: AW: AW: [PATCH v2 2/3] loop.4: add some details about lo_flag
To:     <mtk.manpages@gmail.com>
CC:     Walter Harms <wharms@bfs.de>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <1596707314-2361-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <f25c32a3f4934b329523505796964f63@bfs.de>
 <2ba1ca61-cf3d-0103-d3de-b3bc6e8bd0af@cn.fujitsu.com>
 <81fa86757a3e463f8e103f23e06ab67e@bfs.de>
 <726b1166-e77a-0580-7927-d2f324fda4ff@cn.fujitsu.com>
 <CAKgNAkjKvVRzeHbPkFzQmKc5pPJNH0GjzQx5TNXT-KHNM7jt6g@mail.gmail.com>
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Message-ID: <0e948073-e757-8cdd-3e30-5905f5b9cdff@cn.fujitsu.com>
Date:   Wed, 9 Sep 2020 19:17:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjKvVRzeHbPkFzQmKc5pPJNH0GjzQx5TNXT-KHNM7jt6g@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 80FE748990DE.AE401
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
> On Tue, 8 Sep 2020 at 11:55, Yang Xu <xuyang2018.jy@cn.fujitsu.com> wrote:
>>
>> Hi  Walter
>>
>>
>>> ok, i understand now (i hope).
>>>
>>> maybe this version is more clear:
>>>
>>> The LOOP_SET_STATUS can neither set the
>>> .B lo_flags
>>> LO_FLAGS_READ_ONLY  nor the LO_FLAGS_DIRECT_IO
>>> because they are exclusively set from kernel.
>> Sorry for the late reply.
>> I think it is better.
>> Thanks.
>> Let's wait for Michael's review.
> 
> I think it is probably better as Walter suggests. Could you redraft
> the patch please?
Will do it on v3.
> 
> Thanks,
> 
> Michael
> 
> 
> 
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
> 
> 


