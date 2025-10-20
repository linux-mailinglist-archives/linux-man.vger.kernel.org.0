Return-Path: <linux-man+bounces-4182-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8FFBF2EAA
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 20:25:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5DD754E8DAC
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 18:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B463F19049B;
	Mon, 20 Oct 2025 18:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Zz+y/CMn"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9832750ED
	for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 18:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760984754; cv=none; b=FG7MQsEBacVto+/oIgvoSJ5tUYHcGoUTPss+X14/5tqZlGPqYWLdK33KOgZx3cnEgxhC82eeu1ieHj/z873tZ1tKUaQY+USiEQo2Wgrt0Dtn7ZHGKjsum2FMdaik28ekaCPrsEyANWFRMr1YYuCEkH+j8HubSayFMHZNbs6WqB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760984754; c=relaxed/simple;
	bh=E2KIDEmjOimA1F2KxqfetGwFjO04bmMeXtWxwz0HuFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iWMTlAwmCNcvSHcL86pdTvzY/2UvINmsej2YwZ8+86HakP9u8++Lypg+hLzLmDChGQ4VGEZ3ZIaJqjjGcTR0JkRA1ENePLLDYcQL1CTYfOf59+hC6Dj9vIjlUIBfZ9Z+qj/NXsY9kPAGihz4i8hVqAs1U9qVaGlttEYNvHMe2s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Zz+y/CMn; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760984750;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=9xxxwBY2W1tsXsVRMSqIyQw4RfPXyc+n282xHbrZERE=;
	b=Zz+y/CMnrCWxRjtTlv7OY2kBCJZMe87usXiti6/5vYWptTOermfhdbA3zjbpTJvRTVQb3k
	X4BRSGP9Wh02tGSIuhDdyiPHaYKle2J1v2epPU0zd/WfKdisaLy720RGnwuSIzSE2W2Jex
	cizuwzuW57Jh/SKMODBgJjpfLlgjOoo=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-527-a9t0ZhsjPIaAcZ7thRy-uw-1; Mon, 20 Oct 2025 14:25:48 -0400
X-MC-Unique: a9t0ZhsjPIaAcZ7thRy-uw-1
X-Mimecast-MFC-AGG-ID: a9t0ZhsjPIaAcZ7thRy-uw_1760984748
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-738a7fc9901so52889777b3.0
        for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 11:25:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760984748; x=1761589548;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9xxxwBY2W1tsXsVRMSqIyQw4RfPXyc+n282xHbrZERE=;
        b=NC6FM7vXflt31B0F16NcavmhyfEZrQoAqC8HJ7MpIAmfMuuytkQs1e6DX74ICfFrxc
         RyeVDGke7+bl4xMV3Kk0W/KfHWeeA5KYxEZ8LgKHxe6w2RJNDnDK3M26b+JaQUBkeXAG
         aB8fa5eUNFXr103GjBhkWWvTUTjzMSCjID6kUplyIz/HOUils5PN0kbMbf+R19BDLoNg
         HdilqSAk4Q0iEQqWx3UfqHoGklm+B/2A3L42zbPDf83lb94xYAPMTiwEs4O+ZRK3wkhN
         VZMiSjDgiZlcn9Cd+sp3FrVyD2d3hElOPEE3zsZyQgfXyzUBjXWnRthSL7ezJIOojARw
         8w+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXN3DyR7Zu2fzzd8vHHl3b1IszIV2wHfCdjFeh3HSUyPq8HrjcgEWbUglBw2JcNVCeJ6n1XEzrTQfM=@vger.kernel.org
X-Gm-Message-State: AOJu0YxXh7XW7Bgi6TmcMNpB8IDCad16a/su7PXq8vLp81/q6LsBt70F
	BbOrM2JtSWEu3W+5cu/qPwdoYuoSKsJST/prLeMsWel4uClhURYO13UH3kdOV1VzYKkH7+4iMia
	IW4eKdmhd6tOwSgTX811zX25njW6yCGpMBG3j5htliZFJDn/6SZvrjSVFGijeYQ==
