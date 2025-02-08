Return-Path: <linux-man+bounces-2354-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C73BA2D7D4
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 18:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6EDA87A2844
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 17:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63298241131;
	Sat,  8 Feb 2025 17:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/Gq5s29"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22537241103
	for <linux-man@vger.kernel.org>; Sat,  8 Feb 2025 17:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739036876; cv=none; b=jBzSNEZDmIxzNI5x98MjTVb3Rl9mHH0pV2BLj0TkUskkdzkr6u5CFsFZjrk3H1UPeYsQQY75Hd1576qFYXCOJd7ToISD0zMjvmcAVcfYXF9c2ZxFCKOi8grdy3/vrpt0U40i32gngkXkCk/UIIdcqTM+r7+0vN1aL8vTFhfw3ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739036876; c=relaxed/simple;
	bh=QpDflegu+Etb+sDbWRRp7cQoJL4CGLu89N0u5qgXTYo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gik+CH24yPEKTGMdU0IOl3m/yjcMR7jeE26nPJk8PUYDrhe0/GX8mXMex+I0n5Fm/BvrXe81zAM8am/KAuy1mnk8HVuQhxf15jiKP7n1TqYf1a1dt9jyagnspBNltE0j2ZSEIm6vWvrGfOkQ1f/iPme3FgEJjFlK2WZBWb+hwTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/Gq5s29; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56787C4CED6;
	Sat,  8 Feb 2025 17:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739036876;
	bh=QpDflegu+Etb+sDbWRRp7cQoJL4CGLu89N0u5qgXTYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I/Gq5s29BemJ+rYvJiVu7M5V3ItmCw/Akz1ISvOXLDmOhKCodb2tBbEmYBIojFcJJ
	 NriUqhKAtJueO/c5RbypP+VmA3Ujdk0Rt5hQqznQiMjf9ceZfwRGelkSn6GtVQ7oIh
	 cI/qjpha2TkM7D1GDmVI+jxPbTvYaYLWhSn/90/LF4+AKx9XjWw3j8QsQX3BhOwiDF
	 oiVvZNS48ighpChwy9L0MW0FUn47lCPTBQlqb+P3DVPeoNtgBIgSsT6MHENbYoC5ZT
	 oUAoMrrsTysWjSF+3aFyjIZSD3Cmgz8Vjh3JyLSw+m2N2pieOeCySn2HOZA4sFMzqx
	 0PNR9whTDW/Rg==
Date: Sat, 8 Feb 2025 18:48:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: don't use z length modifier with unsigned int
Message-ID: <gh2ogtjhlpf3vzovphcq4vulo22pdg7lzsdohol7fpbj3zcwvl@ewl5ayvhk6vg>
References: <20250207211628.25164-1-arkadiusz@drabczyk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s5ovnowuj57dpfv6"
Content-Disposition: inline
In-Reply-To: <20250207211628.25164-1-arkadiusz@drabczyk.org>


--s5ovnowuj57dpfv6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: don't use z length modifier with unsigned int
References: <20250207211628.25164-1-arkadiusz@drabczyk.org>
MIME-Version: 1.0
In-Reply-To: <20250207211628.25164-1-arkadiusz@drabczyk.org>

Hi Arkadiusz,

On Fri, Feb 07, 2025 at 10:16:28PM +0100, Arkadiusz Drabczyk wrote:
> GCC and Clang print warnings:
>=20
>     $ clang main.c -Wall
>     main.c:30:23: warning: format specifies type 'size_t' (aka 'unsigned =
long') but the argument has type 'unsigned int' [-Wformat]
>        30 |     printf("#%zu:\n", i);
>           |              ~~~      ^
>           |              %u
>     1 warning generated.
>=20
>     $ gcc main.c -Wall
>     main.c: In function =E2=80=98main=E2=80=99:
>     main.c:30:16: warning: format =E2=80=98%zu=E2=80=99 expects argument =
of type =E2=80=98size_t=E2=80=99, but argument 2 has type =E2=80=98unsigned=
 int=E2=80=99 [-Wformat=3D]
>        30 |     printf("#%zu:\n", i);
>           |              ~~^      ~
>           |                |      |
>           |                |      unsigned int
>           |                long unsigned int
>           |              %u
>=20
> Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

Thanks!  I've applied the patch:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D6f71d1e4958bd327b4cea006d27a854e66b85380>

I also added a Fixes tag:

	Fixes: b42296e4feaf (2022-09-15; "Various pages: EXAMPLES: Use unsigned ty=
pes for loop iterators")


Have a lovely night!
Alex

> ---
>  man/man3/regex.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/regex.3 b/man/man3/regex.3
> index 3069489cb..a094c3b20 100644
> --- a/man/man3/regex.3
> +++ b/man/man3/regex.3
> @@ -392,7 +392,7 @@ int main(void)
>  \&
>          off =3D pmatch[0].rm_so + (s \- str);
>          len =3D pmatch[0].rm_eo \- pmatch[0].rm_so;
> -        printf("#%zu:\[rs]n", i);
> +        printf("#%u:\[rs]n", i);
>          printf("offset =3D %jd; length =3D %jd\[rs]n", (intmax_t) off,
>                  (intmax_t) len);
>          printf("substring =3D \[rs]"%.*s\[rs]"\[rs]n", len, s + pmatch[0=
].rm_so);
> --=20
> 2.45.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--s5ovnowuj57dpfv6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmenmO8ACgkQnowa+77/
2zJKzg/+PMnq1ePmapmm2hrd5gu9eSicOb148p86VjX/9rkNx/2sye5cRQgd5uex
zJ7luHGUeOedslBMdrr9dRmKww63ZtWqknJXxTVUyBwG8m+hrUaYXw5Ht1ynJ2BA
7+fLoKnCt7l+t7lcFHkXwZpA/EGw3JvWH0FpA7iSm4gaxJ3r8iFK5weAytWwb2ot
VXqq4fX4Uv33WRUzkVXD8i/Oudh91r+XzxQfqJEBbsKiGrULI436694PwE5ee2xV
a6RKJf3KtCUHCa6TDYQzHNgXtZEdE0NMTMNbO/Xk71WWGawTsea7PfQ2ask6m6vV
EchpuUcMJVVZbD2IFKpnCZTjVYiYw1a3xFwmjTFbORMySQ6/3wON/KZwKMEr8rWj
iC91zqaEDpnFAwkphxmcQJOh2txQHUbFaCUqN8t4GNiAwEhfZfb6Z7Mwgdat0xth
NGc+/jkXHgb4eU6luKqSeDGAtk2cTWjoW6Nqtc3pKKlXy1WbRZwrVrRfSMEMB1g4
BlM+h3vBYgaTqZNRAFEpz79ZzSYloDOUFKl3RGP5jQEdMWXOtizL7LnmdlRmgUSj
8wjXLMgps85ibFypZYMqfmO6EDjqBqM6W3SMv+QhEtHMsfp+G9m78otwj0JBvAw8
QglIRisXgDVp3U45UKweh8JCh4XfzBEmAlfbqRe+4SjYNoACLxI=
=ZBQy
-----END PGP SIGNATURE-----

--s5ovnowuj57dpfv6--

