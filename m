Return-Path: <linux-man+bounces-2645-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4297A6D098
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 19:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F14FA3B3EBE
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 18:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72DFF15666B;
	Sun, 23 Mar 2025 18:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ariyCgGP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3246113A244
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 18:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742754916; cv=none; b=SmFJzmmbxqTqBaulxxFG2uQ6kmMVibFE+noxwL7g7Q33L06CUIbMJkAPXAuLhQjtm2qrgLHD9/TfNfWvxxx9w1xJvuE6yp3G9wTr9fJKFngT6orGUnb6ctHy9AvtSCQ1V7A64VZQ15P4wenpWVkjNK1/SittJFN7h5hYNoShR5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742754916; c=relaxed/simple;
	bh=CetRpVBq4GkCg09QpfKBsyGYUd1nRb6WDangUKiZz5o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SI+yBXzZCSpH1+ZAf2uRBrdR7mrIlGLoVKpLGhK1/Z8lqTKr68yctU0xKb4Sry079PsTqi5M4+YXZQpZvYyyA92AKQCh2bYT9dOoYcCFFGA4O7EAOZY8eleSBd2x5Nh7laBw2J0Qnd+AIOltOPRnnK6aEHjlHexZB7Fdd1RQWNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ariyCgGP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0C70C4CEE2;
	Sun, 23 Mar 2025 18:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742754914;
	bh=CetRpVBq4GkCg09QpfKBsyGYUd1nRb6WDangUKiZz5o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ariyCgGPugSViMZspNQOQaiZRGoJZUqteiHgPgbE5F++erip5U3DXyUCoYSiJVCPQ
	 zJPH9uUrcvvqMj8XTg08EGl1de25gysquAUFRfkzdYaORkZNTXHxxOf/x5q8ceTbBL
	 EgrJHrSgjvlBkRElksAfTD28yAyQXiulE1QlRq8Qj5K//KE0exMMhtxV7ybIoblIah
	 PUt+L1V0rg8vnKNbrabpZ6zABtl+kwwqtVjemLT72ckxb87sfMthiidT/jWeLNzpHu
	 GF3LZUl5oKp57Aqu4M5KJE/WoT4HxV4k9vXZ0TrXoeq32OWZ14YZj5pRNGqinl5YkC
	 dt48AX8vralow==
Date: Sun, 23 Mar 2025 19:35:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
Message-ID: <qblv2p3mqwhuyt3amhprfqvhtz2el27bfdzplrbzhl5ntdrunz@x44y3q5co4sr>
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <zusjuuurckbegw6z36dbu7ef7pihqf2q6mdwopq4f2trj7p4k3@laqprnbwkaxm>
 <h2rhdhq6vxq342ateopajd7z6krccemqbfecedsuiyuhhnl4fk@gvvoxoycovdc>
 <19368838.fAMKPKieAE@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6powfe7nrllssgjq"
Content-Disposition: inline
In-Reply-To: <19368838.fAMKPKieAE@nimes>


--6powfe7nrllssgjq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <zusjuuurckbegw6z36dbu7ef7pihqf2q6mdwopq4f2trj7p4k3@laqprnbwkaxm>
 <h2rhdhq6vxq342ateopajd7z6krccemqbfecedsuiyuhhnl4fk@gvvoxoycovdc>
 <19368838.fAMKPKieAE@nimes>
MIME-Version: 1.0
In-Reply-To: <19368838.fAMKPKieAE@nimes>

On Sun, Mar 23, 2025 at 06:11:39PM +0100, Bruno Haible wrote:
> Alejandro,
>=20
> > I ended up doing what you said:
> >=20
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3Debe5a89dcd431d15c54ebc22eaa35721496fee4b>
>=20
> +if ((errno =3D=3D ERANGE && n =3D=3D LONG_MIN) || n > max)
>=20
> Here: LONG_MIN -> LONG_MAX
>=20
> Signed-off-by: Bruno Haible <bruno@clisp.org>

Thanks!  Ameded and pushed.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--6powfe7nrllssgjq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfgVF8ACgkQ64mZXMKQ
wqkHLxAAky75C2DGlvVj8lryoX8Cf5cvB5H2PVDtCsBi8IeYlxlgXN72UTzIssMF
JgWEmYbtNdIEVz7osYHETCcx83XXLgLZJ4ZR9QMI8jcPdwyg+8T5I7jbksiqSWzn
tdMp9jlZovWhXJZ+9yFCH2Up+wurr8JmCMWFcoE6bNU8NEmr+SFplcUGPFeb2Rdy
SQq3MPSU+Tc5DYOkzUZVwbVCZHfd9Ma7bH51Tnqcu38OnMkeTVpU1MkagQmyZuy4
daJsCj1DYVVCpJqQv4XqV3qhFqJHCgVaJwGYvt1t/AqPK5Lo841RfKQJlMEEOcK3
4idMK/AyaJ1cPu15hZfVjPs2Pb7hzLp6Zh6GoWT7Qc5CWIax8ggu5zq+mhpTy8kF
WK5M4v/zOVxtcsobMDKyKxEXYi4YAHRRnZtZJNb/XcVuubFwIKNwJwSAGGtETrBP
3C03uARcWarDHPmLUKmjNLIp58h9tJyO+1FR9D3ulDzLuXbK7ClDhurzzJz6u8EO
dsN6nX0dwhsosHSw2JEzlSF5pdCUduh3/zmCIFBuGB0LWONKvUFLAATK5x3r2NUz
c1ydD3YykUPTBqUkD9zJitn+6zLouieeqNRFfIjCooFYbqaKat34SZxRzTfuyPe5
ccXc/jqWalYsHCVo5RnyXWiKlqVmmZRTT2AdxKJmpzeiwTmb2RA=
=o2L7
-----END PGP SIGNATURE-----

--6powfe7nrllssgjq--

