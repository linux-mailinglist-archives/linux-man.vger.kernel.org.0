Return-Path: <linux-man+bounces-100-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B36067F03A4
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 00:40:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 327721F20FF5
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 23:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE9DE2033D;
	Sat, 18 Nov 2023 23:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="kDU2D0NB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB5A41AD
	for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 15:40:24 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4079ed65582so5498615e9.1
        for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 15:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700350823; x=1700955623; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KgA4YVTFJ10BeW97/2K9IEVyBHAH3KEm+QxkwHe1H7g=;
        b=kDU2D0NBP1yQwrpSykQa7vEcMhh1bj/nYCdvBO8ti6zYJMHPgVp20OaoVCoQS7+c1J
         TR9THJXDMFQHyXaYn1ETv2omPjbAai9npOgACrWZZW5C8xhuFuNZer3OoxXjeGiPwY0s
         UdMUtG9d9yUOR81WuYwtwgtY7zy2mc3k5G32/ULhRAfuceAw4Mmw6l3H7IxGgp8pxlEj
         S8zI0XxLhHSEbOnsYIjZdEegy3jJxW191r7M/QqsulBi3J4Q6ahkfoB6/iLEwbqnms9g
         4se+BqE4DU+EdfN4wXQ5ewVxoI+H2h4AEbz5oAH1UZAPR6Kbu5fSiOXznzfU2DtviyWt
         pnCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700350823; x=1700955623;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KgA4YVTFJ10BeW97/2K9IEVyBHAH3KEm+QxkwHe1H7g=;
        b=nv9AqGQWwAxNZ/4bbNEG7oSh6eqqBEZoXR4JYrqMA9Jlt84S+J+Sm5stJc+HaqiQqF
         7qza1EVgodnUQA7kdlneZE4EkaOb1KNZHq/0GKgX8lErXeuPKSxyqELWqt8Ny2AyKEKQ
         iW/4IL78oEtlaNnkM3uiCTsPjjOopYgkx0vD5qYSaB9D0Z/fR0mKObJYAR4OhUPRZ498
         iCpTiCaqioFMQ721AL9fDbKACGUcXEwHvVtGApDNWOtYtuxiXik3vxWjsCPuEK+lMMPm
         0TKKkEEdcCC2lRtDNdoNDbGyolH+Z8kENzpZ/depNXXXukwt+vi93ijtSTyhV6U1cHRE
         kv4A==
X-Gm-Message-State: AOJu0Yxoz1PfJhBcpkC6TYh6hehDRmGsj8LfiTjsKFFWEmCro7PwjzqO
	QBXZs2apis6E3BJC3bNao1yUeA==
X-Google-Smtp-Source: AGHT+IFvbVfswm6hi3S4UuzI4P0TyXEJ93EwQeWAwl//b70WY2yI73AeMHB5+0NYFluU6/mqf5NBWA==
X-Received: by 2002:a05:600c:4fcc:b0:408:5ba9:d707 with SMTP id o12-20020a05600c4fcc00b004085ba9d707mr3502951wmq.16.1700350823107;
        Sat, 18 Nov 2023 15:40:23 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id n25-20020a05600c181900b00405442edc69sm12137441wmp.14.2023.11.18.15.40.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Nov 2023 15:40:22 -0800 (PST)
Message-ID: <66296bd3-9918-4dd1-8570-bccfbfd85239@jguk.org>
Date: Sat, 18 Nov 2023 23:40:22 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonny Grant <jg@jguk.org>
Subject: Re: strncpy clarify result may not be null terminated
To: Alejandro Colomar <alx@kernel.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Matthew House
 <mattlloydhouse@gmail.com>, linux-man <linux-man@vger.kernel.org>
References: <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com> <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ebccf5c0-f125-4eb9-8820-e71e77f4f7ed@jguk.org> <ZU4s6Vm-jBjFCcJ2@debian>
Content-Language: en-GB
In-Reply-To: <ZU4s6Vm-jBjFCcJ2@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/11/2023 13:15, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Fri, Nov 10, 2023 at 11:36:20AM +0000, Jonny Grant wrote:
>>
>>
>> On 10/11/2023 05:36, Paul Eggert wrote:
>>> On 2023-11-09 15:48, Alejandro Colomar wrote:
>>>> I'd then just use strlen(3)+strcpy(3), avoiding
>>>> strncpy(3).
>>>
>>> But that is vulnerable to the same denial-of-service attack that strlcpy is vulnerable to. You'd need strnlen+strcpy instead.
>>>
>>> The strncpy approach I suggested is simpler, and (though this doesn't matter much in practice) is typically significantly faster than strnlen+strcpy in the typical case where the destination is a small fixed-size buffer.
>>>
>>> Although strncpy is not a good design, it's often simpler or faster or safer than later "improvements".
>>
>> As you say, it is a known API. I recall looking for a standardized bounded string copy a few years ago that avoids pitfalls:
>>
>> 1) cost of any initial strnlen() reading memory to determine input src size
>> 2) accepts a src_max_size to actually try to copy from src
>> 3) does not truncate by writing anything to the buffer if there isn't enough space in the dest_max_size to fit src_max_size
>> 4) check for NULL pointers
>> 5) probably other thing I've overlooked
>>
>> Something like this API:
>> int my_str_copy(char *dest, const char *src, size_t dest_max_size, size_t src_max_size, size_t * dest_written);
>> These sizes are including any NUL terminating byte.
>>
>> 0 on success, or an an error code like EINVAL, or ERANGE if would truncate
> 
> -  Linux kernel's strscpy() returns -E2BIG if it would truncate.  You
>    may want to follow suit if you want such an errno(3) code.
That is good, E2BIG if the dest_max_size can't accommodate src_max_size

> 
>    However, I think it's simpler to return the "standard" user-space
>    error return value: -1> 
>    If you'd need to distinguish error reasons, you could distinguish
>    error codes, but for a string-copying function I think it's not so
>    useful.

In the past I've used different values, eg -1 .. -5 as there are 5 different errors detected by this function I made a test version of, so application just needs to check for 0 for success. (The different error returns are useful when the issue is logged, to see where the error was detected in the function.)
 
> -  Why specify the src buffer size?  If you're copying strings, then you
>    know it'll be null-terminated, so strnlen(3) will not overrun.

The application should know the src buffer size, given that it allocated the buffer. That saves the performance cost of strnlen().

> If
>    you're not copying strings, then you'll need a different function
>    that reads from a non-string.  The only standard such function is
>    strncat(3), which reads from a fixed-width null-padded buffer, and
>    writes to a string.  You may want to write a function similar to
>    strncat(3) that doesn't catenate, if you want to just copy; I call
>    that function zustr2stp(), and you can find an implementation in
>    string_copying(7).
> 
> -  You can reuse the return value for the dest_written value with
>    ssize_t.  Just return -1 on error and the string length on success.
>    That's how most libc functions behave.

Sounds good.

> 
> -  Regarding NULL checks, it depends on how you program.  I wouldn't add
>    them, but if you want to avoid crashes at all costs, it may be
>    necessary for you.  You could do a wrapper over strxcpy():
> 
> 
> 	inline ssize_t
> 	strxcpy0(char *restrict dst, const char *restrict src, size_t dsize)
> 	{
> 		if (dst == NULL || src == NULL)
> 			return -1;
> 
> 		return strxcpy(dst, src, dsize);
> 	}
> 
>    I used 0 in the name to mark that this function checks for null
>    pointers.
> 
> Cheers,
> Alex
> 
>>
>> All comments welcome.
>>
>> Kind regards, Jonny
> 

Kind regards, Jonny

