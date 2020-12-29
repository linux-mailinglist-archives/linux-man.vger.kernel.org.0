Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C7552E6FAF
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 11:38:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726138AbgL2Kiy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 05:38:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725979AbgL2Kiy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 05:38:54 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF85DC0613D6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 02:38:13 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id h16so12160998edt.7
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 02:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=colorfullife-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Ss/4RlfUHy5mrqfY+qiD3PIjPQA+zgcFFJClHYqx8Y0=;
        b=1roZ5y4XBFZdd5ETB3U3UNkqN3sykO++iMFW8k+eVUOZAqvRHWkXXdU/IQfmIYmiYX
         q0atc+GZcBTfgQl/dTp1wSCvgVe79OmJ66qJ10wc5KphhhJxX2iLzKGqS4ibqIYTq1oI
         wBK62p8ZD9NxnXyk1Vq8QmaAQwbTv7JlI2oDLDjOSWsFzsOLW8wBNbsBVRhobclqEAwl
         vSoudHSmKrfHmXWmuWYHx5Bh9ZtOl4wgcGUoocnisIsL1fKWh9QpCyHcMu0jUl0lxjNp
         ptdzbI0K7a4lC9pOVNm+GjqulZE5M/QYGncqb+qX/u9GrzasvME1ZXMCCA6jMkjYk+0x
         STeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Ss/4RlfUHy5mrqfY+qiD3PIjPQA+zgcFFJClHYqx8Y0=;
        b=Ebes5OHdcnBylPdwkgjXe+9iFDMaaKf5dfuuLBeM7HX1rHNi5OiIA6XXykjtQmdbc+
         Y8648dt8bA2GXobpbdvnrq44XEfwlF80n/QP9322n4tx6kUZO7tUjnxuZM+lTdGhdHCm
         Xl1JLh9g9xt8o75mrS96jJHuhICyFXxU0tTeoK4jhKrLbi1ElzHMv/OuJtBZbbSTrF4X
         0bmxpjOFKkIzhogLgn1zeO/69u5Qwoea0G9dZQ0W2/f2dSCc9Y0JlHfGA4WIAyIelsKq
         5zK1yMCDhspES9wy9ka4px7QrSPGCMG+gDWyfymBABFA+4hT/NvKi9XQ+iDclkv+qoXg
         7Aqg==
X-Gm-Message-State: AOAM533GpYXgt1bYqlGNAUp2QgaOuW4u6bm75dTs3SfDTYb3aJhYJqEO
        QNKEWbkyBqwuP2uxh1k8wWIXqQ==
X-Google-Smtp-Source: ABdhPJzMK6zaU/91+QUyvI89rrhscUWRWSd/dd6oMgJoakuel0G9OYVAkLSS0OP9+GagtG4PHaLOPQ==
X-Received: by 2002:aa7:c3d3:: with SMTP id l19mr46980906edr.366.1609238292706;
        Tue, 29 Dec 2020 02:38:12 -0800 (PST)
Received: from localhost.localdomain (p200300d997071700c783c3a46e83b250.dip0.t-ipconnect.de. [2003:d9:9707:1700:c783:c3a4:6e83:b250])
        by smtp.googlemail.com with ESMTPSA id zn5sm18105561ejb.111.2020.12.29.02.38.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 02:38:12 -0800 (PST)
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
To:     "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>,
        Yang Xu <xuyang2018.jy@cn.fujitsu.com>, mtk.manpages@gmail.com,
        Davidlohr Bueso <dbueso@suse.de>
Cc:     linux-man@vger.kernel.org, Joe Lawrence <joe.lawrence@redhat.com>,
        Robert Kettler <robert.kettler@outlook.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Kees Cook <keescook@chromium.org>,
        Michal Hocko <mhocko@kernel.org>
References: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com>
From:   Manfred Spraul <manfred@colorfullife.com>
Message-ID: <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com>
Date:   Tue, 29 Dec 2020 11:38:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,


On 12/22/20 12:55 PM, Alejandro Colomar (mailing lists; readonly) wrote:
> Hi Yang,
>
> It looks good to me.
> I'll add a few people that might want to comment.

The code returns a semid_ds structure, and if I take strace as reference implementation, then user space expects a semid_ds as well.
https://github.com/strace/strace/commit/8f0870a780bfd8cd9a91c3b7ad05baccda10bc84

In addition, the current page is self-inconsistent: seminfo doesn't contain sem_perm.

The pages for msgctl and shmctl are correct, i.e. no further obvious inconsistencies.

Thus: The man page for semctl is incorrect, the page needs to be updated.

Acked-by: manfred@colorfullife.com

> Thanks,
>
> Alex
>
> On 12/22/20 6:55 AM, Yang Xu wrote:
>> Since kernel commit a280d6dc77eb ("ipc/sem: introduce semctl(SEM_STAT_ANY)"),
>> it only skips read access check when using SEM_STAT_ANY command. And it should
>> use the semid_ds struct instead of seminfo struct. Fix this.
>>
>> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
>> ---
>>   man2/semctl.2 | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/semctl.2 b/man2/semctl.2
>> index dd3fb077b..a7462c5cc 100644
>> --- a/man2/semctl.2
>> +++ b/man2/semctl.2
>> @@ -297,8 +297,8 @@ all semaphore sets on the system.
>>   .TP
>>   .BR SEM_STAT_ANY " (Linux-specific, since Linux 4.17)"
>>   Return a
>> -.I seminfo
>> -structure containing the same information as for
>> +.I semid_ds
>> +structure as for
>>   .BR SEM_STAT .
>>   However,
>>   .I sem_perm.mode
>>

