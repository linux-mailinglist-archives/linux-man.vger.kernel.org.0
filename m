Return-Path: <linux-man+bounces-2360-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 902E9A2D8B9
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 21:50:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F87D16629E
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 20:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42EA024397A;
	Sat,  8 Feb 2025 20:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P748/Sr4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9277F243962
	for <linux-man@vger.kernel.org>; Sat,  8 Feb 2025 20:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739047837; cv=none; b=OiGJSAVDe7iKjDinfDQLuLml/bjFlbAgsbqdAIaO/RcB4XVIXfgrFH8DyW0WyYePC80j4+0NIPA+3sQfejuxHRpZS5jcs1kXltNBMbmujT1Zucupkkw7D8XMPdt4+hzM7LmqXyfHI5pib0DoFp+kY/PBFlfZgskEsuGMw604+Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739047837; c=relaxed/simple;
	bh=qS57oFiuKuFQed4HmjJTN58sej4YF4xxiohO3FyIc6o=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=piBnx7PyQI6P3AIyZD+r5EmUgmvuc/W1qxZR5vlBSeHKgXe+0yfoLj7KOZfj99Vfr1riknt+zfu7t0sQDWDf0am9dTKWk3M9VlDCOhzbczLGuZVGbwBm9QI+3BEwkuvN7rOFH/rwfjEeg3/ix73Y8ukHFpePd03oyxf9jtbgx58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P748/Sr4; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-721d213e2aeso887736a34.3
        for <linux-man@vger.kernel.org>; Sat, 08 Feb 2025 12:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739047834; x=1739652634; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tyuqhA4fenSsTYY9ykqsBSxuXnqyccTEsUhVn3TNkXw=;
        b=P748/Sr4LD5qo/6d7WaYVHmne8ITTKGQz3fNGPlSzH78HodBETPvy98sbZYqpTbd7f
         H0l8g12KGgbs9a6SL+y++OOF4vpRhvkSpf/ciO5xImIpR+Qqh57OcpI+ZIGb1ob63HlB
         aL8rf8oXi8oHxEjFKS++Xl6mYilNeP+fdCbH+AHsguc2Cui2HNbao2ONt+ZTMMipQZSf
         eR+wgsR4uHEUypzEfhO0155pI0+ez3j/Z/Xe3Q/B2yId5X/vYu0pm23PiSROhjT/hu72
         hLyJvVjaY+Xb30tElyatmtThG9gb9iu7xs+MAFO52xz4mtpyLWEDIA5bvpZaYl8RcRyM
         cxHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739047834; x=1739652634;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tyuqhA4fenSsTYY9ykqsBSxuXnqyccTEsUhVn3TNkXw=;
        b=Tf1XNZifN0l/YmUFUGTQgexy/0BDHlvxvljU3x3O2tS/ytY0GMI+A8fviAJedl1g+D
         bQu6KELBwUs2gy8h4m1kJPP8+su9f7OHyuvq8BrWDmQG+bIiL2epOC4cFMVjOimLJczu
         B8Kv7jvLoZUbdoakSzViarw1D0X6DB1tQ/yblDHzx/F+ecXPm0npySKa0JT022n5EF3j
         tq3oWTq6ZK1yDDlgqOnF1XIhrAXLm/J3LKillnKatqKYl2aP1Oc5W6DEPzxRB4RbMbpw
         bsFGlvMvX5ZLVK6LRG2yqKT5MiquxwDlNopRwtuoha1aSeqglufqpRH6dXNVt4zm9m5h
         /WgQ==
X-Gm-Message-State: AOJu0YyALh4ZSJardO6T5HVGlnq6vmgQLaYspyjgyOHtFNNsbXAKsOhT
	jBzGclDjZfhoflK4Xs3HoEUJancMrdCZEgBdBAjljAhNp6Y/wxMNQ6e8/A==
X-Gm-Gg: ASbGncvQfPy9nR6IkU4aA+qvNI3U5caoPadbcdbguRGc50qmMLzHFL6KnHfSDPoyL6P
	R7e7N+3PWFfoHoocZ1QCCtEXVyjxGUE+avgKosywg1TXdSvx2I8guuo5FSYwFnrWNkAWuO8ZX8X
	DhtBPXUdr4Onf1SGwtY1590aXNJJkIt5h5MAD2IgomkHCC5A/VxMOsPXhiqp0wcrPG9Q1TqqjRQ
	uycc4ebourZmEy4yw+826IBCl85d13rcXnayDVQURtvGE0F6khGyCcK4Av/01ikzyDL22rd+fik
	oR7r1w==
