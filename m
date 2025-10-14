Return-Path: <linux-man+bounces-4124-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E9506BDB865
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 00:00:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C99B14E5063
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 22:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE49258CDF;
	Tue, 14 Oct 2025 22:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MemeKtSE"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3E4289E17
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 22:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760479225; cv=none; b=c6KYZOMJ0PENsCkgjuSWWT0+ujoGTepc3zTBIJMHJFwnw2nHkCFt9lLIkEQOMm7uktt4kNhscO2R8mhsqz0q3Je5TTYLBZoeDoKJWYp7WyDfjq4Gi0D7RfllV7fmqSnTF+zlNJCk2h7WVXeKTCasBvXAFVn46q/igGcbN2Ot5yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760479225; c=relaxed/simple;
	bh=eccUNZxwa0MM7idZxPoCPiGn3/WzaAaiAnVglsMRWHQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H8GKgQ5KSsJJnfRSrQYLm5OYWQlk5YmwF8eaAn+HpNEd9FTYcFsoKOWmVAN4kWPUQIxGwPIQ9JacprCFPsDTc/PvlbAjyAiVK0qAXHjK+MHNYRqz5fn9G3sBFCWPAX2LXzq9/4h9yp4l1Ygt7rzFlCxAGQCaKqC8G4AXu/erAK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=MemeKtSE; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760479222;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=2oXCesY3Qb5goQfrE6Q5FwqXprZMKeZrWPp9W++zY1s=;
	b=MemeKtSEi2Cs85sCnPHsROqo5+ptiPkzQ71pKaWCqfCtUALdO8ZBJJYKoH9wb7v1VxieEV
	tA5cE6JE0zbWqTVNLtudgi0VoIgdAwXyb5+sNv6RoIhR0/jEB2Ig/tIBbohGTQ8XjXpnFR
	lOnVpOxGmKnKWINXpix3tDbvmdRLedY=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-653-_iNLx4SINweDvGDxd_8ALg-1; Tue, 14 Oct 2025 18:00:21 -0400
X-MC-Unique: _iNLx4SINweDvGDxd_8ALg-1
X-Mimecast-MFC-AGG-ID: _iNLx4SINweDvGDxd_8ALg_1760479220
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-81a8065daf4so162704756d6.0
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 15:00:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760479220; x=1761084020;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2oXCesY3Qb5goQfrE6Q5FwqXprZMKeZrWPp9W++zY1s=;
        b=tg9JRTI69AxwoZMFPr/ZlUVvHXKsGc68cK/wul3FJuUX0GWcL5V8rmZ7okNfnzq9uN
         qvMLte6k6SFoDM70g/Dd4lH4bg+pALY6RGOk0PNyOtdVM7Kqrg7gfrZpodQp7H5LvJGx
         HnbikXuSWCKfNXAXD5ptTwAgT09rIAOf59jWpK4l/2OgpQDYZoy7vMNfKDP62Hi8wnPf
         4e9Qoq8PWmbwPlivrlKRO1IWgCyK78aBRFEsDcXs1zQjyqPxA30fmGv/5cHD6wzqgqEc
         +hkZsBvJ5vEdSAMBBLZ9+VXWcPyVIGldNdFMr/bK1ZSaI2e7TkOFWVhvStsz7Q9psM3N
         Vs2A==
X-Gm-Message-State: AOJu0YwXLPXRxIgXtW/RqYMDB31N2T6heb2i7LzmkmrIXkrwDVs8+MfZ
	PLdG4kEBuEcyPBO2X9zmCwffyqI7h2hDMU2OcilDqZmnzcFCWTf/rxSFObA2HQIO65pRSCpY6qz
	X2dwqzBOFaMpl2sp6cWEx7RRGeaoS7FCDfn/Hm39TDUCx8hlM/jhLJQA+3ddkGw==
X-Gm-Gg: ASbGncuyZwyZPuAKwfeC1x10ca9SxusRPy2wrYSXjnOzWaeoipj9ouADMk/kJ4ENdF8
	F2MU478XYBv6SI+zuMkF58yEyzM1RoPAbYkG1wWiSgueAR7iOmnZIDImuv9vTGcK3vCGrtabJLZ
	n1pyNoppjbzifjjVZ6fmk8aXFjXnc5lTa0qwGvixh4Nv/DnPDSsJvE5d9f7CbcmjB4s4qqPlMQt
	U2tQRyAAphKxCHv0eko0pmUoxdbJe8HuZEHplQRMKvk8pZXl6Pni6w6PIvJuNDs1VV5e6dHOLWc
	V1V4eA2n9iPN7igsg2i8s0ZTu/R5ixHnijPPaurpaw==
X-Received: by 2002:a05:6214:c29:b0:78f:493d:15c6 with SMTP id 6a1803df08f44-87b20feda94mr326329336d6.3.1760479220326;
        Tue, 14 Oct 2025 15:00:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFx3mtqgpYqBpNx/jFtZ8T4tz45L5lZZu0ltba9SSwPw/KNlp+g2bNDqZ9vsmzPmBZpFfQ1kg==
X-Received: by 2002:a05:6214:c29:b0:78f:493d:15c6 with SMTP id 6a1803df08f44-87b20feda94mr326329036d6.3.1760479219801;
        Tue, 14 Oct 2025 15:00:19 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87c012919e1sm6069016d6.34.2025.10.14.15.00.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 15:00:19 -0700 (PDT)
Message-ID: <e6af212b-7efa-4f36-b39d-35f3856f657c@redhat.com>
Date: Tue, 14 Oct 2025 18:00:18 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Collin Funk <collin.funk1@gmail.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <877bwx6u48.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 5:39 PM, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> 
>> Signed-off-by: Alejandro Colomar <alx@kernel.org>
>> ---
>>
>> Hi!
>>
>> I've already been DDoSed in my own home server by AI crawlers (which is
>> the reason I decided to move the HTTPS server to port 80, just to break
>> links and stop the madness.  I could install Anubis, but I'll resist for
>> some time.
>>
>> So far, I haven't noticed any contributors using AI.  Probably, the
>> combination of relatively few people contributing documentation,
>> combined with still working on a mailing list, has helped us avoid the
>> wave of AI contributions.
>>
>> However, it's better to take preventive measures.  AI is entirely banned
>> in this project.  The guidelines are clear and concise.
> 
> It might be good to provide a sentence or two of reasoning, to avoid
> repeated questions on the list.
> 
> My main concern with accepting AI contributions is the current lack of
> legislation and case law in the United States with respect to the
> copyright-ability of the output. I also don't trust AI answers much, but
> that theoretically could change in the future as technology improves (or
> less people blindly trust the output).

... and what about EU contributors?

Upstream has to deal with the complex jurisdictional intersection of laws.

I recommend simple and easy to follow policy.

-- 
Cheers,
Carlos.


