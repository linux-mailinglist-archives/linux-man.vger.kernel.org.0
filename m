Return-Path: <linux-man+bounces-4144-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CA3BDF865
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 18:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33CA83A7FC9
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 16:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CBE29A9C8;
	Wed, 15 Oct 2025 16:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TxqpFbdh"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A421186E40
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 16:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760544198; cv=none; b=Lm1+IsdNPIiSFEvWmtCO/SdBWSWIHYgyPRxdKGZDuFsP27O1tO5/kkXik/c7Whduz+njPwboOFcoAzlyBGlowzEWnFgmZ0sLF2+6cDRT3jQnYqiOD8pauecUNTjeP4nc9Nnmvx2gKukqxCpzcz1zigu/BhET/AfvjkFfSQiy/zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760544198; c=relaxed/simple;
	bh=adq16TbkyrpswMwe7djnmdJnpEhekazVLxMe5iSzdJs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h+cozjPSk+eUVhnW/iKsaFmkJZajqtgLJJWcUpA9+elgMQdPOjkuLGUPwcKdS4yARK1xL/SQ3JFqTgpRi6IrwlQTDtxzYSL246t6c5Vr+tSOLkBTmY1TGdwbC+vPR+KRrWndS5VXfvd7zLMdQXzqyeTFLQe0aOqQqX8UD0xu9oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TxqpFbdh; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760544195;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=OqVcO8CwLIo0XRr4hdP679o47Y7AJZoOR0Kz0Flxp5s=;
	b=TxqpFbdhzZaU+umRK56UomgJ+jSRfPD9GbW2N8PVXg5nwGjqHN/KzQHPflsC8HIABI8+rJ
	lQLOBcmsRKXhbenIUF6Zon374TRflBCKx5R/EpuBmKC73V5WlLEZ3UHjwF8g8paafwIXGW
	nNBjerM94CMJhe7i2Eh0/lpx0OxdGBo=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-15-uYgN60MjOvKqsCZxcXM2nw-1; Wed, 15 Oct 2025 12:03:14 -0400
X-MC-Unique: uYgN60MjOvKqsCZxcXM2nw-1
X-Mimecast-MFC-AGG-ID: uYgN60MjOvKqsCZxcXM2nw_1760544190
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88f1dad9992so73123285a.1
        for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 09:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760544190; x=1761148990;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OqVcO8CwLIo0XRr4hdP679o47Y7AJZoOR0Kz0Flxp5s=;
        b=crnhrRxVzdljNaN86KV8oWc0sB05/EZArHgK+gTmFGJaTMMJm5kiN1XP3+ZjEZfty9
         HjneIPNCA/7AS5XQ78ykfrEMrbstk9KfpzITVCxjHHKyYcyP7kAUmjNSx5v4ukBEIbSt
         9/KAqzCBp9pvKMODC8FwPIgrXZQbY9Y3GQcRcvD76k8HmlkrU11Z+4pLlaTRD3lWk+es
         c6C1GOZ/9aQ9Zg/jR1naoNKZTZl1Ib1w3eK5TFqOood+SnwnrGvMcoz2BtDvp9nVex0X
         Zk5Mj3RtiKwRld+nVO1sPXEWgB9Lb/pB9EKYGMCIU8M0t9XpSi6A4hnQNvEfjXUrcS43
         GDEg==
X-Forwarded-Encrypted: i=1; AJvYcCXw4mNkvAOOe6p1mrm9gFAUiHcXsx0ZHKdWPzDNAviw0PTAuzppth51CgjtCVrwT/poG6ABWWutPj4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyjoBfylS6+uGrtzTgaPCvywfz/SnUcxur69qftQsXqIdFBE7Qz
	RvNKptQVa6TfCCMfib5SO1StuLaXRB8Oxd+0TNfYz38BthIjk/kOQ3K1ARJZkt3ewD4yOgTV8R3
	gYNtOpJxOMSqgAos36WbAnlpA/WuLg22eNwvIOPoCqKizHB9XdM4WdtNcz37qLw==
