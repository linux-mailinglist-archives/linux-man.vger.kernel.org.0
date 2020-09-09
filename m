Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9886A262E78
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 14:23:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730145AbgIIMXj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 08:23:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729449AbgIIMWW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 08:22:22 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 897ECC061755
        for <linux-man@vger.kernel.org>; Wed,  9 Sep 2020 05:15:25 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id y15so2135251wmi.0
        for <linux-man@vger.kernel.org>; Wed, 09 Sep 2020 05:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ygrjbMSCpZ0w258dneekS0kIqW2VXWwqEO0ZP2b7OKg=;
        b=mCe1MCGTjje4LrVh0qX3GZ6RZD2NDEnNczRerkvo4YuXi8kbXYW+KfdXhk63WotGA1
         7zBtBNWhcuwv4isofPC+P3C1988Thbwg7tAfoTknXRP7wJIHPv8f6AxrQR6ynVOVYbqk
         QL8ojdntqSxj/oWmk5EoNKCWTXwm6F2B6PSUTZV03G1w2cEcAytyTE6LQhK9G7QpgMeo
         FJ1PuzUJ7o+BdR7lYxzcBhc6eZNz7BRsv4OEhVaJO5aW7WgYQYlRwNWT8H5cRyLvjJww
         NrPb6MSzwj3E3wGxqO2aLAZ0ntGqHrUncbUk6xtQK1Ayx9nK514vAP/llWp4sa3rjf3b
         PABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ygrjbMSCpZ0w258dneekS0kIqW2VXWwqEO0ZP2b7OKg=;
        b=pKrOipPbtDDZCRbITeELjl3HecvpL8QXqWCZKpsHqxy4p5ewKP9DPpFbfRwPkuQnHr
         XlHr1OBIGC8BBQRWvaJOgHJ5PjxbHoIyKq9SUgqLypFKnZZbmLSmwhEt6mzsXJSfjBRT
         iJgtvC5NVbJXNbAiD8l/+yheO3lnm2vk/Qo3kCddHENKuC3dEDugtkvQxNrzjZEi139e
         gE/RZfwefc9hRIFwA8ILTRgQ7Pbq/1IKhqpfVDphyu7WiuHhMIXTn9bfR2PEOGcAt5I1
         lEsI8khskQ6A0Uj8zvFIRS1Wi2y4m/G8OoReErx0cWgmoYpWmNx++wmQbfyq+F4cQiS3
         d3jA==
X-Gm-Message-State: AOAM5327metJrGTvmy624SqJ916e5Bww/QoOsuMA/QLHUkSqIflUUVXe
        UyvLPTblNN+sYKIqUxj6dvOXOYdtSw8=
X-Google-Smtp-Source: ABdhPJx2cIfuPTe1FTvhhuGZjbOjcVXDF8VrXZTIjT8E9/Q9vX9yVhunpSDQXz03kYUzjf+Qk+0lXA==
X-Received: by 2002:a7b:c015:: with SMTP id c21mr3304744wmb.87.1599653723866;
        Wed, 09 Sep 2020 05:15:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 197sm3828061wme.10.2020.09.09.05.15.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 05:15:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] msgop.2: Add restriction on ENOSYS error
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1599623862-6490-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <CAKgNAkg6pV-qP0ZJWjzfP8XaaWJkOtqt=n2TrBBiUxKrBodTHg@mail.gmail.com>
 <a66856cb-c055-a14f-71a0-d2fe29fe4ca7@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <16c7518b-ffc3-ff90-5ce7-657207911ab8@gmail.com>
Date:   Wed, 9 Sep 2020 14:15:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <a66856cb-c055-a14f-71a0-d2fe29fe4ca7@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/9/20 1:14 PM, Yang Xu wrote:
> Hi Michael
> 
>> Hello Yang Xu,
>>
>> On Wed, 9 Sep 2020 at 05:57, Yang Xu <xuyang2018.jy@cn.fujitsu.com> wrote:
>>>
>>> When calling msgrcv with MSG_COPY flag on 3.8 or new kernel, it will
>>> report EINVAL error even we have disabled CONFIG_CHECKPOINT_RESTORE.
>>> It also needs to specify IPC_NOWAIT flag.
>>>
>>> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
>>> ---
>>>   man2/msgop.2 | 4 +++-
>>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/man2/msgop.2 b/man2/msgop.2
>>> index 373e53aa7..e559097a7 100644
>>> --- a/man2/msgop.2
>>> +++ b/man2/msgop.2
>>> @@ -467,7 +467,9 @@ and the queue contains less than
>>>   messages.
>>>   .TP
>>>   .BR ENOSYS " (since Linux 3.8)"
>>> -.I MSG_COPY
>>> +.B IPC_NOWAIT
>>> +and
>>> +.B MSG_COPY
>>>   was specified in
>>>   .IR msgflg ,
>>>   and this kernel was configured without
>>> --
>>> 2.23.0
>>
>> My apologies, I have a little bit of trouble to understand your commit
>> message, but the patch does seem to be wrong, at least as I understand
>> the code:
>>
>> [[
>> #ifdef CONFIG_CHECKPOINT_RESTORE
>> ...
>> #else
>> static inline struct msg_msg *prepare_copy(void __user *buf, size_t bufsz)
>> {
>>          return ERR_PTR(-ENOSYS);
>> }
>>
>> ...
>> static long do_msgrcv(int msqid, void __user *buf, size_t bufsz, long
>> msgtyp, int msgflg,
>>                 long (*msg_handler)(void __user *, struct msg_msg *, size_t))
>> {
>> ...
>>          if (msgflg & MSG_COPY) {
>>                  if ((msgflg & MSG_EXCEPT) || !(msgflg & IPC_NOWAIT))
>>                          return -EINVAL;
>>                  copy = prepare_copy(buf, min_t(size_t, bufsz, ns->msg_ctlmax));
> 
> The #ifdef CONFIG_CHECKPOINT_RESTORE only affected prepare_copy function 
> and the EINVAL judgment is not included in #ifdef.
> So, if current kernel config disables CONFIG_CHECKPOINT_RESTORE, Using 
> MSG_COPY without IPC_NOWAIT will still hit EINVAL error firstly and 
> doesn't run into  prepare_copy function to hit ENOSYS error.

Ahh -- now I see what you mean.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
