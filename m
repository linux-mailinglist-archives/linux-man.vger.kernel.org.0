Return-Path: <linux-man+bounces-275-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3294281B892
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 14:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6205B22ACF
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 13:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E74E3745E5;
	Thu, 21 Dec 2023 13:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="ktPUousA"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F909697B1
	for <linux-man@vger.kernel.org>; Thu, 21 Dec 2023 13:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1703165358;
	bh=jW+pyTKEDbSMOSiCcrWAOauInAONJj1nvhLIiKfh4NA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ktPUousAsijyOYWUKSSQYg3J9AoWIy2kaq2JpBvmQMDq5LCiAUed0BTGp2EsfkU3e
	 6UKg+Pa77lW40rU41k/NeypYQQ8etXVpZnuNElEiW7jfVii3eo1oioDC4BtXvKMQCE
	 DI2U2Ilcse3bo66g3sW9gYzdN9UvGR8XWXL2inVzMvVfaT9BPKtbCApcbPwARnqcDt
	 9qpVekK07iPyFCTlJubxXHixoZNh8H9zeB8tVg0/DFB0yS/4gBqcE224f9L9X4eCBp
	 UAEjMt8VAUBok7VUZ8ngW4NT4huyoCa4Z5PnuRIAMuI+BT7sC0baFpEvJ4FADce4gh
	 9BzPgANYpfOtw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 019D9139DC;
	Thu, 21 Dec 2023 14:29:17 +0100 (CET)
Date: Thu, 21 Dec 2023 14:29:17 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sendfile.2: pull in_fd type requirements up to 6.7
Message-ID: <cbxsscnmiajzvd54im6ayk7molxyt5mtr5idwpfobpfftbr6h3@tarta.nabijaczleweli.xyz>
References: <tovce255glwqzbrwuwk3ijzzrww3si4q3jdoh4sdw5zgah7ki7@tarta.nabijaczleweli.xyz>
 <ZYQctE0y1UTy6VvK@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yscexqxaavql2ltt"
Content-Disposition: inline
In-Reply-To: <ZYQctE0y1UTy6VvK@debian>
User-Agent: NeoMutt/20231103-116-3b855e-dirty


--yscexqxaavql2ltt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 21, 2023 at 12:08:30PM +0100, Alejandro Colomar wrote:
> On Thu, Dec 21, 2023 at 02:31:35AM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > But this does mean that since 5.12 supports
> Did you mean "since 5.12, _it_ supports"?
yes

--yscexqxaavql2ltt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmWEPasACgkQvP0LAY0m
WPGXPA//UB0n6xtoQaPfJ3fmNuquhYU03c97s8okbuxEXlPMofVM2M6FrrVbYHZY
0fbtM3cz/zfi+7MUfWytQlkTMTKIUDETcZ6TTwgRS9CAcOAYtx6xv/Z7DRQrbCoU
SV3E/W2x19anLsBIfQIiGSqqJPDlMWb1GE/ZzSfkP6GSTwYjO6seeN5nM1CZ2h92
iQWJhagxNus42HGRTA4Svor24fcVmdWuL9VFqimJM3PLQGyUi3aZY7Y6SR75rbPC
pbASSb7GlefykZpPH/UVG2zNkj9ZhfTzvHDRQch1+5Op/8wKnQPIUV3xHD23ezQs
UP6aWi+4nxFgSAlYkmUR+Mf4KGma1NretmWEkEIwjRHnIMUA3vWWykrCgPqW5Jba
SCSTntRQ7ALHtetyTzuT626zreSd61bWrjBEQhPiAXB9cVmqmiLPNF7NczlZHRur
mIBUhT7DjlfcMS/o2+IXICP90TiDkHLepAfDtRUeAjfGOnEHvBd7qzMW3WmFKlwf
N7jhhP/H6Mh7raKkE59MFYD8AINBMePaG/P6OHmTrLV2X94fwD7AMbqFjhdXCh+n
03lAqTl2xjE+O+ITa4vql7QiNtsw1Kp4a4HjFjBHpmCkrdjw3XeGI5SWVugBTJpD
EuWIDAB9mhD2PtKqXglwjsQhYtGV6BUdNv2RM8T0tyw2RNLicYw=
=q/MR
-----END PGP SIGNATURE-----

--yscexqxaavql2ltt--

