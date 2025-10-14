Return-Path: <linux-man+bounces-4131-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEADDBDBD97
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 01:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83EC74004FA
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 23:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 999162DCF7B;
	Tue, 14 Oct 2025 23:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dezeCGqX"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE21E24A06A
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 23:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760486299; cv=none; b=jFUHi63Jnm3A4FSzIT2KhO1DUu92Z78/0dhkT9AG+PQZ9+cDvDLba04awwdxXnG+u+mvsHAlLf4jqa7npeF/eH7ItyugftXbPJpOHAHjjmCgEicvmkisSFpECDFaKwj4tBuZno23OPjXvPiTVjy6Sn/ffNu0pg8ev5IwSR4OJPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760486299; c=relaxed/simple;
	bh=v7ftw92t60RfnfeHma271GBRZ0aCCBGEtNz1pP9fdCQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QKNWfTWn/0t+kWIcgFVk9tAQIdJnM2Gia3+J5q4tPsocpHIB/kxpuvWC/F5aGb6JKKVxy5HXz05qpJykcinvvD+lFlfNK9T9rCf2Jrio4wbTvvdDaRoXWP1XBjKE/Y1v5xpLG8RfvFjaqEJQ0BI8ohmfYaDHORbbGaKww0Uz9FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dezeCGqX; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760486296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=AZpU1hdqaTigzuRFWlnwdXLSGZTlWk4PMmiiUnh0kKQ=;
	b=dezeCGqXfn05afw9yRtCCggNa6tYvydZVcOlH7L+ANqmBfKoPjUMsjObD8AZcO8cnEozWL
	+XKakR/WII9mM7A5DnwEPJfIQfLZrNwzBY3xOgH2ArZR9qypHERY4AxZI0ho0MKQrCFE5/
	+LNQKIWnmMD42hLhHLmkpE4EcDAOgVE=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-695-OAiZahuBN0K7LSbr1ynmLQ-1; Tue, 14 Oct 2025 19:58:15 -0400
X-MC-Unique: OAiZahuBN0K7LSbr1ynmLQ-1
X-Mimecast-MFC-AGG-ID: OAiZahuBN0K7LSbr1ynmLQ_1760486295
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-818c83e607bso153602076d6.2
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 16:58:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760486294; x=1761091094;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AZpU1hdqaTigzuRFWlnwdXLSGZTlWk4PMmiiUnh0kKQ=;
        b=TWXAI/WLQ5rlXhWQDGCgkL1mhyUoaJIXkyn41eMMUPI2NuFSmYE6IcQIm6FZpV713r
         cFxx4pRXRfUIOyFtUQbLUeP1IJkgko3qRl6p+X2wguLwACK5MpMpiWz8UQ6QU94g5xa9
         H/Xc2EqUcJoRychIGmIAfIONXNlyUf+4dch1e+E3OgYFjUWXExzUVI3VI6RhLdzB1HE1
         1s1SdB8RhXeh4nrRTaXGWksk+fhwQEbufBHM8PtCjGhf7QMmDoEO0yaBcQaJrM4CdM47
         ngUcyX2WBn0rRnL8pru9MYsWtbrqwUuPkEpXuPdRQx7+21wno+1W0OUFK0zY/cZJIurB
         tPiw==
X-Forwarded-Encrypted: i=1; AJvYcCUGuZk+f4luzOdDl0YQj+b136SNQo7uUcZ1XHUw7CKdeA7Rmv2z4NYq4VMam7ChLFdT6zZ3IiohbwQ=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi0NzqiOzH64H6H1wVnowfhxBxnDQUSF/xWoMHooXDMONqWvzf
	jf2lPxB1n5LhjX1ivrBHuFHX/VjJO6usWry1ByHDcyymTxc/YqgbUmwyxw9Lve7WscOEyhP0xWn
	v+0ILU5nNgvaWh2hhV4NlY7pA2fmVWFTQYcK1evN6UOfN+QQOOdhJ9V0Ac2GJCknK8xI0eQ==
X-Gm-Gg: ASbGnct6Na91ZMjGetZ/kN1YhnECPP9D20/Bvz4FuwZpjir9JpQ5IeGt2w9LNpPkyA2
	qW1OImzriuuMsJ58iIritTSPzAhyc54c4rv/6qIloC7pDDGJUrdM2dFF8LkMUBH4R3niWjqYK9L
	afHad8YZVf1Ge6kZevkOs/iNEXgYyrb40x5I67yr3DkeobZsa+o7+jocp1mxSH7e3YMLjMcDnVw
	Selfp4SxZIQzvLx7kSU+gCd07K1lceM8kh7U5G3udpdGCXglsN2srS8R/nSJNE2Wc9ebwNyfcdo
	5YOfD+YuDAXazA+xwDWvkqxf/t3ZOyn16fYCp8rJgw==
X-Received: by 2002:a05:622a:410:b0:4e6:d656:6b43 with SMTP id d75a77b69052e-4e6eace796cmr347240891cf.19.1760486294079;
        Tue, 14 Oct 2025 16:58:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE96qaXb5uTkbzPK2/YtGWA28S5qffv1qJNaU4DZbJaCpEskDMmkXPvSavptOJ6NYZaBoEkfA==
X-Received: by 2002:a05:622a:410:b0:4e6:d656:6b43 with SMTP id d75a77b69052e-4e6eace796cmr347240691cf.19.1760486293660;
        Tue, 14 Oct 2025 16:58:13 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e881c577e6sm8025701cf.7.2025.10.14.16.58.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 16:58:13 -0700 (PDT)
Message-ID: <6b7b6e13-d850-4b7a-8331-6bf8f6aa82d7@redhat.com>
Date: Tue, 14 Oct 2025 19:58:12 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Collin Funk <collin.funk1@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com> <e6af212b-7efa-4f36-b39d-35f3856f657c@redhat.com>
 <87y0pd5duj.fsf@gmail.com>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <87y0pd5duj.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 6:16 PM, Collin Funk wrote:
> Carlos O'Donell <carlos@redhat.com> writes:
> 
>>> My main concern with accepting AI contributions is the current lack
>>> of
>>> legislation and case law in the United States with respect to the
>>> copyright-ability of the output. I also don't trust AI answers much, but
>>> that theoretically could change in the future as technology improves (or
>>> less people blindly trust the output).
>>
>> ... and what about EU contributors?
>>
>> Upstream has to deal with the complex jurisdictional intersection of laws.
>>
>> I recommend simple and easy to follow policy.
> 
> Thanks for mentioning it. I didn't mean to imply that the EU and other
> jurisdictions are not important. I just do not know much about their
> situations.

Sorry, I didn't mean to imply that either!

The question was mostly a rhetorical vehicle to get to my point.

-- 
Cheers,
Carlos.


