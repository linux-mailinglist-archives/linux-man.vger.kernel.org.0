Return-Path: <linux-man+bounces-4133-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id F30A4BDBE67
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 02:16:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9E39835511F
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 00:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6690319DF6A;
	Wed, 15 Oct 2025 00:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CK/Ip2f7"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5ED17DFE7
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 00:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760487395; cv=none; b=CicuLuwHTz+yITE1MfpbxSRut6lDPv7SCrxsbMZzQfYkxF6PqJ6ctQHoCr1NhPBVeffCh7BQKUNbin7dzpPJX9oj5ap13+ua3CpABJOYz86zwbbSRKVgd6tFIqX91oy5G9RTXl1wAlf/6DwTALhDAsxBpk6TexJm5EZkPvq1pMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760487395; c=relaxed/simple;
	bh=q3u4+9PWwxAl+hGaJKVjwNt5STebNvylZLK5mg8hm2I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t6U5OuVGE4eiqccRSbEM1pkW4GJtMFkLFXKhW2U+VLime9rnlQFAyr0WQJwES1Djvin42WZYqHwjpdmTBItZQ8XDtPFAw3ey0DQe7CZ60C6IRRu+/b26soSCmAYf9/G9LpnwN7dlE/G16O3EGRNk8O+qShdPynyesoDQ9olIHig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CK/Ip2f7; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760487391;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=LXIutFUYWbFqrKBGcsWwv//ityHSXTnafpS0xPxcC8U=;
	b=CK/Ip2f7B1u4GT6eD9L+dggQWq6sapf8Q9JqLZOszSNthqA1vu46/zpxgUTJkuo4VEartX
	hYPStXpj2VcR1SFb9J9RRWZBu6kqJzH4VaMsWRw5nL6mtrdZ49J1gDKRR6c3CfsCUHgPbx
	M2DlWrVcwseKVKA1FgZhWtwO4Dosuy4=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-381-xdBv_KMRMFWA9o2ZvLGlQQ-1; Tue, 14 Oct 2025 20:16:29 -0400
X-MC-Unique: xdBv_KMRMFWA9o2ZvLGlQQ-1
X-Mimecast-MFC-AGG-ID: xdBv_KMRMFWA9o2ZvLGlQQ_1760487389
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7e90f268f62so242764466d6.0
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 17:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760487388; x=1761092188;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LXIutFUYWbFqrKBGcsWwv//ityHSXTnafpS0xPxcC8U=;
        b=ak56rRfdB6/9I0Y6+5Rye+2Yt/lTejx7M67t9HoLvL0aacuUtIpjRJF30WhGjsFDZ6
         fCZ77nqt3r9bNE+bF/gwrkq5Rx3rtXey1Jlc+ZPHS/q8UPHCjMV4GkwjAd6YoBmywfVQ
         tC7icI1Bhge5+2yq4IIiT3cy/2iWjsrrpp13uP/T+jneZU/N86abV/vZYyLtt2tDQ0wL
         UK2cYZbqkXjbK1JwXKQ8ePbc3KVojJtuOevPVWIaf9Cd8f5WhoRUQ352HPkJtWLuMLiQ
         8Dn9yNwvYqlWiDAFtIAHHBR1KszlZbnMDrTnrmOu3+gi1+bMF+Mgw0vXbsKHY7UstiLG
         kBew==
X-Gm-Message-State: AOJu0Yxm4Zd8tCtP7mmtsOabYedvKnaAndLbVIVdMoiXAbJAdyBPBVTI
	rKy508lYhsGDPU98QTKSFHBMHCoAc/t3r9/Of0Rb5POb5tgJk99oLw8vxhSiMWy6dh3rpHihfst
	bqHv83ra6ndtc8+Sb6yIT+bMRpahduoOm1FrdTdWTZ78f1QsqliSu6pd8hgx2Qm28Bt+i9w==
