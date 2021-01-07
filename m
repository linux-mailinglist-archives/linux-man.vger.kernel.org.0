Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE3C42ECAB4
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 07:56:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725306AbhAGG4I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 01:56:08 -0500
Received: from mail.cn.fujitsu.com ([183.91.158.132]:17548 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725862AbhAGG4H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 01:56:07 -0500
X-IronPort-AV: E=Sophos;i="5.79,329,1602518400"; 
   d="scan'208";a="103267050"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 07 Jan 2021 14:54:12 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id C8C1B4CE602B;
        Thu,  7 Jan 2021 14:54:10 +0800 (CST)
Received: from [10.167.220.84] (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 7 Jan 2021 14:54:10 +0800
Message-ID: <5FF6B01F.8030408@cn.fujitsu.com>
Date:   Thu, 7 Jan 2021 14:54:23 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.2; zh-CN; rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     Manfred Spraul <manfred@colorfullife.com>,
        "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>, Davidlohr Bueso <dbueso@suse.de>,
        <linux-man@vger.kernel.org>,
        Joe Lawrence <joe.lawrence@redhat.com>,
        Robert Kettler <robert.kettler@outlook.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Kees Cook <keescook@chromium.org>,
        Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
References: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com> <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com> <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com> <5FEBDFF3.7020606@cn.fujitsu.com> <265f82a2-42e7-45a4-1f80-8d24d66fceda@colorfullife.com> <516a60fc-bb97-1b36-1830-fb5191617ed5@gmail.com> <d588d638-5abe-eb2a-e336-3e6fe31ad525@colorfullife.com> <38525dfc-e909-8fc2-ffc7-f38f7c280166@gmail.com>
In-Reply-To: <38525dfc-e909-8fc2-ffc7-f38f7c280166@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: C8C1B4CE602B.AE668
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael

I think now it is nothing block this patch.

Best Regards
Yang Xu
> On 12/30/20 3:33 PM, Manfred Spraul wrote:
>> Hi Michael,
>>
>> On 12/30/20 2:35 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Manfred,
>>>
>>> On 12/30/20 12:20 PM, Manfred Spraul wrote:
>>>> On 12/30/20 3:03 AM, Yang Xu wrote:
>>>>> Hi Manfred
>>>>>> Hi,
>>>>>>
>>>>>>
>>>>>> On 12/22/20 12:55 PM, Alejandro Colomar (mailing lists; readonly) wrote:
>>>>>>> Hi Yang,
>>>>>>>
>>>>>>> It looks good to me.
>>>>>>> I'll add a few people that might want to comment.
>>>>>> The code returns a semid_ds structure, and if I take strace as reference
>>>>>> implementation, then user space expects a semid_ds as well.
>>>>>> https://github.com/strace/strace/commit/8f0870a780bfd8cd9a91c3b7ad05baccda10bc84
>>>>>>
>>>>>>
>>>>>>
>>>>>> In addition, the current page is self-inconsistent: seminfo doesn't
>>>>>> contain sem_perm.
>>>>> semctl manpage doesn't say seminfo contain sem_perm. Or, I miss something?
>>>> The current man page says that SEM_STAT_ANY returns a seminfo structure,
>>>> without checking sem_perm.
>>>>
>>>> This is self-inconsistent: struct seminfo contains global
>>>> (per-namespace) information, sem_perm.mode is a per-array information.
>>>>
>>>> I.e.: It is clear that the man page needs to be updated, and not the code.
>>> After reading this thread, I'm not quite clear. Do you mean some
>>> additional change is required after Xang Yu's patch?
>>
>> Sorry for the confusion:
>>
>> No further changes are required.
>>
>> (I have crosschecked shmctl, msgctl, actual code, and strace as user
>> space example: After Xang Yu's patch is applied, everything is consistent)
>
> Thanks, Manfred! It's clear to me now.
>
> Cheers,
>
> Michael
>
>



