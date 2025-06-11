Return-Path: <linux-man+bounces-3120-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A49AD4E27
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 10:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F41DB168298
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 08:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F8F238140;
	Wed, 11 Jun 2025 08:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwKfPUfu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281632367DE
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 08:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749630028; cv=none; b=s3ZgfUfNpYv6T8RDQQd68xvotajq8FlgqBuEDibDIDuKvPR6P7L5ieGNfDI1I4vPSUmlgRa57NzT5gbeDbv3LdgL4gYtlNGjTeqtfPOE8XbTUeS1F5vxpszn9viREhJZWMprkBfS5NKyHITy6tQXVBsCLqtckEdZZfNNq6db2w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749630028; c=relaxed/simple;
	bh=Qzj4tpO8WzlXSigN12HNhkfFe34VeTsBo5KqD80q/v0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j/wdafWHoX+++RCAJ5eqVBopkyF9j+N2I6LaO3oF9vAsyor93M1LhBBHi7MnTU5sgRi2hsTfe3j91N8T9adE13lfVhXwyCwuG000aPlRpl5JXeGfRoxQWFYQYIr8qYWDG4NdWp1Q25QtdY8Mcxg9mi8TX7voI8ifhyOXOmYZTbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwKfPUfu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55B49C4CEEE;
	Wed, 11 Jun 2025 08:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749630028;
	bh=Qzj4tpO8WzlXSigN12HNhkfFe34VeTsBo5KqD80q/v0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gwKfPUfuM8LA4X0Er65SQy2BAtVuiwTtpBcUOxhWbbn1YMplHWeOFzKHHxJIv49pi
	 Jt5V6STLWhRwu0YljZ+hZ3iCTMtYT7TwJc7JYYymyCGmbvWvPwH8w7o67T7zAWFVKd
	 YlctGda2szUrGBjYEzNJCJ9ur8y4MI/kpyD3XktR28SPCMs6n0z70MB4xMs5oYxjmU
	 rMGMt6BAfPQp6x0KQov8H+y/hi8YkKqx7W48d/I2smcayACv/TCWtXMHMBdrdEVztO
	 lATTpp1ypJOTZFktfJbFbzsUraKJ/rr3Pmt0UJYAxoxUB48HUyMCZrekm2tVXBxPtx
	 dQRTvjn/wm+2w==
Date: Wed, 11 Jun 2025 10:20:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Nicolas Pitre <npitre@baylibre.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: document
 TIOCL_GETBRACKETEDPASTE
Message-ID: <u6lvtnidz7tgi7vcpxzjccvuh5x27lyoegmj7hz5rpvtpltiz4@irci5giltz3p>
References: <o5p79351-1ops-on58-3o20-rp142r6s4o21@onlyvoer.pbz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b4ipsr3pqwigswg4"
Content-Disposition: inline
In-Reply-To: <o5p79351-1ops-on58-3o20-rp142r6s4o21@onlyvoer.pbz>


--b4ipsr3pqwigswg4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Nicolas Pitre <npitre@baylibre.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: document
 TIOCL_GETBRACKETEDPASTE
References: <o5p79351-1ops-on58-3o20-rp142r6s4o21@onlyvoer.pbz>
MIME-Version: 1.0
In-Reply-To: <o5p79351-1ops-on58-3o20-rp142r6s4o21@onlyvoer.pbz>

Hi Nicolas,

On Sat, Jun 07, 2025 at 03:59:33PM -0400, Nicolas Pitre wrote:
> Corresponding code is in drivers/tty/vt/vt.c:tioclinux().
> New in Linux v6.16.
>=20
> Signed-off-by: Nicolas Pitre <npitre@baylibre.com>

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D57013e97dbc677245c67fed6c838e5fce0413ca7>


Have a lovely day!
Alex

> ---
>  man/man2const/TIOCLINUX.2const | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2co=
nst
> index 90984e6b4..86e9ac105 100644
> --- a/man/man2const/TIOCLINUX.2const
> +++ b/man/man2const/TIOCLINUX.2const
> @@ -271,6 +271,14 @@ Never used.
>  .BR subcode =3D TIOCL_GETKMSGREDIRECT
>  Returns target of kernel messages.
>  (Since Linux 2.6.17.)
> +.TP
> +.BR subcode =3D TIOCL_GETBRACKETEDPASTE
> +Returns
> +.B 1
> +if the application advertised bracketed paste compatibility to the termi=
nal,
> +.B 0
> +otherwise.
> +(Since Linux 6.16.)
>  .SH RETURN VALUE
>  On success, 0 is returned (except where indicated).
>  On failure, \-1 is returned, and
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--b4ipsr3pqwigswg4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJPEgACgkQ64mZXMKQ
wqkD+xAAl02A944RG4D8w2GLqCyhXqLZOBi0MlFel3kRWN4Fas4UaSxMH5dHayfc
UOCVncpyoYA1FkZSGRC/heDyB84/bTQGV3nvodClR/Af1Mvi3WAOPPByQPUrfgMX
02Tw8s03ZqrpI0rdpj0ackVuCQTOnoiCSL1PmuyEl50JwwcTrw33oCvZxpFaWx+5
mPsJL0oW3qX79skOfMeBWVkoUyqtkvGVfDH1/DK5ChUJVgL611tpcYWYDMcdZSlL
OEUxsBQEP32yQo9SezsFw2R4F5iFcTFWvezTHRrvVuiUpV/MpSJzK715jeqtV/u0
fJil4x9utBGwlTASNc0lzDV1I9lx0hTGOcMSGOFDHFshtlvX7cKx7YzgOehuW0NX
TFtVjI0W3GTcRl5gzgeXe+j6gtAt5L4/i6qjVcmViIZ5yC1sFddpUAbNH0yGgjzu
po+U+7KQpo+qH1+RZfhyOAMQa8AVvk01KY5hrVY3ZujYEiR8Qs8Ht89fB90onoIV
NeLKfZpvjYePrj2P1vuXZNvREuZnVNc8boMe3ouLFqnNye5GOK0UukXxf5ZmqIb9
OqHqPBLxiQlz3qXbCGfvZA/xuqoOGZ3XuFECEzffXVGo/IJmD5ILbdL8NfzdGRNl
kRwvpcrIuHvYT5neEsTil3KvBVXUQN2mMWVzMPhDiGGaEeb0GSo=
=43cX
-----END PGP SIGNATURE-----

--b4ipsr3pqwigswg4--

