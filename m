Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE24B3E37A2
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 02:04:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbhHHAFC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 20:05:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbhHHAFB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 20:05:01 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94666C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 17:04:42 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n11so8037035wmd.2
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 17:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X8JVuNZJmmcZexta7xjaWcE6k1ErecJEk0iwu4eK/k4=;
        b=ObzTBrozD4jTEbA86XZ1zxvFk9m2i+blEgNbAQ9LTYMQuYRUt1nMv57L5SFXutnNvs
         x8h3PPcJkDK83rJJ1VhPmX4b69nlWWz+TkTKXgBshBfaTMwC0Kl5fVFEc5ROCUjGTny0
         xhDupiJb+C2ARUdVJLgCXpb7o8jJa/S/ZBiEgEMe0RGFzJXHlrvOSci4cvjlBa/vGH4F
         Y3oyxeNeASNIBkNXea5x9LouKCqH4970Lbx7OV20dB+2S9zWGhb/Oj+DyU4qSQ9Oc2+a
         IKp77LPIHDO4eBP8CbX+T/mjZa+c3sbZYwAgwhfWOm+rm7LpKJAmSH9M9IvPpzch6B48
         O4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X8JVuNZJmmcZexta7xjaWcE6k1ErecJEk0iwu4eK/k4=;
        b=XHB+N9RExp6iRjtPTZnGhBeRZ6jLvLeqRQujc+FPHEfufXeKpuZWFxDJrGD09G/Wsw
         Pbvx7T9LL4lEjUbN2lP1+ruRd0WFC0WpdU2TtRLjsGuBsOf9tXm0Vfc36BncKMypbkSa
         mba+8TpX6Zv7ZokYOG/x0w9/26b5n4Hdl1yY9DwYCaSmBQIv2tqQQnd0WQGo9+/O+H3J
         kQ9YpFB+P7BU5XYNd2ANnpRhbL0cBh2Pv0QkVfwb8vtK7/KTUQDAyfWlGNJag7+18R2g
         S3fJnRX2wJRUwWvCbI+15a7jGivbRIkKkm+UNWYfz1HmKM8f/Ic21cuM1WY5MicFJY1N
         lfkQ==
X-Gm-Message-State: AOAM530UK2PoJkIF8hpx/BroILw8uilnvwUAmbIbEHb3SFEogMfysA4F
        Q89M596juFnZQFzv0+0phTCeBxCcd7o=
X-Google-Smtp-Source: ABdhPJys0kq85DfA8l59Moq/Rr3txE2JBbtVwvnX7O9wDx4ilGxiwDitxb629fMiRdCrdEtZ6ubWaA==
X-Received: by 2002:a05:600c:414b:: with SMTP id h11mr26251106wmm.120.1628381081062;
        Sat, 07 Aug 2021 17:04:41 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r12sm15185654wrn.31.2021.08.07.17.04.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 17:04:40 -0700 (PDT)
Subject: Re: [PATCH 30/32] strlen.3, wcslen.3: Add recommendations for safer
 variants
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jonny Grant <jg@jguk.org>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-31-alx.manpages@gmail.com>
 <0b8006d4-82d3-3896-5ee9-c1efe04a8583@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <7460a647-310e-5a78-4403-74da47a611a1@gmail.com>
Date:   Sun, 8 Aug 2021 02:04:39 +0200
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

Maybe this:

[
strlen() is normally used as a first step
in a series involving usage of strings.

However, if the input string can possibly not include a terminating null
byte '\0', it's safer to use strnlen().

Since there's not much overhead,
and the compiler might already optimize some cases
where it knows it can use strlen(),
it's probably wise to recommend strnlen() over strlen(),
and be on the safe side, to avoid bugs.

Code coud even be safe in the present,
but in the future start using non-terminated strings
and then introduce a bug, if strlen() is used.
]


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

I think POSIX.1-2008 is enough of a standard.  Don't you?


Cheers,

Alex
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
