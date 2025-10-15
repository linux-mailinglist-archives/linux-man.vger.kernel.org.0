Return-Path: <linux-man+bounces-4138-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80466BDEBE8
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 15:25:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 347DE424996
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 13:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 751C31EEA5D;
	Wed, 15 Oct 2025 13:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="UWCK51yB"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124871A0BD6
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 13:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760534722; cv=none; b=qr2+wCi4h2GSfR/046r1WoTflhDLhmPdO8NEus1WesHWN4RdgbB7aI6TiVR7msUmd7PyUsB4l5KEK9GP0whFzmgFSxFX52SMLwqdfW+mCSEbwl6PNXVnYPrjY5hSEgLa5xdHxGiFzqvx9GcsD5/EgGIfRchjVw2gKJHwnU4TDMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760534722; c=relaxed/simple;
	bh=rXNVNkJtaJGDUr0F6r+ILdp4j6jugTcDQa/696t7dhM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KsQEGbN983eBLQ2iCxU+71iJ83qF7UFEiQwIExrV6pKJb7It0jzu4bYkSlYhjcvblobcIMh+EOsjYrItxheheNSVtHkVVPMiz0wQgNj6VFGQ7yyUOrPOP2z6ekMOEjEY1s2tZovWeGFm5gWTd/PNsYmnCaiQuVeMkza6oqF+ewI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=UWCK51yB; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760534719;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=NocTdbQoz3v5wta2NtWx2Okd0HDhfgVIUPJvO7GwN5E=;
	b=UWCK51yB1xsRkXsjSl2LYYpOPpMGxP4yRfIxKSi9BCcOej3Yp4hm9OwNQwFJqfdpy/x7pl
	DzP3aM2k1VREQdcyzr4rO9NQujji/7vDTiZJn+tEdOw8WrynAj39dciM2/Ly1tHgCI5yo9
	sIbKdLieftBOAbHFA+hYxnogrC1wGVc=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-673-yqqIBjqIP3-_bgGNbRXRUg-1; Wed, 15 Oct 2025 09:25:17 -0400
X-MC-Unique: yqqIBjqIP3-_bgGNbRXRUg-1
X-Mimecast-MFC-AGG-ID: yqqIBjqIP3-_bgGNbRXRUg_1760534717
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78e45d71f05so255415466d6.2
        for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 06:25:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760534717; x=1761139517;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NocTdbQoz3v5wta2NtWx2Okd0HDhfgVIUPJvO7GwN5E=;
        b=j58K1e1ogKoPhPlXex601kUj/3HPsfMqRAIj7JEGL1MQnPu4y189tMtV0ZhZr8P6fP
         rZikD+gMZZ3wDfFgx82I8ojggnopcyoM/ExZUhDbSLP3lvfXPxqcC8OYxNuniTipRPbr
         5tz0jmIx3xZNmqVWITht4NkWRZ0w9iFhv3jTUKM0uFgyKiSRaLb3f2ldr8e86zwwXxSo
         vy4EwULoxy03kaYOMdcsnEy3xb+NXXMR8A8X0gqm8/iioeUQeaNHrgz45orvGMugwMR0
         iRNNuQD2+Q58UmpObxN9WTi6yPBtN3Toz0kI+YAPjGhP2iBJKCnSL6tAB1EwITxjE9EI
         CtWw==
X-Forwarded-Encrypted: i=1; AJvYcCWS0EE5AnxovG84q4wQj6RRRUw5Zoy8B/qrla7+Mdum93cFJLA49m4xNS97ZSLPS1fPn7Z0dckLWBI=@vger.kernel.org
X-Gm-Message-State: AOJu0YwG4VtLcrTqGnEjHOGKj7UnWKTFOn1NaMPk42NNZPUGw4zlPvK4
	l0fURcloMJA+aMDpYKQivw5JsFLCLONRS1Dn9p/9MS7JCi7ChPnvdzd3aCHqF836YVt3loTlZDb
	Xc4IZNNch9rehX3k+sssRPD550915NtBU6j37jEoZryf65SSLi+32zLGzRKkDTA==
X-Gm-Gg: ASbGnct4l2VMNSzZ+ZD7OtWTjPyOE2qrcOexJ2/L7nRLL4f5hkGlQC9EoBcOm3+KFQH
	ZRYby0c901Iq9zFdX6GO3P7wOmp4D6Jg1BWqti6RzzApc5I+4yrElPpNQF+U+nvO8ooK+xATeo7
	ewoDiarVCyuA1mCsg/Bxk5MRaBUnHT6CHYOqtBNb1V1Mcmw8IBO57OnzxYgXqrroa10jTR1DTIi
	9oj+r2qQOFBrplb4wiL4GOWHlamn8Bfh0lFJcBoP0gdYgZ4ZcY9p09lykfqjoFWU/8ufwoFqBcQ
	0ntPF7Xo+1uDt+DAC1Uz1K9L84c/6nHviwSAW1MqzQ==
X-Received: by 2002:a05:6214:5098:b0:80f:e547:f03c with SMTP id 6a1803df08f44-87b2efb9386mr399823216d6.34.1760534716914;
        Wed, 15 Oct 2025 06:25:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmTLsrSMF78pwMCIzFcDuMmXZy4qWRyTI4oulOUu6hkJCOdDs70XBpYVfOFuasmVro2MkMCw==
X-Received: by 2002:a05:6214:5098:b0:80f:e547:f03c with SMTP id 6a1803df08f44-87b2efb9386mr399822626d6.34.1760534716337;
        Wed, 15 Oct 2025 06:25:16 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87c0121c043sm18165356d6.14.2025.10.15.06.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 06:25:15 -0700 (PDT)
Message-ID: <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
Date: Wed, 15 Oct 2025 09:25:14 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/25 7:21 AM, Alejandro Colomar wrote:
> This policy is based on the Gentoo policy (see link below).
> 
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Collin Funk <collin.funk1@gmail.com>
> Cc: Sam James <sam@gentoo.org>
> Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---

Needs a v4 so we can review the final CC-BY-SA-4.0 license requirements.

> Hi!
> 
> I changed obvious wording, such as replacing the project name.
> On top of that, I removed a misleading sentence:
> 
> 	They are capable of providing good assistance if you are careful
> 	enough, but we can't really rely on that.
> 
> I don't think it's possible to be careful enough.
> 
> 
> Have a lovely day!
> Alex
> 
>   CONTRIBUTING.d/ai | 42 ++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 42 insertions(+)
>   create mode 100644 CONTRIBUTING.d/ai
> 
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..92d5d85d6
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,42 @@
> +Name
> +	AI - using artificial intelligence for contributing
> +
> +Description
> +	It is expressly forbidden to contribute to this project any
> +	content that has been created with the assistance of artificial
> +	intelligence tools.

OK.

Though it has been discussed on-list that this policy could be seen as
forbiding assistive technologies, but that this was not the intent of
the Gentoo Council's wording.

I don't have better wording.

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
> +		looking, but meaningless content.  At this point, they
> +		pose both the risk of lowering the quality of a project,
> +		and of requiring an unfair human effort from
> +		contributors and maintainers to review contributions and
> +		detect the mistakes resulting from the use of AI.
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

The original content is CC-BY-SA 4.0, and so you need attribution and
a link to the license and a statement that you altered it.

e.g.
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).
Text derived from the [Gentoo project AI policy](https://wiki.gentoo.org/wiki/Project:Council/AI_policy), used under the Creative Commons Attribution license.

> 
> base-commit: ac6f5c32b3fae7549c5a42d96a3273adc24e5023


-- 
Cheers,
Carlos.


