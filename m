Return-Path: <linux-man+bounces-4-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A85B7E7ECC
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:47:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A357BB21493
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:47:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D6238DE7;
	Fri, 10 Nov 2023 17:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="UwzVaGdv"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BB43A262
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:46:36 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 487002FEF8
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:36:23 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50a71aac023so447161e87.3
        for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699616181; x=1700220981; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MPX6YEkwWzTfe/c5PdUUCzpi1mSXdoHkXF1dISmUFHA=;
        b=UwzVaGdvsyOCSdJvGdZ5FBbhQXLX+VZBThCqHOE1QvGmlNxZnLW2Lrcjv2wxKmc7yS
         3WtvoUoOkicEjlgrnJHdyE9jpKvqzq9qHrDsF5Kc34uiH0rzUGimovSsTmRvVsBRIZb+
         iXCx2J0ohJfMfjRphEst4TkV7KZxKY7JecZe4Ps5XfzIk/G9ibUVpdftu+HBtevtlLuR
         PYBdm+igT1VqRskCR7lWnn7zY/iEPk0LO6LadnM49Pisv14pPqz2Pinzfi8m+1qwso+b
         9FeEevgdP1o8GjUFiwnzkJh8ph6F9u66PYHCtfFFsjPtq8kBEW0S5N1koOB9VegQlzAf
         bg3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699616181; x=1700220981;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MPX6YEkwWzTfe/c5PdUUCzpi1mSXdoHkXF1dISmUFHA=;
        b=kQkmUeaqZp6+2C1Gocs8t9RCBhW5j5S1ESNxdUE+g2KvJ27SxXXo0NeWyLLyny9yzU
         8Eml9VB2VTsV+mM4VLcBnVqsWGbQIWiquSYPK3TSSBQUs1Dq/1iA9Db3Um317OwO2gY/
         RXekRdnlm9SuddIJkWgJYhUh0QvFa2Mb+KmHPPpf21O6A32hLZ5p7THzVhhE1ueSrQG+
         3lO04WIPRu9oWaDncXXa8uK9DrhVICVo20pJP4+Vhe+x4Yfo3ErFEN+l2bJ2WbS+wQq2
         I56lkvV3a+7s96mzO+u6fC47TT0CNI3Gh1IVSqwoLtUBXCwwO/vDcdrgliYIxxXAkYul
         eqQQ==
X-Gm-Message-State: AOJu0YzJBHHnrB8E9DgsYBiydFieDBB9DGqLmIjtL16Jxgby92dnZWoj
	gg8mIsWVZgoYDkFyOsw7AHiGuw==
X-Google-Smtp-Source: AGHT+IEqt1mfFTuPQITAiceikl2I/5mr2AQsr2khHnUeKRLUKsalz0Kd4b5+HS0++cgcFXIUxTgNmA==
X-Received: by 2002:ac2:5209:0:b0:503:1783:d5a9 with SMTP id a9-20020ac25209000000b005031783d5a9mr3580318lfl.3.1699616181544;
        Fri, 10 Nov 2023 03:36:21 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id ay15-20020a05600c1e0f00b0040586360a36sm4906030wmb.17.2023.11.10.03.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 03:36:21 -0800 (PST)
Message-ID: <ebccf5c0-f125-4eb9-8820-e71e77f4f7ed@jguk.org>
Date: Fri, 10 Nov 2023 11:36:20 +0000
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
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
References: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
Content-Language: en-GB
In-Reply-To: <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/11/2023 05:36, Paul Eggert wrote:
> On 2023-11-09 15:48, Alejandro Colomar wrote:
>> I'd then just use strlen(3)+strcpy(3), avoiding
>> strncpy(3).
> 
> But that is vulnerable to the same denial-of-service attack that strlcpy is vulnerable to. You'd need strnlen+strcpy instead.
> 
> The strncpy approach I suggested is simpler, and (though this doesn't matter much in practice) is typically significantly faster than strnlen+strcpy in the typical case where the destination is a small fixed-size buffer.
> 
> Although strncpy is not a good design, it's often simpler or faster or safer than later "improvements".

As you say, it is a known API. I recall looking for a standardized bounded string copy a few years ago that avoids pitfalls:

1) cost of any initial strnlen() reading memory to determine input src size
2) accepts a src_max_size to actually try to copy from src
3) does not truncate by writing anything to the buffer if there isn't enough space in the dest_max_size to fit src_max_size
4) check for NULL pointers
5) probably other thing I've overlooked

Something like this API:
int my_str_copy(char *dest, const char *src, size_t dest_max_size, size_t src_max_size, size_t * dest_written);
These sizes are including any NUL terminating byte.

0 on success, or an an error code like EINVAL, or ERANGE if would truncate

All comments welcome.

Kind regards, Jonny

