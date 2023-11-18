Return-Path: <linux-man+bounces-97-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8283E7F038A
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 00:03:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6CC68B20992
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 23:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27AFA200C4;
	Sat, 18 Nov 2023 23:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="L1IDPAIF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9D08131
	for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 15:03:23 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40853c639abso6340825e9.0
        for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 15:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700348602; x=1700953402; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CwuiVA2zw+N7h/UKZ3awd1VNQqWWynQXelAOFGyrcbU=;
        b=L1IDPAIFPC2CjF6f+JV4NWta6viO5UuLzapMrGlhNNHUxrqKKg6NHKrzhryNd8QYCH
         lo0OOIFXNlIgjLMWupOuICGUrWwOq7BYhitolWmMr4/lCWrC1G9Lb9sUlBqKnIdtz0GE
         ciIl4UQVkz8BWKwoo4kEdeIK/aurCjkf8A5ZsERi7vrrsAL8+adNJUc2+rulr+QB4Sac
         1tuEbvSI4fh7hciNeK9MTnGoPTYYqFfM0e6uMcbbdz1Nyv/XGzy6Xye/TiIfF6KZWjqT
         Q49yRKNu6LYhzT2C0bqmm1+iSIXjNQgac3HisWDqtWrQXIRicT8TqL3I6tC4fkMt8Lkb
         eaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700348602; x=1700953402;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CwuiVA2zw+N7h/UKZ3awd1VNQqWWynQXelAOFGyrcbU=;
        b=gwU/DlZAWfwQcN/ZP79Osn6t/fmB7Qq8Gg6Sx1t01bPDZAJv6Q0MiglaVk6zrnYGoQ
         XQKrHM/N6QlT1fCyTEBOVtyju2aIflZy3q6YCXLnBd2s7Qkdcxn43SmAH8XuTxA3d7AO
         NTnt659OuGLvSxftr8KOiBIS0+IV5LIEbJ5IHemVwXVWmG5GvkchFzuB4nfAVzMWj9yf
         6lQIFXyC7k83F8dCitte8cilaw/6cdEqta7dtRDRKOQrdNIGAHbDb0LRymfqdkE3Ioch
         0sqBMhK7+cuGeTAJznUMW91gA3rCke6/TMhMn4HX9qYzFulYYeThHIIQtMJrOPtMvkS3
         vc5Q==
X-Gm-Message-State: AOJu0YywPsqFLa3FcnB+Tnga1/LC0D2abv1sLelLSbMTd0jazus11kth
	F1wyEh4meX0ekNaQs0a35S8Gfw==
X-Google-Smtp-Source: AGHT+IEJ/7Y5TYZN+q6rGEyYnvzQ/P/ijl20rKjRjRU8zCfIJxnkN00sGnUfFwvpWdYGL2ZB/GhhYw==
X-Received: by 2002:a05:600c:3107:b0:406:3977:eccd with SMTP id g7-20020a05600c310700b004063977eccdmr2570731wmo.33.1700348601975;
        Sat, 18 Nov 2023 15:03:21 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id j32-20020a05600c1c2000b004094c5d929asm8026105wms.10.2023.11.18.15.03.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Nov 2023 15:03:21 -0800 (PST)
Message-ID: <b2272a76-f057-4d36-ab5b-08d203d5fde2@jguk.org>
Date: Sat, 18 Nov 2023 23:03:20 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
To: Alejandro Colomar <alx@kernel.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Matthew House
 <mattlloydhouse@gmail.com>, linux-man <linux-man@vger.kernel.org>
References: <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu> <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu> <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu> <ZU_ui2gbSBrTKXnX@debian>
 <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org> <ZVCwKBJyCsP8Aam9@debian>
 <b5182629-8028-4842-bbfc-ea106e251b92@jguk.org> <ZViOGeSYdYVRl-Ky@devuan>
