Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 841AC31F96B
	for <lists+linux-man@lfdr.de>; Fri, 19 Feb 2021 13:31:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhBSMap (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 07:30:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbhBSMap (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 07:30:45 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD4E6C061574
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 04:30:04 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id a207so7516467wmd.1
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 04:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vggnZtxb3mb6KenfuVYla6eyhxwzdaStZrWWPoloUcc=;
        b=G/s5awenV7j4GY5P2B8AYPwfL55VbgDjbcqEHhFJ830n2C76VVQbNpesfZ3hljpQKQ
         C9fie0iMH6ZL0GDgyuMVdCr2aHf5mSZ8fdRNjOYA4ViM+ioDVv4vrpviydJl0Xm8D09c
         EbRH2IIN0Dqq5oKP+EGR76NDrmUeiSnb5DpcmCZWeoZY8asitdPj6Dch7cEleJnQwUxD
         gnuo88byHEFoISgR7yejEFwztk9x/t8z2gRWee3nmL4ZZ2SPcYcd9xCzctJZTKcoLCMq
         sexy11iFbJzksgHkHHvq+28GnfUJ1Nhps3hezJrzqm1ZBU8EHaZXxgSw0cUbLdDLBttg
         seYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vggnZtxb3mb6KenfuVYla6eyhxwzdaStZrWWPoloUcc=;
        b=ZeVbOYO8l1Twoe/WQgQJYz+4lyh/de+QiwYuBgcTVfPlwyN2j50JlwTVvZnampSrW8
         mblWeP5DgX6Hx7AAFN/84RuOtoIF4JbesKB3F7IGhbks+8ovS8mUcOLAfdaAIzbRnAqA
         diZ4ue709GfhC/q+1eaYyqgq2De04v8mxbmdAxbkB1ZLKd5611fzEff9RI+5VC5m9tay
         0a3OQF5krBxHYr7QOR+pq2y5RlOmSzy9zg1Qw4ezIZgScUAOV0UDppYILe4hkrrcxapH
         tW/4kXz9k4qaL7Wl1WRRr136PQvCZC8q5HthV6fTYduwajhpzdkjCu/sqSUBvvqWNwHf
         AHpw==
X-Gm-Message-State: AOAM5303y0Eh4Syjz2llzmZPueASRgRAdnUgAf3XBoPgmTJhbnh0cDlC
        bUqn8KpXe9HUaw+3T3c5Lfsd7claFg7lnA==
X-Google-Smtp-Source: ABdhPJyH2q+HnN/OXa8H2WwiTpUi0FUcuFTbcLCKEQw78eRJ2h44hAYqdsQTkl8gglBEE0FJXuRJzw==
X-Received: by 2002:a1c:1d42:: with SMTP id d63mr7797079wmd.26.1613737803558;
        Fri, 19 Feb 2021 04:30:03 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z5sm13250942wrn.8.2021.02.19.04.30.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 04:30:03 -0800 (PST)
Subject: Re: [PATCH] aio_suspend.3: SYNOPSIS: Use 'restrict' in prototypes
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Ulrich Drepper <drepper@redhat.com>
References: <20210218223356.320470-1-alx.manpages@gmail.com>
 <e4fb08a9-dddb-296d-6d32-eee6d5d59d65@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1950eeca-5627-93de-6fe9-22ebf189b37a@gmail.com>
Date:   Fri, 19 Feb 2021 13:30:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <e4fb08a9-dddb-296d-6d32-eee6d5d59d65@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2/19/21 1:25 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 2/18/21 11:33 PM, Alejandro Colomar wrote:
>> POSIX does NOT specify aio_suspend() to use 'restrict'.
>> However, glibc uses 'restrict'.
>> Users might be surprised by this!  Let's use it here too!
> 
> Thanks for spotting this. Perhaps if we apply this,
> the patch should include something in CONFORMING TO to
> note that POSIX doesn't specify 'restrict'. What do
> you think?

Hi Michael,

I was about to ask exactly that in the email, but I forgot :)
Yes.

Cheers,

Alex

> 
> Cheers,
> 
> Michael
> 
>> ......
>>
>> .../glibc$ grep_glibc_prototype aio_suspend
>> rt/aio.h:167:
>> extern int aio_suspend (const struct aiocb *const __list[], int __nent,
>> 			const struct timespec *__restrict __timeout)
>>    __nonnull ((1));
>> .../glibc$
>>
>> Cc: libc-alpha@sourceware.org
>> Cc: Ulrich Drepper <drepper@redhat.com>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>> Hello Michael,
>>
>> I sent this patch separately because it's a bit different,
>> and would like someone from glibc to check it.
>> I CCd Ulrich, who added 'restrict' to the function in glibc.
>>
>> Thanks,
>>
>> Alex
>>
>> ---
>>   man3/aio_suspend.3 | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/man3/aio_suspend.3 b/man3/aio_suspend.3
>> index 76a05f48e..dcae51e1c 100644
>> --- a/man3/aio_suspend.3
>> +++ b/man3/aio_suspend.3
>> @@ -31,7 +31,8 @@ aio_suspend \- wait for asynchronous I/O operation or timeout
>>   .B "#include <aio.h>"
>>   .PP
>>   .BI "int aio_suspend(const struct aiocb * const " aiocb_list [],
>> -.BI "                int " nitems ", const struct timespec *" timeout );
>> +.BI "                int " nitems \
>> +", const struct timespec *restrict " timeout );
>>   .PP
>>   Link with \fI\-lrt\fP.
>>   .fi
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
