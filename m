Return-Path: <linux-man+bounces-4729-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3D8D03D16
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 16:26:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D1E2C3031970
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 15:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD9A42A83E;
	Thu,  8 Jan 2026 11:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OgyI1usz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CA142849B
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 11:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767873212; cv=none; b=mPNdbzSnhONhXUUFSxPVe+NrAvW3wNFv8jxXUA9NUFFcFRHJJSteb4nAvPP3jLoebFSg+rE4tKcJtz7HOVid+RdzsvSnfcZAx5MzoQ7JdCJGaECjVZscnqZeYMjHyGOHk7cdtVFccYSOgfh1EqNVjzwciVTVQKBfSCN3e+oaf5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767873212; c=relaxed/simple;
	bh=+3SpuQRiyOvaMf/AA/6zXuvqy3MfZy0wi7Eqflq+W1s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=okUPtgQjdiYmaTI9zPio8kMNb7HjL6/ISGtpLcS6fzjrfbIZxxHScvQ9obRtOfmWTOAexqYBUsMTMjof6fo8TCPDnYw46BFYeV2EU3sRQ+oDSBKW1KS6FycU3hkZBFrlWQUrSkFnemVABiJIcU3qJp8hbO+FPhUrEPV5QM6F83o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OgyI1usz; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-94124140e02so1898939241.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 03:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767873208; x=1768478008; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=djXU/CUxBanc65wtD5NRBIdv5NxzavIreg6lhg5xG8w=;
        b=OgyI1uszNYEmD/Wi2hzWYZeL0nNIxMKGNngj6hWQ+ZxFteWLKcGTiti3DTqAkc2qkm
         dljhunyAMTZRM6hkumkC9QX/ryfWAOUx4XDBzO9NBiTqrc0CBmhq6xlZTFVVT3bT9sZz
         rEx3Yy7jiqxTShjL/8OtJOj2gVuHoqaSTfAK7DXgThY5KvRq9JkZvsdwPZxGY5pI1RFO
         f82y7PC8y0zCwR5tujMmyIeP3yoSXxgm1wwITZlE1B+576Fu87PQOzTczhkgwyfzcn4v
         7wRLS8vXb/LoNhQ4rKvZ783RKwX7S7m/Mlh73PAaunEK54rbVoWPUXwKfVBy6Yi+bAoH
         x2rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767873208; x=1768478008;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=djXU/CUxBanc65wtD5NRBIdv5NxzavIreg6lhg5xG8w=;
        b=wC6z1xCRXzHt990D2hNoRlRYAkdogJSettVluk8m0Jek1hfXL1ZomNNNOcqi0P5PUY
         Mvy/bUpH98IWgbHhUME/XRDbPP6Igf54GgXRy3WacuyLLcy/43vxQtZ2FsjOo4uwXEL9
         Sdh9C9HUX7ywrgcmBIb1cCz/3MQyMREGLtrlINAbXXIFZKG5aQ+Q+D4HH3XkBaP6E+iq
         9iSLOMVtcWic0qDtfzrIbc7vBvbhm5ixEVyl0e71ije9JnzG6/ZXcZszSgFabVa9WpZd
         18HKwZtrK1Ut9W7FG3XdEuGjwUyucEQvrKwR9dwuV3AyD57LCkFn4ez+6JDfAMgkkM2e
         IGjg==
X-Forwarded-Encrypted: i=1; AJvYcCX5bxxNWuWQXntHIX4sed+JkuuIb2Hc6Xjz4PRHj18UVMpVjvWY9YRxKlPBQWlQLdwzKgc0gdo48qU=@vger.kernel.org
X-Gm-Message-State: AOJu0YwcN6eccUhESlU+pSUgXPYb31ffIvIggwaUceE40Y7J3A5pzJsw
	/BvCMXOYTJYUGFZ25VUi90Lhf4mlLSpffhrye5QuCLXk4CTzi0OcrOFbjUEclzDMMfw=
