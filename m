Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C86862EF31E
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 14:35:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727511AbhAHNfQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 08:35:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726220AbhAHNfQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 08:35:16 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B0CC0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 05:34:47 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id w5so8995546wrm.11
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 05:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3bLTl/68+4wmWTYAbiXyV2cUtyy9a/6kUuYwhk61lh8=;
        b=a02R9RkUx9bDbOqMLQfOiRg/riSrMZKN530dulqHg5OiwG90MzBHHY7SXWSIaZrNmV
         bOJ2othX3RNlp6Tuoa2yc+WH6KYY+vyzP8vaMgFqiNWA789Lcdx/SkOyF1cZ01/bUbu1
         48HsgYpRTLz2kWVwhIvmDZ0+chKbcrwhvggwEhh6sS/wn31NK+eNoL+0G8oFGZ/PynMY
         N+NRZK0SVwkQ56UZsmrTQGsYG1JpNhuWTnm8AmfdHhudFe/BVlTE+UQmSHv7A336sBrK
         8i4XsBk55XqRukVrkJsziLuNHEi3g17OPkEP5rGrHCWYe38Ga1uXeSAViwi9KszhaRDN
         j14w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3bLTl/68+4wmWTYAbiXyV2cUtyy9a/6kUuYwhk61lh8=;
        b=TowHqPy7RCNPpRa9ApZlgpVw2KRY3pAOvND4k6YVVj69pO8BPKXjSI3VhXV9sDp1sn
         hsY7DwDZw2WXOEeNrx4JjcdECAjww1F8L9gAN0gvuL43FVs+Y+mZfmIK7HKdqZ80BYj9
         5/ST2QnVZ1Tn5KqtedM/mzMXd0bKGVZ+EQYc+A/XtObFq7LHDniHs3rT2LyMJLAtqVYr
         F/+1owOWHBha2lGfLJvdAVFUM2eNSxLo7nmWfAYf+nQDWn5+w4wyV6kW2RY7D1vZWPae
         13q/mXyvrsmhR0BdtDPfkXuF7jbZF00isDcMUfpKjd5QcCy9Qo2bN2Odx1WHSn/GnIxI
         NrTQ==
X-Gm-Message-State: AOAM53330iR49KlDf0e7ana6UNRa2GRVidIOSoFRWuH0g9bUmX5d0JQS
        YuIZjftvicbUePXRUyPEYwCBj4Z3tu8=
X-Google-Smtp-Source: ABdhPJzitO7e8cUdxSgHxh02H/yaXAlgCrWxf6SSJ9wREy51Nf8LVu6mPbyUoiK2Dh6iJcgxbEOF/Q==
X-Received: by 2002:a5d:5146:: with SMTP id u6mr3746466wrt.46.1610112886742;
        Fri, 08 Jan 2021 05:34:46 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id y63sm12393182wmd.21.2021.01.08.05.34.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 05:34:46 -0800 (PST)
Subject: Re: [PATCH] netlink.7, tcp.7: tfix: s/acknowledgment/acknowledgement
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210107165518.36629-1-alx.manpages@gmail.com>
 <ffe209ee-809c-10ea-c077-12669ff0f5ab@gmail.com>
 <59156288-13c4-ca10-ade3-5b83cd7c0902@gmail.com>
 <39255c4b-3d54-cae5-14ec-6122cfef8072@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6280e52d-17bd-ea1e-49ac-a23f9e86f51c@gmail.com>
Date:   Fri, 8 Jan 2021 14:34:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <39255c4b-3d54-cae5-14ec-6122cfef8072@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/8/21 2:23 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 1/8/21 12:36 PM, Alejandro Colomar (man-pages) wrote:
>>
>> On 1/8/21 11:29 AM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On 1/7/21 5:55 PM, Alejandro Colomar wrote:
>>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>>
>>> Take a look at
>>>
>>> https://books.google.com/ngrams/graph?content=acknowledgment%2Cacknowledgement&year_start=1800&year_end=2000&corpus=5&smoothing=3
>>>
>>> and compare American English vs British English using the drop-down.
>>>
>>> When I inherited man-pages in 2004, it was a hodge-podge mix of 
>>> American vs British spelling. My native spelling is the latter,
>>> but I value consistency and felt that things needed to be
>>> standardized on one or other, and in computing, American is the
>>> norm so that is what I settled on.hodge-podge
>>>
>>> I'm largely at piece with American spelling these days (it 
>>> is the spelling I use in most of my writing), but I guess
>>> the one point that still bothers me are the American spellings
>>> "acknowledgment" and "judgment". They just feel wrong.
>>
>> Yup
>>
>>>
>>> However, I now learned from the Ngrams that even in British
>>> English, the spelling without "e" was historically the norm.
>>> So it seems that it is British English that has changed, 
>>> not American English!
>>>
>>> I was about to say that I must decline this patch. And then
>>> I thought I'd take a look at the POSIX standard. It seems
>>> to largely follow American spelling (e.g., "color", "canceled",
>>> "recognize", "analog").[1] But, it uses "acknowledgement"!
>>> (There are even a couple of instances of "judgement" in 
>>> the standard.) It seems like others like to have the
>>> extra "e' in those words...
>>>
>>> So, I'm not sure what to do with this patch. 
>>
>> Hey Michael,
>>
>> D'oh, I thought it was a typo! :-)
>>
>> American English surprises me.
>>
>> Yes I prefer American English, but I've also learn_ed_ British at
>> school, (and learnt American through the internet), so I have a weird
>> hodge-podge in my head too :p
>>
>> I guess many people though it was a typo from the data you put.  Also see:
>>
>> $ grep -r acknowledgement \
>>   |wc -l;
>> grep: man7/.hostname.7.swp: binary file matches
>> 69
>> $ grep -r acknowledgment \
>>   |wc -l;
>> 23
> 
> Okay -- this gets weirder and weirder. Look more closely
> at what the grep found. Those instances of 'acknowledgement'
> are almost all in the page comments containing BSD licenses!
> 
> I thought to myself, that's strange: because BSD is from 
> California... Maybe some enthusiastic person did a
> global edit in the distant past to change this to British
> spelling in the Linux manual pages. But, it doesn't seem that
> way. I grepped a few thousand header files that I've assembled
> over the years from various OSes, and in the BSD licenses,
> the vast majority use 'acknowledgement'. A few use
> 'acknowledgment', but I suspect that those were changed
> after importing from other places.
> 
> It seems that the underground spelling resistance was strong
> at Berkeley.
> 
>> Nevertheless, I prefer American too, so I'd invert the patch.
>> What about s/acknowledgement/acknowledgment/?
> So, I still don't know what to do. I never much liked
> the "American" "*dgment", but:
> 
> (1) That seems to have been the historical form that 
>     British English moved away from.
> 
> (2) A couple of "American" groups (BSD, POSIX) use
>     the "British" spelling.
> 
> Cheers,
> 
> Michael
> 
> PS I want to join the spelling resistance :-)

Hello Michael,

That made me think about it again, and well, a language isn't what books
say, but what people actually use.  That's something I learnt from the
Catalan language, which some institutions constantly try to normalize
differently than common usage, and it's weird, very very weird.

So, if most people use *dgement, I'd say the word is correctly spelled
*dgement.

But we need a common spelling, because I was searching in vim for the
word, and it was very weird because I knew the word was there, but it
didn't show it to me.  I had to manually move to the line to see that it
was written differently, on the same page! :/

So I hereby insist on my initial patch :-}

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
