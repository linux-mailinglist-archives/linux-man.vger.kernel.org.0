Return-Path: <linux-man+bounces-3294-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF2B110F1
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 20:34:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB21C1898697
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 18:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245741FE461;
	Thu, 24 Jul 2025 18:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PDf4OyED"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64940148830
	for <linux-man@vger.kernel.org>; Thu, 24 Jul 2025 18:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753382036; cv=none; b=fFCfZVuV8QO7i7W3EAfk/BTsoxVuBsYga1TCoFQZyLVWyAskYFxrRTdCleQk4KQmyrRAleXWIN6Ox26CLCZJHgghTolnRnrqdA7JlzukeqsRm6ecXDNVxBSydVSQhCIpV3snE6/9hUgUoaYTwR+S1VVTwDoYKIUGmkPCGpaxPzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753382036; c=relaxed/simple;
	bh=285X/5Sr0xC50XeNsbkMXbHaXZgp8VwgajvGBQaTcvI=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=L0p99LmYjjo9hvslIUg3hHcqnj6diFZluSR9iEFKXlULNZLM6MT66Kuc7FfsMWY3Me5jSKjQaR/YFHdC37dBG1cq7tfSeBhnkHxjW1llcrFg6Y5OBrbe4yVOgRV+QTf5AMT2OszSwtMndYDu8kW4KnN/1TDD5Q6CtKvRGD5OexQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PDf4OyED; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753382034;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UMwg+9XtvShkaugoQ6ndkOKqwUFU0sqD8rrsJI8qGjA=;
	b=PDf4OyEDBJvHQCBuSnOaaxlK+uAjVb2zxbVVBcf8vqAacF3XzNNeekoeY1o/4125y+Y5qa
	gdxT+yl+8JTHjH957EOF5t71Au/+uHDt6bI7RpoX+d6XXq4HSMsC5u5DRLlEUAvOZL3ydT
	OaErbH+WIJIGjjUWYSGaiJaqtWO921o=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-117-bBbxWAivMl-nUmeNfhMaCA-1; Thu, 24 Jul 2025 14:33:50 -0400
X-MC-Unique: bBbxWAivMl-nUmeNfhMaCA-1
X-Mimecast-MFC-AGG-ID: bBbxWAivMl-nUmeNfhMaCA_1753382029
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4561dbbcc7eso4807785e9.2
        for <linux-man@vger.kernel.org>; Thu, 24 Jul 2025 11:33:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753382029; x=1753986829;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UMwg+9XtvShkaugoQ6ndkOKqwUFU0sqD8rrsJI8qGjA=;
        b=mnVkUlv4hmVhunTCg/q09yNQGyZ2oaKp3U5scVbz1UorzzvUGSVa3g+Siqx1xzmnht
         VoXgGcvz3PxfXVAb6xk+W/uTCoBgKddjybUlJF/3FP9Tz50l382pJmsyI5WhfAT/LYTc
         cQB93xMwcPoRLvpJL1UMj+hLf0fXIOI6xeJqkEwtAHVKusyHl8+e3n6VNq0rap7qHy4f
         a4tpirCUX0NGo1TQpM/dopnwljNekhMnGwhHjDEkOv1uUqHAJs9pBWXaYYXwRl+VBKV+
         mXB8iIXyTT9+gURbFImK5p4yB/6r7Su+L/tZ+5BgRNL/Wbd/cwSEC9dGUjJo4IUlELs9
         DsUg==
X-Forwarded-Encrypted: i=1; AJvYcCVYj8y/QnISTMVgsMkvLM6UnQOsc+66Smogzrti/H4WqERGgTgZgqTqMjG7UV+qIDq+4aEesN7KmhA=@vger.kernel.org
X-Gm-Message-State: AOJu0YxEptEhW0y0kptQSwvKBuMqoJie1R9DMl+UHX7ZMol9imhaupwD
	56sAB8pSOZCJvrssFdJ9N580SIeXOuKlrLDKrs3w8roVK622Xjwzu1dM+mflEbKMSFXWxETT50z
	2xe80kvFotouatKLz/YZSYqaANh5JPRzlPS7xFK6IzZWdtT88MwlmIIdqsQ7lrA==
X-Gm-Gg: ASbGncsEE7BFx4ALP3x3ca9615NxTq9f0/jD0eCxlqRQeLqvVS03EQdb+f2GuOMO5J2
	MKI1U5lH9siesfrFSa0feKX8hF9bt09mspXdZ7h3NM7MQgavA4OtYADXeEJ/J7+Y1hLo4lpKuBm
	J3w1GXLVIgrksD0casda0bQAkBq1v9WBrABD2RB/Y2b4lT2sntJmHYWmy3aozzlGyhATB8SfeMY
	2D3Fs6qFqdvy0g4oPPh5eGMHnTL7gSwTRR6QDuLVUJR7XVJ3E1/3kTdA69zIt5zuiQ1u0cFNmKF
	g7CSDOHpyOoUfco6YxgKzGrk0ld4n4cuBsRi4R8eVQhY0veGDSrUAMUqIBVCTOjPekBh1Ro=
X-Received: by 2002:a05:600c:1e29:b0:456:1752:2b43 with SMTP id 5b1f17b1804b1-45868cfb59bmr63978915e9.21.1753382029508;
        Thu, 24 Jul 2025 11:33:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFJTccHUD1SFkZhsEpx58t9kAN6lKzlTax1P/srcSQrxrZd2LEwIFD3FoShceKKin2i/fl1Q==
X-Received: by 2002:a05:600c:1e29:b0:456:1752:2b43 with SMTP id 5b1f17b1804b1-45868cfb59bmr63978775e9.21.1753382029130;
        Thu, 24 Jul 2025 11:33:49 -0700 (PDT)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458705c4cacsm28005015e9.24.2025.07.24.11.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 11:33:48 -0700 (PDT)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.97)
	(envelope-from <josmyers@redhat.com>)
	id 1uf0lH-000000011oL-0QNP;
	Thu, 24 Jul 2025 18:33:47 +0000
Date: Thu, 24 Jul 2025 18:33:47 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <une+c@alejandro-colomar.es>
cc: C Committee <sc22wg14@open-std.org>, Vincent Lefevre <vincent@vinc17.net>, 
    linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [SC22WG14.32341] alx-0051r0 - don't misuse reserved identifier
 'exp'
In-Reply-To: <20250714222434.4D926356820@www.open-std.org>
Message-ID: <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
References: <20250714222434.4D926356820@www.open-std.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 15 Jul 2025, Alejandro Colomar wrote:

> Rationale
> 	Since 'exp' is a library function, it is a reserved identifier,
> 	which should not be used as a variable / parameter name.

It's only reserved with external linkage and file scope, and as a macro 
name.  (It might still be less confusing to avoid usage in these other 
contexts.)

> 	7.1.3p1 says
> 
> 		All potentially reserved identifiers (...) that are
> 		provided by an implementation with an external
> 		definition are reserved for any use.

It's not "potentially reserved", but indeed "any use" seems too broad in 
that wording compared to the wording for actually reserved identifiers, 
which is more specific depending on the precise nature of how the 
identifier is defined.

-- 
Joseph S. Myers
josmyers@redhat.com


