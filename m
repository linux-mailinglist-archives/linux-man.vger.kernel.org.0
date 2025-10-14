Return-Path: <linux-man+bounces-4121-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB51BDB767
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 23:54:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6403A4E0289
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 21:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6928A2E8B7A;
	Tue, 14 Oct 2025 21:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KnO423at"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623BB24A046
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 21:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760478890; cv=none; b=c2TLe09PaY/5UzUdrQtPfzWjR2l27bAgwDNLDRLT8S1O025FY19UyxRjR2trAH8VqLKiJzyGDq9crSgbn9Y41j5mnS++Zhf4cM92h8jP82e5bAUQP7G1XZ5n36WeCnsFuky9Pa8+XPOBJZIjUR/vWU1nunHe5A6UtCSn8B8e1m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760478890; c=relaxed/simple;
	bh=QKvoxvd47Oo6sWCCvvEYYh7jQ+N0w3S/jMK96KZClU0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Ov/Di6lQeheP8j2SzBrNlmvonuBfauaOelWS+G9CrDc13uHaTarhzNBB+K1xQVpYIztidD1WBat5J6FKjPSNDbiU0xuyA9SEGQx6Kv0yyvYsGdmgOxz9/x89wTdQF63AradKI0KFC+E50Er6NHbBqAJSPt1Zq7VSyx4Qpy/X+qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KnO423at; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760478886;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=n5JDTJa7dUmY4KzaHslfnn9SACB5djWjbJbBBlHasjc=;
	b=KnO423atrDH3Fyw2IMnt54SVHd6F6bOUFDlJKRhZwBV6lMRwSCccyZmvhu56lHBjSwb5JV
	gV/Pfjtz7q/55CfZGUMltZIQesVVb0blbQumURV3XK/oTW7BJkSilwpl52KFK7EhoDzuxi
	Pzf8XliJ0ubl5oBIAU9pTwpHfJdDCtY=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-86-t_d-4_i0MSGoT98AJYIUUw-1; Tue, 14 Oct 2025 17:54:44 -0400
X-MC-Unique: t_d-4_i0MSGoT98AJYIUUw-1
X-Mimecast-MFC-AGG-ID: t_d-4_i0MSGoT98AJYIUUw_1760478884
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87bf4ed75beso64535526d6.3
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 14:54:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760478884; x=1761083684;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n5JDTJa7dUmY4KzaHslfnn9SACB5djWjbJbBBlHasjc=;
        b=qvakZxlLwUuIhWsnh7L5L24gnlwPata9wee49cFnM/L7dHIgefWZGmLkq1AbYlOExj
         GzWzHaJC9kZN4K4rHTGmNGEqa8yu8qwqFWDf+w1draSnc1LfVTx+QniVRSX2nSDc1OgV
         XA+Dy586/ULVBYplWdd8qMPudQ7GNf/nD0Hs3hV5DkFQ5s3pbN7WuF7XVVeSUEbfxQOD
         9D7uCNBUaoyK0/ApQLkjxf4i88FoCY8+9grllwSMVsBDSxLcWWsOLTR8htxEokcF2z+7
         mJVOn29re80uQa3NCXIx/N4BXoUST/eAjJR8JNFx79D2W+MJR25E255xv/8vIO6umFIh
         GJ3w==
X-Forwarded-Encrypted: i=1; AJvYcCXhjbeVeInpWwQRUcVkh00lOJlz4V/s7styYN9K/Pq+oZ/IbrP1JxPKI+YMHiVJyd6ksNLFaWFPLl0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzHmlEeszLFP1jFC/2bMRHaPfN2lbu4GcR2djdJImcM6Vml3NPl
	mEndphI8iQ8MdSFYJJjOT2K9Tu9410jGnIZeerMFiz/C/r44uHrQ6HcPCW3aIOaRL0OmYqFYlXH
	o8FE/tYF3KrtHNIWZ40B1CclPPwpG1OsQT/GWMv+bRXTTQWS3TbIvmLWY7wbceQ==
X-Gm-Gg: ASbGncvrNuewV0/ugRr/kp4z31KHOSEB8vhLs4hBGql2z5JP4Ud8XvuELwDmV/hQbog
	EY8grEY/Wn41WJKZeNWfnt3/nXqe7wtcTmQZpUfrScIxShv7eyDFDT91I7aTFfS1knog4868zCa
	makgmynvXo8sNQwYyHnPVS0xKCtEz3PInuNzmm/AHH1yLNyYKSDvwqEJczzV6Mmg6tirA2OZjlR
	3Oz4Ool7pRo6tmC6TDGtxfLvILrcDpwQG7g/yFx1u7kIzfWKALlPXzqW6e+mQxvjGfAKY+SJObX
	sXJpb4rJ2pxviZrmdMNqE49isTLpKBBZFR0uylfMUg==
X-Received: by 2002:a05:6214:20c4:b0:7f1:c596:e1cc with SMTP id 6a1803df08f44-87b2103edbcmr416707706d6.19.1760478883955;
        Tue, 14 Oct 2025 14:54:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXUzbGSQY/ZLjKp5V1CxWcsE3EoHipiBVx5ZvAK/29JDaMMKfHWAcQ6b7v5oHKf8DEjF9zfw==
X-Received: by 2002:a05:6214:20c4:b0:7f1:c596:e1cc with SMTP id 6a1803df08f44-87b2103edbcmr416707426d6.19.1760478883439;
        Tue, 14 Oct 2025 14:54:43 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87c0128c78dsm5960646d6.41.2025.10.14.14.54.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 14:54:42 -0700 (PDT)
Message-ID: <5ec2c8c3-69a6-4508-9570-9185e9fc9c90@redhat.com>
Date: Tue, 14 Oct 2025 17:54:41 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 5:27 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi!
> 
> I've already been DDoSed in my own home server by AI crawlers (which is
> the reason I decided to move the HTTPS server to port 80, just to break
> links and stop the madness.  I could install Anubis, but I'll resist for
> some time.

It does not logically follow that because there are bad actors we should
ban a particular tool that the bad actors use.

> So far, I haven't noticed any contributors using AI.  Probably, the
> combination of relatively few people contributing documentation,
> combined with still working on a mailing list, has helped us avoid the
> wave of AI contributions.
> 
> However, it's better to take preventive measures.  AI is entirely banned
> in this project.  The guidelines are clear and concise.
  
Why?

(1) Document intent.

I don't support a ban without a justification.

That justification can be on moral or ethical grounds, or even on the
grounds of energy used vs outcomes achieved.

(2) Document acceptable use.

We should also talk about where it would be acceptable to use such tools,
for example could the tool check spelling, or grammar? Something that
is likely already done by expert systems (that exist somewhere on the
continuum of symbol manipulators all the way to large neural networks).
  
> Have a lovely night!
> Alex
> 
> 
>   CONTRIBUTING.d/ai | 5 +++++
>   1 file changed, 5 insertions(+)
>   create mode 100644 CONTRIBUTING.d/ai
> 
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..1e211a4de
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,5 @@
> +Name
> +	AI - using artificial intelligence for contributing
> +
> +Description
> +	Any use of AI for contributing to this project is unacceptable.


-- 
Cheers,
Carlos.


