Return-Path: <linux-man+bounces-1638-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 262F495A405
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 19:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A35E3B2100B
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 17:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F9B21B252D;
	Wed, 21 Aug 2024 17:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qvK1tY8l"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2E814E2CB
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 17:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724261970; cv=none; b=uQJKaezbgTLoEP0InQbwYQp+g5haN8FexID+hme+tMfKh7Pu3H5a41Bu8+9d2xPmqt8Uhgr5u/HtGse0ExQ77Ob1fCnWoROcECMHyEB/d4voNJYFP2spZVDI8O2aSNq1qRI35AJYM32mbgEILS34rU8wU2gdrmjd6WkS47/sAlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724261970; c=relaxed/simple;
	bh=5q/H08jdlDyrWSsU07xQgRibwm6mgvADtK/SrivAwEU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=lZEw06/3rifo1Z1Kxn0KMyLkMCs0SDdddVc8+2x26tfzZKeVfuTkJp8JfpmQnxDmFRH4ZD+ec0A50zgSfILrSHDQT3lM1xzw5atN4AEPWh4fWujdf3fQGZPTuhzjmqi6VOgc30k+KGLfwRJa2SsGv+FwVud+YLG/m/OGkZCHNIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qvK1tY8l; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2d3da054f7cso4376240a91.1
        for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 10:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724261968; x=1724866768; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=z9f1Ykkp98luqBaID0zfDWRdfVvyQ5Zf9nSQIrB6Vnk=;
        b=qvK1tY8lC5BNv7y69OhPINzuoXbKK3Kneku9At5pHnsJA4o3UxUDDZY5k+z9D3bFIV
         vxnWPuYDjDpy7/DuQgPvdfRoLm8zy2YmgYWo3xkuNkrx6nCvS6kHzcNn77Gsehw8WFm6
         zQtchIU01aV1xd2jIzF2RHv+uEJEzinqdKOUIqvLjdjSaydhIt6HLL1BA2gw4ZAvCe6y
         yz/DRN+0x8axqO8667/YnzfSJwgvnH5t0xMqhlEFZwQu9k30D7WBUEfhnc/L6HqjtwRc
         6r4+VdUyAgc/Ya0enqxLXRqRIJmz/RsrBuSJTAspLW35padPiY6jAx2s74JDR+Pet5xU
         QQWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724261968; x=1724866768;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z9f1Ykkp98luqBaID0zfDWRdfVvyQ5Zf9nSQIrB6Vnk=;
        b=wGZ9znaBrfOg/A1cXkZbZWalskoBmObIWaTI3J/kx5pykU23N/prnk7kWYoSk+XTcG
         X2x4rAPgrs/GJC5UzedxY/nq20Wy1ObbotIOS2IzrpeCAp6WhTqCto+B/6Qxa4h0jtXS
         FWfkB8HQtIgkvxOkAz5i2sDJk6FzJTP/WwPnsx+gOn/oYo31SJo2vfr7Q2Bf4Kjsea+5
         3+4W5FcqRPtFHqhhWBEn3gBkQWrqLlJUjvizUPIcVETAGCu5AV6t/YJbEPx0F6dUr5vZ
         Xt/auihJtW/tEHzbE/lstDKfKnZFSg5mil2cr+/G03Qhn4PVqFRQPH/oVIFwokKdrIwd
         1f3g==
X-Forwarded-Encrypted: i=1; AJvYcCXWHzIMG8cN43B/q3jW0sOPeLy3Zq8CgHjHoVLTjDnbeEzhNCNpUEg2LQPoE5R+eRwDI59fkM0DyF0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzDjgWYrIw6g1z9lkhi52sprBjrkgyrTK0ErHU9kO1sOlaGg+ju
	JQ2/BEHdruDnWP28HL8f25LNn3ONsOoYOvnws2WpZopTGl03htOr0Bh2bLd62/Z3Z8g/cpWNgLu
	P
X-Google-Smtp-Source: AGHT+IEoYXY3iT47KpY+7bf9+aCXAA/s6Ntxt7UMiDpkKAeVVmyws91UlEBGVC4OBBk+t+4aI2Ifgw==
X-Received: by 2002:a17:90b:3c8b:b0:2d3:c5f1:d0d9 with SMTP id 98e67ed59e1d1-2d5e9b84c87mr3497752a91.25.1724261968027;
        Wed, 21 Aug 2024 10:39:28 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c2:d053:3878:74ef:f4ac:ffb9? ([2804:1b3:a7c2:d053:3878:74ef:f4ac:ffb9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d5ebbb05a3sm2139854a91.42.2024.08.21.10.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 10:39:27 -0700 (PDT)
Message-ID: <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
Date: Wed, 21 Aug 2024 14:39:25 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: arch_prctl()
To: enh <enh@google.com>, libc-alpha <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
Content-Language: en-US
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21/08/24 14:02, enh wrote:
> i see glibc has a _symbol_ for arch_prctl(), but there's nothing in
> the headers? a variety of projects seem to `extern` it themselves so
> they can use the glibc symbol, even though the man page denies that it
> exists and suggests you use syscall() instead.
> 
> is this half-existence deliberate, or should it be fixed one way or
> the other (adding the header declaration or removing the symbol)?
> 
> i notice musl is the same, but i assume that's just for glibc
> compatibility rather than an actual decision on their part.
> 
> before i copy the same oddity in bionic for
> https://blog.chromium.org/2024/06/building-faster-smarter-chromebook.html
> i thought i'd at least _ask_ :-)
> 

It seems to be a overlook from when it was originally added (a47fd6810cb).
I think we should add a x86 sys/prctl.h with the definition.

