Return-Path: <linux-man+bounces-4591-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B89ECE8E6E
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 08:36:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8387B3002178
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D4E0285072;
	Tue, 30 Dec 2025 07:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LDy3DekH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2AA72236F0
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 07:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767080161; cv=none; b=WFSxDvT+fx7Im7hG/UdUxxrvpZZOUtzzguwlDy1Qk9SqwSTmd0Kgk7tu7siHkS6TsdNPM2yhQEYC0dmoPDeC6aRq8vGHruBj7f0+JB+PKmb3PkaA99GopXSIZXGmVe4YnN0pepFTmElL29Hz4P1PALld0GMMcAQapxScxTqLei0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767080161; c=relaxed/simple;
	bh=W6fdQHkIa6WH9a5zXXsISU3G+BBWIhFTtuWEN8RG9nw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=b90qHguL7Lp+DH/XnPDq4fWEMrOlmyS2Mr3coL9/Rc8q/N+qKFX9bin6nkgqFqf1GfpCnISMuU9rQ8aDLuSVWdq5F6Mk8BIFfc4pnFXdzaSMFBfPCrqRtUfPn3mjEIqWS3P9UESvKq5ugtQVb7LPaVrNzT5cPOPUUwCitRMtxGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LDy3DekH; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-bd1ce1b35e7so6577536a12.0
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 23:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767080159; x=1767684959; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WA+QKOHeZpiTaoWErlBmN4bcR9z9cUScPfNo+b+xtVw=;
        b=LDy3DekHZvaW1aS5h66nA5Zh6AFCFaYKGecyTj6UyxqHmI0blL+5KsSjmUrtaNZ6a2
         dVaT4x9xppUvFtK3OzE5pzqHDPdJuwXHGNlFhzBIMm9WkN7kkUZzX86ARdy9KglSnSx/
         f7fDoUss79px/mMXAlVafdQ/Og/dtnYszqPvRq0qeJ7Atsn2wag0dT/t/9wm/28YkT1O
         Uary/Z/vWDGEBlb7uKLUCLajNqtRXi2EXWQX4jKlivu+SmC5kgoodeBPHn5hvc4WCYNu
         jP3y8YAdM4q5CqHsyZo3UBZSe9a2cS2Avvz1YrEtlpvU3vZpE7I53fyj9GzO+O51lIHC
         GKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767080159; x=1767684959;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WA+QKOHeZpiTaoWErlBmN4bcR9z9cUScPfNo+b+xtVw=;
        b=G2fIA1gPQjrCVtz5rLM99I83vIMPe68UKv0qiQ8sPtsakpaZh3tDRMUbmYmPfq91Mc
         QLy4lmINcXybKpBh4x8igLW/3B/JjSxEie1HNziVodwms9Qbzg8XCWNFzs+Oe0mQp9SZ
         AS5iBrBjkdmfm6rQ89OQmy+Sxb2WfQthQKyw80CAXbgdBxr3ynO3Um/YTYeNYosOLTv0
         m4eC9Pt+rqdUVd7GaD74SAYySY7TeQ5pHzNdqGtFcgf/+4769R6R813zKC1sAf1Mg4Yd
         3O8piDoTARKDBX1RynevA2pVkkB0xJ7aEp4uyfyEwB7QxiDyDI0hI+NHmcDw5w6a9eZT
         ZX9A==
X-Forwarded-Encrypted: i=1; AJvYcCUbPdAjlvrhw0e1X45rx44s3leJ4umyzKCyXn2ZXEHpLoFWncf9lUIxcsPs671JKSS6XpTaEZoKPRo=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz19cyvLs+z0F0uSOhXj/XX2D46P5sCObu5d1e1UGp18x6cg0yH
	zMvuusimRVkn24R94V6C+/3F5k7cftonY+vWChVlZ8jUJkeceeyV9ZgmNGn8VQ==
X-Gm-Gg: AY/fxX536wC8L959DammU+2EPvSfOK1Ma4rMKvQ912ZwYH+8k39Q3u8zbM8cO8la86v
	is8wiEg/swjejKig+jB9C0f/LamVtkOMW1d4yeSF7aT4MT4X7npInVHRRH0dbejc0Ved7k4ldm6
	4e+jSLMxPSVQpzgSt7WF8FY/wmoNM/edebv8v1mV+YhhDYopY74F6zg0jlbcQXzfmXJjMTNem6M
	J1pc4nohAa5NrYHDH9NWMW/MTCVjluN41OPpfm6glzSclIHZD1eV9XrIwt1VZAkVNkr9JmfSW6B
	SMLZ0Ve7UCm3o9ZgRP6k/POS2SvDl0tq54oI43mFM5jtCrNUewDrgNGk+lropwsVUD2WUfiaZff
	p5/b2TmqB/gKvONX9jvPERPFyDiUFImAZPLYofvH3K+wCntPCvKgWbwGf2EG12MIqeS0p/jTZyM
	rpIz4=
