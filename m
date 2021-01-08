Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3E2C2EF2EF
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 14:18:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726205AbhAHNSF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 08:18:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726133AbhAHNSE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 08:18:04 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 883EEC0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 05:17:24 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id ce23so14447219ejb.8
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 05:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YEBlAkG7vy8NXQCIxlouoiwD/lfivlkwzwbfsZ1nrGU=;
        b=ElCRDaMacjdHeP8UkUAVzesxL1fuExFpwCMzoNXeFP6HUV/0b9qXyxr4rqhWMtkSRR
         wIdzSPlULvjNRHZwZh60lZvzUmcvTXP7F9cxHNvyPMx2D19e+hDfcvT2XksT9vo/Z2Xc
         q1bxpJesvYL5701mofO81TtErOeh+eaMi+6WublfWcw4TvrelX0R7Bkv2uG/ZDhZsgz/
         BSFFIelWkhDjvDYtVAfo5Xk4PHb2GnKOiiIC1/BGD1u8iCNVrkEBbo2NLKbwquuG2mgF
         YiVOLoS4yueg0Yfw0qXAE++7Qyl15ymlfnRSR6RWVAVdZO+sjXmrk9J4NXM3daF5fn37
         mGRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YEBlAkG7vy8NXQCIxlouoiwD/lfivlkwzwbfsZ1nrGU=;
        b=NdZMR0tscbjlT8R1XUQgx3+PXV5R1MsLCKWHvz0Gs0ahVkLZjSRkwliVj+aIeFLutk
         qXILrPvD2zlu8NIerb/RgPhdkJ6v15oySjvxz+kyBZdaf1PDIqKg2e9hiLkRK9TLbVCb
         gced2hOXMHqqQML7HWQ94GR+yhSJ8EA37hrJvgztNPKn5WFS1iH5z/01yVSzQulfw2YB
         8gMhq9OXWniReu+lO7XFEStOjAfIN+NQgCXsqNou6Hn9SlrWESWXNKz9qRvDTKnE1MeC
         wfnuPtVcIIN0HIs8VVwGjQJur78Gs/u87zgD7O/G4wk9IZzPJfmW6WexDLRkTYkyr1oK
         mgkQ==
X-Gm-Message-State: AOAM53270mu90PZPhIDm1ZOAcYM5152lnZWL/0oBcnQ46wCa5s/3ecCY
        Di46/6TClMS+bzI7NUatEmn1cVsYOTc=
X-Google-Smtp-Source: ABdhPJyspXvvx70mfp8wh037rbSq2ODNJzaLJf0dZyeOrBgW5GfzzJ4iAncgjZPyXDBZaSU6GcMLnA==
X-Received: by 2002:a17:906:4d8d:: with SMTP id s13mr2612101eju.305.1610111843179;
        Fri, 08 Jan 2021 05:17:23 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id dd12sm3762637edb.6.2021.01.08.05.17.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 05:17:22 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Bruno Haible <bruno@clisp.org>
Subject: Re: setlocale.3: Wording issues
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com>
 <25b829b8-ad0e-06f0-c97a-31277f71f1ef@gmail.com>
 <ed25f72d-e88e-e2c5-66de-3cf70c0cdfc5@gmail.com>
 <c82aef04-b42c-dcc7-0c40-3bf46d88f471@gmail.com>
 <51d1c9c9-5d86-264b-e86c-7cccd9401f7b@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <879e52c6-e4f7-e5ea-5766-4893d01038db@gmail.com>
Date:   Fri, 8 Jan 2021 14:17:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <51d1c9c9-5d86-264b-e86c-7cccd9401f7b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Bruno]

Hi Alex,

On 1/8/21 2:05 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 1/8/21 1:45 PM, Michael Kerrisk (man-pages) wrote:
>> On 1/8/21 12:41 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> On 1/8/21 10:26 AM, Michael Kerrisk (man-pages) wrote:
>>>> Hi Alex,
>>>>
>>>> On 1/7/21 7:32 PM, Alejandro Colomar (man-pages) wrote:
>>>>> Hi Michael,
>>>>>
>>>>> I don't understand what this paragraph means, I think it needs some wfix.
>>>>>
>>>>> Around setlocale.3:179:
>>>>> [
>>>>>        On  startup  of  the main program, the portable "C" locale is
>>>>>        selected as default.  A program may be made portable  to  all
>>>>>        locales by calling:
>>>>>
>>>>>            setlocale(LC_ALL, "");
>>>>>
>>>>>        after  program  initialization,  by using the values returned
>>>>>        from a localeconv(3) call for  locale-dependent  information,
>>>>>        by  using the multibyte and wide character functions for text
>>>>>        processing if MB_CUR_MAX > 1, and by  using  strcoll(3),  wc‐
>>>>>        scoll(3) or strxfrm(3), wcsxfrm(3) to compare strings.
>>>>>
>>>>> <<<Especially these last 2 lines
>>>>>
>>>>> ]
>>>>
>>>> I see what you mean. I had to read that a few times to parse it.
>>>> It looks like the text was added in 1999. I think the following
>>>> clarifies and preserves the meaning:
>>>>
>>>> [[
>>>>        On startup of the main program, the portable "C" locale is select‐
>>>>        ed  as  default.  A program may be made portable to all locales by
>>>>        calling:
>>>>
>>>>            setlocale(LC_ALL, "");
>>>>
>>>>        after program initialization, and then:
>>>>
>>>>        (a) using the values returned from a localeconv(3)  call  for  lo‐
>>>>            cale-dependent information;
>>>>
>>>>        (c) using the multibyte and wide character functions for text pro‐
>>>>            cessing if MB_CUR_MAX > 1; and
>>>>
>>>>        (c) using strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3) to com‐
>>>>            pare strings.
>>>> ]]
>>>>
>>>> What do you think?
>>>
>>> Much better.
>>>
>>> But I still don't get why [A, B or  C, D].  What does it mean?
>>
>> I don't read it that way. I see it as: [A and (B and/or C and/or D].
>> Do you see what I mean?
> 
> About the three lines (a) (b) (c) as a whole, yes, I understand that part.
> About [strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3)], nope, I still
> can't understand the punctuation there.
> So I can't parse the inner contents of (c).

Ah sorry. Now I see what you mean. I'm not sure of this, but I suspect
that it's supposed to mean:

    Use [strcoll(3)+strxfrm(3)] for non-wide-char strings and 
    [wcscoll(3)+wcsxfrm(3)] for wide char strings.

Maybe Bruno can help.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
