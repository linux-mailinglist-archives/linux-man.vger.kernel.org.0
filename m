Return-Path: <linux-man+bounces-3-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 828527E7EBD
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:47:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 387DF281553
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E2233A295;
	Fri, 10 Nov 2023 17:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="NkEWtMKm"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B8138F9B
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:46:33 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 362AB2F363
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:23:31 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50930f126b1so2430170e87.3
        for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699615409; x=1700220209; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jSDSWKR4bBJWztXD5HYnU+cgHiy2SZodKyOWp7zvZx8=;
        b=NkEWtMKmcBezIeMs3i+MF3J8/xbvSScjVhoH9p5rOI1QVGAzzVd2obBDVzVbJ4JUo1
         mFa4+9mMfC7vkpt4QeM4xVjbQUUk/uBwYpgFaIh1Q/SNUaW2mBeSS/6Kmcd1affW/Khd
         +B6KQDwelwGBdKNLWdowFn+AlhA75dtuAP888j8gmGA52MEkTfNFXA+uCs5VGbJkoVBi
         PB1dtu5xfl5LIwwQjjOWgeN+fcEz/kLEIZdJfZ0MpwhJ2YM/DPSsGC54RRpZ6l3BKxoD
         Knlc9dNZLH/OHypyqjjlzxYYWYVoqhKzQIBj6TBb885nklRBnaOmSFsz6Qtvc3pQLc2O
         cYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699615409; x=1700220209;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jSDSWKR4bBJWztXD5HYnU+cgHiy2SZodKyOWp7zvZx8=;
        b=VbZoaaXaXAU+I62gv2u6J0DcLeXaNpEipIaZeQlFnci/svxMJW8cglOmHEcLQ24IhI
         YvgiM41OsAI0VcnsgPOrV4Jj9vfqf4rnIto4+qFFox+AiThrR814E25mF+ZfFMwL7b10
         XTCDT7pFyZM9N0l8J78ggf3b6IbehDb3nAJqZwXZ0PsygncXIY0S1HHZOQyRSBz0b3XK
         o9oAWasWufBq5TAN9qd4dMrallhAsX4FH3WgFhGddU2QPoX4ONwCz/zY5LpZWMGyGnmT
         IC56/qRkhS8bJ8bUP5JYu+3UceKFJrvjRhD1gDw4al0KAVaL85UuJ27dWlC7wFJ+ZMjp
         Tbpw==
X-Gm-Message-State: AOJu0Yx0sxhX9GApXOtdrA04wTVmLE/bVX8WaZCsr4UjNcEPCmFJBt8S
	AToLebsU1VGnBGE1CpL9DKv8RKC83UDBarEFDP8=
X-Google-Smtp-Source: AGHT+IEOhJ4gNlR9QiBj6JLwU76Esa2hXaav/FXaOfLPCjf/FjkWWiy4xDHqLvt4NKcCWWnbzhKyKQ==
X-Received: by 2002:a19:740d:0:b0:503:2561:adbc with SMTP id v13-20020a19740d000000b005032561adbcmr3446776lfe.64.1699615409276;
        Fri, 10 Nov 2023 03:23:29 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id p15-20020a05600c1d8f00b004053a6b8c41sm4926832wms.12.2023.11.10.03.23.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 03:23:28 -0800 (PST)
Message-ID: <f6c4fb62-a028-4208-b5a8-258fdcd4f55e@jguk.org>
Date: Fri, 10 Nov 2023 11:23:28 +0000
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
Cc: Matthew House <mattlloydhouse@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
Content-Language: en-GB
In-Reply-To: <ZUzEw2j6gHF5WtsO@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 09/11/2023 11:38, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Thu, Nov 09, 2023 at 10:31:49AM +0000, Jonny Grant wrote:
>>> Probably the only way to solve the cleverness issue for good is to have an
>>> immediately-available, foolproof, performant set of string functions that
>>> are extremely straightforward to understand and use, flexible enough for
>>> any use case, and generally agreed to be the first choice for string
>>> manipulation.
>>
>> What's the best standardized function for C string copying in your
> 
> strlcpy(3) will soon be standard.  POSIX.1-202x (Issue 8) will add it,
> which is why it's been added recently to glibc.  Hopefully, ISO C3x will
> follow (yeah, it's not like tomorrow).
> 
>> opinion?  They all seem to have drawbacks, strlcpy truncates (I'd
>> rather it rejected if it didn't have enough buffer - could cause
>> issues if the meaning of the string changed due to truncation, eg if
>> it was a file path). Other alternative functions aren't widely in use.
> 
> If you are consistent in checking the return value of strlcpy(3) and
> reporting an error, it's the best standard alternative nowadays.
> snprintf(3), except for using int instead of size_t, has an equivalent
> API, and is in C99, in case that means something.
> 
> If you would want to write something based on Michael Kerrisk's article,
> you could do this:
> 
> 	ssize_t
> 	strxcpy(char *restrict dst, char *restrict src, size_t dsize)
> 	{
> 		if (strlen(src) < dsize)
> 			return -1;
> 
> 		strcpy(dst, src);
> 	}
> 
> You may also want to calculate 'dsize' automagically, to avoid human
> error, in case it's an array, so you could write a macro on top of it:
> 
> 	#define STRXCPY(dst, src)  strxcpy(dst, src, ARRAY_SIZE(dst))
> 
> These are just small wrappers over standard functions, so you shouldn't
> have problems adding them to your project.
> 
> This is my long term plan for shadow-utils, indeed.  I'm first
> transforming strncpy(3) calls into strlcpy(3) to remove the superfluous
> padding, and later will use this strxcpy() to remove the truncated
> strings to avoid misinterpretation.
> 
> Cheers,
> Alex
> 
>>
>> Kind regards, Jonny
> 

Yes, I like to look for a libc library function before writing my own wrapper, but I would consider something like strxcpy.

snprintf will truncate if not enough space, but will then return the number of bytes that would have been written had there not been truncation. So one could use snprintf on an array buffer on the stack, and then if truncation, discard the buffer and return an error, otherwise carry on using the string (that wasn't truncated).

Re strlcpy I see BSD man page gives some examples how to check for truncation by strlcpy. Perhaps examples could be added to linux kernel man page.
https://man.freebsd.org/cgi/man.cgi?query=strlcat&sektion=3

Kind regards, Jonny

