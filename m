Return-Path: <linux-man+bounces-3755-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFF6B3C126
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 18:50:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BEC258635D
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 16:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DE8C3314B3;
	Fri, 29 Aug 2025 16:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="es/W24B2"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90CCF321425
	for <linux-man@vger.kernel.org>; Fri, 29 Aug 2025 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756486236; cv=none; b=hDNtb97Ki/gf7NJwhrGXcXiRmkusHmIJbG1Ch6b0fug7ngiIbhmA2mc+HPT6kJrUr1OSpARhGFsC/r2gS0rjdtWlsk4Q8FIjqiK/8pv4AxJG0t0rRs+/olZSirlmYautzVRmpguOR8idtbT7bpjr1irODT/eryTLW5gTW2qK/sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756486236; c=relaxed/simple;
	bh=hVzQVoVx1d0CdeilHCWJlAw37yeEobJbP+BbMXYDgFs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dRzELmKH+7WUKxKm6uGXzNNxeKwxG6NMy/7/uYFurmILfjG7UxqNUboMsPP8hIuc/eP0/pK5J8H/Y8SU9Ovmtq1GLgfI2yz+lVUjqL6nLGY9VlhpZopoxTZEuyP4v9b2FCP8v6Gh2o/VTG3vlueoSTFkfcRnd7jv2ZjkvwX2rYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=es/W24B2; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756486233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=MydhvUM3XDxN2oekHKxPLAYTbfd82t8/FYemVbXNiCg=;
	b=es/W24B2g1wPhN9oW/sFTu0OfBM/+MPmYlml/71ocuS7/IBvfd/8xzS6E0uQYXxSWYmSlZ
	xOrezGbOHnA9ybsUzFrXWRvTnLOQqrxY1rb2M4DyPE+PZPZTqlkaelwc2I/oBQ79fjsSTH
	tYZaW2dLwkgGBYmamVRQaIy0BG6qtmA=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-107-KRlCO2xXNKWiwp72PPf3eg-1; Fri, 29 Aug 2025 12:43:31 -0400
X-MC-Unique: KRlCO2xXNKWiwp72PPf3eg-1
X-Mimecast-MFC-AGG-ID: KRlCO2xXNKWiwp72PPf3eg_1756485810
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b30fadc974so16278041cf.3
        for <linux-man@vger.kernel.org>; Fri, 29 Aug 2025 09:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756485810; x=1757090610;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MydhvUM3XDxN2oekHKxPLAYTbfd82t8/FYemVbXNiCg=;
        b=cZmlBp/WvAOmcpLuLdCnwxcjsut6N2jJ+vRHipMUTcASn+nupgaAFwclpw/pmPKwpU
         Usb5OymQR5RHkD0/IUg8n4nZ8yk5TS7K+e3m8rP5G4HRdOREJ/iZUCrfQBGljCt6Gf8o
         YqRz6PCzh4Po3iDCgDkCTd7wUKYxHTphtSyBfckS8TOtEpomJgiTxBwK2s/WIucklRyx
         nUQ6YdsWVduHZqs2i4MVVRwUBAb3d61dfvFOBb2pNA+iDKqXnmd8ApzUeO9o49reqMmz
         Pz1J97iR7NGgoXbRRW+KmJWjXuNV7wnJpvkjoMXGT5lFKjkhfWrjP9V9iRG2h5L7o7Dn
         D8Zw==
X-Forwarded-Encrypted: i=1; AJvYcCWlK+B52f6yq7ps8KlqyJV7RJDxPvSZmj/JkCFMON7YbrPhcon8RdzJz9/yHG2Kw4IxmufseBLXWOk=@vger.kernel.org
X-Gm-Message-State: AOJu0YzBcyXrjKHIZAGAw+TWcuDD3P+TKFeXuiMyXeSQ5x3UrHPFri3G
	+jiHQzMT1V/AgRqHwYx8EJKUfQF+6hsZyTQ4uqglHgLQQhWm0+KOmN/X+gMlrAu6AjzlI65OvVM
	0kVHm966gKKn1QdUpxUDlLz4Y18FkRbauEQdSU21d9D6DPKhjMuDznhhT6/Yv9A==
X-Gm-Gg: ASbGncvnbQDID8oAVyXQ7VbabgobxpH9aUwcbtG6NQgKzwi8W+Rd5TeyFByWehYtxb9
	X9KTWSTX0ApPAoGcfbX0z96yrV49LLW4B57pMgMpqfLoFyFLd+ydGa9hTSNZK5HsQfCVz5RCQzX
	Cr4ii8ppxsKHKa28fmIxeaCkYiROigJ0ffFAb7hJzxGEQevlf5urAFJcML5kn2bZmWUYtave4j1
	pT9NOSzxOvLPe1bKXN2Bm0i6dI3yu+vWslLThm5YWFBja20mHet6nJTmvdA928plbLAu4Kq57VO
	GbGqgtux12tox6eBz56uVybxmlWt7t1NZMDswUSZ
X-Received: by 2002:a05:622a:181c:b0:4b1:103b:bb82 with SMTP id d75a77b69052e-4b2aab5caf9mr381960431cf.64.1756485810173;
        Fri, 29 Aug 2025 09:43:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEb4t90LjIX/uOcTYBBbi1cwL33tb3NRcrVgxs/yi7g7risy3Su/mMj3j1w2iGZs7m0W5ku1A==
X-Received: by 2002:a05:622a:181c:b0:4b1:103b:bb82 with SMTP id d75a77b69052e-4b2aab5caf9mr381960021cf.64.1756485809572;
        Fri, 29 Aug 2025 09:43:29 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b30b538153sm19110151cf.7.2025.08.29.09.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 09:43:28 -0700 (PDT)
Message-ID: <1ced3c16-1534-4e43-8025-2301c134bbdd@redhat.com>
Date: Fri, 29 Aug 2025 12:43:26 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] man/man2/futex.2: Recycle two gmane URLs
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Almeida?=
 <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>,
 Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
 Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Valentin Schneider <vschneid@redhat.com>, Waiman Long <longman@redhat.com>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-4-bigeasy@linutronix.de>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <20250829160200.756194-4-bigeasy@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/29/25 12:01 PM, Sebastian Andrzej Siewior wrote:
> Based on the date in the comment, the here provided URLs should point to
> the mails that the gmane URL no longer can.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>   man/man2/futex.2 | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man/man2/futex.2 b/man/man2/futex.2
> index 69df4036ada7f..027e91b826bf1 100644
> --- a/man/man2/futex.2
> +++ b/man/man2/futex.2
> @@ -6,10 +6,10 @@
>   .\"
>   .\" FIXME Still to integrate are some points from Torvald Riegel's mail of
>   .\" 2015-01-23:
> -.\"       http://thread.gmane.org/gmane.linux.kernel/1703405/focus=7977
> +.\"       https://lore.kernel.org/lkml/1422037788.29655.0.camel@triegel.csb

Wrong link?

Should be this link:
https://lore.kernel.org/lkml/1422037145.27573.0.camel@triegel.csb/

Where the discussion is about the unresolved constraint to guarantee FIFO order.

>   .\"
>   .\" FIXME Do we need to add some text regarding Torvald Riegel's 2015-01-24 mail
> -.\"       http://thread.gmane.org/gmane.linux.kernel/1703405/focus=1873242
> +.\"       https://lore.kernel.org/lkml/1422105142.29655.16.camel@triegel.csb

Confirmed, this is correct.

>   .\"
>   .TH futex 2 (date) "Linux man-pages (unreleased)"
>   .SH NAME


-- 
Cheers,
Carlos.


