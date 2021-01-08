Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0E3A2EF2D9
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 14:05:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725965AbhAHNFw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 08:05:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725816AbhAHNFw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 08:05:52 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2520FC0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 05:05:12 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id d13so8892953wrc.13
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 05:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L82Vpv4jMjP7RCep+QvSX4bfCkerNtARwctiz84VGls=;
        b=pjx0piq/268dlOwxT8U/MGEJNwUvTbemMn6COYzxoiGUrS1NBHT/RB6c3pZLdGXHhN
         PqJTaIzRPu5W68cf0TAEqQbGKgIEwstivRmv3md8szLnb84JlVqBr3a/KuyGYd4bx2Gq
         YTKu9L/swV7/gPXtPOlLeOsnxkm/cEptwp5HSeWWFX6HXn9bzCSqFw3jBIq2Itjp3URo
         UYZa3joTDZ6tmFJVb6Mkyn/U4+kR3Zu6LgM4tMuOt1yMqmLOLVrOK6dbdRegrpmG4Jrh
         w5Vadh9xicHD2lUVEGSpKTpcYFb1QIHWF3xi3w5wzhYL0iubPLSnLQToG8nlP6Gg2rfe
         PGMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L82Vpv4jMjP7RCep+QvSX4bfCkerNtARwctiz84VGls=;
        b=eyeUZnoa6+rjXAiRxDu31kNtuHwX+3qd21wSz/XE4KH/OqDTlH6iCCgM9OGb/y4Htt
         pw3WDxgduU7hnm7wRjjfszsNRNxliC1ScMfZdd25zOd2OoNigwPzoNDCIDGU9dGz0W1A
         L3zucmeG/g3utX8I3F4cxJQTpt4h8QowatZ1m5d/pSjwcpyQwR6Hqc3PzeZl+D/Zfp1y
         Z/6HcWENeg3Sn/gOzXLhZ3Fhs6Evk56zy/7iJp8ZqTS5YeXHkr/IXFkoXwm2IDmo90NW
         YR3f9OoAV+6aE4b5kMegfdE01jqbAxeXDamjSvEhl9ed6qsgSvcmT0lCfAdMc7Yhyg6r
         7zQw==
X-Gm-Message-State: AOAM531NPjkIsRwQ8IlqMyFO/g8kiBZYOLxIFFjHU46PhsjsuBT7WdwJ
        XfMVKM3D2nqyBE+YMWBi0NglbtjFh2Y=
X-Google-Smtp-Source: ABdhPJxtjHFOb96Q/7mWRcm82Fmq2mfkq4kNmSsAo2IIN03Zfk/xvIDKd+GOcMhbpwsDc827azyZPg==
X-Received: by 2002:adf:ab56:: with SMTP id r22mr3607504wrc.351.1610111110939;
        Fri, 08 Jan 2021 05:05:10 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id h29sm13633951wrc.68.2021.01.08.05.05.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 05:05:10 -0800 (PST)
Subject: Re: setlocale.3: Wording issues
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com>
 <25b829b8-ad0e-06f0-c97a-31277f71f1ef@gmail.com>
 <ed25f72d-e88e-e2c5-66de-3cf70c0cdfc5@gmail.com>
 <c82aef04-b42c-dcc7-0c40-3bf46d88f471@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <51d1c9c9-5d86-264b-e86c-7cccd9401f7b@gmail.com>
Date:   Fri, 8 Jan 2021 14:05:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <c82aef04-b42c-dcc7-0c40-3bf46d88f471@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/8/21 1:45 PM, Michael Kerrisk (man-pages) wrote:
> On 1/8/21 12:41 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> On 1/8/21 10:26 AM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On 1/7/21 7:32 PM, Alejandro Colomar (man-pages) wrote:
>>>> Hi Michael,
>>>>
>>>> I don't understand what this paragraph means, I think it needs some wfix.
>>>>
>>>> Around setlocale.3:179:
>>>> [
>>>>        On  startup  of  the main program, the portable "C" locale is
>>>>        selected as default.  A program may be made portable  to  all
>>>>        locales by calling:
>>>>
>>>>            setlocale(LC_ALL, "");
>>>>
>>>>        after  program  initialization,  by using the values returned
>>>>        from a localeconv(3) call for  locale-dependent  information,
>>>>        by  using the multibyte and wide character functions for text
>>>>        processing if MB_CUR_MAX > 1, and by  using  strcoll(3),  wc‐
>>>>        scoll(3) or strxfrm(3), wcsxfrm(3) to compare strings.
>>>>
>>>> <<<Especially these last 2 lines
>>>>
>>>> ]
>>>
>>> I see what you mean. I had to read that a few times to parse it.
>>> It looks like the text was added in 1999. I think the following
>>> clarifies and preserves the meaning:
>>>
>>> [[
>>>        On startup of the main program, the portable "C" locale is select‐
>>>        ed  as  default.  A program may be made portable to all locales by
>>>        calling:
>>>
>>>            setlocale(LC_ALL, "");
>>>
>>>        after program initialization, and then:
>>>
>>>        (a) using the values returned from a localeconv(3)  call  for  lo‐
>>>            cale-dependent information;
>>>
>>>        (c) using the multibyte and wide character functions for text pro‐
>>>            cessing if MB_CUR_MAX > 1; and
>>>
>>>        (c) using strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3) to com‐
>>>            pare strings.
>>> ]]
>>>
>>> What do you think?
>>
>> Much better.
>>
>> But I still don't get why [A, B or  C, D].  What does it mean?
> 
> I don't read it that way. I see it as: [A and (B and/or C and/or D].
> Do you see what I mean?

About the three lines (a) (b) (c) as a whole, yes, I understand that part.
About [strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3)], nope, I still
can't understand the punctuation there.
So I can't parse the inner contents of (c).

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
