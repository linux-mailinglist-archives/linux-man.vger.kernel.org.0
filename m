Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6BC457F9E
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 17:51:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231329AbhKTQyW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 11:54:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbhKTQyV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 11:54:21 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28CC0C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 08:51:18 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id r9-20020a7bc089000000b00332f4abf43fso9499839wmh.0
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 08:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=bPkPUhx/yJyIiLZ02Rk4jhFx53Wj0I8YG2J7MkopLc0=;
        b=lgCIv9uSv80pMH75SRBDR+VLIWVSVTuGdpyl9Z2bUXOMCPKknWN+jUXz1u/TmXywAp
         5J0bt2zP6LkqG+9uS4POFxdJETPnEZtPP+tWH6XGgzS+BlXn4XmkV25ndQ5Gb+Y8CDD5
         SN3eaDDh3tePp0PvZ5arah19gIIe+zWkUzw3pmMHT2TW3NYGD7EpsBgK/4a7mI8ds7tI
         HAeo6fAHEvvpwOT18JN/cZqSLRDwwom37h+c8lLnLfreLU0o9Y41wpBP22gavnVME3uw
         sSTn7twBVqPyhCVVmBl+MGL4aTcdoSg0x7iD+XYdW2MDe1H4XjtS4Red8SsuEUsQsob7
         LPSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bPkPUhx/yJyIiLZ02Rk4jhFx53Wj0I8YG2J7MkopLc0=;
        b=xj2F0hQ1PGDbMVrO8aO3oQXAnEkuwtekxyrjBYv77YypRg1LFRMwmEVjBcuPdRfSru
         MhERsCB2obniCdxpR4nwfmMvKOqUSo6Qurw1rbQhLbBPgFU2TbmvYAwWrSLO3ywNRWNC
         4GWZBymBMbWkUvE1Kw9mTsfsvK2tHIQtr9IFuG/WLqACWTQhlvCjDZ2KmPrgIIhEyb6j
         GmJBp/rzb6E50eVY01ZyOnJikIPk59C61cZ17F22AyASCdnBayK74lCOrWMUrqFqP5ZJ
         rvgEFI58FYczFQ8i5YtrE6KlCr7OcafFhwPaQ9c7lgyOpZUPw4D6OQivhBKzxeXudwDu
         icpA==
X-Gm-Message-State: AOAM532p6BhBdxiAPQhNAvNo+KGhffI/XitQyUWl/lKHw0APWEFcRI76
        9LwZ1lJygVgQ45d2lkS9TFg=
X-Google-Smtp-Source: ABdhPJxCiwZZGUwsHeNl1nOiXG5HU5j8VwYWDQ5mPqjHfrWrJEGJyYo+MeGCmbcw9oBmnUB6vlmuLw==
X-Received: by 2002:a05:600c:1990:: with SMTP id t16mr11602213wmq.48.1637427076783;
        Sat, 20 Nov 2021 08:51:16 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h13sm3209524wrx.82.2021.11.20.08.51.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Nov 2021 08:51:16 -0800 (PST)
Message-ID: <7faec66c-d1ac-d85c-2626-bac230a8cb83@gmail.com>
Date:   Sat, 20 Nov 2021 17:51:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Matthew Bobrowski <repnop@google.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
References: <cover.1635135968.git.repnop@google.com>
 <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
 <3be6b8e7-cb69-a99b-6383-4fabdbdd46f9@gmail.com>
 <CAOQ4uxifHByyOqLJvR2kA0Qm5uNkNkNx0oo98Oyam+6+AEVngw@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxifHByyOqLJvR2kA0Qm5uNkNkNx0oo98Oyam+6+AEVngw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Amir,

On 11/20/21 15:45, Amir Goldstein wrote:
> On Sat, Nov 20, 2021 at 3:32 PM Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> Hi Amir,
>>
>> On 11/20/21 11:36, Amir Goldstein wrote:
>>> Alejandro,
>>>
>>> Is there any changes of getting those long due 5.13 fanotify update
>>> patches merged?
>>
>> I thought I was waiting for an v2,
>> since there was a bit of discussion in the patch thread,
>> and some comments hinted that there would be a v2.
>>
>> See
>> <https://lore.kernel.org/linux-man/12909faf-1d45-1eee-aa6c-c7704518dc59@gmail.com/>
>>
>> Am I correct?
>>
>>
> 
> v2 would be for the v5.15 update that Matthew posted (FAN_REPORT_PIDFD).
> 
> I was asking if you could merge to the v5.13 updates that I posted 9 months ago:
> https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/

Ahh, I didn't know that one.

> 
> You can find them rebased on master in branch:
> https://github.com/amir73il/man-pages/commits/fanotify_unpriv
> 
> Along with two other minor updates that I posted since.


Would you mind sending a v2 with what you think I should merge?

Thanks,
Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
