Return-Path: <linux-man+bounces-99-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5327E7F0395
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 00:24:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A9DF280EDD
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 23:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 902501F934;
	Sat, 18 Nov 2023 23:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="ATkKIt7n"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13636196
	for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 15:24:11 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40a48775c58so6811915e9.3
        for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 15:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700349849; x=1700954649; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jvVUMplXAA1JM+8G0vyf6gpzYZuA4PCWtBNKsPHlERc=;
        b=ATkKIt7nsA/sZpEpUE8QVLhp7xFHEmMt0SUlUnnm44V19otFt7cdHab/3hgrIRGWmi
         gvNpVhNZxYtYhhsMDVTjOV1dq6jLCn7gD7HecbxFYLDglDHdn2wold7bEuWhNIBEHA8Q
         kcXRziWy5C8NAneLwY2XUrajtogFLa992Qdp8gLiaNzUK/D83IUratg1PWSA2Hf1YDFs
         60Agez3t9r1WqZlVNIpcIoAZpSyzj9nHG6a24MbtqiO0LWJE4fnfJH0SWcVZd5mwFVlc
         HG8QlXGwbUNdrRqFidihuXugHFqf8EdCjkYMOWevG08a33VikXyFZ6Q2xLDcAspApuwJ
         iW9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700349849; x=1700954649;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jvVUMplXAA1JM+8G0vyf6gpzYZuA4PCWtBNKsPHlERc=;
        b=Ze6T4WBrkLCqgeo7Rj6ZLu1AXz2vHbRV5SYO2nne4H2SWw7M7IkP4HSnqu97BA0BuN
         XYhYXAAIGUNM9ZY2D1gr1Xzntr+NYRrlti+MZCoQx130KwVIYDPNxXlspMyZDDFcE+o1
         lP4qWXSeTgUjU6CjearPiyZ6Srn4toeHpqnp6d7plQ678G5OwuI20aurNx+A+uWz9vkm
         O7wirsFFBVvft42CuolWfsV/dCbXVl/SUxVcIV0KPuY5UG/7AfRAJuqTEiInjqud+i1S
         EQ1haTkhxrkuNH0zcv1I0luBy2D1SZpfc4GGzvDG7XIlmPTQHmMNQBs5JpmaJ91c2xBb
         qnQA==
X-Gm-Message-State: AOJu0YyWIZcO9PbV+EwexiJB20byC+8wbop315hjFkGvJQtHkWORvomc
	8F5MQYc4kB6xUx7p23X9nDkLgg==
X-Google-Smtp-Source: AGHT+IGSfiyQxI4JK1eYb7A5oV3OSiFC30wiKTRtlsKSXJMYLYyuMLI4dnot4eE0jIw5o5JfGdVq0g==
X-Received: by 2002:adf:e983:0:b0:32f:7c4d:8746 with SMTP id h3-20020adfe983000000b0032f7c4d8746mr2286678wrm.12.1700349849458;
        Sat, 18 Nov 2023 15:24:09 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id f11-20020adfc98b000000b00327b5ca093dsm6485624wrh.117.2023.11.18.15.24.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Nov 2023 15:24:09 -0800 (PST)
Message-ID: <cbea1008-23f5-4f74-9d90-65f5e6799f30@jguk.org>
Date: Sat, 18 Nov 2023 23:24:08 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Signing all patches and email to this list
Content-Language: en-GB
To: Matthew House <mattlloydhouse@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, Paul Eggert <eggert@cs.ucla.edu>,
 linux-man@vger.kernel.org
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <20231112112629.13827-3-alx@kernel.org>
 <751d2e89-809d-488c-8685-7c665beba78b@jguk.org>
 <20231118002535.812415-1-mattlloydhouse@gmail.com>
From: Jonny Grant <jg@jguk.org>
In-Reply-To: <20231118002535.812415-1-mattlloydhouse@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 18/11/2023 00:25, Matthew House wrote:
> On Fri, Nov 17, 2023 at 4:43 PM Jonny Grant <jg@jguk.org> wrote:
>> On 12/11/2023 11:26, Alejandro Colomar wrote:
>>> The compiler will sometimes optimize them to normal *cpy(3) functions,
>>> since the length of dst is usually known, if the previous *cpy(3) is
>>> visible to the compiler.  And they provide for cleaner code.  If you
>>> know that they'll get optimized, you could use them.
>>
>> May I ask, is there an example or document that shows this optimization by the compiler? Perhaps a godbolt link?
>>
>> So it's a strcat() optimized to a strcpy()?
>>
>> I know gcc might unroll and just include the values of the string bytes.
>>
>> Kind regards, Jonny
> 
> See <https://godbolt.org/z/e34fWrTGf>. If a function computes the strlen()
> of the destination before calling strcat(), without modifying its value
> between the two calls, GCC will replace the strcat() with a strcpy(). If a
> function computes the strlen() of both the source and the destination, GCC
> will further replace the strcat() with a memcpy(), and possibly inline the
> memcpy() if the size is short enough. It will also remember the increased
> length of the destination for any future strcat() calls, to accomodate for
> strcpy(), strcat(), strcat(), ... chains. This is implemented in the
> strlen_pass::handle_builtin_strcat() function in gcc/tree-ssa-strlen.cc.
> Neither Clang nor MSVC appears to implement any similar optimization.

That's great it optimizes, thank you for sharing the information.

> Nevertheless, I would be extremely wary of recommending the bare strcpy(3),
> strcat(3), and sprintf(3) functions on the basis of "providing for cleaner
> code". By permitting the programmer to perform the copy with no immediate
> knowledge of the source and destination sizes, the functions open up a
> unique opportunity for squirreling away the guaranteed sizes in distant and
> opaque parts of the codebase. And this antipattern isn't a rare exception,
> but shows up in nearly every library that makes extensive use of the
> functions.
> 
> Thank you,
> Matthew House

