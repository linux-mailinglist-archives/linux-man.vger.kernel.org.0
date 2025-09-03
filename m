Return-Path: <linux-man+bounces-3831-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2FBB425AF
	for <lists+linux-man@lfdr.de>; Wed,  3 Sep 2025 17:38:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22E51483248
	for <lists+linux-man@lfdr.de>; Wed,  3 Sep 2025 15:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F5B27464F;
	Wed,  3 Sep 2025 15:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YHb9j0dk"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B93C274659
	for <linux-man@vger.kernel.org>; Wed,  3 Sep 2025 15:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756913860; cv=none; b=CMlUqQlZlKrW0U/RSu9vEsBQPvuoHPWopd9a4ehpJ0a7ADYSfU8ro2Oq4kuXeBwvcm8uzjBdKvErQ2rdbE6MYAdCdO+/itZUDMFPCHU1K5meY1nYeYv+bMPVo5ekLjKvRFvipxAjm/JR+sGjhjxhoddoKdFkg20aKVFfY+aFWb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756913860; c=relaxed/simple;
	bh=jHmIIYmTc3q0JY+iLVrX4+f/UYBlW34Y35Ak/KB9+gk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lNH1XUespTI6oYCkGk3EzWhcdE6LNJbMV8p5/8buRiqReItBgmGKJ/v7+8ThQPCgLD9uJcFgXPIOsu7gMGaXfwmIAZJLyUm+UgHvXM8a4L9A1KFBaMtHEm/mgRkFlBr0FxTyKFmaiDi1CIs7PRoIlQRMmyQl31FcYsifb3lJ8ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YHb9j0dk; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756913857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=zN1V+SAg0YaPJBtmz6A6wtdZySoxHXV8Nkli9gNlyXs=;
	b=YHb9j0dkNnOoRkWqGgDvmSzgPH3d4VKAdxpxZgrednJMkS07dRhhhcpBQAqhfvWL+WmMQ4
	VvII/qomnD7vaNXqiM5+X493RS8t6zkOGGEVX9rV0POLAYp++X0ESiZNCwsmdEe4etFAUT
	SJH6gmzWDAmyyeXruXhharPDp783CJg=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-648-F4PMELOOPqSSqoxAuwtrFQ-1; Wed, 03 Sep 2025 11:37:36 -0400
X-MC-Unique: F4PMELOOPqSSqoxAuwtrFQ-1
X-Mimecast-MFC-AGG-ID: F4PMELOOPqSSqoxAuwtrFQ_1756913855
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-71ff3e1256cso46874226d6.1
        for <linux-man@vger.kernel.org>; Wed, 03 Sep 2025 08:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756913854; x=1757518654;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zN1V+SAg0YaPJBtmz6A6wtdZySoxHXV8Nkli9gNlyXs=;
        b=FxBDP8FbaEIamsFNMVz00mDTV287NW5Seu+732LdzJTdzSwV/Jd763CmdWqxfLRmvs
         9JFQJpz6RftozMJ6dlTS/Y0wyMtcrIiKsKfBpzEbvuHY0H6JnVuXquDY1ubrKJKDROqL
         ViyaxYVGIAUvvW6MIE1N74bYYSVBifiOZl8kxZxZJzX/aT8lzd7O6sbaX87RlOTExyem
         XhZJundjjThqhtvtnrG3TFJGgTjcQcMIYcoUIwsM32bSxVdwyVyqMBiziObgYl75ZKkX
         OnoVSBBAluzfVuCwhGWNBZK0xr8nY9LrnsItSW5FnStcRp+vEe9zznF9s1makguxruQl
         M3GQ==
X-Forwarded-Encrypted: i=1; AJvYcCXn++oJU3ztnwLgJKv7KS+5YvY3trMWhOlywUIZSiUZVZRfKrzzjkL9e3gEXNsUE/I4oGnT40PTCh0=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm8KrZjU8/4D/s3HLAnW1lgQO5XfxtLYSos9yDfwNs/FbmaN1o
	ViuZ9uHgO1IBQiqCct67GPanxqAMgxy6iXctM6lBy4+jF0CDdxhQBAfbPGjIVgUbpkyIO4eMt7j
	kHhdTrKQr2qVv5863g2WQGe8MJyol6th+lWevkGsxkkAJYz4ShIwzXHopfl453RFmUrlqVQ==
X-Gm-Gg: ASbGnctYnKCRaGwOeONUcWNog95y2568qt3VCaaMXJmXfvCTSeQp6Movv3FKQuRybNh
	2KqRKFtVdnfga9aFxysg20INR0VAOnZ/qhmrchSbISaGqsTKGQcsKJpsamJNPYB8TuboxI5OOj3
	9flMJBZoi2X7dryT2cmoC+1DyMHGfjeSmS7PlGMWE6e44zW5DEzc+zblxbzs7T/OrWC0eLDvAUO
	z8xeKxqzOTkmjgF20fDsEUyvZ/LYgzwHjgxBBbc4UOemVB7hy4HEjJMs8f3aWYyT8xZooiNGxAy
	IjfcgpSOwwbzXeG0Gg4dPWu0TEO06JIz1jEONEk7
X-Received: by 2002:a05:6214:493:b0:70d:ff6b:4299 with SMTP id 6a1803df08f44-70fac9656ebmr140044606d6.65.1756913854215;
        Wed, 03 Sep 2025 08:37:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjf9ul1elKHsBIFoVub0sd/ThIV2Wn4Jto8IoYmjN+JPjOnOElQep1JLv20SLPBQHOSievYg==
X-Received: by 2002:a05:6214:493:b0:70d:ff6b:4299 with SMTP id 6a1803df08f44-70fac9656ebmr140044056d6.65.1756913853268;
        Wed, 03 Sep 2025 08:37:33 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-720ada83b25sm30695206d6.27.2025.09.03.08.37.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 08:37:32 -0700 (PDT)
Message-ID: <1131d940-b487-4ce4-8316-533cffbdc173@redhat.com>
Date: Wed, 3 Sep 2025 11:37:31 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
To: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
 <66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com> <87h5xkgrly.fsf@linaro.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <87h5xkgrly.fsf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/2/25 11:08 PM, Thiago Jung Bauermann wrote:
> To be honest, my motivation to write this patch was just to fix the fact
> that SEGV_CPERR was not mentioned. Then I noticed that other constants
> were missing too, and thought it would be easy enough to add them as
> well...

Welcome to the rabbit hole! :-)
  
>>   (a) Adding the constants to C libraries in a conformant way.
>>
>>   (b) Cleaning up the UAPI header to be conforming and work with
>>       the existing C libraries to include it indirectly.
>>
>>   (c) Cleaning up both headers to allow dual inclusion with
>>       additional constants showing up as needed.
>>
>> In summary:
>>
>>   - This patch contains 2 constants that don't work today in a glibc-based
>>     userspace.
>>
>>   - The existing man page documents 1 constants that doesn't work today
>>     with the standard #include <signal.h>.
> 
> As you suggested (thanks!), I sent a patch to the glibc mailing list
> adding the si_codes it's missing to its siginfo-conts.h header:
> 
> https://inbox.sourceware.org/libc-alpha/20250903024151.3030839-1-thiago.bauermann@linaro.org/
> 
> If that one is accepted, hopefully this patch can go in?

Yes, that works for me.

I've reviewed the glibc submission and it needs a change, but I think we
can get v2 or v3 integrated relatively easily.

-- 
Cheers,
Carlos.


