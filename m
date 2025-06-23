Return-Path: <linux-man+bounces-3207-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D631BAE33C4
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 04:49:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7443216DED2
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 02:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12987E110;
	Mon, 23 Jun 2025 02:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ltssq186"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B2E134CB
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 02:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750646938; cv=none; b=ijAHebQfwPni9neUQoGSE29IT+fmM0keI01YU8xcmPhpg7HGgTwCWhj3SPj1V2RgrZE3Gnt+flrRVUkmkbw2LszkWhsx38htEPGi2F5jfd5RK0wYc3ZrA0zob6+jjm3iOlKGIM5mtFQ9ryXWooeKHMKconfOkypY1XX64Jiy3Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750646938; c=relaxed/simple;
	bh=pcnm/WyTLvjxpRJH9+gmPNmqfXWCZZqKt3sLohyB4dY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Bnim/OqLeDzkhpPVbe/s+3yo+UufEWp9YI44joB44pvEvuMKlG6BMtaotfGZxiktFJqdIkctHvexpHV5KVUN1YrKY0/T39yq62E/iLfc3FTRcmgM94lous+JlM4SigxzGV/ewdGE8PSzOWKvxQqYZM9TkHeEsPp5c3vLdg9nstI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ltssq186; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-31332cff2d5so2552328a91.1
        for <linux-man@vger.kernel.org>; Sun, 22 Jun 2025 19:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750646936; x=1751251736; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HJzyr4t2CU704lCiDHrl5pJ7kRTmgkc0ZMGIoEpOaFY=;
        b=ltssq186fo+bbv/JdUr7JRQrEilKV9SuGRrsqPKi3nasw/XgsfJuj39rjhmilT3Fyd
         sHK7SSYIvxw4sD7V/Hix2iwa68AZEL82RWw/82YFdVITHrcriv+IoFgerC6o/CHloimF
         s+jOChyCHRPjouvzxSJmMjkGVeFEbcTgOsK8NUyQm1UZK2d7hELKWVg3escF0zMKboka
         swlJYuk+eNhZPCl+as8S5Wu/p3mMY0DsIbHQsSZ7fmt2N/DLQuTkMX3Q9ZJFNGEUmzek
         QvBOuQUj9fp+dvTHjcDuQHfbvKoodDMDCE5+hdJxn+svTqnaIGIGFuW8XwjZFM+G4/LE
         3sPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750646936; x=1751251736;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HJzyr4t2CU704lCiDHrl5pJ7kRTmgkc0ZMGIoEpOaFY=;
        b=a+21s59vpL11yUvalDZNEEhCU3d3WOvCPtS1ngVAIkBY0AKyuU7R5aupivna/Sf6cW
         QBse6hTgazPHFSWlzsekehvl7/kzh7W6kI2yhTwC1DlGNttDWPXCrGPAFp5NKEupWMbe
         ceBiUUGivB4giTRQ81v3GpuXQNVdYOX5MIgCdqMjG5lzyOjxpYGMMY0dOtSKwNt5HcsB
         /M4wFM/Wb6kcrbRVXwd25B21GMGJYZNNL7YSuUlTSldoLmE1f0mQNFKEx3Ljt4Yd3GWu
         QkBpXX2411cp31EUHGXxkV2FbredpTNRiBBTQo32H924W6YwdLMyBPWSoFuvj8FnusY0
         KBQw==
X-Gm-Message-State: AOJu0YxGANs19w2x3JKfpkgx7sXrwCuqSYddsKbP768HVfvlPOfiz1TD
	8OnteJRzx9VH0MFRIFWMR/xo94c6yIYAHU3bsh+jw01aFVPf1AITZh/evUMcwQ==
X-Gm-Gg: ASbGncvxAtnemk/UnMTt0gMRAa0q4gxUlcwvK2scyEh1oJhWarhs/neZFuB+JRjUPwk
	tLRTyqof1YIDB9LTh2baJWaFdRFDF+M3uQwEzJ9Q6iWOz1F0V4ITBLQKpKGbAISgUkpVxNQOsht
	LtmgFRFGmIxX3AcNSXYNXAjT8fL4f+ffKAXX5StsXnf38WBUbiawfiIfQMKN5oKJ+mEAOrExAh6
	vluj2rARIL8Pavo4EmjYLnCJ+Tafidko5ijEagM5MOHp+N81udZYLM3TVAtfdpGi144kxsVVza5
	YaGw1H5ImLM2QBq1BgYwjRti+HGZtprmIM5EQ8FHc+0=
