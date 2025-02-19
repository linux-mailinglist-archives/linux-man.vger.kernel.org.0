Return-Path: <linux-man+bounces-2487-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C176DA3BFB8
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 14:21:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FC3016921F
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 13:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3DF1DFE36;
	Wed, 19 Feb 2025 13:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Ad/X6fuK"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E981C84A9
	for <linux-man@vger.kernel.org>; Wed, 19 Feb 2025 13:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739971256; cv=none; b=ClwjG0AD+qkutFjljxpYwnABbXWqGqSkMCXI8xIJegQz/5m5u/pbhG+dXivL4FjB4VCzYb6GE/5/zbG2I9pLjAxcTL9SN10O6HbXqLaAL2iefJSK++kPfso/IllvLqgCqbsOXBjue4KiUzNX9h6GMBBlem3X+RdxwPWLMOT1sqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739971256; c=relaxed/simple;
	bh=+yNAqpYQ4d0MlUf8SkjgilgaY0lCPx5I7N7cmFcjXUc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=raMFaz9Uua7CZ0KAbX/b6+6ew9pO8l2cENEOqCg/kBM2cfwUFxuZmmyziOvsf90hdTTKUjqBZG4QPc5HmPzCmfk/hrGumlirt96ecwTXCPA3RfVjL7CaKosyEjqt3/8u68P3V/z13ZD8Akz/2R9DkLzFFaYjea8mHzGAK39ecIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Ad/X6fuK; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739971253;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=ysXlwI2+fagyn3ETPyTiYGmKI6RqKf8kUf1FPIuoMT8=;
	b=Ad/X6fuKpAR8XgypXUHZBWwJGNLpxsE4H9bLwREtxZuDyTSsx+al6qQL6TIa4JKzi7lsTR
	wMNw98wV1JaJNwlHh5Vpgnz5O1Lxlc0NVMl2C66+ThPnU0HzHiY+58sp9TL5Bb0TolD2Sq
	xcBXWwOHKctTeoUeAEI6N6EHkHgtQXc=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-352-hQLP931gNLaNVL_t_JXcsQ-1; Wed, 19 Feb 2025 08:20:52 -0500
X-MC-Unique: hQLP931gNLaNVL_t_JXcsQ-1
X-Mimecast-MFC-AGG-ID: hQLP931gNLaNVL_t_JXcsQ_1739971252
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5fc1dc3a433so5032024eaf.0
        for <linux-man@vger.kernel.org>; Wed, 19 Feb 2025 05:20:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739971251; x=1740576051;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ysXlwI2+fagyn3ETPyTiYGmKI6RqKf8kUf1FPIuoMT8=;
        b=RbUydFcRknpaEFIcAb5F5ArTYueMhH1KbWAPJXkOtEY3h7M9X6+BiQGh8Xc498p7tS
         uGuhqR5moStnmbFaj5z2+ADjPW87Nf4AQwdzt8v2ce0WEiOQsfkPp7IUbldUkj42eK4u
         dldHV14m1c06LzRPNQ7e95OhlbTMuOIlfJlGDHSHdU9q8g4XB00z4PzpVmDljVHbqkgm
         n+1P1V+1otHnoHAqHZM2yVafCeWf7i7QslZFvIgtZVXNvpfoQQtafVyW/Z+biaFKS3/9
         2vAilKQW9KKFwAVt2TeDO9L6R9jT7wK+fOHYSv86mLZGHHf8D1Wg2uWcDhrpyTIlpnyB
         xRuA==
X-Forwarded-Encrypted: i=1; AJvYcCUcIrgjU2Jy9X5auyY9nUV86WOiYJxemjPU9Vc2mftez/kt7IlkPoJwnTK9aBjdBgk+w05c7A8CLes=@vger.kernel.org
X-Gm-Message-State: AOJu0YyGj/WvWHqSaZbKHNa69TfptHL5fS+z03lNKl8QbvEUjcdcY18i
	FpQnh/129g22R8ApBqo+mzfi8JiV9ihGyjNxSL7YGJhfcyJCbSVKSbLbIenKNvBxcNu8LWamp6c
	DewDqnV7SRzjzyw8dbiV1Vzhu5TvxLzEo4aOqT2t+zw5VIS4zWgcLP78nmseHTFu4NQ==
