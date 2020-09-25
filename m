Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4390C278304
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 10:42:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727067AbgIYImv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 04:42:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727044AbgIYImv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 04:42:51 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1671C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:42:50 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id o5so2592027wrn.13
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KliGcd+DSXgS6K24yoGL4YElBBIwi9ku1S3veXmlqF0=;
        b=TBYwPOJSenT1vt10u4nk8B6NiE9RJEiSVTLoKhpjzxzo4l8hJ08CXUZ8FrOeujORzE
         H2tWkNzmUmFjIZk9JbaqaBXVTWxV/089SNNegKyrxnnPU72sEjnRcOTm8cAMKy0DgVme
         6gZnzY08lw63OxAFwyT5Rkw2tBs8SzGYolH5uwLW2e/QYGPR+hTYME4YNV1RA0EciYNH
         6oiXfmmzyHWLHzHPlG/Sr99c4njaiBVoSqj4SD/M3WTtntMChr0o0oJxt8xYEgVwQnz7
         z1CH53vn6y2Kw4VCtlSaQClD6Ucym+WBlVRejHOSzAk+/px/0/Nw3cAKKi/0w82sJGBO
         OL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KliGcd+DSXgS6K24yoGL4YElBBIwi9ku1S3veXmlqF0=;
        b=ljxrCrAFWiL9WaM+Rks+HWE6MIxqj8uZoaz7u4Xe3wNXT5cLlBHldcvj39i8LUOtq1
         rH82IIC77emkO/vpBl2n/EVAfvubxVBqGR4B/JIHJeABDJ3VnYDHzIwYXiO8C+vzMvBq
         MbC7QJ6H0Q/mGTTojTDg5q/mbKhUykvKCw8k8Vc4C8DBd6dvi+XE00FjK9ZtMZMCSdrK
         mY0a9jJzjFOwq2hCoQ2Hz0UT3hhXVXJx+elTZaQTM99AvajpumOYWGLHgwE2lc8EdWgp
         TRiZoTXIglVLpIuWN3+0X2rf1O0jIW6sKPLtmvmH1z+s9rg/esoPXkRjhC+9KBl70AMW
         Ce3g==
X-Gm-Message-State: AOAM532Af8afRybYlgXJetk7bHr4SSrGXlYaUXCRRWng+x5l3HHTpPcc
        X7cwuMVNav06nimSStnCBDCF5mXlfgPOZQ==
X-Google-Smtp-Source: ABdhPJyr4yjKp9qTGwHr06QHXtGweIPEkMvvL9f2yG8lAXPYkaW50Gv0divtDLGRQj4u+8iBC4I7sA==
X-Received: by 2002:a5d:6acf:: with SMTP id u15mr3192976wrw.221.1601023369568;
        Fri, 25 Sep 2020 01:42:49 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 91sm2201770wrq.9.2020.09.25.01.42.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 01:42:49 -0700 (PDT)
Subject: Re: [PATCH 08/10] seccomp.2: Remove unneeded cast
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-9-colomar.6.4.3@gmail.com>
 <32c00e41-4b1c-a7f8-d3d3-790014b7f4b5@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <ba733571-f9b6-da5b-206d-1f792bb43d94@gmail.com>
Date:   Fri, 25 Sep 2020 10:42:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <32c00e41-4b1c-a7f8-d3d3-790014b7f4b5@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-25 10:34, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 9/25/20 9:31 AM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man2/seccomp.2 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man2/seccomp.2 b/man2/seccomp.2
>> index 58033da1c..d6b856c32 100644
>> --- a/man2/seccomp.2
>> +++ b/man2/seccomp.2
>> @@ -1101,7 +1101,7 @@ install_filter(int syscall_nr, int t_arch, int f_errno)
>>       };
>>   
>>       struct sock_fprog prog = {
>> -        .len = (unsigned short) (sizeof(filter) / sizeof(filter[0])),
>> +        .len = sizeof(filter) / sizeof(filter[0]),
>>           .filter = filter,
>>       };
> 
> I have a small doubt about this change. With the change,
> there are no compilation warnings.
> 
> But, if we change the code to something slightly different:
> 
> [[
>      size_t x = (sizeof(filter) / sizeof(filter[0]));
>      struct sock_fprog prog = {
>          .len = x,
>          .filter = filter,
>      };
> ]]
> 
> The "cc -Wconversion" gives us the following warning:
> 
>      warning: conversion from ‘size_t’ {aka ‘long unsigned int’}
>      to ‘short unsigned int’ may change value
> 
> Presumably we don't get a warning for an assignment of the form
> 
>      .len = (sizeof(filter) / sizeof(filter[0]))
> 
> because the compiler is smart enough to work out that the
> value of the constant expression is within the range of
> "unsigned short".
> 
> Your thoughts?

Hi Michael,

I'd say that the cast doesn't fix any problems at all.  It silences a 
valid warning, and I'd use a pragma for that (to be more explicit about 
the intention of silencing a warning) if I do want -Wconversion enabled 
(which usually I don't want, because it's too noisy) and I'm sure that 
this won't overflow.  I'd limit the use casts to only when I *really* 
need to.

I guess that if you enable -O3, the warning will vanish again because 
the compiler will optimize away 'x' (but I didn't test).

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 
