Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86E6B2C5602
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 14:42:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390022AbgKZNkt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 08:40:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389684AbgKZNkt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 08:40:49 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 256F5C0613D4
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 05:40:49 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id p22so2188437wmg.3
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 05:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UqcHogpbgRFrnI1avOSwgoZ+7WRgqOtuLzymkr6s/1g=;
        b=bpN3m9k7jk2RDbSsz26gjH9s3cpqJVK0a7OZgHHPcKPuU8AlHuFkYD0NR9IlJHh8uM
         Fp0KOAYyqVbRpSv4dwMo6CgzPWRsXqg6POjV9iL8NuHAgofKn3bc8UmNidgudt/IE/Bc
         lgyBfojEQgOy/SlWr6K1eGT6NfiazuP6XkuK59LpLQLG8LndgpkXjvVweuf8Pg7D+3/p
         heDYl2pNwAGxf77qy8wpNdc/wS43S3QPxrbMgiESzFn1/C4nQcFPHTlnz1rrzTFBh4p1
         psfIw3xRKM6eWY/CzIUNuKmvYhi4e5h5MGGuI/jiV597W/Tc7ItopYnYgoUgFnNLeA8O
         kymQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UqcHogpbgRFrnI1avOSwgoZ+7WRgqOtuLzymkr6s/1g=;
        b=DvUNnE21le4INz5qKPxNMoy6BQMMTKaaU/0OrMIxMdzO3HDAr0CaOKz0z+/B1m5Bmv
         ubfZtReiFAORvhI0ZSHwngx1faJ7TAiJZpXl/7HUDuSG3KjVOrPIAP2t451w5MaaFCf+
         7OvB5TVHc9nyeBsEDaA8NcQK+kFZ5jMilO1/7jGP/9CLPZaQj/wlFkRSpMsJPRwV4A00
         aDjsROMJTM6qLYYm9pPArOV52y9czE+dwCvHcZCH7BJ6/sJ5f3Qv4FxchzwDn4ttTGxx
         iwweadrRwu1qqLE4RGu4QLQ7F/I0O17xNL/0m+ExIQSpxlkGAQDGWaw5Dk0nuNzP33ua
         a06g==
X-Gm-Message-State: AOAM531sz+536MLIKRiie6Q8ubGeVUtZL81HLMWZXNGsT/KKbagsZMw0
        ZqaCcsUA4O2KIe0Yz+/s+crmW4LG2F0ZIg==
X-Google-Smtp-Source: ABdhPJwR0nyx4Hq01REZGCXacOpycn8jvJ6r3lkanqgJvcZQ51VEIPBSuJtuLuZAqtJ6dn2C0FyE7Q==
X-Received: by 2002:a7b:c3ce:: with SMTP id t14mr3457438wmj.170.1606398047715;
        Thu, 26 Nov 2020 05:40:47 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id u203sm8211353wme.32.2020.11.26.05.40.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2020 05:40:47 -0800 (PST)
Subject: Re: pivot_root - wrong check on mount(2)
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, Davide Giorgio <davide@giorgiodavide.it>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <dafbcfa6-666e-d596-6481-f35802dc56f1@giorgiodavide.it>
 <CAKgNAkhqn+NRbrmnaTpjMuj96eC6M94vxm8X4w9-F=_cqZi8gg@mail.gmail.com>
 <fd7fea8a-b6ea-353d-522b-493782929237@gmail.com>
Message-ID: <31d0af05-d559-8784-02f7-e60a6ecf1be9@gmail.com>
Date:   Thu, 26 Nov 2020 14:40:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <fd7fea8a-b6ea-353d-522b-493782929237@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michel,

Even more generic:

Most--if not all--functions can be catalogued as one of the following:

   __________________________
   Success      |       Error
   --------------------------
A)  0	        |   non-zero
B)  0           |   negative  (the intersection of A and C)
C)  non-negative|   negative
D)  non-zero    |       NULL
D)  true        |      false

For error checking, I'd use:

A) (ret != 0)  [or simply (ret)]
B) (ret < 0)
C) (ret < 0)
D) (ret == NULL)  [or simply (!ret)]
E) (!ret)

This way you avoid any magic numbers such as '-1' for the error code,
and it's more difficult to introduce bugs.
Also, CPUs usually compare faster against zero, AFAIK.


Cheers,

Alex

On 11/26/20 1:28 PM, Alejandro Colomar (mailing lists; readonly) wrote:
> 
> 
> On 11/26/20 10:31 AM, Michael Kerrisk (man-pages) wrote:
>> Hello Davide,
>>
>> On Thu, 26 Nov 2020 at 01:01, Davide Giorgio <davide@giorgiodavide.it> wrote:
>>>
>>> Good morning,
>>>
>>> reading the pivot_root man page
>>> (https://man7.org/linux/man-pages/man2/pivot_root.2.html)
>>> there seems to be an error in the example source program
>>> "pivot_root_demo.c".
>>> In particular, there is a wrong check on the return value of mount(2).
>>> https://man7.org/linux/man-pages/man2/mount.2.html#RETURN_VALUE
>>>
>>> The error is in this line
>>> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
>>>
>>> that should be
>>> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == -1)
>>>
>>>
>>> Thank you for your work, kind regards
>>
>> Thanks! Fixed!
> 
> Hi Michael,
> 
> What about fixing this from a different approach:
> 
> instead of comparing against -1
> for functions that either return either 0 or -1,
> we can include those functions in the greater family of
> functions that return either 0 or non-zero (error code).
> I propose comparing against 0:
> 
> - if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
> + if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) != 0)
> 
> I consider this to be safer, simpler,
> and although negligible, also faster.
> 
> What are your thoughts?
> 
> Thanks,
> 
> Alex
> 
>>
>> Cheers,
>>
>> Michael
>>
