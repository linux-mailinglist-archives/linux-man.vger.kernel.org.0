Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0A482FA4D9
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:35:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404561AbhARPeu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:34:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405799AbhARPe0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:34:26 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC73BC061574
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:33:44 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id 7so9622745wrz.0
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YS37yyTgSKp0i5Kq+nv1poGhsFwSKUYIitEjRLVRWB8=;
        b=PSSFuxTDWqlKYKbGRzzpH+ZCMy+3RcTDekdTnpV/K9n8Pm2HpN2YiEgzsXgztnQgjV
         8Qo6gwihRQoHUSsJdfOVjRXVIosuoIkyiJRxsR9N5dPWiDJQsvHPcFv7G/StEInhnqAL
         J+aV9R9yM5yWLVZD7Omegnk6mc6a/51gUCx9LWb882JQIjRxWbaHsnYxPZl1W1B2qRwE
         ORqJZSpmto81vIvLgxcDRCSvVr/iBf231LwT2NJ96jFUMp5T8G22aH4ngq64D49Bvd1S
         N2wIOcTQi++1Uo2yqchTOC+rnIMTtD6g6ytNGdiSecZOVfFtwin3z6XH4oj+x7Jx/vX6
         iHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YS37yyTgSKp0i5Kq+nv1poGhsFwSKUYIitEjRLVRWB8=;
        b=gOYuel2EZ3lCwdsMqIoKqmEoM66QGWgle4Lffzce1WpxVSkekUTiOW/Ka4TWeEK3az
         PFiM9+7KymZjXtnELQTen6Q/VYjif/yc3/yUJtOu75XCwyNxf3XG6oADu+5cX4p6POyc
         3IFMTHVkvtzXLKIt/9LeoLzIl6AoxD5MeUCa+9Gn8lu8OATDLGlJVCOFHUWIyRSgDK/a
         hMcRlsV9yM8nGx8MUjB11clpAMZJ9WFebhHWozy8cs+vESksha15bopggYheM7o2eYJg
         qaxbC/OTGj5sPef7pzNWST3rjtx7l/cntYDl0HfXFo8Ua23lb2UnnvfoelbUnEN4IMaP
         P/Pg==
X-Gm-Message-State: AOAM531JcisXPjMVJk64LPZKt/06UvE2UC/t1gXHQt+ZXewKKmOboevh
        xOicbZ0n6M/82Quz7cMyMXTPpVHkw3g=
X-Google-Smtp-Source: ABdhPJxI/jSxWUAKbrDF+R18eYL3pbB8D8Q3It8yL0LnL1XrBq10EATmANtZihyfxsKLm9DYwR33/Q==
X-Received: by 2002:a5d:4a06:: with SMTP id m6mr20341wrq.189.1610984023538;
        Mon, 18 Jan 2021 07:33:43 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id f7sm14897878wmg.43.2021.01.18.07.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:33:43 -0800 (PST)
Subject: Ping: [PATCH] netlink.7, tcp.7: tfix:
 s/acknowledgment/acknowledgement
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210107165518.36629-1-alx.manpages@gmail.com>
 <ffe209ee-809c-10ea-c077-12669ff0f5ab@gmail.com>
 <59156288-13c4-ca10-ade3-5b83cd7c0902@gmail.com>
 <39255c4b-3d54-cae5-14ec-6122cfef8072@gmail.com>
 <6280e52d-17bd-ea1e-49ac-a23f9e86f51c@gmail.com>
Message-ID: <ac8e9ea5-a7ad-d293-7a85-d8403159203d@gmail.com>
Date:   Mon, 18 Jan 2021 16:33:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <6280e52d-17bd-ea1e-49ac-a23f9e86f51c@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Ping!

And now I noticed, while searching for this email:
Debian uses "acknowledgement" too :p

[
From: "Debian Bug Tracking System" <owner@bugs.debian.org>
To: Alejandro Colomar <alx.manpages@gmail.com>
Subject: Bug#978945: Acknowledgement (thunderbird: Message subwindow tilts
 (resizes in a loop))
]

Kind regards,

Alex

