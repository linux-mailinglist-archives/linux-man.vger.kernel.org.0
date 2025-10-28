Return-Path: <linux-man+bounces-4201-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B3EC14A3B
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 13:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 564404F814E
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 12:31:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B625254B1F;
	Tue, 28 Oct 2025 12:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TKO7dli4"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFAD2D7D47
	for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 12:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761654709; cv=none; b=XYKiNPu5ZrWmER6ZQ58qOWrMlE2Z/vd/2l0/yepmqQ4fwmNcx468YaNe00oWx5yBzd58iuNyrA1JvutR7e681NdV+yc1IXw2W3ElUXFoOOju4T9zEQrK/ms7GkSAVXKTIQVszyjjC5cS0B6eEqAbLbRiTbwRh0k2FmMetOnWa4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761654709; c=relaxed/simple;
	bh=z52H2arAVJjMVV94xVnXc8k6sBrdnCp3/G4HW1etkR0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CUv4/Z7QceExYrS/H9/on1OEiZRFE08KFmm/SjyR5u6EyBeHWpo+EcELUS91DeRezTeR4shuA+91cSWCD7mV5lJCyF/DE7zU3ptqmqWysa5dJj9E+wpHaq7kSoWjhHarKZlXdNVXlRjkmNd9NVDLCLsiQyjfxDiI/E+GRAZcU+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TKO7dli4; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761654705;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=trr5LIE2mhygCQCaWzmlux+MnUJ+Aozr+/V/vV5qgic=;
	b=TKO7dli4ZVZ+ZhkJ0jkU0RS0PYjGPDI1pMPhMPiKCiXquJb9Ew2RgYDuCQ9s1xvsj91gtq
	zSDCc7RiQAc5WqEnDKJUyJVpyFYhubYLY0FO8GBP1rS/KFP/GuopJcqC/cC8Knjoj+4cbj
	zDS+bQmKXURUHFDLtAlvsIpfFyB/aXQ=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-53-EKptZoY8OhmU_-EYl4gkCg-1; Tue, 28 Oct 2025 08:31:43 -0400
X-MC-Unique: EKptZoY8OhmU_-EYl4gkCg-1
X-Mimecast-MFC-AGG-ID: EKptZoY8OhmU_-EYl4gkCg_1761654703
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ecf3420ce3so58603401cf.3
        for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 05:31:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761654703; x=1762259503;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=trr5LIE2mhygCQCaWzmlux+MnUJ+Aozr+/V/vV5qgic=;
        b=QPwPuBr2i3n0fH8Eupknqf9HHBg5JFxkl9RN+2M4ULC4qjG5MX9gMddnHWQZyDFiLO
         xlUgN86Iqc1k1dYmN+fWL/Sy+UEKCeUSIAiksf1H9H+pbV5rlxjawAeWjPZvx3tTiXE4
         /fUpgBt1LQMFTOJVoIMlf0OzRlR1h5S+AcaDzrJORF3t52vll0hssUIyMAM3dXyT8UE5
         91h8oNfaw2rVe4Ue733cyFnUZAMnn/gz4L7aYmMMLD83KNQcVIOEnBud+elGnngq3awN
         rFx+ibCjuj165ZE/GuLBlhv+eSC+MRItZZrzbvp1SmxLo74qa4YcPXjRXsjdbXWRi1Gk
         Oe1w==
X-Forwarded-Encrypted: i=1; AJvYcCXgg5Mj9AxMvHwxD/YP0ugsrZRzueywSInufDlIa5+ouHZ8QfdJp0AwrBtcaYTt6IxyKx8Qm6v/GWE=@vger.kernel.org
X-Gm-Message-State: AOJu0YxgLFtQdxTP12eGArI4IniG/grPWlAS3DP/nR5Zh5UNfyvpMCSf
	tgW8ChJMaZTpUERdrMrgr181g09ad+kkd6oOd9ikswoQg4H9wK3le2ZR+zPjAlhbvkNiEk2+GqZ
	IDUMsb8c1EW30/HbvaWuL+C2XL3qZfdXNdNfDTLH2j1eyhW3pz46hQGrtHZY+LA==
