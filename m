Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC3DB444390
	for <lists+linux-man@lfdr.de>; Wed,  3 Nov 2021 15:29:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231517AbhKCOcU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 10:32:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231464AbhKCOcR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Nov 2021 10:32:17 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2193BC061714
        for <linux-man@vger.kernel.org>; Wed,  3 Nov 2021 07:29:41 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id i5so3904337wrb.2
        for <linux-man@vger.kernel.org>; Wed, 03 Nov 2021 07:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZWxEDhpRI0cyr1Bh3WFLPe+PXoCiJyB1WmNuBBNDI94=;
        b=XuYhTjexQj5yRdKI7pUhG18CZpDvfBAuIaoqNDkoISAgUJU3JI0thyjt1WA9RzeLBP
         eLWwjyRLBj1ZtYSHaYaxQHWVD5RkOGsMQz9T9hdrS9B3MNVxzY4aTtXFVp4xaD+PpSv3
         6Du8+UckQPs3UxG6OdJcciI9mdUvHzv6ihnS6uZdB1Fa2l+78//1bVdQ5lYFAxc5hsq3
         3cXP7n2Sfgt56KSuzeMbyC60ySzl/UZdcllgtpGwtUoO+0Evcb6HCVl+lUIHGuKTtB2o
         ieUsLybiE5b7ONgk87Wkn0yTaN387JqwvGqdznzmO5QsUjSmG6uICe7L9l0VEcDL2raC
         Ywcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZWxEDhpRI0cyr1Bh3WFLPe+PXoCiJyB1WmNuBBNDI94=;
        b=wtg+DLfasdxxO/zGjOvNPyJ2gDpDVGKMW/qbE054uvPIHfjehgH+h9stPlvLTsy/aj
         /DURFlscGmQRk7ec3NkO4r0joOPa84uORHpGNRLavwoYkRs8JTfrtQXcIyeuo05BPEXH
         CtB3TudhVRS8kQgvpkjhRv+rk368lK1ALk+0AlVSQqgKByK9ar0Z2rSOgivXmTYrazJd
         f1gn7j1wJYmF23xZNKVDWHvuaCq8eKN4lhRfmrH2zMrFtzTfNDPf1I+ZD3PZHBO0YNnt
         fJ9kpvQwHUMjt3Kb8z923qssUSr+VR49Af9s1jgOK7lFixUd7T8bvvbXV0CdYjUJZDjy
         0pBA==
X-Gm-Message-State: AOAM533wJa5GBMBlB8Bk//GRlzdsEsGKTmW76ff0S8Qe7+/+/NHzAYWR
        y7UDTTEaGTjwTYT4w+Q4Fp7fnoENtf8=
X-Google-Smtp-Source: ABdhPJxYK94Sd2zaRP0EkABNb45TMcTnO66JYPlxcuhoeypASBrmjrWa714BJWcsSuyf54yVLj/wDw==
X-Received: by 2002:a5d:6c63:: with SMTP id r3mr30344336wrz.213.1635949779799;
        Wed, 03 Nov 2021 07:29:39 -0700 (PDT)
Received: from [10.8.0.130] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t11sm2093114wrz.97.2021.11.03.07.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Nov 2021 07:29:39 -0700 (PDT)
Message-ID: <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
Date:   Wed, 3 Nov 2021 15:29:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Content-Language: en-US
To:     "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Jan Kara <jack@suse.cz>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com> <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <6182568B.30705@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Jan]

Hi Yang,

On 11/3/21 10:29, xuyang2018.jy@fujitsu.com wrote:
> [Fix Alejandro mail address ]
>> Hi Alejandro
>>
>> You merged another quotactl patch, but I guess you missed this.

Thanks!

>>
>>
>> Best Regards
>> Yang Xu
>>> Hi Alejandro, Michael
>>>
>>> Ping!
>>>
>>> Best Regards
>>> Yang Xu
>>>> This patch[1] is designed to fix bug for Q_XQUOTARM ioctl not for introduced.
>>>> So remove it.
>>>>
>>>> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9da93f9b7c
>>>>
>>>> Signed-off-by: Yang Xu<xuyang2018.jy@fujitsu.com>
>>>> ---
>>>>      man2/quotactl.2 | 3 +--
>>>>      1 file changed, 1 insertion(+), 2 deletions(-)
>>>>
>>>> diff --git a/man2/quotactl.2 b/man2/quotactl.2
>>>> index d22d8c584..46f77a8b1 100644
>>>> --- a/man2/quotactl.2
>>>> +++ b/man2/quotactl.2
>>>> @@ -651,8 +651,7 @@ The
>>>>      .I id
>>>>      argument is ignored.
>>>>      .TP
>>>> -.B Q_XQUOTARM " (since Linux 3.16)"
>>>> -.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc

Okay.  Since you added that line (man-pages commit ae848b1d80), I'm fine 
removing it.  Was it a mistake?  The commit message of that commit is a 
bit unrelated to Q_XQUOTARM, isn't it?

Maybe a better fix would be to replace the kernel version and the commit 
hash when it was really added?

I'll wait for your answer before applying the patch.

Thanks,

Alex

>>>> +.B Q_XQUOTARM
>>>>      Free the disk space taken by disk quotas.
>>>>      The
>>>>      .I addr


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
