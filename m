Return-Path: <linux-man+bounces-832-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C208E8B4566
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 11:41:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DDCBDB21C75
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 09:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75DF94644E;
	Sat, 27 Apr 2024 09:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AZMFnkm2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D48346424
	for <linux-man@vger.kernel.org>; Sat, 27 Apr 2024 09:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714210899; cv=none; b=qh9C3i348FCQ6qzJWvMUEEiQYg8x94TrzmKIL+miGPI79FPmpio+PFC04/QhysKuskErJVQFl4XzyHc/Ix3SIKyNZtAsIdCZ5+5r1n/ssJNMB1Qr+2RtJY7MTFbolW3OiT+9xMIQLYPK2wwGGC7K8mQIJ7vz/14qjTjLfZ1Dtl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714210899; c=relaxed/simple;
	bh=SOJeuEL07IU7oUf8ZF5GjFlVb/3yoIzo+31J9WM6qJU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=sjl1PPHFgXQx8+VHtH2ZiS5Vwn5YmiaaiIGigaSpZR9fWig4ngVbIqO9IT7ZOfzS00FFMiuomljaG2SOU4AMbN5HDjlNSk0zcZWMte99iMt46OxeF/hv4ciWilQBOsAvxwIHoDHKZWnc2ZX7gL6B79xBkwYGZuQ2HgCLIdyIRIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AZMFnkm2; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6f28bb6d747so2629074b3a.3
        for <linux-man@vger.kernel.org>; Sat, 27 Apr 2024 02:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714210897; x=1714815697; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pkrAbXjF5+gAK78lOUwuC1XsS89D6RASw9iF8TU3fqo=;
        b=AZMFnkm2J2BUVU81ePMeFXUdEm4K/YmoaIVSzxEGDx8SNjkz4ycajapcHqap0iZy2/
         ENC3Icg7c37wQpWp/NRh81RrecmBF6Uum5E4jSRY1FVec0k+YvOBAgaw9mR2msvQdw7v
         1U7zvDb+gNyXHkdtORtmit/jEV3hToLRR+uj6LaCiCYHeRy+UgojP5nzA+7tShHTgr2o
         BHFwywM6Bl0ZvnwOEebMLbhq3QXmEofg1sAu8JORLZ29f/xoZlxOnh2jBvaiE4dqG0b0
         L76DrP6p/eswYszlFKo0RfjGvNSoE4Ze2MRbZgaQImbnHcRCApxqI1ZCbG+zvU/4BXHx
         9r4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714210897; x=1714815697;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pkrAbXjF5+gAK78lOUwuC1XsS89D6RASw9iF8TU3fqo=;
        b=RLcXRNFN2iU6a12YYBB0wapmASbua67cyBJy7LWIoJFIlT0gqRVeZr9y6AxeNeNaMi
         kALcd2GDYao2Ipi1cdjEQDgVNel24vE+fMAaUc0Eg5B1SF8GefYvInXwQn4pVemdmTZa
         NWDT58t+DfUfjEBqDAqHE4Mtix5bzBeDH0NZWNhNaZ2NjV/DiFibVDznDojX3wY8k26T
         Afy4Tu17O0EYPfrE+HDU7Azt7LaLvSWV7KI9noL8O5Ve9+9hXViBKfHSBYLVOf/5MjaV
         uQzM8ftbyXDV7kz3KgGUPEHZCAXDtSKIBbsUz+T7rIl5SwvFmyhbFVUMR/uVf9F9/TVT
         J2ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLSXzV9xXYMs66YRpWoWZZv+X0SimZwUwhaLyON72eK2sXegEnzIwK6Q/WV3QIDT1Qv6sWejVHMD0tbOoiLNSqogV0um/BrI5X
X-Gm-Message-State: AOJu0YwVhOmjUSZtKAWUUGNxjmHhyeOAknUeuwpySMSbascVfODdW5uu
	+ObM+y1XBLdat1Xka5MbtPpqUWmr/t3M7Oq/2lIvVrzGna/61H6B
X-Google-Smtp-Source: AGHT+IFU3oYWeIJ+V5yzwSN8QHyKdpV95CSFLXvfjSV5AFFM/fRArgdlWxWSHKEASsuxnnMcbeqlig==
X-Received: by 2002:a05:6a20:da93:b0:1a3:dc33:2e47 with SMTP id iy19-20020a056a20da9300b001a3dc332e47mr6476230pzb.4.1714210897042;
        Sat, 27 Apr 2024 02:41:37 -0700 (PDT)
Received: from localhost ([120.21.2.138])
        by smtp.gmail.com with ESMTPSA id ns5-20020a17090b250500b002a5f44353d2sm17830773pjb.7.2024.04.27.02.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 02:41:36 -0700 (PDT)
From: Alexis (flexibeast) <flexibeast@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: groff <groff@gnu.org>, linux-man@vger.kernel.org
Subject: Re: man(7) <-> mdoc(7) (approximate) correspondence table?
In-Reply-To: <Ziy6SLSeanPrcKaW@debian> (Alejandro Colomar's message of "Sat,
	27 Apr 2024 10:41:44 +0200")
References: <87h6fnwcqv.fsf@gmail.com> <Ziy6SLSeanPrcKaW@debian>
User-Agent: mu4e 1.12.4; emacs 29.3
Date: Sat, 27 Apr 2024 19:41:33 +1000
Message-ID: <87le4zcfci.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed


Hi Alejandro,

Thanks for your reply! Responses inline.

Alejandro Colomar <alx@kernel.org> writes:

> I can only recommend you look at pages in the Linux man-pages 
> project, and follow what you see (you can ask me if a page is a 
> good reference).  I try to have them all with perfect source, 
> but there are too many of them.

i'm actually not currently writing (or needing to write) a man(7) 
page. It's just that i'd be more inclined to potentially help with 
Linux-oriented man pages (and the man-pages project in particular) 
if there was such a table, to allow me to potentially do 
small/quick corrections, additions, etc. - i run two OpenBSD 
servers, but my daily driver is Gentoo.

i already have a lot of volunteer FOSS stuff on my plate, and i 
have to regularly make an active effort to not take on more / 
overcommit, so anything that can smooth the path for me to make 
quick changes as i notice them is appreciated.

> It would be interesting if there would exist such a thing.

Yes, off the top of my head, it seems like a number of people 
might find it useful ....


Alexis.