X-Google-Smtp-Source: AGHT+IH/Mo84mpyPj5mfl24lI/VnR4Yv65D2in03A+GcguzY5H8vem+DmdvqwOiwRzcjpA7mxyiPLQ==
X-Received: by 2002:a17:90a:bd86:b0:312:e1ec:de44 with SMTP id 98e67ed59e1d1-3159d8d9c32mr12582126a91.27.1750646936220;
        Sun, 22 Jun 2025 19:48:56 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::b0e6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3159df71c4bsm6669226a91.2.2025.06.22.19.48.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jun 2025 19:48:55 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man3/ftime.3: Correct POSIX standards in HISTORY.
In-Reply-To: <ah3tltckbeelmrxwfmjkctjzolybkb7uqhvrvirm4d3oxupmww@7eiekyd6tq23>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
	<830f11e40cabf6a3c77d2d12273fd8a399ba5ff6.1750306917.git.collin.funk1@gmail.com>
	<ah3tltckbeelmrxwfmjkctjzolybkb7uqhvrvirm4d3oxupmww@7eiekyd6tq23>
Date: Sun, 22 Jun 2025 19:48:54 -0700
Message-ID: <874iw7xje1.fsf@gmail.com>
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
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Alejandro Colomar <alx@kernel.org> writes:

> The old page didn't say it was removed in POSIX.1-2001.
>
> 	$ man -w ftime \
> 	| xargs mansect HISTORY \
> 	| MANWIDTH=3D64 man /dev/stdin \
> 	| cat;
> 	ftime(3)            Library Functions Manual           ftime(3)
>
> 	HISTORY
> 	       Removed  in  glibc 2.33.  4.2BSD, POSIX.1=E2=80=902001.  Removed
> 	       in POSIX.1=E2=80=902008.
>
> 	       This function is obsolete.  Don=E2=80=99t use it.  If  the  time
> 	       in  seconds  suffices,  time(2)  can be used; gettimeof=E2=80=90
> 	       day(2)  gives   microseconds;   clock_gettime(2)   gives
> 	       nanoseconds but is not as widely available.
>
> 	Linux man=E2=80=90pages 6.14=E2=80=9018... 2025=E2=80=9005=E2=80=9017   =
               ftime(3)
>
> However, I agree that the order of the text could be confusing.  I like
> yours better, but how about moving 4.2BSD to the begining to improve it
> further?

Oops, I must have interpreted that period as a comma.

I agree re-ordering will make it more clear, so I sent a new patch [1].

I realize now after sending it that the commit message should be
s/STANDARDS/HISTORY/ though...

Collin

[1] https://lore.kernel.org/linux-man/fcc66f4d8694f933a71688ad529e6f4f43024=
658.1750646692.git.collin.funk1@gmail.com/T/#u

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmhYwJYACgkQjOZJGuMN
fXXB4BAAghozIIIU6s6gFrp7zcySaO8gVqyhdpbkcd641ISTiKTFklXBPqPBDY+D
V5u+bi6eI21NmEC1RMN2eikO8jfzLBlRN38XD8/51liA8QpI4iVH7/24LZo2ZF+E
fj53W0amyg1Sw4kgBIWmZvQPuvoJAyuNILnAKOUCYybx9vB9kfxuG1SbQN1VgtcG
rM1OfNw3vnlywu98gpzuSE+1+wDSNNsgW6Qht94OSnZL1obcn5husFBPcuPOnmXW
vsH/mM8RoKRK+8v/I8+uCP+WWfngUj8enxlOT1SofA1WUafGujPhtsYahPLem7RL
ooCn3h6fTu2ReR8Yy6PC0KSj4nelURH7DEZ7ok31ApO7zj+OYC0XxGScS9sMq2Fd
+8AFU3uViB04gmvvBcjYkvVWMYM+jvtnWNmBjG4F1R+PMTWrXisVCtwGjuawl5As
47ImB6yatb2u7gMp1zQoEzMWkhw2FmYknUNmQcbUGeWy0nFQ57V0J23UjAV7eNUn
ybusN8iPBQSNVn/wGuoqcBStZlhndC7t+2mm9hVDlw7zxfgOOe7SqsFihzYvXvxC
ixccIEMSzUsMt0/CI2JyY+QsSzJOFcE+kiGGfNbTQYhvvh/UMFbM+PiJLTaB3kwb
FgXDcHOo5wKTI+vKCPTIxah7NXn5vg9eZiJHpH2W7S2F+nkHfsk=
=EpHt
-----END PGP SIGNATURE-----
--=-=-=--

