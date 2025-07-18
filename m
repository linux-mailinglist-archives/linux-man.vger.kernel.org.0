Return-Path: <linux-man+bounces-3282-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 06739B0A45D
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 14:43:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69ECC1C44133
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 12:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97702DAFCC;
	Fri, 18 Jul 2025 12:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GXYdBjv+"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A32D2DA76B
	for <linux-man@vger.kernel.org>; Fri, 18 Jul 2025 12:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752842613; cv=none; b=hPyOCUgKfqweO6SOlzo9FIMvZdFqZz9PdhZbVfrUEVU2Akh0555un1EmP5giFkjxQGmiBwiLVm/CSwxPFOg9wu1A5CrntU/895f6Tl9OsCfPjUoOKsEZuPU1Igfon14KW2mlwbTh8NKeqRNRU3C71pRAk+UdO37zLL/2+6/2y4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752842613; c=relaxed/simple;
	bh=9edd42NeAK/RGhcm1FuHLaSA4FlZSR4DJVR2I5moNs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CmZ1DTVNJoNusSea02Xs4Xa+xs5UkukdxlxT2nJub7HPEqMyI4qAUoXm7mUW+/4fkDvqeFYrVuXrGYbFxVIBlTvCcnM189oCaFnlJAEGQ5CRov2a+/RQVXc620iv2JXCC7IpZQaWvpDvxmdMYWgz//MVI25BG94QviMIHC75UC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GXYdBjv+; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752842610;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=AtLEVKv1gwsG5SWBI2AUJfLjb2IhTB70jfVWK3/RGY0=;
	b=GXYdBjv+H8IFuEgCrZS4NWQ56Rh0FIRPbmRHwjGQtrz2pskeCfRQ08escAuRmNIBQinJ8W
	yxynY/7tXtto9aYmQNU9pk3CmmHreXFX2CK/cXMNFxccx76UtMyWp/8qeYsfwgQlSIp/k8
	wkUtPM+GnwxOH4yE9mU4Dq9oEtNEAWE=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-651-LuA7kwALNpOecYk22wFBtw-1; Fri, 18 Jul 2025 08:43:29 -0400
X-MC-Unique: LuA7kwALNpOecYk22wFBtw-1
X-Mimecast-MFC-AGG-ID: LuA7kwALNpOecYk22wFBtw_1752842608
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5cd0f8961so379580785a.1
        for <linux-man@vger.kernel.org>; Fri, 18 Jul 2025 05:43:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752842608; x=1753447408;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AtLEVKv1gwsG5SWBI2AUJfLjb2IhTB70jfVWK3/RGY0=;
        b=msTan8x+hLT1xo8wIUNvLP1YrjVq9knPte7LrynubBvoLaGP6/q503kC0hkHS1U/4R
         d+TnolynHaeyvEGGEpxKMCCrKZkSoxD4VY4+6JFwSYh6IRL3okk3oTj+jbEzt91WCTU7
         3pUIr6w7ON7JMWvukE0H51zpjD9qrTxtjpAUCyq0fFGO9ajL0b93VwlDrxCkyGcncjyb
         mlHS1jTbyzLfikOb6QeJ9TSuy6XPYPoJmNwnLpZG3ZTynDCBzkx+jQUdeWpNXMwNNuEb
         LcdvgBnr5d4ib8n27iBINwH8qD4+Wy38VXMegOnsWoSHW9begwly6c/3LLq5vjoUrOwY
         ic5A==
X-Forwarded-Encrypted: i=1; AJvYcCUvpbPrSIFNHKt4HxluvBMmL6mD943zmpJ0goqEysgL4k4jl75/20kZBqsSjQj/JBnOWptugpVc7Rs=@vger.kernel.org
X-Gm-Message-State: AOJu0YypVozft5JfR6dNfC4Hu43XZ/f4E4QCM1KS4Aj9Xfls5gFf2Jsx
	jtAlIXTyFK/ea++jPap+HwGWAXItBxSLp1VotRuYhGzGaHQoiqkrB02vrx+GvBvSrZ2E31jQnX3
	go7T53Tl+50+gCGZ39yMej2pS8ePloUCC3CHjQZuXsKjGThXUbLbGX/WAmGRG9g==
X-Gm-Gg: ASbGncsaRpjXmveMzelqHIilJIV8wmHJnZeYotWgovZE3wEygQTjEb3ULwWe8tjD7TC
	Bh12cRVoI+rJCxWR5vkAES7tb2GHgYi5SjUv2JoBNDFqXSaIW6LdYPP5QJDB63HMBJ1mFeI8soO
	KHOidtA49OYTS8tS5DTxm2+lbazn7n6pHffEhwLgosfG44LJD7MiYiu5g9p4jiVGYzFY2g3J5u2
	QhHAy01EjSCsuQ//3ax5xpuEu5ZpiXL7lJJcoNUyjV+4ZNtLg49Ulk8gMm+jZVCQvBfP5bZnyAN
	+Af0F9qXeaDxaPha4M+44kOmbD2TzGeyP37+MWPO
X-Received: by 2002:a05:6214:2e86:b0:705:270c:29f9 with SMTP id 6a1803df08f44-705270c2ae5mr2330586d6.35.1752842608539;
        Fri, 18 Jul 2025 05:43:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSfJRC9oD1mR3KqMiF0jbLbeuaZSzWX6zYqTzBwENRga3mh94fMv9ygBpF3GF2vWaXreCVjw==
X-Received: by 2002:a05:6214:2e86:b0:705:270c:29f9 with SMTP id 6a1803df08f44-705270c2ae5mr2330316d6.35.1752842608153;
        Fri, 18 Jul 2025 05:43:28 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7051b8bc17fsm6973726d6.13.2025.07.18.05.43.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 05:43:27 -0700 (PDT)
Message-ID: <e12d5818-a741-4523-a9b4-a1a637f04f78@redhat.com>
Date: Fri, 18 Jul 2025 08:43:24 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: AW: drop ia64 from man pages?
To: Walter Harms <wharms@bfs.de>, Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: enh <enh@google.com>, Alejandro Colomar <alx@kernel.org>,
 linux-man <linux-man@vger.kernel.org>
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
 <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
 <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
 <CACGkJdtNPkL3+nJmCNStv1mnDGERvzwfL0RH8xH6ocK_Jp90YQ@mail.gmail.com>
 <1d5c8ce8-9ba0-4e3b-9866-95047741d5d2@redhat.com>
 <8d01afa4fa094d0a9cd0d2d74e5c7325@bfs.de>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <8d01afa4fa094d0a9cd0d2d74e5c7325@bfs.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/18/25 8:18 AM, Walter Harms wrote:
>> What makes a valid variant though?
>> There is no upstream supported glibc older than 2.32.
>> There is no upstream supported Linux older than 5.4 (LTS).
> 
> Maybe, i am using a LOT of embedded Systems and they are using sometimes
> really old stuff. So sometimes i am thankfull for information about older variants.

There is always a matching version of the man-pages that is
the same age as the sources you're working with... and so
documents the conditions under which the software was
developed?

> reminder: man pages are not for server stuff only.

Absolutely agreed. Wherever you can cram a Linux kernel and
userspace :-)

> Same goes for older programms, you can only understand when you have the old documentation.

This supports Elliot's comment that you can use the older versions
of the man-pages releases for these?

> So as long as IA64 is in use, there is a chance some need that info.

That information is not being removed from the git history or the
available releases.

e.g. git checkout man-pages-1.70

There are tags going back to 2004.

And very old archives:

https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/Archive/

-- 
Cheers,
Carlos.


