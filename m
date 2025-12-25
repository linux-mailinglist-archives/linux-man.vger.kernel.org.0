Return-Path: <linux-man+bounces-4566-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF79CDE1D7
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 22:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0E6D30084FE
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932E1284672;
	Thu, 25 Dec 2025 21:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nFH8F5ZP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF46427E05F
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 21:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766696740; cv=none; b=WoCRpJjvJMU4A8Aou4sbQ1RrbQIyplftZM3R68hlXKTMftKRLpQQb2ryJTwIa8nbQ+taY1WcddRbzGT8sr3q/SsYjlX8+73GwectdBWfTtbtiNdr1qaxN9805JBMnESXNlc5J5HjKeH121gZ6WWKzd2Pr0QXfqfRTu7xOX7rp2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766696740; c=relaxed/simple;
	bh=oXWwsI74G+9cZhaCtGJEGsDmsgcvOp+bIdYSTX1tcAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qe/CXow+m7SW5+ViHaZpQ0oBWxoGURjA0zSrDzdFjfvgPIllh5dRNoLsuk0Y1r1xtEqwnaFmSv18Ngr+2elfrDJSt1CbL3d0TV3Cp3gjuvYKBSUAdKrnHh9v3qsgQ2um3XT01d9GP9nKlmkQmxe9Aag5+MW48R0yUhxGyJZPENM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nFH8F5ZP; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78f99901ed5so60090967b3.3
        for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766696738; x=1767301538; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6xUstCFIYWqXW6IqMLo/OZuBm2NMJCQo5PvWnCdh9JM=;
        b=nFH8F5ZP8fe1kpnc2blIrWF2VEgVY3XbcqTHSDnglGcolEu4eqJgc9/hPCaALF9fC6
         /657xMxixndYz8DhL9D5h1HNkux17T7jT+OLRZyT10yxzNp4xHjeSwZIER6edPD8aiKe
         ge1X2inalJCnaG2XFBqsYodVYPIvZFezlscPaGA1roxEXUbSm9VobZW5EeBooc0q3ATj
         YRrIL3VAdiXD20oFzCJzg2FylOzVaT1sopnUfCopQRVw6bfiHRaXYO250v7gaw6tMFqh
         UEsxQwnhsEURE4gm6xYzrd3BLIfN2icqvejeVQpENpqewgfN+iDXpqw0j7ght2Ensnhq
         q16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766696738; x=1767301538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6xUstCFIYWqXW6IqMLo/OZuBm2NMJCQo5PvWnCdh9JM=;
        b=VmaTOQCbtLWMKn9pjMaLVfd8Go3+B0je3Pp6idJZV6PBcWA2B4zMhLNLBoJ1cgYzoN
         TseRUgggm+UeEdOCTj2SO7TCkvgVLlOm8KzIT5uRV5Cb1eiwzWYLPr7nnGfYi7PulXQr
         vqPnI6eSJpQ33CxvIjxuSSTJgsO35tt/hx8wBmcfPGjjfVe60nZSVnkXxLTbax2zhvFu
         luAkEM95X6RfyXpLmVOdPd28gPt+Rz5Kdag+YQLuQ2PlS5iz9qhA9Vbz5bFCIHbKu5R7
         zCNgtT18JrWFAkBT31P0NLfKnpj6idsiVXHxJw+N2lQWY0H/7KDEoYTbcyJNpmzqZXX1
         m8LQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvpvm+FtfpEE9QAWQiuF9+5wl7ru/xqF/ouWgAvE9DNhbclS6N/th4sxPGAQ1Uf139hGF74gIdo/g=@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrq4KTni8R4qbY2KbfaSMJwUPpsCLPfR+kJfmcf6XcPjVnUPGp
	ep+g6kgeK7lpfrL2bgZVTwAcjj9txkbYI3vLzfoxsFVvWwFPPrjadHoy
X-Gm-Gg: AY/fxX5FzoFErALuZf/sW6+CUXxHPZOALwp6hzZKYPIOCW/2cHYNXpcm1r7+uNeLA8p
	MawPDX4NwCK5wxJzebB7oYZ6ahDXIAhzAfNzfRgIjP7TkrfwBwRpmAuWjmvdTEPGZh97T7asuA9
	BEZZcMeDO2cug92rOkIr7DIfla/S9yO1He2avEyWe5uAg5JmbYhSqHh8KDQqOhus5L63+AfmCBE
	/uJwnN81a4C/+phnY9LI/mpmrpNgWmI2BDK4rc/JNqFOlpmTg4WQcDPt3MbNrEpKUBlZTEPMl2U
	20mpc1+oGEps+t3JT3LeRhA/7l3p/gMCCh+4PruwJfda2hNfPoIsBf3myaMXcbUPl/qmI9wSpkd
	ROORhPlNpPOEjBHUXFu/wVEpuQfnOZIMrPW8OCAo9exCfcOYQKZQRNBOH1HdVTnSbHtVimIOMr5
	03