X-Google-Smtp-Source: AGHT+IFBmkhPVtRQ5RKG7mTDtcUkPR55eakFmEv5XcqKmCPzD24mpfY15Rkcs6mXgMfijoOmmUuSpQ==
X-Received: by 2002:a05:6830:6987:b0:710:ea11:3d35 with SMTP id 46e09a7af769-726b87fb51dmr5169919a34.15.1739047834113;
        Sat, 08 Feb 2025 12:50:34 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fc544b039csm1498317eaf.5.2025.02.08.12.50.31
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 12:50:32 -0800 (PST)
Date: Sat, 8 Feb 2025 14:50:30 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/timespec_get.3: Correct return value and
 clarify description
Message-ID: <20250208205030.fcj2bdotliddpdu2@illithid>
References: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bvrhkv75viqlnk3r"
Content-Disposition: inline
In-Reply-To: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>


--bvrhkv75viqlnk3r
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH] man/man3/timespec_get.3: Correct return value and
 clarify description
MIME-Version: 1.0

At 2025-02-08T12:41:42-0800, Mark Harris wrote:
> - 0, not -1, is returned for an unsupported time base or error
>   (C23 7.29.2.6, 7.29.2.7; POSIX.1-2024 line 74358).
> - Clarify that any supported value of base is always nonzero (i.e.,
>   there is no overlap between the two return value cases that may
>   require errno or some other source to disambiguate)
>   (C23 7.29.2.6, 7.29.2.7; POSIX.1-2024 line 74357).
> - Clarify that timespec_getres(NULL, base) is a valid call to check
>   whether the specified time base is supported (C23 7.29.2.7).
> - Clarify that the resolution for a particular time base is constant
>   for the lifetime of the process (i.e., there is no need to retrieve
>   it repeatedly) (C23 7.29.2.7).
> - Calls to these functions are not technically equivalent to any
>   clock_* function call; at least the return value will be different.
> - The ERRORS section is removed, because it states only what is true
>   for every function that does not state otherwise (i.e., errno might
>   be affected by underlying system calls).

Just wanted to say: this is an excellently annotated patch.

Regards,
Branden

--bvrhkv75viqlnk3r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmenw4oACgkQ0Z6cfXEm
bc55mhAAkjsIUaKUI9twNuNp4frSwE8aBNfr8xZKh2IgZ4YxwDVg/tF7OwEHvZJw
6GXK26qpg8K8HJEt2dMKS9P3xk3Rl47hVCUrhMoKXBH4z5ZZ0+dpYuj+/D1bYNRM
XeY+AqugUq4maxTcmrZyhuqFubTyIwX4qn1CBSkXuBCbVi8GmK1KmYZQ3fTlveS0
L2yIHvgcCFaHq49S+SQ5bfrbTQcmTnqU7Cm7DK8ENLyKyudubHGKnXdZx7S/y/kz
So/b9I1n163Gckns6LqKiGXMJmFajmCl9LxUbKYG9Zw3dGlb6WDqZmXMxZgZMG9U
yybzf3nY15qP7scotHsNgbi2IKyh8cp4JkNuhXKPoKepY88yK9OefWn6WnC2ouCV
YhnMX1yo0rnyW2UjpMqCcRn5uU+LH3fysTFfC0bEMcTCq/L9ce3UUr0ABlPMWZ/H
19y5BX77vJGfgweXzlfClZ8Xn0/GAbNP2c/9gnf6Qx4ivGzAVfqncKk1T3kOgiJh
fl6jCZLpXgXsdfRSza1sNZHAB2AZtbYlMKiTXoEKoBczjh36jovspvs2ZY3J0KNZ
FQfr7uGZhlpuicu36wKydqeTp7CmbzK2xhsT8lJ127JpyEPNYDQdcZFJvMBWpOeD
5GlowrZON207OGl/2YG58pyIVojMJegEj3U3CvkU0aVIlkil+O4=
=5rvp
-----END PGP SIGNATURE-----

--bvrhkv75viqlnk3r--

