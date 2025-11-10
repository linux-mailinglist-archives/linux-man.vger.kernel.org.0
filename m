Return-Path: <linux-man+bounces-4288-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2F4C483BF
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 18:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 828394ED347
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 16:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E3E27FD43;
	Mon, 10 Nov 2025 16:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="V2f7ZUBD";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="pztxDEku"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C822280329
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 16:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762793809; cv=none; b=XMcPGL0KjB8cPbOO9aabxcfSICTQVCe2I1wp2wVLdb/XqolUCxajK8tFbOc7A1DUXJO2iPR2bSqiWBHYYPSdfZ+9ATNmgoethvfjcRGr8vqTKY976OtwJRVN4IRg4Z0Puz+OQrWsj68kKraF1kyZc3FMaaKYcFzkXxl0vlO1hmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762793809; c=relaxed/simple;
	bh=QqHNDdLlHi2fE7Fve1UhN0DHV4UOV8EXqUKcYM/XZMU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d014SO3EkSRqQarkuSfhxmsNsBf7Z58RFlx6Pq/1K/aA8JdHma2rIcTpMTipLdsXwyXPqjeEdd75bOMjRiOe7kgV/wdG+9O/bYTwlCNqslnqNLOv7zxB4Ks+BN90zUwkOdUyXCR4CyYbWdHq2GT6HeTeTH+dUlSkOuh2ZkbOKQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=V2f7ZUBD; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=pztxDEku; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762793807;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=kFMUuzy6Ev+qooYzdgPH4Sbl92XqyJ9km8DTLnwuurM=;
	b=V2f7ZUBDAoqSysbnY667DTAXZ0Qd1z47ZBU0rUkwv4K2MPSQaPUIC9tNMfL1RjhAti2bEA
	D05muiGcSaleIVyEIitwNjsosuwMKVjjX7f0Ipl2ReVyyyW0/xaxW2cwRLo93bUUv1/ypM
	1U5KjWARj2JUePTnUfQlW94/gsaI+ws=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-104-DLncLRQ_Pe6-W_vWXcOWeQ-1; Mon, 10 Nov 2025 11:56:45 -0500
X-MC-Unique: DLncLRQ_Pe6-W_vWXcOWeQ-1
X-Mimecast-MFC-AGG-ID: DLncLRQ_Pe6-W_vWXcOWeQ_1762793805
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edb7c81e0fso29696061cf.3
        for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 08:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1762793804; x=1763398604; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kFMUuzy6Ev+qooYzdgPH4Sbl92XqyJ9km8DTLnwuurM=;
        b=pztxDEkuBQzjTi+w+Y+tkuzMDDmnEWkzThOfSCNzZMi8M6cFEhe52JjZQ38j0se1KL
         B0ekS7JwzyncfB89uTNGnsGh17CkhNDThdBx9LP25Oc6oKDISE+M5ajtn6LXFmYuNhBa
         Nb0y2OCWcYu3Tti6iJ0nW8oG4iYhVi+PzstTiKrEVZ/RdyNFOj0dmmjB51rdDVVXwRw+
         46etpWXKwVr/WP4PvFqyjMr4K/K0c/9SmCl2aBmxZNAbkBPhKlpzNznQxgwFzkvxmoU2
         GkArPZCOcWy7eJnkcax6Rr5R7mSpxw5lovDeEr3318N3sDBfxXCRMBggUkoDIK8txCOi
         UK9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762793804; x=1763398604;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kFMUuzy6Ev+qooYzdgPH4Sbl92XqyJ9km8DTLnwuurM=;
        b=FyZETJgTsHpJ6pzIZI8lVd7nhweG0BmiKBgg+hsuqzHDoif24Fu4JPe1nC09WNs1A/
         8p2PWS+Xy3WAty0G/AtN9nOMs9cz8SharLt/joDp2MS0ub+py1QtcXca4C6Ingd/eUqD
         wjJvGhIbvvmVh2YV07YLd+6pDIr8Ta36My82go0yld9IWHOXU7Zwa5JtBwGjlAErjIIj
         2fKblPHJAaCYgGrq08ntbbbHtzW2STejQENTKT+8KMCjSbENtTK3EjnCen40sOFXHjGO
         iMdNgsAO2cwJ1hjD/JHhZZvqSB4dVPBmXud/EkCspRZ167SbK/Y796/sjTIIUhjYo8rY
         2c0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXGw/RrljHgfrRrRqbOV3sEn2r0Q9HlxjeX3jc+2UmpADXFqLYhXkHzc6CAf23H+VulUIupfdDAoaM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Qq6GYZ3U88AzDStkijuBXjGFZwOX3KiYSsv3jnzLq1RbJf9O
	yMKn5fl5sdWYZIFBPy70pgKCyl7LvxiXQ6qFZdMzPpauP6U4jqvcDIV2d2Zg145dqmE4h7KuR8t
	lOaLkm2hlGiNa8SIMaCS0ZCeEph43XB0adt2iexal2Y5ZFnE3TZqeDD4AMBkrI5qyzB/N/A==
X-Gm-Gg: ASbGncuTX4veFWtJwKJZLlRO3Epd/frnaB1x7kWXr4fsjdC01mDWKK4rL3PC9Con6ne
	C+rprj3JQm7uBF8oHM9jiBOJa1BJDny491/0yBW0P7mR3Atp2gS/MNbZ1Pauq0VI6V2g/XIUrvY
	oO9MFruYeTXc9Dz5efNHskWZyiVBzS/dZ2sakgGIHSwPS8/PQDfcPc/mI9+Ah9h9O1UTt5Y5si9
	dye4QH6mtFBMdUsEQzHNYcfXBMVH8zeQNSr3fwlbG8bznor/baY6RhqZtq4Rfz+52Ja2O1mDeob
	/M7ygWGxrZy9vkLAXq+UfAmZgDc3VGX4/33qhmA1b4me4K0qNAOKBwrX4X9VkjAoUE7tC71Kd9r
	f
