Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 075DF2E759D
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 03:04:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726300AbgL3CEH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 21:04:07 -0500
Received: from mail.cn.fujitsu.com ([183.91.158.132]:53406 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726276AbgL3CEH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 21:04:07 -0500
X-IronPort-AV: E=Sophos;i="5.78,459,1599494400"; 
   d="scan'208";a="103068063"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 30 Dec 2020 10:03:16 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id 3482F4CE6018;
        Wed, 30 Dec 2020 10:03:16 +0800 (CST)
Received: from [10.167.220.84] (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 30 Dec 2020 10:03:15 +0800
Message-ID: <5FEBDFF3.7020606@cn.fujitsu.com>
Date:   Wed, 30 Dec 2020 10:03:31 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.2; zh-CN; rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To:     Manfred Spraul <manfred@colorfullife.com>
CC:     "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>, <mtk.manpages@gmail.com>,
        Davidlohr Bueso <dbueso@suse.de>, <linux-man@vger.kernel.org>,
        Joe Lawrence <joe.lawrence@redhat.com>,
        Robert Kettler <robert.kettler@outlook.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Kees Cook <keescook@chromium.org>,
        Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
References: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com> <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com> <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com>
In-Reply-To: <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 3482F4CE6018.AEAC4
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Manfred
> Hi,
>
>
> On 12/22/20 12:55 PM, Alejandro Colomar (mailing lists; readonly) wrote:
>> Hi Yang,
>>
>> It looks good to me.
>> I'll add a few people that might want to comment.
>
> The code returns a semid_ds structure, and if I take strace as reference
> implementation, then user space expects a semid_ds as well.
> https://github.com/strace/strace/commit/8f0870a780bfd8cd9a91c3b7ad05baccda10bc84
>
>
> In addition, the current page is self-inconsistent: seminfo doesn't
> contain sem_perm.
semctl manpage doesn't say seminfo contain sem_perm. Or, I miss something?
>
> The pages for msgctl and shmctl are correct, i.e. no further obvious
> inconsistencies.
>
> Thus: The man page for semctl is incorrect, the page needs to be updated.
>
> Acked-by: manfred@colorfullife.com
>
>> Thanks,
>>
>> Alex
>>
>> On 12/22/20 6:55 AM, Yang Xu wrote:
>>> Since kernel commit a280d6dc77eb ("ipc/sem: introduce
>>> semctl(SEM_STAT_ANY)"),
>>> it only skips read access check when using SEM_STAT_ANY command. And
>>> it should
>>> use the semid_ds struct instead of seminfo struct. Fix this.
>>>
>>> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
>>> ---
>>> man2/semctl.2 | 4 ++--
>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/man2/semctl.2 b/man2/semctl.2
>>> index dd3fb077b..a7462c5cc 100644
>>> --- a/man2/semctl.2
>>> +++ b/man2/semctl.2
>>> @@ -297,8 +297,8 @@ all semaphore sets on the system.
>>> .TP
>>> .BR SEM_STAT_ANY " (Linux-specific, since Linux 4.17)"
>>> Return a
>>> -.I seminfo
>>> -structure containing the same information as for
>>> +.I semid_ds
>>> +structure as for
>>> .BR SEM_STAT .
>>> However,
>>> .I sem_perm.mode
>>>
>
>
>
> .
>



