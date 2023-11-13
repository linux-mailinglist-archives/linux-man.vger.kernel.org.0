Return-Path: <linux-man+bounces-71-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A241D7EA72B
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 00:46:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D31E81C20856
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 23:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B16383E469;
	Mon, 13 Nov 2023 23:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="idDpNo7w"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A3D3E461
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 23:46:14 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6C798F
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 15:46:12 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4083ac51d8aso41161515e9.2
        for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 15:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699919171; x=1700523971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jDFzRtCRs4bE7IwaXgyEJnZeZKolDnRnPvj5Xv4t0m4=;
        b=idDpNo7w33inQ0WadZMfhQLmHOoI26LYB1CizIGfJXelPmWTykc20j3Y6Cq0c/K11a
         2STN7dWs/nWRlnkICK5Wbs7ot/nvCdq+qZsO4yWAet8cSIL1iISlTO9dH3UlNvZXuLou
         7DkwARD8m6PN9nynmKC8buK9CK4Uosn0JuyaNLLIafEFJxFa/H6O3LyNiVcwrtM54chh
         diHKHHNkwHI8iZvlWGZEYLHP9/KQOSfwi7QvG/HiEnZUeGUu5WASu3Ksqe3l/+c3d0Nw
         9vrYJdjg0d1WVPq6uqNDbh96rvYWONE272KiFmb8GnEyrzRNQwjkl04/QkYR/mecVQb6
         g/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699919171; x=1700523971;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jDFzRtCRs4bE7IwaXgyEJnZeZKolDnRnPvj5Xv4t0m4=;
        b=NdpeUSK5jUoI0ShDgP50jSGfUrXAX8rOn29uZFndxlhs3o96NGOtyTqG/C+GT5hE++
         skFXcRaM9pqXMxf7dqqkTX5PqduckxzI7CnHAp4Ri1x/gjghiMSm521betfyBZ7w7f2o
         nw3TpHlJEkKFRJ3HvQVBqRld7A+MKnLiqJ9TiXA03nKbF/Dom8XWlQJqZDyDyyxejwRK
         o6NsmJODQpfWLm31mGFQOyh4FRgiVjljs2uPFGxHoVQo+FVr4dNMfSI1NS3BfMoC7tSS
         /rXKa3SnMhE0JIYfoj28YNrjbTTDkvMJrAWD8N8IJQwQpM0STsxg4xl8xbwZekR99rve
         NYtg==
X-Gm-Message-State: AOJu0YwvYIAdduBHVI6w8R8FJcMXvsYFwiTblw4LCwuRzeXrHq6xZ2aD
	D4W+PAOjKIoMDBwSQbPYYjxlvA18NRc7xST90uE=
X-Google-Smtp-Source: AGHT+IEzx3qFKkmou91ReTLrP4cJn1GaXo7vWWHs1b4hCoD8EfY5Bvm6EB9o/IZzpWs+Vw/cSoKjSw==
X-Received: by 2002:a05:600c:4f09:b0:405:336b:8307 with SMTP id l9-20020a05600c4f0900b00405336b8307mr7010678wmq.7.1699919171204;
        Mon, 13 Nov 2023 15:46:11 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c320900b00407b93d8085sm15004525wmp.27.2023.11.13.15.46.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Nov 2023 15:46:10 -0800 (PST)
Message-ID: <10225c47-a0ad-42a3-a337-4887246bc579@jguk.org>
Date: Mon, 13 Nov 2023 23:46:10 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonny Grant <jg@jguk.org>
Subject: Re: strncpy clarify result may not be null terminated
To: Paul Eggert <eggert@cs.ucla.edu>, Alejandro Colomar <alx@kernel.org>
Cc: Matthew House <mattlloydhouse@gmail.com>,
 linux-man <linux-man@vger.kernel.org>
References: <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu> <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu> <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu> <ZU_ui2gbSBrTKXnX@debian>
 <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org> <ZVCwKBJyCsP8Aam9@debian>
 <497f3940-b533-4018-8212-ffe931e514fa@cs.ucla.edu>
Content-Language: en-GB
In-Reply-To: <497f3940-b533-4018-8212-ffe931e514fa@cs.ucla.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 12/11/2023 20:49, Paul Eggert wrote:
> [dropping libc-alpha since this is only about the man pages]
> 
> On 2023-11-12 02:59, Alejandro Colomar wrote:
> 
>> I think the man-pages should go
>> ahead and write wrapper functions such as strtcpy() and stpecpy()
>> aound libc functions; these wrappers should provide a fast and safe
>> starting point for most programs.
> 
> It's OK for man pages to give these in EXAMPLES sections. However, the man pages currently go too far in this direction. Currently, if I type "man stpecpy", I get a man page with a synopsis and it looks to me like glibc supports stpecpy(3) just like it supports stpcpy(3). But glibc doesn't do that, as stpecpy is merely a man-pages invention: although the source code for stpecpy is in the EXAMPLES section of string_copying(7), you can't use stpecpy in an app without copy-and-pasting the man page's source into your code.
> 
> It's not just stepecpy. For example, there is no ustr2stp function in glibc, but "man ustr2stp" acts as if there is one.
> 
> The man pages should describe the library that exists, not the library that some of us would rather have.
> 
> 
>> It's true that memcpy(3) is the fastest function one can use, but it
>> requires the programmer to be rather careful with the lengths of the
>> strings.  I don't think keeping track of all those little details is
>> what the common programmer should do.
> 
> Unfortunately, C is not designed for string use that's that convenient. If you want safe and efficient use of possibly-long C strings, keeping track of lengths is generally the best way to do it.
> 
> 
>>> glibc/strlcpy.c __strlcpy() is there a reason when truncating it overwrites the last byte, twice?
>>>
>>> memcpy (dest, src, size);
>>> dest[size - 1] = '\0';
>>
>> -1's in the source code make up for off-by-one bugs.
> 
> The "dest[size - 1] = '\0';" is there because strlcpy(dst, src, sz) is defined to null-terminate the result if sz!=0, so that particular "-1" isn't a bug. (Perhaps you meant that the strlcpy spec itself is buggy? It wasn't clear to me.)
> 
> That "last byte, twice" question is: why is the last argument to memcpy "size" and not "size - 1" which would be equally correct? The answer is performance: memcpy often works faster when copying a number of bytes that is a multiple of a smallish power of two, and "size" is more likely than "size - 1" to be such a multiple.
> 

Thank you for your reply. I see what you mean, many programmers consider sizes and would make their dest buffer say 32 bytes, so when this truncation occurs it makes sense to make the most of that to copy quickly, even if that means writing the null terminator on top of the last written byte. Probably someone measured strlcpy with these truncation calls and saw a lot of convenient power of 2 sizes coming through, when truncating strings in this way.

Personally, I'm not sure if it is much use when strings are truncated, as strlcpy detects, an API like this could just return an error and not partially copy. Then the programmer would have a chance to realloc() and copy the full string. 

The strlcpy API returns src_length, even when it's truncated and didn't write src_length+1 bytes to dest, how misleading. Shame strlcpy can't be [[deprecated]].

I'm sure everyone may have read these posts before about strlcpy, just sharing while I remember:

Ulrich Drepper frowned upon strlcpy:
https://sourceware.org/legacy-ml/libc-alpha/2000-08/msg00053.html

"This is horribly inefficient BSD crap.  Using these function only
leads to other errors.  Correct string handling means that you always
know how long your strings are and therefore you can you memcpy
(instead of strcpy).

Beside, those who are using strcat or variants deserved to be punished."

The rest of the thread is also interesting.

Kind regards, Jonny