X-Gm-Gg: ASbGncuxvyTj+6xme9DgQzazbFL1sEyViEE8Z5pr2D7CTzjy3E5D8OTZdjhvufCCoKP
	giVQrGsbNuWlS468GfVlZeYL742pyeIoZVOp0CFr2VFts2VQPZvcXsucbDKpnhCWz2MVHou+ex4
	/XxCPjwBw8IWWVQVBrJoxxRSJ4tQAWPWlkFkqxTc9uKCvoaduFZU36pSXiTcQ+IeMyhwoS6a1ut
	G9vVCN3EKSTlNljWMafEQnEmkYFppbnb1OvqkticcffQwembp+eL8fEMOTR9JuBtTpz8KBHhI0O
	Ygp/RmswLRgRMIpyhsIJgPKJZs4SGZ4eKAF2LEkfbQ==
X-Received: by 2002:a05:620a:4096:b0:857:d63f:bef9 with SMTP id af79cd13be357-883525c13b2mr4100880985a.55.1760544190293;
        Wed, 15 Oct 2025 09:03:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9Y7QiAZyP3b+zbU1o2ivE9IQM7OJkvsK//FyV6dP5NjoR/ggeUnN+Vvj+ecOTaBo51RAmlw==
X-Received: by 2002:a05:620a:4096:b0:857:d63f:bef9 with SMTP id af79cd13be357-883525c13b2mr4100866185a.55.1760544188943;
        Wed, 15 Oct 2025 09:03:08 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-88f3861b042sm1501085a.53.2025.10.15.09.03.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 09:03:08 -0700 (PDT)
Message-ID: <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
Date: Wed, 15 Oct 2025 12:03:07 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/25 11:50 AM, Alejandro Colomar wrote:
> This policy is based on the Gentoo policy (see link below).
> However, I've modified our text to be more restrictive.
> 
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Collin Funk <collin.funk1@gmail.com>
> Cc: Sam James <sam@gentoo.org>
> Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi!
> 
> In v4, I've added a paragraph clarifying that AI assistive tools are
> also included in the bad.

Isn't this the *opposite* of Gentoo's policy and QEMU's policy?

We should base the contribution policy on things we can objectively
measure and claim.

Rejecting AI content in contributions is objective and measurable
since you can't attest the DCO clearly with this content.

> I've also modified 'Quality concerns' to say that AI tools should be
> considered adversarial, as if controlled by Jia Tan.
> 
> And I've added a copyright notice at the bottom.
> 
> 
> Have a lovely day!
> Alex
> 
> 
>   CONTRIBUTING.d/ai | 57 +++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 57 insertions(+)
>   create mode 100644 CONTRIBUTING.d/ai
> 
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..faab2df1b
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,57 @@
> +Name
> +	AI - artificial intelligence policy
> +
> +Description
> +	It is expressly forbidden to contribute to this project any
> +	content that has been created with the assistance of AI tools.

This is OK, the forbiddance is on the created content.

> +
> +	This also includes AI assistive tools used in the contributing
> +	process, even if such tools do not generate the contributed
> +	code.

I object strongly to this paragraph.

It is the *opposite* of what Gentoo's policy intended.

This is policy over-reach into the lives of contributors.

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
> +		AI tools should be considered adversarial, as if they
> +		were a black box with Jia Tan inside them.
> +
> +	Ethical concerns.
> +		The business side of AI boom is creating serious ethical
> +		concerns.  Among them:
> +
> +		-  Commercial AI projects are frequently indulging in
> +		   blatant copyright violations to train their models.
> +		-  Their operations are causing concerns about the huge
> +		   use of energy and water.
> +		-  The advertising and use of AI models has caused
> +		   a significant harm to employees and reduction of
> +		   service quality.
> +		-  LLMs have been empowering all kinds of spam and scam
> +		   efforts.
> +
> +Caveats
> +	This policy can be revisited, should a case been made over such
> +	a tool that does not pose copyright, ethical, and quality
> +	concerns.
> +
> +Copyright
> +	Text derived from the Gentoo project AI policy
> +	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
> +
> +	SPDX-License-Identifier: CC-BY-SA-4.0
> +
> +See also
> +	<https://tukaani.org/xz-backdoor/>
> 
> base-commit: ac6f5c32b3fae7549c5a42d96a3273adc24e5023


-- 
Cheers,
Carlos.


