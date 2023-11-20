Return-Path: <linux-man+bounces-112-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B387F16BF
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 16:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B660B212FC
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 15:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626B21BDDF;
	Mon, 20 Nov 2023 15:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7dP16C0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBD01CAA0
	for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 15:08:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9C45C433C8;
	Mon, 20 Nov 2023 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700492935;
	bh=HSnKdKqbE5hXxLox+C46HLozSAJRrM2QX6OFpismPV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q7dP16C0F7n4A2rE4Z5rna1M4rgy5vHp1nGVCsl3GbpWzTlOHJcgZ+xyQDKnSsUMb
	 wvIQp2B4sKKRzn+u8iguC+9k3/Au/2fMNHmo1xadAQVdeIMYb6r+w+UR4InselpHCG
	 lttoLN+vcpfN+1LaVhzo9tEGr++kOMK1kz6tJUQg7To16p90Aot/8MgRl9W59mAsBC
	 m98n+o34AiJqSSOufL6xZhqyTV/nivpDPQGogNJGyTZOAJXfv9Nnis85y429aY9ppw
	 WPUfdDEoRo/Z9osqZWV/k79DrKuKQSsqapGy7QdsLHwRff80H7Ut+tJ1bN5+jDutCD
	 nm3OQR+lR3tLg==
Date: Mon, 20 Nov 2023 16:12:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZVt3U_muGCT4mk5v@devuan>
References: <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
 <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ebccf5c0-f125-4eb9-8820-e71e77f4f7ed@jguk.org>
 <ZU4s6Vm-jBjFCcJ2@debian>
 <66296bd3-9918-4dd1-8570-bccfbfd85239@jguk.org>
 <317576b1-a2cd-4f23-84d7-830c242d7e86@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hOtxUs8c2sFLSITL"
Content-Disposition: inline
In-Reply-To: <317576b1-a2cd-4f23-84d7-830c242d7e86@jguk.org>


--hOtxUs8c2sFLSITL
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 20 Nov 2023 16:12:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Mon, Nov 20, 2023 at 11:56:40AM +0000, Jonny Grant wrote:
> BTW, GCC has a useful warning for truncation that may help code bases tha=
t use strncpy, you've probably seen this and the article, just sharing for =
completeness.

It's actually the opposite.  GCC's warnings about strncpy(3) are
nefarious, as it warns in valid uses of strncpy(3) for writing a
null-padded character sequence (the use for which strncpy(3) was
designed), recommending the bogus use as a function for copying
truncated strings.

>=20
> warning: =E2=80=98__builtin_strncpy=E2=80=99 output truncated before term=
inating nul copying XYZ bytes from a string of the same length [-Wstringop-=
truncation]
>=20
>=20
> Martin's article from 2019
> https://developers.redhat.com/blog/2018/05/24/detecting-string-truncation=
-with-gcc-8#forming_truncated_strings_with_snprintf

I discussed with Martin about this, IIRC, and he told me they had to
decide which use of strncpy(3) to support, with the side effect that
other uses would be warned about, and they chose the one that I think is
bogus.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--hOtxUs8c2sFLSITL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVbd00ACgkQnowa+77/
2zIhYQ//ajZZcwcu3sraanqS3APt72GqpdAnR/yJflSZSNf2xmZWBhiBMxPyQh1Q
Q9iv1tEM8QKiZj1MX3ILH5k0A+yodAiGByDH/rJMnivRuTKnYKXOt/B2MkgUD+bt
95tnyySCdawH0Q/zzdTFM0MtmO84mCZIJ51J6L/ffgawZkRUzLlW//gwE9MKVMgC
GjdwpnuiTe5S+TkN0HmgxNQh+cGj2kt7qbm12TiM/wPJw2ok01YpFD5hH6hEjl0t
OLc1cmE3ndnJz0SOAwliH9t8mZXZ6IuaXOO2ZorFQJ3bA18HABWRStwWKDtDWDCh
upEq/GcXpEoZYyDoHQpQIhtg6iQd2L5H2LWFGqPRZRT9F2xMYK1f4Kp4UyvfhAOV
xBwdpNBuwCXuq+rGnizcRTUWfMC1dS/cdOb0PwoCp5YWItu+F5bBR1KP+LWEuYbM
eFYXoq2YYFeGunoephy8O/zOqG2QaGjTAxsqzDaXLr8fy7U0/Tg9J4ZuIhE33Jqz
6UH0JocgWALdiSoJ7MhAVDTwMdlyrH2abgtCYxpxD3YOjCLm41DUPcbOgXsjIbIb
QOZgssaWxIquoN5O+OxRCU0wCeII66Ap2Z8vqSvxrsdmPeGtrBooY41A8kDK50lO
D+Ld/EZT5bzHWZgei96VdaaaoMnl4JRCWGZw2xGIGx7Qp9m3gl8=
=mStx
-----END PGP SIGNATURE-----

--hOtxUs8c2sFLSITL--

