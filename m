Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E5822EF2A1
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 13:46:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725942AbhAHMqh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 07:46:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725817AbhAHMqh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 07:46:37 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C0DAC0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 04:45:56 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id y17so8865452wrr.10
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 04:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UVeRmk7nxnW2U4jBeOR+9UlJMpGjz7Jp+3ySDMvhHUk=;
        b=pAxNedp0+LfwoHirejgrCoAmdXMnPwey8nIfly3SqRZQopV/JZ8mYQnaxKZ5GR23gm
         QftKp5iy6j0CAW+cZRddti6WJLAIvDdskYeJBkB2Gb1tCA6RgptU/1Nktgny6ZPFLn6L
         bLrAJOUSGbKLDqczGKkGozcuBCVBuKj0nEcjbxow95VoOK9GOxHgzlobuS2NR0plld3N
         RYvZjSmDzYK9MMZiSTYljPac//4yKN94ift2CseI0gXjyThFK8dhaYRNRIB+mkfnIa6G
         W3bIT1BakIvKSVfMwCBHUy1Qy02VOkQWoeLaEIO9a4d4Oky2bkp1+iBBnn4LG2S2SCCk
         XpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UVeRmk7nxnW2U4jBeOR+9UlJMpGjz7Jp+3ySDMvhHUk=;
        b=MHdp2xvVw7dkboGK1UbxbN5Y7+hDvYHaGjIt2PdtaVpui8EMbJRaeQp4vcZvcAIzj7
         rOCAu56NtDtTfBeV42KeNoURcQ5RtDgZt2e4Chjxah0YR4shES/dEn6cpVfHKFVdmywL
         OG3P/Ungv6x4BJv+bUxACW/9uDa5dHNE5gf7bjZlSW/l6rBA+NoEqaa22kCQ1UK8wInj
         B+5CAexIU9vnB4GGuxNoPGPgI2XBZgC2lpDXR3719DBOs5ka/BodlNBjonNefn03f6e5
         7JZ/91nSzYpyFcemyJYwgKLuPlGitpeVMY6mvNiPzrhj9l77hOROaDXVyDXDqHRvVPUg
         QMeg==
X-Gm-Message-State: AOAM5338S+Fh8rBbXGucUBsbSN7NUJltvnp2RC3bRtfysWv2Ti1IT9JO
        4I+q5ALgyxfmSUTuNKuIEk7aigavLHE=
X-Google-Smtp-Source: ABdhPJydy/DmBb0kBTBBpnPEN58mZ2YKATtrNX/joRpTGZX+CFGHtc9EdZ7kKlw3Kn70BRHk3UxKSg==
X-Received: by 2002:a5d:684b:: with SMTP id o11mr3498345wrw.157.1610109955030;
        Fri, 08 Jan 2021 04:45:55 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id p8sm13559663wru.50.2021.01.08.04.45.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 04:45:54 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: setlocale.3: Wording issues
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com>
 <25b829b8-ad0e-06f0-c97a-31277f71f1ef@gmail.com>
 <ed25f72d-e88e-e2c5-66de-3cf70c0cdfc5@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c82aef04-b42c-dcc7-0c40-3bf46d88f471@gmail.com>
Date:   Fri, 8 Jan 2021 13:45:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <ed25f72d-e88e-e2c5-66de-3cf70c0cdfc5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/8/21 12:41 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 1/8/21 10:26 AM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 1/7/21 7:32 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> I don't understand what this paragraph means, I think it needs some wfix.
>>>
>>> Around setlocale.3:179:
>>> [
>>>        On  startup  of  the main program, the portable "C" locale is
>>>        selected as default.  A program may be made portable  to  all
>>>        locales by calling:
>>>
>>>            setlocale(LC_ALL, "");
>>>
>>>        after  program  initialization,  by using the values returned
>>>        from a localeconv(3) call for  locale-dependent  information,
>>>        by  using the multibyte and wide character functions for text
>>>        processing if MB_CUR_MAX > 1, and by  using  strcoll(3),  wc‐
>>>        scoll(3) or strxfrm(3), wcsxfrm(3) to compare strings.
>>>
>>> <<<Especially these last 2 lines
>>>
>>> ]
>>
>> I see what you mean. I had to read that a few times to parse it.
>> It looks like the text was added in 1999. I think the following
>> clarifies and preserves the meaning:
>>
>> [[
>>        On startup of the main program, the portable "C" locale is select‐
>>        ed  as  default.  A program may be made portable to all locales by
>>        calling:
>>
>>            setlocale(LC_ALL, "");
>>
>>        after program initialization, and then:
>>
>>        (a) using the values returned from a localeconv(3)  call  for  lo‐
>>            cale-dependent information;
>>
>>        (c) using the multibyte and wide character functions for text pro‐
>>            cessing if MB_CUR_MAX > 1; and
>>
>>        (c) using strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3) to com‐
>>            pare strings.
>> ]]
>>
>> What do you think?
> 
> Much better.
> 
> But I still don't get why [A, B or  C, D].  What does it mean?

I don't read it that way. I see it as: [A and (B and/or C and/or D].
Do you see what I mean?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
