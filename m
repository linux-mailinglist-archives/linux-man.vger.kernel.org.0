Return-Path: <linux-man+bounces-91-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 140367EFB1B
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 22:57:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42DD91C208DE
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 21:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4111B30656;
	Fri, 17 Nov 2023 21:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="RP9vUn8t"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88ADED4B
	for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 13:57:46 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3316ad2bee5so623040f8f.1
        for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 13:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700258265; x=1700863065; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QYrvJ3DwLp60UrlT/SIAkFfx+cjF8QKsdfijKZdhmAc=;
        b=RP9vUn8tW8GDQnKGHq0yo+wYvcAROh1J1uRyOprUVKljRBd00yIUg2gqS/Fv+dbCy7
         ePiSPkZQUdwBnsLkIL/rGQPThWrP/9RsD9UgjOlYwJpJJRL6KJD/oJT2ZtEv0dO514+O
         SHOVdoReAnBtBvoTw19lQL/9hWpm0/rg+nWNNGYdcqKWhjEQsOFS5F37IWp2X4GXh8ln
         6ARRs8XSab3nThL2Qg/6wScp5kmoao+KFHEisQxLOLMew0F3jfCbk/KNMiSClpIsoijt
         yKIZnrtQGPV2b5j5NYrbg7XvdTBnQwi04E6i9XuorckupyH0H5fgNwaZv8JUDHqPHfki
         bxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700258265; x=1700863065;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QYrvJ3DwLp60UrlT/SIAkFfx+cjF8QKsdfijKZdhmAc=;
        b=MgAWm6TWXg0Ubtr6OYKus4jZhuHrfub3FGBplpJs0ZK5UJIhrVuH/Yl+UiWOhCCN1p
         Xg/NUhgozsQjYr+5Gsv3orKdX9I1lOXqpZLvn3QrmwcS9khLAJbbhdPs9cajNzxN9NQr
         lJhLPNtgKnFGx6+KWS7kSuxTe6FtxKINuzvFq4Oslngenfh5pvRiuBnqhR6VpUgXNxD/
         Wa6PQMgR9xPvTCdBbFlwGHBkYkypyR6/dk/5+RFMeqylx1/HZlPmUFA5jHeo/cL46Da7
         pTMi9LXkDx9263WEfi/UlTOljEyXzVa5j8K0II+qmUOARhkOrTp82/do+3YK4GEnWEvy
         oHRA==
X-Gm-Message-State: AOJu0YzkVWK/IR4wv6wyNEMmyuN8hvggt9Aaas+3EIRyPFesDbFu0ERr
	YgTv6jIa5YsvGmCprYOFfu6/n7KufyBwRboqvJo=
X-Google-Smtp-Source: AGHT+IFqDipikU3GsNbPJRoHwEzxXEKyEkQyTrmPCgUQLG5PILBcK0fxJwnWowOE2Av7WbHFjPbxpg==
X-Received: by 2002:a5d:54d1:0:b0:32f:b407:5b77 with SMTP id x17-20020a5d54d1000000b0032fb4075b77mr167891wrv.64.1700258260934;
        Fri, 17 Nov 2023 13:57:40 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id d16-20020adfe2d0000000b003316a2aedadsm3053108wrj.36.2023.11.17.13.57.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 13:57:40 -0800 (PST)
Message-ID: <b5182629-8028-4842-bbfc-ea106e251b92@jguk.org>
Date: Fri, 17 Nov 2023 21:57:39 +0000
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
References: <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu> <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu> <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu> <ZU_ui2gbSBrTKXnX@debian>
 <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org> <ZVCwKBJyCsP8Aam9@debian>
