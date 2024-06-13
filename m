Return-Path: <linux-man+bounces-1179-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A50D907E48
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 23:43:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E5CB1C21BF7
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 21:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59BA3149E1A;
	Thu, 13 Jun 2024 21:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8SytjiX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19697149DF7
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 21:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718314995; cv=none; b=ulBvkUbPpqN/iJpSzeqTscF1yEgDOMx2PppKqyKb2HrNDkD4GEJPjUrMKR3o9zQ6PPK1RfVwkDM/70VzsjTPbIaGcmxhPtWEVTSsuXPwhItuKvquMCY29LkfvOCY4MHPnzG59ro8Xl+SPGhswTj0NahgOqt8zvsqEKeLG5tNcvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718314995; c=relaxed/simple;
	bh=KW3htFDzK9HJuzZKsnZ1g7n8RLRTiEYoqCULFMSwLWM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TCdhWotkipNRjsCKtotS08VNktxOy44o+uysD2jW8Ap6esfQY3bMZhc08DgrW3VvKIsdfpJqvGZhcaGHNbWXW0qcsp7/ICyXWS+Zlejh6MGkh5jmVjikxEzjo7nE/6VXuMYKh3L2w5q8zRncH2xVMORVB+b3vjAksTQdTdKQvYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8SytjiX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0D05C2BBFC;
	Thu, 13 Jun 2024 21:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718314994;
	bh=KW3htFDzK9HJuzZKsnZ1g7n8RLRTiEYoqCULFMSwLWM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y8SytjiX7ocUBORTY9OzEKhP5oAmR1LVDx+QIJWBi7VzDLD3mMnceZsT2JvzO3wGf
	 STbRhXCaUn/atiT14fjfOV6bb7cGSjyMGALphnnEiY0cNihRdhfpg2bItj9P+aqGlP
	 xVIAn4abYPZ6RYSFMLcFBbNd2VkgKOx5pFe1bW9O5JoSLaZtCwSR202zmkXUqvCWRo
	 vmDoZSRzGOsRSQ5gjzwf7Kd9jrDpp6/9aoMkPoeMsf5X6M/ynM/3dq2eGN7sHW/4Re
	 2Bl9pKadGQPsXmHfmJ7VJF6MhOQpYMJb9MBIGjPumkGJa6VI+Kcc+aO01PyKeNBEd9
	 6KMZwH3h6KUQw==
Date: Thu, 13 Jun 2024 23:43:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: "G . Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: Correct escaping of \~ advice
Message-ID: <iabdueonncw6caqflix24yqxnkfupd4wgji27ew5yo4oa2ylpq@iyr4wniqvuie>
References: <20240613205329.3240669-1-briannorris@chromium.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uzzrazsyt3nm2kcz"
Content-Disposition: inline
In-Reply-To: <20240613205329.3240669-1-briannorris@chromium.org>


--uzzrazsyt3nm2kcz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: "G . Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: Correct escaping of \~ advice
References: <20240613205329.3240669-1-briannorris@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20240613205329.3240669-1-briannorris@chromium.org>

On Thu, Jun 13, 2024 at 01:53:27PM GMT, Brian Norris wrote:
> \e[ti] renders as \[ti] -- using \[ti] in a man page will produce a
> literal tilde (~), not a nonbreaking space.
>=20
> The intention here is to recommend \~, which produces a nonbreaking
> space, so we need some more escaping.
>=20
> Apply bold formatting too, which I believe is in accordance with the
> advice in this section.
>=20
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Hi Brian, Branden,

Patch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df1b6abcf7550f6eaba08ca91d6e05d77beee5766>

Have a lovely night!
Alex

> ---
>  man/man7/man-pages.7 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/man-pages.7 b/man/man7/man-pages.7
> index c7251d1340a5..007b9e7a2fc5 100644
> --- a/man/man7/man-pages.7
> +++ b/man/man7/man-pages.7
> @@ -725,7 +725,8 @@ .SS Formatting conventions (general)
>  in italic format, for example,
>  .IR "man 7 man-pages" .
>  In this case, it may be worth using nonbreaking spaces
> -(\e[ti]) at suitable places in the command.
> +.RB ( \[rs]\[ti] )
> +at suitable places in the command.
>  Command options should be written in italics (e.g.,
>  .IR \-l ).
>  .P
> --=20
> 2.45.2.627.g7a2c4fd464-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--uzzrazsyt3nm2kcz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZrZ+8ACgkQnowa+77/
2zIXkg//RCYRG3oJrAKeNRFmZxOH+vlDOA3kvvPKTzGRVPu21OsMWxCY4Bi6gkg9
IuiDt0S5oi4oeyt+KFp54513OOZghCYDGNGJeXWTmyjsPEBzLfa6tZZh2rBAPeeZ
XBkk7Ruj3lt5rU4m5+lDNsX+qhOw9LOFnGnKo/se6GT1ovWW6rIe8MoBZ0ALIRXQ
ZqbpE4K62VWtO8KMNI0lATfoDaj3Nyz/Bo6cZYeTc8ucP1xd+nVf6B/36K1SBIq9
12pOY+Rzcm4sVuYvra4Al0UUOZ4Un8VA0ziJdBWAyhoO6SNOqwjoCvkaHjSBpvJR
xWD9/s3xYV1aWQ9c2LMhQtDtnzoQbBkIdgrhp8f5JtuSSlZpcekXVYPyWnnqCNEp
WGSycayu4STqY0DC4712jtNKhfjicv5OVoANQm7kO9fR8EQWC8EVdZDU/8DZLZcw
obMGvXgbsVSDW06fI2K3pl7LyHhilNwm9tvMtb8R2bb1d6U+f7qOEEuXAAznuvON
y40E98qW1cu8V+EQCM3ZqysjqgINYA+RVLbtLKKDLW0xrTh4nm3q4w1grnQg7Ag/
f8yfi+rKL7XpLse0W4lUZKB1v7dCmB4h8GdU28MlkH2PWBOvvszvM787JTr53lox
hLwAVW3k104GsAAukz0PyUit5SPPhzuwtqANgUD41kBOnYM/zWw=
=yjdQ
-----END PGP SIGNATURE-----

--uzzrazsyt3nm2kcz--