X-Google-Smtp-Source: AGHT+IERFICjn0fSCBdIAHrTSKzHDYuplaINX4+JWLZwSx3zJQEpx6CIiSEY9AOG78sVThihnuTxEw==
X-Received: by 2002:a05:690c:6886:b0:787:d2ee:e2d6 with SMTP id 00721157ae682-78fb402ade8mr184469667b3.34.1766696737691;
        Thu, 25 Dec 2025 13:05:37 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb43790dcsm77726107b3.11.2025.12.25.13.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 13:05:36 -0800 (PST)
Date: Thu, 25 Dec 2025 15:05:33 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org, branden@debian.org
Subject: Re: Issue in man page getpt.3
Message-ID: <20251225210533.3xqjtrwkwsl27zbg@illithid>
References: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>
 <aU05v_HKTPPwb71k@devuan>
 <aU06lfjIZExCr8ti@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="laupnmceqqzdplom"
Content-Disposition: inline
In-Reply-To: <aU06lfjIZExCr8ti@devuan>


--laupnmceqqzdplom
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Issue in man page getpt.3
MIME-Version: 1.0

Hi Alex,

At 2025-12-25T14:22:54+0100, Alejandro Colomar wrote:
> On Thu, Dec 25, 2025 at 02:20:39PM +0100, Alejandro Colomar wrote:
> > On Wed, Dec 24, 2025 at 02:38:26PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    multiplexor =E2=86=92 multiplexer
> >=20
> > I see both used:
> >=20
> > 	$ grep -rho multiplex.r man/ | sort| uniq -c
> > 	      4 multiplexer
> > 	      4 multiplexor
> >=20
> > Which one should we prefer, and why?
>=20
> A reason for 'e' is that __NR_multiplexer uses 'e'.

That's the best reason to choose 'e', and the one I'd select.

The question of usage of -or or -er is a messy one in English, whether
in Commonwealth or Yankee forms.[1][2]

(If we're being even more picky, -trix further spices the mix.[3])

Regards,
Branden

[1] https://separatedbyacommonlanguage.blogspot.com/2007/10/agentive-suffix=
es-er-and-or-and-little.html
[2] https://ianjamesparsley.wordpress.com/2023/02/17/the-weirdness-of-agent=
-nouns/
[3] https://www.cjr.org/language_corner/womens_suffixes.php

--laupnmceqqzdplom
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlNpxYACgkQ0Z6cfXEm
bc5QZw/+LBs/ahbNZRqZJiBtk0B4WvCf57FriwFoYqFexjPHOIims4JChND+cZK+
hbeMxD9V+zsAm2nxraNo0SZwh+vx1MDm3mMDHs9RqOU6fQfM3JiuXPGV2NK05iId
7KXG+IM2GgNmWF2DcAqjlBBkoKGPQ44lvhDBnMzvhIf4mrNh3FeuIFYcnxz10Cj2
IppclEhL29yhHfIlKjA6QP290LB25CbPyN28eXNOo0BiVaiXK1FUUgaBLRjhWkhC
9nh8BuRlM20eBO9deAicPJp9cpiLl2k8yomNEA29htAwUFRElZQOogSlk57c98sv
dD5tQNacCL0GTuPPOPloNE+4EfLpCb6aTP1Iy8xrdbQbLykqPLCqVnvQvTCUEEj8
5XEeNq2WqeXrDq3rDDc5A9Cg242Kl8Zy4wFlsjstVZxgR72pnbsCa8wL88FLvoKl
FLE1KVS9dDP4HeMQgtlQExP4VOYpbhfIkeGFZ9wQE+c1OwK2rge1vFB/t6hdZ52q
cutusm96kMv9Gm/tx00z/Uk22Xme3YkP4FMq0TbnP4r/sh5FpAQ/MGsNbn94yHU7
nRNx+vfdtr111vCBnhM6m2B4+z911DIcTTdHAzmGsOHIEekfvpqqSjEp5gqSoIop
YmcTh9DzZFm0t5QdgNPMy8/f0GzP+2j2Mmot6bIXQgU269TfDdc=
=UCBO
-----END PGP SIGNATURE-----

--laupnmceqqzdplom--