X-Gm-Gg: ASbGncu9UhrJCSDGwwHCcCqANZIlGYJQaia62RbUBa48sQbqsPLsgd4zMPx9/wjWed8
	69mdLmJh+sVo0TuizmGCgw4qTDuqe1rnG5/6tivCuH46mfoIiaK6dHm50eW36ZxWaZ3fRi1/mKQ
	J270RdF7T+4tDpIfCL8DcYqov/sbaNcrVZERflkxRez2+RWrSzryTruGOb0J4c05iP4l9qrxAnK
	ON4+DCgIhWYE12O5ZBRRxC6BTJ44dNgETu59YQwwvCEtwm0xR3trJ0cXcMg/uzRk4DT1UomNn6Q
	AtPh8EjOT2MJEo9KG3NheAC4a8TzZtGWd71yy/GjVA==
X-Received: by 2002:a05:622a:2307:b0:4b5:d932:15d8 with SMTP id d75a77b69052e-4e6eacc64d1mr384066331cf.14.1760487388468;
        Tue, 14 Oct 2025 17:16:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8ScrvarBGgPuP2mRHpKhGBgCsguSO/W3igqnmR/4RVUhaGA0/2SKdQfu/0zHnfb2r20vNYw==
X-Received: by 2002:a05:622a:2307:b0:4b5:d932:15d8 with SMTP id d75a77b69052e-4e6eacc64d1mr384066061cf.14.1760487387902;
        Tue, 14 Oct 2025 17:16:27 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e881c7e74dsm8093831cf.14.2025.10.14.17.16.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 17:16:27 -0700 (PDT)
Message-ID: <04bc7aa2-c5d5-49f0-835a-5cbce357aa3c@redhat.com>
Date: Tue, 14 Oct 2025 20:16:24 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <5ec2c8c3-69a6-4508-9570-9185e9fc9c90@redhat.com>
 <qkhl5lirdusce4fgbei243fklzzkmmct4okcjobeddnozkdrip@fv6xh2a7lkf6>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <qkhl5lirdusce4fgbei243fklzzkmmct4okcjobeddnozkdrip@fv6xh2a7lkf6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 6:15 PM, Alejandro Colomar wrote:
> Hi Carlos,
> 
> On Tue, Oct 14, 2025 at 05:54:41PM -0400, Carlos O'Donell wrote:
>>> I've already been DDoSed in my own home server by AI crawlers (which is
>>> the reason I decided to move the HTTPS server to port 80, just to break
>>> links and stop the madness.  I could install Anubis, but I'll resist for
>>> some time.
>>
>> It does not logically follow that because there are bad actors we should
>> ban a particular tool that the bad actors use.
> 
> It's not the main reason, but it's something I wanted to note in the
> discussion.
> 
>>> So far, I haven't noticed any contributors using AI.  Probably, the
>>> combination of relatively few people contributing documentation,
>>> combined with still working on a mailing list, has helped us avoid the
>>> wave of AI contributions.
>>>
>>> However, it's better to take preventive measures.  AI is entirely banned
>>> in this project.  The guidelines are clear and concise.
>> Why?
>>
>> (1) Document intent.
>>
>> I don't support a ban without a justification.
>>
>> That justification can be on moral or ethical grounds, or even on the
>> grounds of energy used vs outcomes achieved.
> 
> Okay, I'll add some generic justification.
> 
>> (2) Document acceptable use.
>>
>> We should also talk about where it would be acceptable to use such tools,
>> for example could the tool check spelling, or grammar?
> 
> I explicitly want to disallow such uses.  I think using AI to lint code
> (documentation or C source code) is dangerous, as it puts trust in the
> AI system to find issues.  The AI system might trick you to accidentally
> introduce typos or bugs, or it could create a false sense of
> correctness or safety.

We're getting into ethical territory here.

What I put my trust in or not, is none of the project's business.

The color of my socks is none of the project's business too.

We should accept contributions that meet our contribution policy?

This includes a clear license, clear and unambiguous copyright,
and a level of quality and correctness that we review with human
reviewers?

Consider QEMU's policy:
https://www.qemu.org/docs/master/devel/code-provenance.html#use-of-ai-generated-content

Likewise Gentoo's policy:
https://wiki.gentoo.org/wiki/Project:Council/AI_policy

-- 
Cheers,
Carlos.