X-Google-Smtp-Source: AGHT+IGexz+7zLppsCUDtHWObxO+gsw9UKHX9v2UWLj1u0GQZZcZl+1DhP8MDTOnMJnqeijpmtDb5A==
X-Received: by 2002:a05:7022:7e87:b0:11b:9386:a380 with SMTP id a92af1059eb24-1217230f53fmr31730992c88.47.1767080158873;
        Mon, 29 Dec 2025 23:35:58 -0800 (PST)
Received: from fedora ([2601:646:8081:3770::361d])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217253c23csm122470635c88.9.2025.12.29.23.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 23:35:58 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: seth.i.mcdonald@gmail.com,  Alejandro Colomar <alx@kernel.org>,  Seth
 McDonald <sethmcmail@pm.me>,  linux-man@vger.kernel.org
Subject: Re: Is 2.11BSD < 4BSD?  It depends.
In-Reply-To: <20251230072231.cbsmcowvonavhd4c@illithid>
References: <cover.1767072049.git.sethmcmail@pm.me>
	<1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
	<87zf70xxog.fsf@gmail.com> <20251230072231.cbsmcowvonavhd4c@illithid>
Date: Mon, 29 Dec 2025 23:35:55 -0800
Message-ID: <87pl7wxvz8.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

"G. Branden Robinson" <g.branden.robinson@gmail.com> writes:

> At 2025-12-29T22:59:11-0800, Collin Funk wrote:
>> It actually existed before 4.4BSD. It existed in 2.11BSD at least [1].

> 2BSD however was not abandoned as soon as 3BSD or even 4BSD showed up.
> Some people still had PDP-11s around.  And thanks to (Open)SIMH, we can
> all still run one if we choose.
>
> Features from 3,4BSD got backported to 2BSD, which eventually stabilized
> its minor version number at "11", I suspect because that was
> irresibility useful to characterize the system's only supported target
> architecture.

Oh, right. The source I linked has a 1995 date on it that I missed. I
would have realized the mistake if I had, since 4.4BSD is from 1992 or
1993.

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmlTgNsACgkQjOZJGuMN
fXUwdw//SpbgX5+MrvdM+fV9fZcldbAjo2E8/Qa4EqJx9uLqiy3qgD+RfpMhOv4L
+Yy9t5T5bHe+Z9+2N8T9SOSM6k7vhWxdFSYCwUC9I7V+bbEpecLJ/N4Gob7ynbUq
QQjBXyV4f1fJsdFp/CuqoBFMQ9hPjX4f4vgPfPEvKsEO3xFAFh0MwJrW4xnfGMNN
f1nxdosZQ2NPGevFkBRhe1cxPP7LG7G39b0jrGUyuHrGQ6RBkoHs6l4E2U7XhWG+
Gn2yyPS4oAvHNSu4cVRJY1ycz71k/5pxrEm9pPTfnWoUnRVXW93aGAIM+/4/7aur
opI8Kmi4d+reDZnMojFN7ahDGNpCqyTvrCSUo+BKDYR1+xbXPga12kc/2RTv7YGe
YPSqwukJTI5ChXPbTH6S3eKcCe6iqmQc9wYJfmiHmQSCqXSTcb3HrPDrjlVsZvDf
5XUpdI2I3Tzz14mv2xjF4DS2z/o+08C76/A8iULaR5/7+TY7uu9CbpPFYU0j1xJk
eHU2QqWavODk5NyNgDfueJrnfdIVEwLF3qwRJsINSropWKOHBXP5H1Uk3rZyARCu
ifwftoomC3CpH+BMXKQhVNlCSF4DLrBMiTifMkA93/3jVdY9HO/Qot4ceRqpbTra
GUBr6310h5vGNPHxI27ZQ0md5VpEhjcGsBNf6AY6CKW97j1sfqg=
=Za3g
-----END PGP SIGNATURE-----
--=-=-=--

