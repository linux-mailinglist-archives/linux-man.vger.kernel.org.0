Return-Path: <linux-man+bounces-3030-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 433A2AC4EB0
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C97E0179C8A
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C1926563B;
	Tue, 27 May 2025 12:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ExqeKiBP"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DFC1EEA3C
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748348953; cv=none; b=VBIcnBBtP3GzyyJ+C4xemtzgGUK2ta3Ad1s7ZxEfgMzo9exnAS5D3PSS7xO8xM2T9lzwcXCFQpmPu9tnQF++QUQk0rvYOfyldL9RUzoNupzOqjpP+1mD/uI7dTuEeUtQ+RzpMdksHpt5hDUR6Dotm6Au9faIPItJoUdx/uW6/e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748348953; c=relaxed/simple;
	bh=uyH+1C4Y8LLJjI7h7x7i7Aiy9DcklOUtgYo+SLd0B9I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OvhgBkMO8lbqY8f3sEKo7fYzCZ2Mv7saY/jkHFI4tc7UVQzfkw2P1gSGuOryIGEPeuPJ5qG/PKYahc+FieS74R755eVWiEPK8QS0wR4X1JoJgcOmgqtjv+jWy7VnFWvP/BPczhHHpMVIHuPRaroaxnQjpTHnLmIp7uYoFwEoVOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ExqeKiBP; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748348947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=/LyLVC5N9gNFUwkpsYpuzLPF5fFPo65F6ZVYY6s6bwU=;
	b=ExqeKiBP4yy6hPSBhGohpTH6tElHEES8UkubNqm1hkzl3gVOYoRHIumgCl9EsGKSs1s6DG
	/jmE8JkLfou1x7jWR0x7FgtLRNz7a+BhLhSWQQnWL9iBqhsAngzETwaltV8MADUGED7yFo
	feQeUWVn+Fzq0TfYLIXysybf9FxPySw=
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com
 [209.85.222.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-665-qyRCUNEEO4aQs-qd3tQu9g-1; Tue, 27 May 2025 08:29:06 -0400
X-MC-Unique: qyRCUNEEO4aQs-qd3tQu9g-1
X-Mimecast-MFC-AGG-ID: qyRCUNEEO4aQs-qd3tQu9g_1748348946
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-875ba574183so3324101241.1
        for <linux-man@vger.kernel.org>; Tue, 27 May 2025 05:29:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748348945; x=1748953745;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/LyLVC5N9gNFUwkpsYpuzLPF5fFPo65F6ZVYY6s6bwU=;
        b=fQl4TP+rXAj0nWIlHIU83ZC2OdjdqH8G7GO/cDTfPHNHuPeMa9g5vQbyKw6suDnFc+
         r523PvGJOD1h0kCpui4psKCbmRoL+8RDiGzStic3CrXv0SV7Kz0yIOdaHBMSSu2WF3EA
         otX5SjaMYyvyXeobPv5oJymQgAXpfUrvF2NbMKwzxERF7rxq9NMGLEprxYjju16FzvYW
         IDDnBeaC75PVSRKJ+33BvIMOJo0+Wj3TuJUE21HB0d5PbsNpiBN+i9d9hY9L9kHRrBL8
         U6I06D/ejMmAZnHcqgcPyd0PoMUoukwn8zZS22i01geVNQ+xeDijs4SP9de+uMh0UuBg
         CPfw==
X-Forwarded-Encrypted: i=1; AJvYcCW6kYAEBZGu/1/ro93MXuiVLYIeq3FD2EoLO6upC6IYgYneD1yO8vrvdKcS7XWuoVCJUd1Fb+zX3C0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+ggycra7DeryINxQu38xeLqIfM++ipAAcGyHA3aj8P+c/Dvc3
	QsoxypRdDfBci/y17s2vcjC4pFVOmDaOA/44dW0kMfkf2xEr3l+6eF+T3FXnN1G8HKHN6CT+64P
	Xe8BpP5lqzw6MM3W6W/fc4J7GGHu56oVXsbelfMuhmn0eBX7Rjwc/p7rlmw9VQ9zgr7O8xQ==
X-Gm-Gg: ASbGncu2hFOEfhmuGR9knAbUlF5G+7sWOVR1swbUE5Dnx9CXPCU1q3TEw+Q7sYR54my
	cxraZy3HTfeotaqMWdmeIrH0Aoe+Y5wlpEQ9T9IQ10R8BsTA+W4f1C1LTFpDje0b//P8AybAfov
	+4YuDojOiXWsLliYQBkIPO7cbFOJ1bUCLDUqQiGbDmK8f/mInu32SP0bUXJyBB5BwwMbmKi0m97
	nC9d8/Nye93C0AnLnQndctYUV2d7ayHZGiMzhJKAX9wMTu45OjyKOOJf14dKU+KhXF2aNNyHCmf
	zbvneNsBOeOY
X-Received: by 2002:a05:6122:46a3:b0:50d:39aa:7881 with SMTP id 71dfb90a1353d-5305fb4f7b9mr343260e0c.0.1748348945310;
        Tue, 27 May 2025 05:29:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0OoB6+l3gHkiwRt8ko08Hym4vVDnFa+b2GsMrnuK8rlNlEvWxztOqziBXJv3GF2ATX+vkpg==
X-Received: by 2002:a05:622a:2b47:b0:494:6eac:f74c with SMTP id d75a77b69052e-4a2f5191ecdmr6450351cf.4.1748348934176;
        Tue, 27 May 2025 05:28:54 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-494ae3f9244sm168825141cf.29.2025.05.27.05.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 05:28:53 -0700 (PDT)
Message-ID: <86cad8e3-b88d-4e46-8ff1-c531f9ae9ac1@redhat.com>
Date: Tue, 27 May 2025 08:28:53 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
To: =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <20250527115303.3304206e@inria.fr>
 <8b77ea67-2662-411a-83c8-e0e23755244f@redhat.com>
 <20250527142118.05d15dd9@inria.fr>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <20250527142118.05d15dd9@inria.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/27/25 8:21 AM, Jₑₙₛ Gustedt wrote:
> Hello Carlos,
> 
> On Tue, 27 May 2025 07:30:09 -0400, Carlos O'Donell wrote:
> 
>>> This has several issues, the most severe beeing the word
>>> `FUTEX_WAIT`.
>>>
>>> - How can an operation that only does wakes, ever be equivalent to a
>>>     wait?
>>
>> My opinion is that the text is correct.
>>
>> The operation can WAKE tasks.
>>
>> The operation can also cause tasks to WAIT in a *different* queue.
> 
> No, it can make *other* threads wait in a different queue. The
> `FUTEX_WAIT` call is to put the current thread on wait. So calling
> this equivalent is really far fetched.

Sorry, I'm not sure what you're saying "No" to in this case.

I wrote that it can cause tasks to wait in a different queue, but you
wrote threads. Threads are really a userspace construct, while the
Linux kernel is really only aware tasks that have properties, so I
tend to call them tasks when speaking about the kernel tasks.

The text in question is parenthetical, and is correct for a val==0
API call, where zero waiters are woken, but for which up to val2
waiters are "moved" (atomic WAKE/WAIT into uaddr2).

While you call it "far fetched" is a parenthetical side comment
that is correct for the odd corner case of val==0?

-- 
Cheers,
Carlos.


