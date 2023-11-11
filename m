Return-Path: <linux-man+bounces-37-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 386027E8CCE
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 22:15:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEDB7280DFE
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 21:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC56D1DA23;
	Sat, 11 Nov 2023 21:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="CEY0ulLo"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D5F1DA22
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 21:15:17 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C3E430D1
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 13:15:15 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40806e4106dso18468735e9.1
        for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 13:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699737314; x=1700342114; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zGlS4U6h68p8BPjOaFkfLXAtaDhgpIYwkeeAlt6Y8Pw=;
        b=CEY0ulLo6OhQjEaWvVTnmTMN8cXOQVlkAhGEiUfmUssVXqAgg7RujSsNoVqH5+SB4P
         lMvAX7547OafgCLzJbPmm4eC/hiAtAebJw6gkmCOAt5PLmDELT+CnOQPl/O56vhp/gVP
         9bSN6hvvgKx0tjK1Jt6ncIydZaxQxgNhv1r+0LVOzRTYMPt4LNuGHMX8x2fg4lUVexOJ
         j3gM9iwRsF3vinK0wG9QYhQilPzPP7H3sC7gU53mSmsQJch/65WNAt2Jf6n0sBYrlAGA
         gMceczVjEeaDSrPpZnzVJpo1BVCPwv6pSIHBRUOpzfPfCmaNiC7nmEaKNdRLv47Wxqst
         VVKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699737314; x=1700342114;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zGlS4U6h68p8BPjOaFkfLXAtaDhgpIYwkeeAlt6Y8Pw=;
        b=j+jqvDq/d0BwhN6+WkBH4haAg7/Kkf8irRv+G/EwnXRLNRFOdVhC8K238IDHi767N1
         2IA2yEhTAzoec+wnuJC69kGVk0DQJvO1Sm0VtinqVTIkUy6OOSFdhRw8gj4jSkCwOARm
         cKIaHa6/KR/Vmd+Py5lfxcIyrMr/gbjGtkDSd2ZigK1tSDk+W+6q5wmRnlEfJn6QoXw2
         NLL2RnoJXsf4SUxLzUWZ5KtdwAtz2zncKTIWRXl1Bc7vWOE+FP89nUVikWaJ6T86J2ES
         T9TgvWeB5hHFn7vNaVO1OFHEUgxGzLhK3EwThVMDzVDfXvD3pOaqZv4SyGLG+TFY02D3
         w3fQ==
X-Gm-Message-State: AOJu0YzLU9deQQ7Amn/3lsV5VeV0oHAXSGywIr4ZD2tUmti3KVwbKh3t
	K2ANgEjOkvBUKagHOMqzU1u5UQ==
X-Google-Smtp-Source: AGHT+IEo+OfpRsFnDauQJ1DeD8dZoL/lpbmEKv/2NdGRGLHF1vomWgU3keVi6gP82jEuoyLKevwgbA==
X-Received: by 2002:a1c:740d:0:b0:405:29ba:9b5c with SMTP id p13-20020a1c740d000000b0040529ba9b5cmr6059580wmc.16.1699737313610;
        Sat, 11 Nov 2023 13:15:13 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id p11-20020a05600c1d8b00b003fe15ac0934sm6636606wms.1.2023.11.11.13.15.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Nov 2023 13:15:13 -0800 (PST)
Message-ID: <bb41a959-eb58-4376-b2b7-6b6ad7a7dd5a@jguk.org>
Date: Sat, 11 Nov 2023 21:15:12 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-GB
From: Jonny Grant <jg@jguk.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian> <20231110160602.352085-1-mattlloydhouse@gmail.com>
 <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
In-Reply-To: <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Alejandro

I was reading again
https://man7.org/linux/man-pages/man7/string_copying.7.html

Sharing some comments, I realise not latest man page, if you have a new one online I could read that. I was reading man-pages 6.04, perhaps some already updated.


A) Could simplify and remove the "This function" and "These functions" that start each function description.

B) "RETURN VALUE" has the text before each function, rather than after as would be the convention from "DESCRIPTION", I suggest to move the return value text after each function name.

Could make it like https://man7.org/linux/man-pages/man3/string.3.html

C) In the examples, it's good stpecpy() checks for NULL pointers, the other's don't yet though.

D) strlcpy says
"These functions force a SIGSEGV if the src pointer is not a string."
How does it determine the pointer isn't a string?

E) Are these functions mentioned like ustpcpy() standardized by POSIX? or in use in a libc?

F) 
char *stpncpy(char dst[restrict .sz], const char *restrict src,
                      size_t sz);
I know the 'restrict' keyword, but haven't seen this way it attempts to specify the size of the 'dst' array by using the parameter 'sz' is this in wide use in APIs? I remember C11 let us specify  char ptr[static 1] to say the pointer must be at least 1 element in this example

Saw a few pages started to write out functions like
size_t strnlen(const char s[.maxlen], size_t maxlen);

Is this just for documentation? usually it would be: const char s[static maxlen]

G) "Because these functions ask for the length, and a string is by
nature composed of a character sequence of the same length plus a
terminating null byte, a string is also accepted as input."

I suggest to adjust the order so it doesn't start with a fragment:

"A string is also accepted as input, because these functions ask
for the length, and a string is by nature composed of a character
sequence of the same length plus a terminating null byte."

Could simplify and remove "by nature".

Unrelated man page strncpy, noticed this.

SEE ALSO
Could this refer to strcpy(3) and string(3) at the bottom?
https://man7.org/linux/man-pages/man3/strncpy.3.html

With kind regards
Jonny




