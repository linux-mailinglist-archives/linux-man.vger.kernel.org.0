Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B69A33E37AB
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 02:16:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229826AbhHHAQp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 20:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbhHHAQp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 20:16:45 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1607C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 17:16:26 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id d131-20020a1c1d890000b02902516717f562so8767948wmd.3
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 17:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yatjIFUC8wuzG9yMKB0T6dveG55AfeJaPE9H59u5jGw=;
        b=tYJNRJJm5SyW8lgUgSV5Akyn2649QrAH4htV/SAm7WAmat3p+gmqHVQ0ZZtZlD8GPR
         /c7ygw2HC/CzQdt5WwPZig58HZEDBbrR7FcmZDTLu0522Fl7uf6XYEOuR+p/Y+jt0+mU
         6X7r5SUxgD8EsLAw0C3XE/m6JUk4COwstRW/+AHY3cO4xqAdADu5xeaOwVeJ0rHO5ZTA
         ADFBecV2d9MvhaMKnr23qYCR3dO3gsF/3gBaAL5MvqQz2fFtmsfMWCC9KiabH8iLzP8L
         36gGDaYPq+Nt/LqIJiI3DGP3h2q3rnLyFlZg1QRcTMPrAKzPDKoypC6XA4L3YUjCgZU7
         h+bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yatjIFUC8wuzG9yMKB0T6dveG55AfeJaPE9H59u5jGw=;
        b=oEYw+kg5QhUigLp9j+ZRtOKkoiwBcOupJNqLznDjAowzPoURBmfx5/PFhjuLCv88y3
         C7NBGm+smq2toZQBLfiXE0npE+K1XGFSJiLcRbMOd6bvK9yjZu6oEg+/KKU065+1OeeC
         kg574bSa1+gsrT8IhUCMrv/V+pw3HZcQnftSNr1tUdEFPtnMaYXXUEnJDfvy0tiqpj3g
         vbItwvlYXUxVVtwsGxEL3lVhNgzTTjDizHc6ZWSYPtxzniqICEoN9pghW4rbBgvXR/N5
         ViySGGwy51USnSoaq0z5YoM9ULhwNtRxhp8D6CTCAqp27fmNyp5o5m6oKQhxAxuIpR2E
         6ASA==
X-Gm-Message-State: AOAM532dPTOWG4E55A9x06IXb0e2FSdXWcC999gcNi7WAr3RHsuOIdMt
        stx2w7sKvVoYwuhAZz79yOA=
X-Google-Smtp-Source: ABdhPJye13z0wSuRwphBmU/lrUfPt0r/DJkHI/gwju3qnaOwnMq9hUY18w8qoXVpl1MzUgAJVqIPxg==
X-Received: by 2002:a1c:ed13:: with SMTP id l19mr26915781wmh.48.1628381784883;
        Sat, 07 Aug 2021 17:16:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o17sm12596614wmp.31.2021.08.07.17.16.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 17:16:24 -0700 (PDT)
Subject: Re: [PATCH 30/32] strlen.3, wcslen.3: Add recommendations for safer
 variants
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jonny Grant <jg@jguk.org>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-31-alx.manpages@gmail.com>
 <0b8006d4-82d3-3896-5ee9-c1efe04a8583@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cd053311-f9f3-d7d2-2f2f-400bc8048f0a@gmail.com>
Date:   Sun, 8 Aug 2021 02:16:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <0b8006d4-82d3-3896-5ee9-c1efe04a8583@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Michael!

On 8/8/21 1:45 AM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> I see there was a rather long mail thread that led
> to this patch. The patch definitely deserves a commit
> message.
> 
> See also below.
> On 7/28/21 10:20 PM, Alejandro Colomar wrote:
>> Reported-by: Jonny Grant <jg@jguk.org>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man3/strlen.3 | 6 ++++++
>>  man3/wcslen.3 | 9 ++++++++-
>>  2 files changed, 14 insertions(+), 1 deletion(-)
>>
>> diff --git a/man3/strlen.3 b/man3/strlen.3
>> index dea4c1050..78783c446 100644
>> --- a/man3/strlen.3
>> +++ b/man3/strlen.3
>> @@ -66,6 +66,12 @@ T}	Thread safety	MT-Safe
>>  .sp 1
>>  .SH CONFORMING TO
>>  POSIX.1-2001, POSIX.1-2008, C89, C99, C11, SVr4, 4.3BSD.
>> +.SH NOTES
>> +.SS strnlen(3)
>> +If the input buffer size is known,
>> +it is probably better to use
>> +.BR strnlen (3),
>> +which can prevent reading past the end of the array.
> 
> I hesitate slightly about this. strlen() is in the C standard, but
> strnlen() is not. What do you think; do we need to care?

I have some doubts about this patch, but in a completely different sense:

I don't know if I'm being a bit paranoid in treating user input.  I've
always been taught that I should program deffensively, but as time
passes by, I realize myself that I was programming too much
deffensively, and even introducing bugs in the error handling code.  And
in many cases, strings will always be NUL-terminated, so maybe I'm just
passing around a wrong recommendation.

What do you think about this?

Thanks,

Alex


Related: http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1967.htm
(about the deprecation of Annex K from the C Standard)


> 
> 
> Thanks,
> 
> Michael
> 
>>  .SH SEE ALSO
>>  .BR string (3),
>>  .BR strnlen (3),
>> diff --git a/man3/wcslen.3 b/man3/wcslen.3
>> index af3fcb9ca..fe1d6331b 100644
>> --- a/man3/wcslen.3
>> +++ b/man3/wcslen.3
>> @@ -58,5 +58,12 @@ T}	Thread safety	MT-Safe
>>  .sp 1
>>  .SH CONFORMING TO
>>  POSIX.1-2001, POSIX.1-2008, C99.
>> +.SH NOTES
>> +.SS wcsnlen(3)
>> +If the input buffer size is known,
>> +it is probably better to use
>> +.BR wcsnlen (3),
>> +which can prevent reading past the end of the array.
>>  .SH SEE ALSO
>> -.BR strlen (3)
>> +.BR strlen (3),
>> +.BR wcsnlen (3)
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