On 1/8/21 2:34 PM, Alejandro Colomar (man-pages) wrote:
> On 1/8/21 2:23 PM, Michael Kerrisk (man-pages) wrote:
>> Hello Alex,
>>
>> On 1/8/21 12:36 PM, Alejandro Colomar (man-pages) wrote:
>>>
>>> On 1/8/21 11:29 AM, Michael Kerrisk (man-pages) wrote:
>>>> Hi Alex,
>>>>
>>>> On 1/7/21 5:55 PM, Alejandro Colomar wrote:
>>>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>>>
>>>> Take a look at
>>>>
>>>> https://books.google.com/ngrams/graph?content=acknowledgment%2Cacknowledgement&year_start=1800&year_end=2000&corpus=5&smoothing=3
>>>>
>>>> and compare American English vs British English using the drop-down.
>>>>
>>>> When I inherited man-pages in 2004, it was a hodge-podge mix of 
>>>> American vs British spelling. My native spelling is the latter,
>>>> but I value consistency and felt that things needed to be
>>>> standardized on one or other, and in computing, American is the
>>>> norm so that is what I settled on.hodge-podge
>>>>
>>>> I'm largely at piece with American spelling these days (it 
>>>> is the spelling I use in most of my writing), but I guess
>>>> the one point that still bothers me are the American spellings
>>>> "acknowledgment" and "judgment". They just feel wrong.
>>>
>>> Yup
>>>
>>>>
>>>> However, I now learned from the Ngrams that even in British
>>>> English, the spelling without "e" was historically the norm.
>>>> So it seems that it is British English that has changed, 
>>>> not American English!
>>>>
>>>> I was about to say that I must decline this patch. And then
>>>> I thought I'd take a look at the POSIX standard. It seems
>>>> to largely follow American spelling (e.g., "color", "canceled",
>>>> "recognize", "analog").[1] But, it uses "acknowledgement"!
>>>> (There are even a couple of instances of "judgement" in 
>>>> the standard.) It seems like others like to have the
>>>> extra "e' in those words...
>>>>
>>>> So, I'm not sure what to do with this patch. 
>>>
>>> Hey Michael,
>>>
>>> D'oh, I thought it was a typo! :-)
>>>
>>> American English surprises me.
>>>
>>> Yes I prefer American English, but I've also learn_ed_ British at
>>> school, (and learnt American through the internet), so I have a weird
>>> hodge-podge in my head too :p
>>>
>>> I guess many people though it was a typo from the data you put.  Also see:
>>>
>>> $ grep -r acknowledgement \
>>>   |wc -l;
>>> grep: man7/.hostname.7.swp: binary file matches
>>> 69
>>> $ grep -r acknowledgment \
>>>   |wc -l;
>>> 23
>>
>> Okay -- this gets weirder and weirder. Look more closely
>> at what the grep found. Those instances of 'acknowledgement'
>> are almost all in the page comments containing BSD licenses!
>>
>> I thought to myself, that's strange: because BSD is from 
>> California... Maybe some enthusiastic person did a
>> global edit in the distant past to change this to British
>> spelling in the Linux manual pages. But, it doesn't seem that
>> way. I grepped a few thousand header files that I've assembled
>> over the years from various OSes, and in the BSD licenses,
>> the vast majority use 'acknowledgement'. A few use
>> 'acknowledgment', but I suspect that those were changed
>> after importing from other places.
>>
>> It seems that the underground spelling resistance was strong
>> at Berkeley.
>>
>>> Nevertheless, I prefer American too, so I'd invert the patch.
>>> What about s/acknowledgement/acknowledgment/?
>> So, I still don't know what to do. I never much liked
>> the "American" "*dgment", but:
>>
>> (1) That seems to have been the historical form that 
>>     British English moved away from.
>>
>> (2) A couple of "American" groups (BSD, POSIX) use
>>     the "British" spelling.
>>
>> Cheers,
>>
>> Michael
>>
>> PS I want to join the spelling resistance :-)
> 
> Hello Michael,
> 
> That made me think about it again, and well, a language isn't what books
> say, but what people actually use.  That's something I learnt from the
> Catalan language, which some institutions constantly try to normalize
> differently than common usage, and it's weird, very very weird.
> 
> So, if most people use *dgement, I'd say the word is correctly spelled
> *dgement.
> 
> But we need a common spelling, because I was searching in vim for the
> word, and it was very weird because I knew the word was there, but it
> didn't show it to me.  I had to manually move to the line to see that it
> was written differently, on the same page! :/
> 
> So I hereby insist on my initial patch :-}
> 
> Cheers,
> 
> Alex
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