X-Gm-Gg: ASbGnctw5wl9wTkUDcrtovN69zn3DM/uGH/tehVdz8tpSo2TiR/jDzTP6Qy7eKLP8sp
	AMyktY+kut5pl+HlLP4BUcIRv7voLdMe8NWHQy4VpDqoWBMRei+4K09fiSSOZQne69nN5Ygrwv5
	oKhtvl46drQ2ntq3LPG9lX5hGqoDNzzU/HqMJG6o6M8DIEHPnO9z8+s2vqsCRvK1Cmlg2RWc8dh
	sb5TZ1W8cWh6F8dAB5806reUBrJVgHTX3AJ2n6Hmx8vX9yr9mFKokfudXPY26OYbw/F03WqxEo6
	7yet1Y84eLaILnvgvp5ynTaTdW/e4LQpzNK+suWjRXdgy2l/QRL9WdMBbviy7yxSnJ1Q0ThxIRt
	d
X-Received: by 2002:a05:690e:2510:10b0:63e:1943:ce4a with SMTP id 956f58d0204a3-63e1943d116mr9222411d50.21.1760984747971;
        Mon, 20 Oct 2025 11:25:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEDJEW7feXpaYMtN5dvFE+ZWJzRpZz2p3lhrRBxPSh3WqEVUfVrKCA571vh8GOHnHllE0Ydw==
X-Received: by 2002:a05:690e:2510:10b0:63e:1943:ce4a with SMTP id 956f58d0204a3-63e1943d116mr9222376d50.21.1760984746980;
        Mon, 20 Oct 2025 11:25:46 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-63e267c6082sm2574111d50.14.2025.10.20.11.25.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 11:25:46 -0700 (PDT)
Message-ID: <a9412306-c265-4acb-8620-4925038a9841@redhat.com>
Date: Mon, 20 Oct 2025 14:25:42 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>,
 "G. Branden Robinson" <branden@debian.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <1bb0cfde967ecb12f6d3df2106388121647946e0.1760632863.git.alx@kernel.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <1bb0cfde967ecb12f6d3df2106388121647946e0.1760632863.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/16/25 12:41 PM, Alejandro Colomar wrote:
> This policy is based on the Gentoo policy (see link below).
> However, I've modified our text to be more restrictive.

Looking forward to a v6.

> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Collin Funk <collin.funk1@gmail.com>
> Cc: Sam James <sam@gentoo.org>
> Cc: "G. Branden Robinson" <branden@debian.org>
> Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>   CONTRIBUTING.d/ai | 65 +++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 65 insertions(+)
>   create mode 100644 CONTRIBUTING.d/ai
> 
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..269d62d48
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,65 @@
> +Name
> +	AI - artificial intelligence policy
> +
> +Description
> +	It is expressly forbidden to contribute to this project any
> +	content that has been created with the assistance of AI tools.
> +
> +	This also includes AI assistive tools used in the contributing
> +	process, even if such tools do not generate the contributed
> +	code.
> +
> +    Exceptions
> +	As an exception to the above, AI assistive tools on which the
> +	contributor depends for health reasons, and which don't have

May we please rephrase as follows:
~~~
As an exception to the above, AI assistive tools which don't have a
major influence on the contribution e.g. screen reader, text to speech
where the contributor verifies output, are allowed, and the
contributor need not disclose their use.
~~~

You can be perfectly healthy and lack hands, eyes, or other body parts.

> +	a major influence on the contribution, are allowed, and the
> +	contributor does not need to disclose their use.
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
> +		   use of energy, water, and other natural resources.
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
> +	Text derived from (and more restrictive than) the Gentoo project
> +	AI policy
> +	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
> +
> +	SPDX-License-Identifier: CC-BY-SA-4.0
> +
> +See also
> +	<https://tukaani.org/xz-backdoor/>
> +	<https://xcancel.com/spendergrsec/status/1958264076162998771>
> 
> base-commit: cef39ff51bfd016d7079baefbf2a39f0fed7549b


-- 
Cheers,
Carlos.