Content-Language: en-GB
In-Reply-To: <ZVCwKBJyCsP8Aam9@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/11/2023 10:59, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Sun, Nov 12, 2023 at 09:52:20AM +0000, Jonny Grant wrote:
> [... some micro-benchmarks...]
> 
>>
>> Maybe we're gonna need a bigger benchmark.
> 
> Not really.
> 
>>
>> Probably there existing studies. Or could patch something like SQLite
>> Benchmark to utilise each string function just for measurements.
>> Hopefully it moves around at least 2GB of strings to give some
>> meaningful comparison timings.
> 
> I wasn't so interested in the small differences between functions.
> What this micro-benchmark showed clearly, without needing much more info
> to be conclusive, is the first order of growth of each of the functions:
> 
> -  strlcpy(3)'s first order growth corresponds to strlen(src).  That's
>    due to returning strlen(src), which proves to be a poor API.
> 
> -  strncpy(3)'s first order growth corresponds to sizeof(dst).  That's
>    of course due to the zeroing.  If sizeof(dst) is kept very small, you
>    could live with it.  When the size grows to more or less 4 KiB, this
>    drag becomes meaningful.
> 
> -  strnlen(3)+*cpy() first order growth corresponds to
>    strnlen(src, sizeof(dst)), which is the fastest order of growth
>    you can get from a truncating string-copying function (except if you
>    keep track of your slen manually and call directly memcpy(3)).

That's a really good point, keeping track of the length (and buffer size) and then just using memcpy.
The copy time should be closer to the number of bytes read and written.

> 
> Of course, first order of growth ignores second order of growth and so
> on, which for small inputs can be important.  That is, O(x^3) is bigger
> than O(x^2), but x3 + x2 can be smaller than 5*x2 for small x.
> 
>>
>> As Paul mentioned, strlcpy is a poor choice for processing strings.\
>> Could rely on their guidance as they already measured.
>> https://www.gnu.org/software/libc/manual/html_node/Truncating-Strings.html
> 
> Indeed.  I've added important notices in BUGS about it, and recommended
> against

Saw glibc have (11) functions listed as a poor choice for string processing

> 
>>
>> Maybe the strlcpy API is easier, safer for programmers; but the
>> compiler can't figure out that the programmer already knew src string
>> length.  So the strlcpy does a strlen() and wastes time reading over
>> memory.  If the src length is known, can just memcpy.
> 
> I've written strtcpy(3) as an alternative to strlcpy(3) that doesn't
> suffer its problems.  It should be even safer and easier to use, and its
> first order of growth is better.  I'll send a patch for review in a
> moment.

I did take a look at strtcpy but it calls strnlen(), reading over memory.

> 
>> When I've benchmarked things, reducing the memory accesses for read,
>> write boosted performance, also looked at the cycles taken, of course
>> cache and alignment all play a part too.
> 
> If one wants to micro-optimize for their use case, its none of my
> business.  I provide a function that should be safe and relatively fast
> for all use cases, which libc doesn't.
> 
>> Maybe could suggest in your man page programmers should keep track of
>> the src size ? - to save the cost of the strlen().
> 
> No.  Optimizations are not my business.  Writing good APIs should make
> these optimizations low value so that they aren't done, except for the
> most performance-critical programs.
> 
> The problem comes when libc doesn't provide anything usable, and the
> user has no guidance on where to start.  Then, programmers start being
> clever, usually too clever.  That's why I think the man-pages should go
> ahead and write wrapper functions such as strtcpy() and stpecpy()
> aound libc functions; these wrappers should provide a fast and safe
> starting point for most programs.
> 
> It's true that memcpy(3) is the fastest function one can use, but it
> requires the programmer to be rather careful with the lengths of the
> strings.  I don't think keeping track of all those little details is
> what the common programmer should do.

That's true, high-performance users probably create their own bespoke solutions.
strtcpy probably takes the src size?

> 
>>
>> At least the strlen functions are optimized:
>> glibc/strnlen.c calls memchr() searching for '\0' memchr searches 4 bytes at a time.
>> glibc/strlen.c searches 4 bytes at a time.
>>
>> glibc/strlcpy.c __strlcpy() is there a reason when truncating it overwrites the last byte, twice?
>>
>> memcpy (dest, src, size);
>> dest[size - 1] = '\0';
> 
> -1's in the source code make up for off-by-one bugs.  APIs should be
> written so that common use doesn't involve manually writing -1 if
> possible.

What way do you feel they should be doing it?

> 
> I acknowledge the performance benefits of this construction, and have
> used it myself in NGINX code, but I also find it very dangerous, which
> is why I recommend using a wrapper over it:
> 
> 	char *
> 	ustr2stp(char *restrict dst, const char *restrict src, size_t len)
> 	{
> 		char  *p;
> 
> 		p = mempcpy(dst, src, len);
> 		*p = '\0';
> 
> 		return p;
> 	}
> 
> Cheers,
> Alex
> 
>>
>> Kind regards, Jonny
> 

Kind regards, Jonny