X-Gm-Gg: ASbGncuGcLvPQy90MEHfK7jFCzWCQXigYpzrVzoyjUvz5VtYyN+OsLwp9CwqHIsXW5V
	OlhNc9Ovzlcv2wzwvTj6IcGG8CfUUo6v05ruNu//i7QDSsEsznSzule+yDflSSa4FAFY8a5AGYI
	IPKpmAQf/gdA5Ki4mB9vFrXSWFYXqmoiv3qjYefnQzP210s2HFK3ZZL2Bkb+s1QIwNq9Mwqfawc
	BKiUkjXtOhRie7CeGSPH3zG29APsp94wVNv0jQOXaV6rILgTqL+OBhVVj3hHTaUw5wQ42HgFA94
	CoDQqA==
X-Received: by 2002:a05:6820:1b86:b0:5fd:82c:1d5 with SMTP id 006d021491bc7-5fd082c0226mr267333eaf.8.1739971251617;
        Wed, 19 Feb 2025 05:20:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFoBNKjpfBe09f65E4DGjd1fsHcsU1iFVQAPJbS/I36suUd4S/hPKhLT22A6Q4A2jNdutPbgA==
X-Received: by 2002:a05:6820:1b86:b0:5fd:82c:1d5 with SMTP id 006d021491bc7-5fd082c0226mr267319eaf.8.1739971251383;
        Wed, 19 Feb 2025 05:20:51 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fd01443e06sm330261eaf.17.2025.02.19.05.20.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2025 05:20:50 -0800 (PST)
Message-ID: <9f1cf755-d99d-45dc-b171-d3b2232a2146@redhat.com>
Date: Wed, 19 Feb 2025 08:20:49 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
To: Alejandro Colomar <alx@kernel.org>
Cc: Askar Safin <safinaskar@zohomail.com>, linux-man@vger.kernel.org
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-3-safinaskar@zohomail.com>
 <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>
 <gqpxaoxm3vhe67i3pqa3erbsmovf2i6y5nb7djnqanatfof2ic@2ehts6pa5axu>
 <124fdcc1-6380-49d4-b25d-13046a4693b9@redhat.com>
 <pgfwvmgg2w3ys6tnd7z6jo6tkhud4ndbtnplajwazyope7d4uq@ckgwqx5c4jvu>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <pgfwvmgg2w3ys6tnd7z6jo6tkhud4ndbtnplajwazyope7d4uq@ckgwqx5c4jvu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/19/25 2:59 AM, Alejandro Colomar wrote:
> On Tue, Feb 18, 2025 at 09:30:00PM -0500, Carlos O'Donell wrote:
>> On 2/18/25 6:48 PM, Alejandro Colomar wrote:
>>> On Tue, Feb 18, 2025 at 06:33:26PM -0500, Carlos O'Donell wrote:
>>>> On 2/17/25 11:51 AM, Askar Safin wrote:
>>>>> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
>>>>
>>>> LGTM.
>>>>
>>>> Reviewed-by: Carlos O'Donell <carlos@redhat.com>
>>>
>>> Hi Carlos,
>>>
>>> Thanks!  Does this apply to the entire patch set, or to this patch only?
>>
>> Only to this patch.
>>
>> I'll provide Reviewed-by's for individual patches in a series as I make it
>> through review of a given series.
>>
>> Does that answer your question?
> 
> Yep.  Since this was a trivial typo I expected you'd only give the RB to
> the other one, and I hadn't yet received the other mail.  So I was
> wondering if you accidentally replied to the wrong email.  Sorry for the
> confusion.  :)

No worries.

I use RB even for trivial stuff, it's simple enough and crosses the item off
my todo list that way.

I could probably filter on Subject with "tfix" though.

-- 
Cheers,
Carlos.