X-Gm-Gg: ASbGncsMiw+ugBa+x5KDxRo5QofvCUzFESY8KMsc1cLpV8Ju6Uw+UT3AI0FjxwndHCF
	FTFk8tlrWB35xD8cZlAvtQZZXczPYyZ1Mkg0JRtEo4u7ZUbX6chscdsZC0xdX35dP4dpy1VgEKV
	jKTItI6iJI7tCtuHJuonEyI80TADD4bPun80PK7EvFlT2C62AtqmDaQYgLZFuQ2XROoUCMEVtNh
	NKr/Pv1m4PlmV7n5N/qA1ALqglwoYprPywex+EdhYh5leC/0E5IZRoFzE9oWqnHDEMAHX5qKxgf
	Ifm7gsQ3cTYL097DTmM+HOyBHoJSg5HGExe0y+Ixh+RikI6O9qrRw4MwFYHjNEzZ4ChAEyI0pOF
	t
X-Received: by 2002:ac8:59c3:0:b0:4eb:9ea0:cc3b with SMTP id d75a77b69052e-4ed074588e7mr48250321cf.11.1761654702740;
        Tue, 28 Oct 2025 05:31:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7YiYFEHoRbVLHNqEOvUVfGumK7A7cn69+cCjePfy7xTtR76jbuaHrwrM6D1ZapGlIHuL3PA==
X-Received: by 2002:ac8:59c3:0:b0:4eb:9ea0:cc3b with SMTP id d75a77b69052e-4ed074588e7mr48249871cf.11.1761654702295;
        Tue, 28 Oct 2025 05:31:42 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4eba37d7db2sm71509591cf.11.2025.10.28.05.31.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 05:31:41 -0700 (PDT)
Message-ID: <bfc8e849-c0a2-4ae3-a2f4-df14c34987f3@redhat.com>
Date: Tue, 28 Oct 2025 08:31:40 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>,
 "G. Branden Robinson" <branden@debian.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <07d0b354caffa459dd8a40d31fefcf5315513a40.1761586102.git.alx@kernel.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <07d0b354caffa459dd8a40d31fefcf5315513a40.1761586102.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/27/25 1:29 PM, Alejandro Colomar wrote:
> This policy is based on the Gentoo policy (see link below).
> However, I've modified our text to be more restrictive.

Looking forward to a v7.

> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Collin Funk <collin.funk1@gmail.com>
> Cc: Sam James <sam@gentoo.org>
> Cc: "G. Branden Robinson" <branden@debian.org>
> Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>   CONTRIBUTING.d/ai | 68 +++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 68 insertions(+)
>   create mode 100644 CONTRIBUTING.d/ai
> 
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..63cf3d548
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,68 @@
> +Name
> +	AI - artificial intelligence policy
> +
> +Description
> +	It is expressly forbidden to contribute to this project any
> +	content that has been created with the assistance of AI tools.
> +
> +	This also includes AI assistive tools used in the contributing
> +	process, even if such tools do not generate the contributed
> +	code.  For example, AI linters and AI static analyzers are
> +	forbidden.

In an attempt to simplify the policy I suggest dropping the second
paragraph.

Leaving just:
~~~
Description
	It is expressly forbidden to contribute to this project any
	content that has been created with the assistance of AI tools.
~~~

If someone uses a linter or static analyzer *and* includes suggestions
directly then that is content that is AI generated and not permitted
(covered by the first paragraph).

The second paragraph admits odd interpretations including questions
like:

  * If I used AI to summarize a page for my own understanding, am I
    forever tainted by that use and unable to contribute?

  * If I used AI to translate a page to my native language and then
    used that knowledge to support my changes in the future, am I
    forever tainted by that use and unable to contribute?

The understanding of "contributing process" can be understood to span
years, decades even, and as such complicates the policy.

In conclusion, I suggest a simplified policy that doesn't impose such
language on the contributor.

> +
> +    Exceptions
> +	As an exception to the above, AI assistive tools which don't
> +	have any influence on the contribution other than enabling the
> +	contributor to work with its computer (e.g., screen reader,

s/its/their/g

> +	text to speech) --where the contributor verifies the output to
> +	the best of its ability-- are allowed, and the contributor need

s/its/their/g

Do we have policy on a neutral term e.g. their?

> +	not disclose their use.

+1 from me here, the exceptions paragraph meets my notion of inclusive
use of the technology.

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

Suggest dropping the second paragraph.

The policy should stand clearly without oblique references to issues of
the times.

The paragraph detracts from the clearly written concern causing the
reader to have to go read the reference material and determine how it
relates to the policy.

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

Suggest "copyright, quality, or ethical concerns" to match order in the
text above.

> +
> +Copyright
> +	Text derived from (and more restrictive than) the Gentoo project

Drop "(and more restrictive than)" since you have the same license as
the original text.

If you want to keep something here I suggest:

"Text is derived from, but different than, the Gentoo Project AI Policy"

The notion of more or less restrictive is relative.

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


