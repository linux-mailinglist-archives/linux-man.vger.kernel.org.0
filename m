Return-Path: <linux-man+bounces-4285-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB6BC46EDD
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 14:35:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAC2A3A34BA
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 13:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 101E01FECBA;
	Mon, 10 Nov 2025 13:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="W3HfVy4G";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="FWs5rp8p"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D631199E9D
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 13:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762781516; cv=none; b=ofBHtmdgSAnZKHo8/vFm3LxGMJy9Axuai8SvAchJn9SYHih5VrnTQsCKl2yIEYMyyrhDwHHSPMhd7u+/EvoTLPsexxailbFvcgd6l3lAAz6HV630h1nmGq9lUhflq7r6SqZwobmIyJxIQ5AAvmvjxl9pdZJCeyNJuivYd4GU++U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762781516; c=relaxed/simple;
	bh=dhgH9ikb5CNhQ1nDub/AFyLTU4ouUec1awf/9djtZr8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dy38CElnFvS5XcArLBAusVBpWmRYujebBH22gjN0ta2jdW/cU9dLyZRSViGJQsTOB0MeubKArs+SJ/PQSiNPf687Gw5YIQf+SA9SacJUxKZXlvWkgW7uy/3qA3BE9F/95EdvYKwghSMeYhDJJ6Yry7RMggqUgZYp4mu8wif7htE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=W3HfVy4G; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=FWs5rp8p; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762781514;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=+ORpZB6vy49TDeH1Dx0cQIV9dUCWNNUMfX+39WpQhg8=;
	b=W3HfVy4GZUs94GthDGo2juwg0fnCG3ru43L6mp5El+HOjfV3jlDyCO5JB65ni5BY1SLO2H
	Zo46TkRlrL9SkGyau6fuY7bJ8subCcUOzqWkM6ls1OWzEz+EhmffIVG5WQ96r1knqSxEsC
	gOUtjP8+EjrHToWnxlXQ7b/PaOC4RB0=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-223-l5MHNDfkO2iBDtYqxxFwwQ-1; Mon, 10 Nov 2025 08:31:52 -0500
X-MC-Unique: l5MHNDfkO2iBDtYqxxFwwQ-1
X-Mimecast-MFC-AGG-ID: l5MHNDfkO2iBDtYqxxFwwQ_1762781512
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8805054afa1so82539666d6.0
        for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 05:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1762781512; x=1763386312; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+ORpZB6vy49TDeH1Dx0cQIV9dUCWNNUMfX+39WpQhg8=;
        b=FWs5rp8pxPaNlQq2GIslqdeA4xFN5+t5ghg0ob9QON561JAJ6X7JITwcCW7j9Vc7Xb
         j3GWv5Id/muHeF8e0Jm8MZyuqnZWJgb0nRUNOhmwJU86m8os2llCXIrH6X1SeCq5JPOU
         B5yl+vu5dt1vZbNR2WmelkSoBHbYcMQ2BhbmobJCxNQzaue6aCBdqI6LRbE9u8dY4Wpj
         gOytHuOmhp4L7UypOB76ZGBv6+zg0EZ0+BUSL/Rjl3RR+psLo7y2foaKxS5y6edwxXJy
         1PZ02zM6fGO23wpyzaI49gpydv8BYHaAO2JetkyhFaGwqwZgf/YlJxUMzgswkO3kKT4/
         FslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762781512; x=1763386312;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ORpZB6vy49TDeH1Dx0cQIV9dUCWNNUMfX+39WpQhg8=;
        b=HaAK7vqKQGxYDfYfXlEB9yvC6/sOiaVP7Z8lrpIbYpSGXgG5GD+Mze/25u8n9qxVLE
         TGXk7cb1iQEfqrpN1fQzXrk0gOFGcwmtlfa7ZS5schsztM6Q/h4vfdI1qpNeTgcrpX6h
         4/f1mFSrYQU5vFm4EPcmKvI7g8Ns12cG+cw8u9GvP805ACQ0XOtB0i63PaKW7FBFqEs/
         m6PEIBh/kTHzDNklsUCXyKPJcf9Jfs+124BNHOO8YnlScdPgBSG8tUROKS5lBY2UHGqP
         aAihrTrKcJUAAghnNu4TOt6zo8ByUgbJicGcmy7kb+j95GylvSWwq0mt3KEyZMC/TtXM
         ixGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXrP5mwzLzCWvVI4gvHirOWxwk2RIxqMIdOMFXh4D9YuqbFppYYFRJDlgHoktrtpPMlNuopmFtJO8=@vger.kernel.org
X-Gm-Message-State: AOJu0YzOBcSdbUIHSNoNekzVf1C/Kw7eGZf4VAVQAy5XZ/gJynCSKfjL
	/5ROHpYx4edvxiFL8owXFPlWwPlApIZgRoX8co8apmp0l3oTQRlQBrZTR4IWNpIewszGt5Nvo+d
	24rIFeLGQoSWUav2JDjTtW9oVJEIYGzpTxtg35ov+qWjMmVtHR3iSUKHnFzuR/w==
