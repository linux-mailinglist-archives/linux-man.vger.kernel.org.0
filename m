Return-Path: <linux-man+bounces-4183-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 27512BF2FE3
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 20:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 97EF834E7A6
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 18:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E252C21F1;
	Mon, 20 Oct 2025 18:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="StqRs4A9"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F932C327E
	for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 18:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760986041; cv=none; b=QtV1fH5jwaOjyitnpNebnR58pHSvVbS9jGQxcLNu2T/kugChLvTKSBITEcF6NYDkaGAWZCpSdsB27L8IIRrfg1v7/sEVts2IWOT0R4tC7lKVx6+QF3ILpahh/wsua7jZ8oM1SwEYiLq+PsH5tGrYGqwiLTCRrZ2v0omOqWn56Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760986041; c=relaxed/simple;
	bh=MH/XBnvqjG3ovAZTVbz+j7xRUrkplQRNUR4KqGLp/Rc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qJZDG+Nm5ym95+0SJGp97iYo79hjGmqln35KxB7NtSlFLV7Qj8RPrpgtqLObHAQeaMMcb6WY5GMbASowFib9MnJq039IRvVA6ssmnec6zhxqDX037dfT/DXSnTzVcbhpy9Q/q80otWcLvRkHycNAuamF6k+owC2lRZeer15mLIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=StqRs4A9; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760986038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=j6Jo0hK51CFj82Ao/j6h+U6E9zmPyEuDcb3W6tma9nE=;
	b=StqRs4A9cNvPq43sBzEs6KpaHRkToCDCTKrxXV6SSLrehObydr5gBNlLArcmp3VnUiYOGW
	yVq7gKVaBSmWtWTSElzWFm7cRUmyHtakL3ZVdDB4CFOi+nsim68p9n7ZEK/zHWZL6D5rno
	tfITcE2ZHahv+76FgryFmE86keEgt44=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-530-Yys9ZCJJMTeuj7MnQ-I5fw-1; Mon, 20 Oct 2025 14:47:17 -0400
X-MC-Unique: Yys9ZCJJMTeuj7MnQ-I5fw-1
X-Mimecast-MFC-AGG-ID: Yys9ZCJJMTeuj7MnQ-I5fw_1760986036
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-87c2085ff29so168320906d6.2
        for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 11:47:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760986036; x=1761590836;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j6Jo0hK51CFj82Ao/j6h+U6E9zmPyEuDcb3W6tma9nE=;
        b=M5E6ah4pl8/4XjrD4rF2QcO5xPJnMUdTLN/n1DHTwyDoHsX/4s01Szp6A6+ZYu4SSR
         +ZgynBsHqCwOYoAVWkjZ1Krlw84je8p7J0ogUQdH2zUvIys8L18TyStYEhT9egMkkMk9
         08ua6zL+uJVSUCu+AbzMm/Q1O/Zd35Lb0FSw1VAvU/nQYm6vJTHWpS4eRNhn4kuBhGi+
         PouaCrWSCGGb+r+ZvxMi+TcqLenfQ8iglOID3wcpejVD+/vF0gJIeaD3pc7/SOoaYeMJ
         eLQ4IU4CP+m9KGo6+lQPT+HYMmYvRQuMqv0i8a02V+0somm10geRUrCFZ65fCsPTCQgS
         JRwg==
X-Gm-Message-State: AOJu0YwbfGZF2wldxpx8tk56hkK4wJ6qVjekx1mcm0fePb9zFAhHnUWn
	TJ70qnDBMoEKf5ZvSFbPH3eqfLzyUeLQnl5ZKXdfe0cJIDXuEdPDgvoqDb8BCkfR4cq9NpByl2C
	Rkd3wMuLfrygxvuIxO8VUaeBc4H+A2m8MLqkF27SJ2EGZsbz9zBcQAJroywZawA==
X-Gm-Gg: ASbGncunYfYoPPVSqygSG16qcXM8iDhzg/yQZBm10rncwcHshWpPl5Wp4tBHvbYRKIR
	8b9S8Q32HhC2kApYrIasCC3/X4uJvjTU3tOerglVoTPbfL5Q62NaAguVe5v6p4T8sOf3QyZ6ez2
	uM1V2LzYubwzp+Y1TK/6KlP3uBzRbrFUyhyOWF8lTHFsUXYk+CwNpQmnNN2IpeOI0tjmMzBuIP3
	KCOykwp7yKmVNFoXvDCvert2rfYrJwPMwjWPnVwHucRguhxQygWYK6ku//Jf23dK9WwtRuG4abP
	uxHm2UkR7hQvN1qR9YnR3Zeo2j3PaNoWvDSiAnqd4jpubDWa0xzBtF1CJyow3f/vw3kMQR0EIsD
	a
X-Received: by 2002:a05:622a:d:b0:4e8:9965:6174 with SMTP id d75a77b69052e-4e89d3a2987mr150540871cf.55.1760986036454;
        Mon, 20 Oct 2025 11:47:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELUIXHQlBtgHhgpXPlPBDY5DWgxF+nUMqECXY+SeQk45akj6/gGVNIFCQZqKTOByRnfVAUzg==
X-Received: by 2002:a05:622a:d:b0:4e8:9965:6174 with SMTP id d75a77b69052e-4e89d3a2987mr150540721cf.55.1760986035984;
        Mon, 20 Oct 2025 11:47:15 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-891cc7e1543sm612766785a.4.2025.10.20.11.47.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 11:47:14 -0700 (PDT)
Message-ID: <7ab30dc1-34c1-43cb-ac3b-f838f5564307@redhat.com>
Date: Mon, 20 Oct 2025 14:47:13 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>,
 Sam James <sam@gentoo.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <20251015165624.2xm73mgtymbwil6y@illithid>
 <abtyuyzyayvfpclfcfmexoiqe3umhpijytxguquyee3stkvyy2@26ohhywcpbjf>
 <20251015192422.5ytbfcvpfr42c2ad@illithid>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <20251015192422.5ytbfcvpfr42c2ad@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/25 3:24 PM, G. Branden Robinson wrote:
> Hi Alex,
> 
> At 2025-10-15T20:11:10+0200, Alejandro Colomar wrote:
>> I prefer that they use badly written English by a human, than
>> good-looking English written by an AI.
> 
> That's a tolerable and defensible position, but it is not the element of
> your policy that is drawing pushback from Carlos, Sam, or me.
> 
> (...assuming I'm understanding Carlos and Sam correctly--as always I can
> speak only for myself.)

I believe, given what you've written, that you have understood my objections
correctly.

-- 
Cheers,
Carlos.


