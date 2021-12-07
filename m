Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3166F46AF3A
	for <lists+linux-man@lfdr.de>; Tue,  7 Dec 2021 01:38:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356679AbhLGAmI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 19:42:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352055AbhLGAmH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 19:42:07 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 669A7C061746
        for <linux-man@vger.kernel.org>; Mon,  6 Dec 2021 16:38:38 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id c4so25859264wrd.9
        for <linux-man@vger.kernel.org>; Mon, 06 Dec 2021 16:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VneeEKui13EO76ly+tDiwyzy9iaAxkoeOFHDtaAtu6Q=;
        b=n/jYcRCub1MlQtm2uHWHFlwwu37hDRn0ciWQQ7l567uRHtOkB3FBLAc/TLuu0KyQRe
         +5l5UoxBV0sSw5ZCLARmE8ALDoKFqzHNwAj/rMUF/7Dt/6XnPh1otsklHCFy3YpD1wHZ
         htGyJtGRYx1VY5MvWArZA/mAwg7WihP9Zt2IlMcHaTvT78m+riOrbO1kXUFKE7AQf68H
         t+KxLsgMnjQHf4NaIZVO50pTULiLgcH2oUGoBHuCAZhxQ55YmqphemYhgvQTZKi7HMLb
         uyJ/TBmsU5qoRaUkU7+RtPcS6Ttz9zN4sxvB1OLJKwDGaoLkQgrZiIHFwvT5ISm0AxGE
         i16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VneeEKui13EO76ly+tDiwyzy9iaAxkoeOFHDtaAtu6Q=;
        b=nTPPBZoxH8moLnTCqQptrCpxncyFbpSEoJthncihYnTloD0UL+Wxp0y8aiO5o/fXf+
         rkjrUrhoNTKBirlChGzcBd5CSLWUqb8i7YwpW8M6chjqQ6IwnnZ29LOp5AtPjyrRH+RC
         JjYHNbG4/RCCg/ryfAuBMkXooXeXpWHxWbBb2E94PqfnqgbpQqfPqO8wc2w72pnJJIQO
         ZumdmFZpjuSvW2yXR1r0Ue9c4ZHRfwTLigjNSm5MLO+mAcVrNrpk/g2WJB379prMPNTa
         yk+o2MJpeTMpUXIj68wmK1VN9xM/aVZaTRDnEP3bvHVVLe5pNNjyvhwIYEX5JjvXggkG
         /3jg==
X-Gm-Message-State: AOAM531wNUZ7iFJutxsI/AZ3pe9UsuLjf85MPRIi72+FP5j83972EXR9
        bwzYU6j+xqR9R9Fu2oTzpzM=
X-Google-Smtp-Source: ABdhPJz1/eEBzplDcVrkMGv7DE6v7KZAsCzNZxgUcTfUL1cEhGXYILqPFIPpo4fgU8gW52Rg2cuuVw==
X-Received: by 2002:a5d:4b41:: with SMTP id w1mr47218587wrs.537.1638837516989;
        Mon, 06 Dec 2021 16:38:36 -0800 (PST)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c1sm12598218wrt.14.2021.12.06.16.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 16:38:36 -0800 (PST)
Message-ID: <d400d07c-585c-ded8-afc1-563bb4796881@gmail.com>
Date:   Tue, 7 Dec 2021 01:38:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct timespec::tv_nsec
 type for x32 and portability
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Zack Weinberg <zackw@panix.com>
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
 <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
 <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
 <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/7/21 00:31, наб wrote:
> On Mon, Dec 06, 2021 at 11:56:19PM +0100, Alejandro Colomar (man-pages) wrote:
>> I (more or less) understand the deduction of why that happens on certain
>> systems,  what I was wondering is if there's an intention behind that, or if
>> it's just an accident.  Why not just use plain 'long' always as POSIX says
>> it should be.  I don't see the feature part of this bug.
>>
>> 'long' is at least 32 bits, which
>> is enough for 1G.  Was there ever a good reason for glibc to use 64 bits?  It
>> seems like a wrong decision that is maintained for consistency.   If that's it
>> I'm in favor of mentioning it in a Bugs section (as Jakub proposed), instead
>> of a Notes section.  Maybe someone from glibc may give a rationale for this
>> deviation from POSIX.
> AFAICT, as you say, this isn't much more than a side-effect
> of using the amd64 ABI and not being too careful with how it interacts
> with the POSIX requirement (it's entirely feasible to re-wrap
> a user-space timespec, or even use the bitfield trick glibc
> already does to not have to do it), but then I'm far from an expert;
> indeed, maybe someone with more glibc involvement will know.
> 
> Updating to Bugs for now, maybe we can downgrade later.

Sure,  I'll delay applying this patch to allow for comments.

> 
>> Maybe preceding the paragraph with "In/On (I never
>> knew if there goes in or on) glibc," would do.
> Out of those two: on (in would point to glibc internals),
> but I'd actually go for "Under", here, since glibc is an over-arching
> (literally) universe-defining context, rather than an add-on,
> or something build your program on top of.

Interesting :)

> 
> For my own curiosity: which preposition would you use in Spanish here?
> 
I would say "en" (which normally translates to "in" in English).

Under some circumstances I might use "con" ("with" in English), but it 
would be rarer.

>> On 12/6/21 23:03, наб wrote:
>>> +.br
>> We don't use '.br'.  In this case I think just continuing in the same
>> paragraph would be fine (i.e., no break at all).
>>> +In reality, the field ends up being defined as:
>> Here I'd add a blank line with '.PP'.
>>> +.EX
>>> +.in +4
>> Please, revert the order of .in and .EX.
>> It's meaningless, but I prefer consistency.  See man-pages(7), which shows
>> this order, and also the following:
>>
>> $ grep -rn '^\.EX$' -A1 man? | grep '\.in' | wc -l
>> 2
>> $ grep -rn '^\.EX$' -B1 man? | grep '\.in' | wc -l
>> 1048
>>
>>
>> One of those 2 cases was this patch.
> Sure, sure, and sure
> 
>>> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>>
>> Now I notice:
>>
>> Shouldn't this use defined()?
>>
>> #if !(defined(__x86_64__) && defined(__ILP32__) /* == x32 */)
> Eeeeh, not really? That's functionally identical but, like,
> very verbose for no good reason.

Are those defined to actual values?  Or are they defined just empty?
I thought they were empty (but have never used those macros, so don't 
know at all), in which case it would matter:


user@sqli:~/src/test$ cat defined.c
#define C
#define D

#if A && B
#warning AB
#else
#warning notAB
#endif

#if C && D
#warning CD
#else
#warning notCD
#endif
user@sqli:~/src/test$ cc -Wall -Wextra defined.c
defined.c:7:2: warning: #warning notAB [-Wcpp]
     7 | #warning notAB
       |  ^~~~~~~
defined.c:10:7: error: operator '&&' has no left operand
    10 | #if C && D
       |       ^~
defined.c:13:2: warning: #warning notCD [-Wcpp]
    13 | #warning notCD
       |  ^~~~~~~



Cheers,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