Content-Language: en-GB
From: Jonny Grant <jg@jguk.org>
In-Reply-To: <ZViOGeSYdYVRl-Ky@devuan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 18/11/2023 10:12, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Fri, Nov 17, 2023 at 09:57:39PM +0000, Jonny Grant wrote:
>>> -  strlcpy(3)'s first order growth corresponds to strlen(src).  That's
>>>    due to returning strlen(src), which proves to be a poor API.
>>>
>>> -  strncpy(3)'s first order growth corresponds to sizeof(dst).  That's
>>>    of course due to the zeroing.  If sizeof(dst) is kept very small, you
>>>    could live with it.  When the size grows to more or less 4 KiB, this
>>>    drag becomes meaningful.
>>>
>>> -  strnlen(3)+*cpy() first order growth corresponds to
>>>    strnlen(src, sizeof(dst)), which is the fastest order of growth
>>>    you can get from a truncating string-copying function (except if you
>>>    keep track of your slen manually and call directly memcpy(3)).
>>
>> That's a really good point, keeping track of the length (and buffer size) and then just using memcpy.
>> The copy time should be closer to the number of bytes read and written.
> 
> Actually, the performance of memcpy(3) should also be on the order of
> strnlen(src, sizeof(dst)), so it should always take similar times
> compared to strnlen(3)+*cpy().  It is only that it will always be
> slightly faster due to avoiding a second read, but it will only be a %.
> Nothing like 10x, which can easily happen with strlcpy(3) or strncpy(3).
> 
>>> Of course, first order of growth ignores second order of growth and so
>>> on, which for small inputs can be important.  That is, O(x^3) is bigger
>>> than O(x^2), but x3 + x2 can be smaller than 5*x2 for small x.
>>>
>>>>
>>>> As Paul mentioned, strlcpy is a poor choice for processing strings.\
>>>> Could rely on their guidance as they already measured.
>>>> https://www.gnu.org/software/libc/manual/html_node/Truncating-Strings.html
>>>
>>> Indeed.  I've added important notices in BUGS about it, and recommended
>>> against
>>
>> Saw glibc have (11) functions listed as a poor choice for string processing
> 
> They list many functions as poor choices for string processing.  The
> problem is that they list those functions for string processing.  I went
> a bit further and de-listed some: We don't list strncpy(3) or strncat(3)
> as functions that process strings, but rather as something else.  And
> they are actually good functions for processing that something else.
> 
> The problem with strlcpy(3) is that it's a function that is designed to
> process strings, and being bad at processing strings makes it a bad
> function period.
> 
>>>> Maybe the strlcpy API is easier, safer for programmers; but the
>>>> compiler can't figure out that the programmer already knew src string
>>>> length.  So the strlcpy does a strlen() and wastes time reading over
>>>> memory.  If the src length is known, can just memcpy.
>>>
>>> I've written strtcpy(3) as an alternative to strlcpy(3) that doesn't
>>> suffer its problems.  It should be even safer and easier to use, and its
>>> first order of growth is better.  I'll send a patch for review in a
>>> moment.
>>
>> I did take a look at strtcpy but it calls strnlen(), reading over memory.
> 
> That's just a few % slower than memcpy(3).  Don't expect memcpy(3) to be
> much faster than this.  strtcpy() reads twice writes once; memcpy(3)
> reads once writes once.  So you can expect memcpy(3) to be constantly
> 33% faster (very roughly).

Probably there are benchmarks, measurements comparing those functions which use strnlen() to those that just do memcpy()? Would be interesting to hear what the time is to do those reads & writes, or just do writes.

> If you implement you own strtcpy() in assembly, maybe you can get
> something that's in the single-digit % slower than memcpy(3), similar to
> strcpy(3).
> 
>>>> When I've benchmarked things, reducing the memory accesses for read,
>>>> write boosted performance, also looked at the cycles taken, of course
>>>> cache and alignment all play a part too.
>>>
>>> If one wants to micro-optimize for their use case, its none of my
>>> business.  I provide a function that should be safe and relatively fast
>>> for all use cases, which libc doesn't.
>>>
>>>> Maybe could suggest in your man page programmers should keep track of
>>>> the src size ? - to save the cost of the strlen().
>>>
>>> No.  Optimizations are not my business.  Writing good APIs should make
>>> these optimizations low value so that they aren't done, except for the
>>> most performance-critical programs.
>>>
>>> The problem comes when libc doesn't provide anything usable, and the
>>> user has no guidance on where to start.  Then, programmers start being
>>> clever, usually too clever.  That's why I think the man-pages should go
>>> ahead and write wrapper functions such as strtcpy() and stpecpy()
>>> aound libc functions; these wrappers should provide a fast and safe
>>> starting point for most programs.
>>>
>>> It's true that memcpy(3) is the fastest function one can use, but it
>>> requires the programmer to be rather careful with the lengths of the
>>> strings.  I don't think keeping track of all those little details is
>>> what the common programmer should do.
>>
>> That's true, high-performance users probably create their own bespoke solutions.
>> strtcpy probably takes the src size?
> 
> No.  strtcpy() takes the dst size.
> 
> ssize_t
> strtcpy(char dst[restrict dsize], const char *restrict src, size_t dsize);
> 
> This function doesn't care about the src size.  It requires that it's
> either a string, or a character array larger than dst.  In both cases,
> it means that the internal calculation of slen = strnlen(src, dsize)
> will never overrun the buffer, while costing only a small time.

Ok I see, I would rather use something that allowed the src_len to be specified, to save that strnlen() cost.

Kind regards
Jonny


