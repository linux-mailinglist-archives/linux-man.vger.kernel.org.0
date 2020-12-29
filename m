Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B203D2E6FD8
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 12:13:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725980AbgL2LNF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 06:13:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725866AbgL2LNE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 06:13:04 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92C34C0613D6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 03:12:24 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id i9so14338172wrc.4
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 03:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iqyU6KcvReDnkIVoUXvwC1HWpn2JO5Ds3+TP334LUkY=;
        b=awMncukCuHaTN71ewMoTIaboGE/yLl6VxD2kvcaKYtElGKFPs5hxT3HyaD4Y2xFEBg
         tzWr1fGqg9y3v8fn017/HyrwIRlwpOT6ybcvvSghC9bRkFJpwqKVTHIUyAfSq5lFwjjQ
         GsiZZU6h2WNOc37Sar/a8yT6lGA+bizFocLDiBU5i/wXucq/i6LYnlvW8goWviunZ+u4
         +/0BiHlKevHxs8O2viSfUGPiLvPnMEq1MC6VMhH2XYSRfeScI3jxTZoIVlFL0zoBu0+o
         K2JicNT7iuIfo7lwdxzXIctOyx+xFCkss8YenI+0cQwhngY5dvisi4AmtyfHTZ/GLGt3
         01Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iqyU6KcvReDnkIVoUXvwC1HWpn2JO5Ds3+TP334LUkY=;
        b=XLsowDYx+81rChVqRbxYlz4MkjLkJR7AvGsy5TkvXNfXFdDH6sYaqch+VW7ZDv2tad
         RmyR1yGN0RX4jNxqp9L7uRS6wrNqB/mkXo2l9/jEZrD10zbYcWK2UPd5th0jqpAnHplc
         Yo/L2GhDxcZtznWwqQHMGQdFe85sYN2bUJJMmZq07QDsGp9vfhtNJqojU6p55Gcjy+uE
         2vA7mDZxPh8gDbZYY4+iZtD3/bJn+vqzp4AI9AFhjiib9VtuQ3aEEr6KCe0MVs4YVSD3
         LpzmQpCVtb03TFBLmJXrc4yUw0XRjoC+L6OvHwvTE4hQsgjP5WAa3Hm7Bd21t/36z2fB
         zixQ==
X-Gm-Message-State: AOAM530JY8FHI7fDr4NQkLKp4cw6ndIcUVYGfVQTD/W+rWpoO7hLyioG
        LvCxSJi2GaDk2iHafT+GmQM=
X-Google-Smtp-Source: ABdhPJzuVhyz1W0BYBkVC1CS81vfs0/SnfuTPKUknQv1hLzAzWbh0r9I3u/eS90Vlh3UtFZlTVQorg==
X-Received: by 2002:adf:e44f:: with SMTP id t15mr48626124wrm.74.1609240343401;
        Tue, 29 Dec 2020 03:12:23 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id s20sm2793255wmj.46.2020.12.29.03.12.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 03:12:22 -0800 (PST)
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
To:     Manfred Spraul <manfred@colorfullife.com>,
        Yang Xu <xuyang2018.jy@cn.fujitsu.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Joe Lawrence <joe.lawrence@redhat.com>,
        Robert Kettler <robert.kettler@outlook.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Kees Cook <keescook@chromium.org>,
        Michal Hocko <mhocko@kernel.org>,
        Davidlohr Bueso <dbueso@suse.de>
References: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com>
 <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com>
From:   "Alejandro Colomar (mailing lists; readonly)" 
        <alx.mailinglists@gmail.com>
Message-ID: <c971b894-6619-f43b-a7c2-e244d4d92081@gmail.com>
Date:   Tue, 29 Dec 2020 12:12:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/29/20 11:38 AM, Manfred Spraul wrote:
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

Hi Yang Xu and Manfred,

Thanks for the ping and for the acked-by!

Patch applied.

Thanks,

Alex

>>> ---
>>>   man2/semctl.2 | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/man2/semctl.2 b/man2/semctl.2
>>> index dd3fb077b..a7462c5cc 100644
>>> --- a/man2/semctl.2
>>> +++ b/man2/semctl.2
>>> @@ -297,8 +297,8 @@ all semaphore sets on the system.
>>>   .TP
>>>   .BR SEM_STAT_ANY " (Linux-specific, since Linux 4.17)"
>>>   Return a
>>> -.I seminfo
>>> -structure containing the same information as for
>>> +.I semid_ds
>>> +structure as for
>>>   .BR SEM_STAT .
>>>   However,
>>>   .I sem_perm.mode
>>>
> 