X-Gm-Gg: AY/fxX5Oxl8AeEgT0H2bElIAHcYnulremUXXKkpcd4gO+Z8EaoqQzhVWHQzV1AJ9tHA
	6DUxKRr6Bz91RT8lEAW9jbWwtPXWXJAehOqWWqmSHA9moew9/j9cTzE5JVNtztiTxFe35Ect2So
	KkfQN+X/UcY2AvKxtTyk88rOc5mrIwXjp5o65osEYnFu2jlmT+Z0wNGUxrfsXUQZ8Kw6zE1ZMuA
	K/1nDDJjt/yXfShQl8HVrXVHGKi99vJzkVtIufnwPod3MB4SXJA3eujiqTMBC0cZfqfGb743D74
	AzpkKKxAkkbvdYYJvck9WDfnJXGe9dApGSRFzJR7+9j6ES/7LgQPnzMNyi7lCBGJNWIhcADt/Mp
	PXBinKmAq9v3WQLZdJDT37bFDzGQDNaLd4F795DuE2e3fA6EPYIC/xRUo0RJ1Wpvm91lcj+Zv6/
	dYShYOCT3kZjkBmPdoF9aomsoa6+C+vaIAcbY9AEyWnxTw2LskvCaXyO278SkLRjGN+eEuxKZXt
	Z1dFQ==
X-Google-Smtp-Source: AGHT+IEbJIFRbj41YZ/0D481FVMBEaxCbbrYbmNyEmAC/Ng97KPPCni97nrZ/iAzDbkD4phXpayCvw==
X-Received: by 2002:a05:6102:b05:b0:5de:6dc:22c3 with SMTP id ada2fe7eead31-5ecb6922c7cmr2265538137.42.1767873208430;
        Thu, 08 Jan 2026 03:53:28 -0800 (PST)
Received: from [192.168.15.73] (201-92-186-40.dsl.telesp.net.br. [201.92.186.40])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124a34acsm5577079241.10.2026.01.08.03.53.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 03:53:27 -0800 (PST)
Message-ID: <7327a6c0-3102-441b-b689-4ecf068a5bbc@linaro.org>
Date: Thu, 8 Jan 2026 08:53:23 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [musl] Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the
 traditional realloc(3) specification
To: musl@lists.openwall.com, Florian Weimer <fweimer@redhat.com>,
 Alejandro Colomar <une+c@alejandro-colomar.es>
Cc: David Svoboda <svoboda@cert.org>, Robert Seacord <rcseacord@gmail.com>,
 "sc22wg14@open-std. org" <sc22wg14@open-std.org>,
 Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 Paul Eggert <eggert@cs.ucla.edu>
References: <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV4N-0egpfxhmnta@devuan>
 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <lhuqzs1uy7s.fsf@oldenburg.str.redhat.com> <aV6_UHBxHrOsL3qD@devuan>
 <lhuldi8pd2p.fsf@oldenburg.str.redhat.com>
Content-Language: en-US
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <lhuldi8pd2p.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 08/01/26 08:18, Florian Weimer wrote:
> * Alejandro Colomar:
> 
>> Hi Florian, David,
>>
>> On Wed, Jan 07, 2026 at 06:30:47PM +0100, Florian Weimer wrote:
>>> * David Svoboda:
>>>
>>>> WRT this text:
>>>>
>>>>         Code written for platforms returning a null pointer can be
>>>>       migrated to platforms returning non-null, without significant
>>>>       issues.
>>>>
>>>> I am very skeptical that this is indeed true. But to be precise, this
>>>> is Glibc's problem rather than WG14's.  If they are willing to change
>>>> glibc to return non-null on realloc(0), then I am willing to agree to
>>>> this change in ISO C.
>>
>> A major implementation, gnulib, has done the switch in 2024 after this
>> proposal.  No regressions are known.  We would have certainly noticed
>> if something important had happened.
> 
> gnulib is a sub-settable copylib, so it only affects gnulib-using
> applications that end up copying the relevant realloc implementation
> from gnulib (there are at least two).  This is a relatively small set of
> applications, and they typically run only for a limited time.
> 
> It's not that users update systems to a newer gnulib and applications
> switch to a different realloc implementation.  It's a very incremental
> roll-out.
> 
>>> Someone needs to take responsibility.
>>
>> What do you mean exactly by this?
> 
> It was suggested that WG14 can just make the change and ignore its
> consequences for glibc and other implementations.  For glibc, we could
> also make the change and tell our users to deal with the breakage.  I
> don't think this is a good approach.
> 
>> You could do some more, but with the resources we have, this should be
>> quite convincing.
> 
> I don't feel comfortable changing glibc based on the data we have so
> far.

I tend to agree, we may try to change using compat symbols but it would
add extra complications on malloc interposes.  