X-Received: by 2002:ac8:7f84:0:b0:4e8:a4ab:8b3f with SMTP id d75a77b69052e-4eda4ead57fmr126553041cf.21.1762793804401;
        Mon, 10 Nov 2025 08:56:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEi56l4+GJ0TO9mjtAlsoxw5lCzhItk4GrlW+KzInMbEjj9Kl+5DtYcsD39P2yv6rQ7PeXorw==
X-Received: by 2002:ac8:7f84:0:b0:4e8:a4ab:8b3f with SMTP id d75a77b69052e-4eda4ead57fmr126552721cf.21.1762793803988;
        Mon, 10 Nov 2025 08:56:43 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4eda5641581sm50206281cf.12.2025.11.10.08.56.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 08:56:43 -0800 (PST)
Message-ID: <1b126d0f-d004-4da2-8239-6b9f472e7b9d@redhat.com>
Date: Mon, 10 Nov 2025 11:56:42 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>,
 "G. Branden Robinson" <branden@debian.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <999614b18f0b6740603b3df37530144148f342b2.1762785344.git.alx@kernel.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <999614b18f0b6740603b3df37530144148f342b2.1762785344.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/25 9:36 AM, Alejandro Colomar wrote:
> This policy is based on the Gentoo policy (see link below).
> However, I've modified our text to be more restrictive.
> 
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Collin Funk <collin.funk1@gmail.com>
> Cc: Sam James <sam@gentoo.org>
> Cc: "G. Branden Robinson" <branden@debian.org>
> Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>

This exceptions language meets my criteria for inclusiveness.

The currently worded policy is a workable compromise.

Reviewed-by: Carlos O'Donell <carlos@redhat.com>

> ---
>   CONTRIBUTING.d/ai | 63 +++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 63 insertions(+)
>   create mode 100644 CONTRIBUTING.d/ai
> 
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..91d767785
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,63 @@
> +Name
> +	AI - artificial intelligence policy
> +
> +Description
> +	It is expressly forbidden to contribute to this project any
> +	content that has been created or derived with the assistance of
> +	AI tools.
> +

OK.

> +	This includes AI assistive tools used in the contributing
> +	process, even if such tools do not directly generate the
> +	contributed code but are used to derive the contribution.  For
> +	example, AI linters, AI static analyzers, and AI tools that
> +	summarize input are forbidden.

OK.

> +
> +    Exceptions
> +	As an exception to the above, AI assistive tools which don't
> +	have any influence on the contribution other than enabling the
> +	contributor to work with their computer (e.g., screen reader,
> +	text to speech) --where the contributor verifies the output to
> +	the best of their ability-- are allowed, and the contributor
> +	need not disclose their use.

OK.

> +
> +    Concerns
> +	Copyright concerns.
> +		At this point, the regulations concerning copyright of
> +		generated contents are still emerging worldwide.  Using
> +		such material could pose a danger of copyright
> +		violations, but it could also weaken claims to copyright
> +		and void the guarantees given by copyleft licensing.
> +
> +	Quality concerns.
> +		Popular LLMs are really great at generating plausibly
> +		looking, but meaningless content.  They pose both the
> +		risk of lowering the quality of a project, and of
> +		requiring an unfair human effort from contributors and
> +		maintainers to review contributions and detect the
> +		mistakes resulting from the use of AI.
> +
> +	Ethical concerns.
> +		The business side of AI boom is creating serious ethical
> +		concerns.  Among them:
> +
> +		-  Commercial AI projects are frequently indulging in
> +		   blatant copyright violations to train their models.
> +		-  Their operations are causing concerns about the huge
> +		   use of energy, water, and other natural resources.
> +		-  The advertising and use of AI models has caused
> +		   a significant harm to employees and reduction of
> +		   service quality.
> +		-  LLMs have been empowering all kinds of spam and scam
> +		   efforts.
> +
> +Caveats
> +	This policy can be revisited, should a case been made over such

s/been/be/g

> +	a tool that does not pose copyright, quality, or ethical
> +	concerns.
> +
> +Copyright
> +	Text derived from --but different than-- the Gentoo project
> +	AI policy
> +	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
> +
> +	SPDX-License-Identifier: CC-BY-SA-4.0
> 
> Range-diff against v8:
> 1:  b40a7c44c ! 1:  999614b18 CONTRIBUTING.d/ai: Add guidelines banning AI for contributing
>      @@ CONTRIBUTING.d/ai (new)
>       +
>       +Description
>       +	It is expressly forbidden to contribute to this project any
>      -+	content that has been created with the assistance of AI tools.
>      ++	content that has been created or derived with the assistance of
>      ++	AI tools.
>       +
>      -+	This also includes AI assistive tools used in the contributing
>      -+	process, even if such tools do not generate the contributed
>      -+	code.  For example, AI linters, AI static analyzers, and AI
>      -+	tools that summarize input are forbidden.
>      -+
>      -+	If for some reason, a contributor receives information from an
>      -+	AI tool unintentionally, it should actively try to not use that
>      -+	information, and should also disclose the incident when
>      -+	contributing.
>      ++	This includes AI assistive tools used in the contributing
>      ++	process, even if such tools do not directly generate the
>      ++	contributed code but are used to derive the contribution.  For
>      ++	example, AI linters, AI static analyzers, and AI tools that
>      ++	summarize input are forbidden.
>       +
>       +    Exceptions
>       +	As an exception to the above, AI assistive tools which don't
> 
> base-commit: afdd0a64c5bad49d6030ddc488951aeb50f0b88e


-- 
Cheers,
Carlos.


