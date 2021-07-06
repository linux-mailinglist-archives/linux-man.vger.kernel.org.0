Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E64093BCB5D
	for <lists+linux-man@lfdr.de>; Tue,  6 Jul 2021 13:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231376AbhGFLIx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Jul 2021 07:08:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231216AbhGFLIx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Jul 2021 07:08:53 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EFE3C061574
        for <linux-man@vger.kernel.org>; Tue,  6 Jul 2021 04:06:14 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso1404602wmh.4
        for <linux-man@vger.kernel.org>; Tue, 06 Jul 2021 04:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9udwf6hTnsPuz+wU7lzghA2wa6/FcWtEOli+eZvO9ec=;
        b=amsyHdwhg1quEHvAHi31Di9ZUj10rb4lLk5rC/GJT07bZ5eQtUWowl22/gauDqCJab
         swBMkRMvMIQYhmHg8/Rh2uhc142IwHcQ1wNvbDSDZtQrbmD1zjXSKFZDBbVpSttpvQ99
         SrPYmO1jC77udjKfk4fdcnMbu01Wm5A4i24tHJWa7OeJwoS05JTbaMT9p+e2d6xUXlhM
         vpVSVTZ0tMYzNhg1Jt3XuxX28ebXpWoyY/lFTNjlkOmWPG8TA3ajBo181vWkmCljVIw2
         eBSOLlagfLYSsNsLyQ/vlQJ8kkiicwNR+pyL9pt2DfaVtuRvyTyGyiyNgkjCePzN/Ton
         W8eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9udwf6hTnsPuz+wU7lzghA2wa6/FcWtEOli+eZvO9ec=;
        b=AbTbStVBTUYqSAQCOp+4p20zSR96tiUsg+N5oyb/qNPAdMwvyZw1//4cbLGptIz0wE
         Asg/LWl77bSRviPzWU73qy+nyc2UebVRuOqWwoeZ99kmtqZemTQ5zP5xcJasfdLxDZIa
         U8A2cYwLNZ9/6E17iJQ8pn9fnpdB0YY/RCJ3cay/gqLxNBr7XbyAKbQErB9KUHj5SRAl
         oHdme9/azrnHY3anyFGAM5YCvqBZVhlqsCeHq3QpAINinzgLR79qy8/mIsggez4RcgVc
         ZqbGO8vaworY654Uc+k+y/MQ0nR84MPELNUg5V7IVuq0mjFLC5IZ2nfoUe2gs8rhSTmV
         pMZg==
X-Gm-Message-State: AOAM530hnx9pLTz24vj9lXdoaMcv4HPNBqtgopNYOfsdGxVolis7x2yJ
        6yg7sOXqmWDwtfMBb5S4NIN4NqtrcYg=
X-Google-Smtp-Source: ABdhPJxg83FxSL1vIchbvxhzPVjXQ1Ooe7Yde5BqPMRjkMDblEkpIW49Qg+gQ8rUBa3LXk2NfixMig==
X-Received: by 2002:a05:600c:b59:: with SMTP id k25mr4180926wmr.117.1625569572372;
        Tue, 06 Jul 2021 04:06:12 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id r16sm19414076wrx.63.2021.07.06.04.06.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:06:11 -0700 (PDT)
Subject: Re: new:mbrtoc32.3: convert from to c32
To:     Radisson <Radisson97@gmx.de>
References: <8295983.X7ISPF4pOe@omega>
 <8f538e31-a730-0fcb-1d6b-c28e9fc164dd@gmail.com>
 <306efb49-83ee-bd23-7e98-33e38ae77634@gmx.de>
Cc:     Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a4c7ced6-8e28-3120-438c-af4ef0271c31@gmail.com>
Date:   Tue, 6 Jul 2021 13:06:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <306efb49-83ee-bd23-7e98-33e38ae77634@gmx.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On 7/5/21 11:09 PM, Radisson wrote:
> 
> 
> Am 05.07.21 um 21:07 schrieb Alejandro Colomar (man-pages):
>> Hello Bruno,
>>
>> On 7/4/21 12:26 PM, Bruno Haible wrote:
>>>> mbrtoc32, c32rtomb \- convert between multibyte sequence and 32-bit
>>>> wide character
>>>
>>> I would suggest two separate man pages for these functions.
>>> Rationale:
>>> It is rare that some code uses mbrtoc32 and c32rtomb in the same
>>> function.
>>> (Basically, functions that do input call mbrtoc32, and functions that do
>>> output call c32rtomb.) And the description of mbrtoc32 is a bit complex.
>>
>> Okay.  Indeed, the *wc* functions are documented separately.
> 
> I beg your pardon,
> we do not write a program, for the understanding of the function i found
> it much helpful to see the from-to connection.

No pardon needed :)
I don't have any strong feelings about how it should be organized in 
files.  There are 3 ways I see:

a) mbrtoc32 & mbrtowc together;  c32tombr & wctombr together
b) each one in a separate page
c) mbrtoc32 & c32tombr together;  mbrtowc separate from wctombr (as is now)

If you think any one is especially better than the rest, do it.


What I would like to especially make clear is the similarities and 
differences between those 2 sets of functions.  And not rewrite 
everything from scratch, because that causes 2 main problems:

* Maintainability: maintatining different pages that say the same in 
different ways is not a good thing, IMO.
* Confusion: Readers of the page may get the impression that the 2 sets 
of functions are considerably different if they are documented differently.

Thanks,

Alex

> 
>>
>>>
>>>> Are there any important differences compared to the already-documented
>>>> and C99-compliant mbrtowc(3) and wcrtomb(3)?  I mean, apart from the
>>>> types of the parameters. >
>>> No for c32rtomb, but yes for mbrtoc32: mbrtowc has the special return
>>> values (size_t)-1 and (size_t)-2, whereas mbrtoc32 also has the special
>>> return value (size_t)-3. Although, on glibc currently this special
>>> return value (size_t)-3 cannot occur. But IMO the man page should
>>> mention it nevertheless, otherwise people write code that is not
>>> future-proof.
>>
>> Thanks for those details!
>>
>> Regards,
>>
>> Alex
>>
>>


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
