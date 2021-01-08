Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEE9B2EF2F7
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 14:24:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725791AbhAHNYd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 08:24:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726508AbhAHNYc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 08:24:32 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C306C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 05:23:51 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id m5so8980232wrx.9
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 05:23:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KK2k4EkMKoEVQmdVu7pm+QOPbnMVmAuc9Jg4q8JL14A=;
        b=c7CZjqzI+f41CvGeYh1oEUadL6EKB9psKbI6qDHKeMh2/yxCP6UDxZkrPOxVzRFZNu
         sWfnNv/uXq/SitCVuqMWG32x2F4Okvp+tmf+LxpYVoZ0jNTFUQE+rwdc4b24qvL4F8P+
         C+nPDwmPFeAlfI421I4JHUjs1WoipVtoczlOhi0O0rHwHKNNG0rWz3UzlLLIRJ4yNP26
         O1QXzcjelgJKTWbpUy+f2mN/UOaMSFcPsTC63uxdZiKcSmSXvxqZTYpfgPG3ASmqpYFj
         gC+akPq62xQxAhIaXQzD7D0U22L/KR67/PwXsXsN3NZqaFGP/2Y6Lj7ioDbgFiuFtLSm
         qM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KK2k4EkMKoEVQmdVu7pm+QOPbnMVmAuc9Jg4q8JL14A=;
        b=j5HtTTKQEFTVcCbyNfIofnnTCZCsBAhX4ujECWpEaIRhswIrkzUPyphrAq1IuSdFLP
         Q7TLBWIQ4SqhLsCCfLYNtP7HnhyHR0S4PnAM1mZ89hjFMCymXkUcf1pg+2pgJwogREcX
         b63fOh468ISOiuC38Ml7yoCfDMXE3QiCLpCienjzAIOe7J5hMQKQBfRjfsMJ6+zj9oi0
         LEF0ggyk6G+K6DsV8axQais+6+vLRnfhN17j7B5F4Bu9iWQ0aLtPJez3v5LPSmmxbEt6
         /FPA0bbUVDeNGuosubebap8Zp0tP6RJ7XSEgUce6fdgN0sXS7+Um3gkeRsv7fZ8yU2Id
         4oTA==
X-Gm-Message-State: AOAM530pi0TPyGdrItAUWxyxEv7ryUhrL3GpFv+p3glExoda3w9JJdRz
        HR/6qIZ5nKLdQ2YX/TI8Zg4uxJ3m/EY=
X-Google-Smtp-Source: ABdhPJz+8+t+yv21EUjCFXeQe9wPjfKphp2U7DErZs2pH9aBZ1JuOQjpzPwQUgW8tVtzmsQcsD8m1A==
X-Received: by 2002:a5d:6a4f:: with SMTP id t15mr3847669wrw.62.1610112229970;
        Fri, 08 Jan 2021 05:23:49 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id a13sm13235191wrt.96.2021.01.08.05.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 05:23:49 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] netlink.7, tcp.7: tfix: s/acknowledgment/acknowledgement
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210107165518.36629-1-alx.manpages@gmail.com>
 <ffe209ee-809c-10ea-c077-12669ff0f5ab@gmail.com>
 <59156288-13c4-ca10-ade3-5b83cd7c0902@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <39255c4b-3d54-cae5-14ec-6122cfef8072@gmail.com>
Date:   Fri, 8 Jan 2021 14:23:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <59156288-13c4-ca10-ade3-5b83cd7c0902@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 1/8/21 12:36 PM, Alejandro Colomar (man-pages) wrote:
> 
> On 1/8/21 11:29 AM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 1/7/21 5:55 PM, Alejandro Colomar wrote:
>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>
>> Take a look at
>>
>> https://books.google.com/ngrams/graph?content=acknowledgment%2Cacknowledgement&year_start=1800&year_end=2000&corpus=5&smoothing=3
>>
>> and compare American English vs British English using the drop-down.
>>
>> When I inherited man-pages in 2004, it was a hodge-podge mix of 
>> American vs British spelling. My native spelling is the latter,
>> but I value consistency and felt that things needed to be
>> standardized on one or other, and in computing, American is the
>> norm so that is what I settled on.hodge-podge
>>
>> I'm largely at piece with American spelling these days (it 
>> is the spelling I use in most of my writing), but I guess
>> the one point that still bothers me are the American spellings
>> "acknowledgment" and "judgment". They just feel wrong.
> 
> Yup
> 
>>
>> However, I now learned from the Ngrams that even in British
>> English, the spelling without "e" was historically the norm.
>> So it seems that it is British English that has changed, 
>> not American English!
>>
>> I was about to say that I must decline this patch. And then
>> I thought I'd take a look at the POSIX standard. It seems
>> to largely follow American spelling (e.g., "color", "canceled",
>> "recognize", "analog").[1] But, it uses "acknowledgement"!
>> (There are even a couple of instances of "judgement" in 
>> the standard.) It seems like others like to have the
>> extra "e' in those words...
>>
>> So, I'm not sure what to do with this patch. 
> 
> Hey Michael,
> 
> D'oh, I thought it was a typo! :-)
> 
> American English surprises me.
> 
> Yes I prefer American English, but I've also learn_ed_ British at
> school, (and learnt American through the internet), so I have a weird
> hodge-podge in my head too :p
> 
> I guess many people though it was a typo from the data you put.  Also see:
> 
> $ grep -r acknowledgement \
>   |wc -l;
> grep: man7/.hostname.7.swp: binary file matches
> 69
> $ grep -r acknowledgment \
>   |wc -l;
> 23

Okay -- this gets weirder and weirder. Look more closely
at what the grep found. Those instances of 'acknowledgement'
are almost all in the page comments containing BSD licenses!

I thought to myself, that's strange: because BSD is from 
California... Maybe some enthusiastic person did a
global edit in the distant past to change this to British
spelling in the Linux manual pages. But, it doesn't seem that
way. I grepped a few thousand header files that I've assembled
over the years from various OSes, and in the BSD licenses,
the vast majority use 'acknowledgement'. A few use
'acknowledgment', but I suspect that those were changed
after importing from other places.

It seems that the underground spelling resistance was strong
at Berkeley.

> Nevertheless, I prefer American too, so I'd invert the patch.
> What about s/acknowledgement/acknowledgment/?
So, I still don't know what to do. I never much liked
the "American" "*dgment", but:

(1) That seems to have been the historical form that 
    British English moved away from.

(2) A couple of "American" groups (BSD, POSIX) use
    the "British" spelling.

Cheers,

Michael

PS I want to join the spelling resistance :-)

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
