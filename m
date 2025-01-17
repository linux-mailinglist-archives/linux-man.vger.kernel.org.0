Return-Path: <linux-man+bounces-2255-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB83A14DB8
	for <lists+linux-man@lfdr.de>; Fri, 17 Jan 2025 11:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A37B4188AC56
	for <lists+linux-man@lfdr.de>; Fri, 17 Jan 2025 10:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3670B1F9EA0;
	Fri, 17 Jan 2025 10:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvcU0GfT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D7B1F8690
	for <linux-man@vger.kernel.org>; Fri, 17 Jan 2025 10:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737110224; cv=none; b=GgMpJeJ63z4XA53dcYMBBZSpN+/hT7/lkJheSze1APzHEzrRq/JDF5r+3JbL9LF6jcUKnnGyy4L1Eo//5VeRFvo484hkvjx4iv85bhzhdqW+xBKAlEFQcfWfNgSgHEdXRgk7ncBOzGHYB7q6V9vwVtNPgmIbXg5lf+9mA+BWdEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737110224; c=relaxed/simple;
	bh=WgpDcGsEP3HnBUoASEGPBvXryMEdEZTaADOhClZmEFs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iNk22dv8DdVcItd2lwgA7GAL5GuaROslBIgdbGbFdEJ/gxnMNBW7wG5LGbgY19D/GjguVDNMf+JI1FAYznJnCnsXx+ByU72e6enouSRsqziCvhZjerc7Umh4ADX/o/XKQ3oYHgnzdczGfHFIkFK9oR0a5AUmXqw8yPaEdrmhYvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvcU0GfT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B24FCC4CEDD;
	Fri, 17 Jan 2025 10:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737110223;
	bh=WgpDcGsEP3HnBUoASEGPBvXryMEdEZTaADOhClZmEFs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uvcU0GfTcUKND0At8rxHvCshZUVunqL6Jf4Y6pZNh8KsDokcy4X0ptdvO7FTOjhRq
	 lPw6FQWuLQT3+PmJ3tApM0ElunRCFa0FNIxmzvzSadTcRyaEPbCyYw7RikxESrC49f
	 V/8K0GdCZj7QZAjf0B9WopJa2fWxWdRk0ZVtLV3ORtE6y4L43yNr5Nfz8hW0Y8IVxD
	 oUv0CdNuvzLGZS2Blmv8M03fps4ZqAZ88+BVU3VLb8681K7xOyTQ9c3uo6Li9Tw37c
	 gEeXHpLLrjr64rLYiaaOzwyarORXpJzYAAuI75nL1vxn+qCsWK/bEhodu2FOjSYSrh
	 xfLWqiglAPrSQ==
Date: Fri, 17 Jan 2025 11:37:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Wyatt Carpenter <wyattscarpenter@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: comma splice in unicode(7)
Message-ID: <z6dlkx4crybzekonfxzmm4ehvsdhzyzxj6gct4k76kojdlhpu2@uquysoalop6n>
References: <CADwVmK1HeikMTODLu-NpThE2po2u9n9FaCgEQQQcvkzz-3h57g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s2oemksdrbwfvafw"
Content-Disposition: inline
In-Reply-To: <CADwVmK1HeikMTODLu-NpThE2po2u9n9FaCgEQQQcvkzz-3h57g@mail.gmail.com>


--s2oemksdrbwfvafw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Wyatt Carpenter <wyattscarpenter@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: comma splice in unicode(7)
References: <CADwVmK1HeikMTODLu-NpThE2po2u9n9FaCgEQQQcvkzz-3h57g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADwVmK1HeikMTODLu-NpThE2po2u9n9FaCgEQQQcvkzz-3h57g@mail.gmail.com>

Hi Wyatt!

On Thu, Jan 16, 2025 at 09:00:14PM -0800, Wyatt Carpenter wrote:
> Hello! Today I noticed that in unicode(7)
>=20
> > A combining character just adds an accent to the
>        previous character.  The most important accented characters have
>        codes of their own in UCS, however, the combining character
>        mechanism allows us to add accents and other diacritical marks to
>        any character.
>=20
> should be
>=20
> > A combining character just adds an accent to the
>        previous character.  The most important accented characters have
>        codes of their own in UCS; however, the combining character
>        mechanism allows us to add accents and other diacritical marks to
>        any character.
>=20
> With a semicolon instead. Hope this helps!

That's right.  Thanks!  I've applied a patch:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D9b8dc5c8b3cafed82f8400ba6d19bc8df5ff6772>

> Love the project, by the way.

Thanks a lot!  :-}

Have a lovely day!
Alex


>=20
> Regards,
>=20
> Wyatt

--=20
<https://www.alejandro-colomar.es/>

--s2oemksdrbwfvafw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeKMtkACgkQnowa+77/
2zIV8w//bKN0Bx+bYxMm4TPPpENyr83fZcvIt6tOJpvV+Im9/Lvg9harxMcLNqfi
deklJUQ3SkLvXBV+Deztn8vqFGbBHvlYJuvzEnBcLgxPxMS3L0PgFk2u/J9LVqZZ
ueDycEQczLMmzsDGrJNXg3rhwNIse35r/HDIdklbBiR7boV5Ebw7NqnNryB09y5T
aMdZWQiDAkjbcaBtDoEy2rMiXalBk2Fo2V98VnkRXPim6akIY9miUZKYBqfqHi+G
dle7OU/Nwlw8Cxa/Qa2AgL8ERmmu/j0veBsx1817tin35Wa06ruJcNKgx12PRHgf
3EBIjBoeQjtl/CvgyrZrjUBntVyXR1+mCMDesUouQCr6Uuj/Dcl3JDB3bYZLw/V+
MigEg7vMtzTWdMZ/9U7qVGfYPmogk9gk8S4kOnjZKy1ikALUNURRKccTbOZGrVRL
6J2B2xG1Sx+gbpLnuUE2rtnitZ1beYApaBPNC8x/IZzUl8ovx6IeW5c9Dzq4DfaF
8cEZLjoyGJw1gY8kQD6PyjtsgUVo484i1tlkaEFk1wGmQnFsBZ6Uf0erCMjk3MoE
PEtwB5o209bDQ1hQ7vj30fRduqSu/m69z7U7o8u7U1tZ3o9TnoabHgDteLyBXY9+
RIIgQEaz7RlUQlsuEP7FAfptot9H8UzEsp6J1vb/t+imh2BMANU=
=qQNc
-----END PGP SIGNATURE-----

--s2oemksdrbwfvafw--