X-Gm-Gg: ASbGncubrKKQ/Xeluza30fVDcRG9kqp6SkyAF8xr29tg2mz0dgd9T7cY48BwXyfJ+NT
	tEDmQsydySxAT4kvmun9iLEi1ISaEPl6byk+co+pNh73gKOae61GjSUSN+Bd1gDNDs99H2NZ1/p
	uQgILsg1YXu2APRbyfx4Bd8E5jyCHv+QSpOPnbZDsu7yv2YSDHu87Cuzf9UN7IAjfGPWQCw6xgV
	WENuuJNXaziek8jOFuFF/8JILlB2CjCBjWd8NF3XaMcbDus1cQJfaQzymOh8c835gv3KfBlWeiD
	Q0TboYnQmubDyZUgPvDAKht/L4Jc/yy3D6wP2+HdhUxrjvDxe9OzA2o8+xDXh8zFlNP73ebv4qj
	8
X-Received: by 2002:a05:6214:29c5:b0:87d:f693:72ca with SMTP id 6a1803df08f44-88238707cf4mr120690186d6.33.1762781512027;
        Mon, 10 Nov 2025 05:31:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+Y5GpbWTvgds517jEWDDbTkPGtK+VrvWKU7AWQdjFmFjlQphBtIqgYrxpSR1Kf+2s9LDM+A==
X-Received: by 2002:a05:6214:29c5:b0:87d:f693:72ca with SMTP id 6a1803df08f44-88238707cf4mr120689526d6.33.1762781511471;
        Mon, 10 Nov 2025 05:31:51 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8823898c7cbsm50966966d6.21.2025.11.10.05.31.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:31:50 -0800 (PST)
Message-ID: <f9091911-f861-4fac-bfe8-4956e1f37ce2@redhat.com>
Date: Mon, 10 Nov 2025 08:31:49 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>,
 "G. Branden Robinson" <branden@debian.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <b40a7c44ca89740ccea37852d09d11b6130de53d.1762776026.git.alx@kernel.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <b40a7c44ca89740ccea37852d09d11b6130de53d.1762776026.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/25 7:01 AM, Alejandro Colomar wrote:
> This policy is based on the Gentoo policy (see link below).
> However, I've modified our text to be more restrictive.
> 
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Collin Funk <collin.funk1@gmail.com>
> Cc: Sam James <sam@gentoo.org>
> Cc: "G. Branden Robinson" <branden@debian.org>
> Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>   CONTRIBUTING.d/ai | 66 +++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 66 insertions(+)
>   create mode 100644 CONTRIBUTING.d/ai
> 
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..8443bbcc0
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,66 @@
> +Name
> +	AI - artificial intelligence policy
> +
> +Description
> +	It is expressly forbidden to contribute to this project any
> +	content that has been created with the assistance of AI tools.

This is fine.

The goal is not to accept contributions that can't be attested.

> +
> +	This also includes AI assistive tools used in the contributing
> +	process, even if such tools do not generate the contributed
> +	code.  For example, AI linters, AI static analyzers, and AI
> +	tools that summarize input are forbidden.

This is acceptable.

It is another way of saying derived content is not acceptable either.

One suggestion is to fold "created or derived" into the first paragraph?

~~~
It is expressly forbidden to contribute to this project any content
that has been created or derived with the assistance of AI tools.

This includes AI assistive tools used in the contributing process,
even if such tools do not directly generate the contributed code but
are used to derive the contribution. For example, AI linters, AI static
analyzers, and AI tools that summarize input are forbidden
~~~

> +	If for some reason, a contributor receives information from an
> +	AI tool unintentionally, it should actively try to not use that
> +	information, and should also disclose the incident when
> +	contributing.

This paragraph is contradictory and vague.

If we forbid them from contributing such content, then we never get to
this paragraph?

The "receives information from an AI tool" is sufficiently vague that
it makes the policy unenforceable.

I suggest dropping this to make the policy shorter and clearer.

> +    Exceptions
> +	As an exception to the above, AI assistive tools which don't
> +	have any influence on the contribution other than enabling the
> +	contributor to work with their computer (e.g., screen reader,
> +	text to speech) --where the contributor verifies the output to
> +	the best of their ability-- are allowed, and the contributor
> +	need not disclose their use.

Looks good.

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
> +	a tool that does not pose copyright, quality, or ethical
> +	concerns.
> +
> +Copyright
> +	Text derived from --but different than-- the Gentoo project
> +	AI policy
> +	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
> +
> +	SPDX-License-Identifier: CC-BY-SA-4.0

OK.

> 
> Range-diff against v7:
> 1:  299541d41 ! 1:  b40a7c44c CONTRIBUTING.d/ai: Add guidelines banning AI for contributing
>      @@ CONTRIBUTING.d/ai (new)
>       +
>       +	This also includes AI assistive tools used in the contributing
>       +	process, even if such tools do not generate the contributed
>      -+	code.  For example, AI linters and AI static analyzers are
>      -+	forbidden.
>      ++	code.  For example, AI linters, AI static analyzers, and AI
>      ++	tools that summarize input are forbidden.
>       +
>       +	If for some reason, a contributor receives information from an
>       +	AI tool unintentionally, it should actively try to not use that
> 
> base-commit: afdd0a64c5bad49d6030ddc488951aeb50f0b88e


-- 
Cheers,
Carlos.


