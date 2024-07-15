Return-Path: <linux-man+bounces-1473-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC98931C9E
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 23:29:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 044CA1C20E70
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 21:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07CBF1369B1;
	Mon, 15 Jul 2024 21:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nskNRP1j"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE2673477
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 21:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721078981; cv=none; b=neJ247+3lVf2O/isrZp1v4rKn5eCxkZUNXkRR7wkom+ygzKfaEXAadL7cuVGkgPt7jQMSmax09YyWHK819ATClKJVIRAM6s7Y6rxJPwEfMGGXQZy6uZBHrEL88DwlFlpSrGFCrad6A2GiL5fW6UwHrzuxAHa6Uf5OLdcffZ3tZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721078981; c=relaxed/simple;
	bh=Aeycy/NbwDzFzpWDrNEy5cBjBxUOKd4xlkie8ivSdTo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B100IUoZitAglWbVR5MMaQ/YebHLJj4nCdk4RWlTSPvrDouy2m08HjbYRPyPhxLwHFZVvhn2n3yL49hUFrqeHEO3x5LTX9Sjgyq1za0pUgTNp0YNsg55wL9cM51bEAVSfaRejc8rSxXsbexJO4kkylcmg3Or/P0VF0z9p/YsSFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nskNRP1j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9473EC32782;
	Mon, 15 Jul 2024 21:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721078981;
	bh=Aeycy/NbwDzFzpWDrNEy5cBjBxUOKd4xlkie8ivSdTo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nskNRP1jFBVDppj9famKTBAO/9siwG3Q7YjCPJHw7Env7pDUf28fw0/D3Qw9xKoY4
	 cyzUumAE2kMhDyyr7fL18OXuXrifU2qmfwhQW5tW5/Ssbb/h5hWc4ZyO/tVglFDk/n
	 Kv4rFr8GaaNXwfuqttj9zw16SqKu1AtH7sB5cWZh9EYoVkGxwtppsJb2a3xSoxKET9
	 iGXhLn+tXF5FM14MFK6VlcUnfAGWit7n40nhYW7Y2Jdzsa53ff84+C5u8BeDrEaK4X
	 OX9yiCK7Yw9dgc1sqdPmMAoU6fNXGV+8/lkpZDH6h3Pmk64WTimyWw3P5ze4vrr0YU
	 0kXb7/IT9tuVA==
Date: Mon, 15 Jul 2024 23:29:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Keith Thompson <Keith.S.Thompson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Ambiguity in memccpy() description, with patch
Message-ID: <hrbz4sgmavikjl2lb3hmsztmyfmwo3rwzqbfuzfgkrpeuq34ds@wjluxxazndcv>
References: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="posw544bqj4cy7il"
Content-Disposition: inline
In-Reply-To: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>


--posw544bqj4cy7il
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Keith Thompson <Keith.S.Thompson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Ambiguity in memccpy() description, with patch
References: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>

Hi Keith!

On Mon, Jul 15, 2024 at 02:14:23PM GMT, Keith Thompson wrote:
> The current description in the memccpy.3 man page:
>=20
>        The memccpy() function copies no more than n bytes from memory
> area src to memory area dest, stopping when the character c is found.
>=20
>        If the memory areas overlap, the results are undefined.
>=20
> doesn't clearly say whether the final character c is copied or not. (It i=
s.)

Agree.  It is implied by the RETURN VALUE section, but the description
didn't say it (and the RETURN VALUE only implied it).

> This patch copies the description from POSIX
> https://pubs.opengroup.org/onlinepubs/9699919799/functions/memccpy.html
> with the parameter names and added paragraph break retained from the
> current version. The updated description is:
>=20
>        The memccpy() function copies bytes from memory area src into
> dest, stopping after the first occurrence of byte c (converted to an
> unsigned char)

I'd remove the parenthesis.  That conversion is of course, no?  For the
standard, it makes sense to be pedantic, but for a user, I doubt the
value of that statement.

Especially with this function.  My personal recommendation, after having
researched so much about strings these last years, is that this function
is useless (unless you're restricted to ISO C, and even then, it is,
because you can write better functions as wrappers to ISO C functions).

May I ask if you have any specific need for string handling?  I'm
developing a string library, libs, and I'm interested in feedback of
possible users (for now, the targeted user is shadow utils).

> is copied, or after n bytes are copied, whichever comes
> first.
>=20
>        If copying takes place between objects that overlap, the
> behavior is undefined.
>=20
> I have not (yet) checked whether there are similar ambiguities in
> other man pages.
>=20
> Patch follows:
>=20
> diff --git man/man3/memccpy.3 man/man3/memccpy.3
> index 0ba805176..057890f7e 100644
> --- man/man3/memccpy.3
> +++ man/man3/memccpy.3
> @@ -23,20 +23,22 @@ Standard C library
>  .fi
>  .SH DESCRIPTION
>  The
> -.BR memccpy ()
> -function copies no more than
> -.I n
> -bytes from
> -memory area
> +.BR memccpy()

Missing a space here before the ().

> +function copies bytes from memory area
>  .I src
> -to memory area
> +into
>  .IR dest ,
> -stopping when the
> -character
> +stopping after the first occurrence of byte
>  .I c
> -is found.
> +(converted to an
> +.BR "unsigned char" )
> +is copied, or after
> +.I n
> +bytes are copied, whichever
> +comes first.

Please break after the comma.

>  .P
> -If the memory areas overlap, the results are undefined.
> +If copying takes place between objects that overlap,
> +the behavior is undefined.
>  .SH RETURN VALUE
>  The
>  .BR memccpy ()

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--posw544bqj4cy7il
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaVlMIACgkQnowa+77/
2zJxeQ/5ARHZobhmvls3BLxvW5+6RKdBzTpvX4JTH5ufQ+6eE3nx9GV7Cd76xNWR
uqSE259HEm6nWZ5QyEcwvp/Ad4JHNKE1QNEX/zZ6+f82XGNUv6bkyT+vgslKiYXt
CuVL+xvxw2BoJylsnKtRZFZDgV2cqe/25ceH+oX84W+iczi0KlUcPrVkDV5m6dxb
8fjqksHFSym8VIYFB3mgkhn+0sPwkO5IHMX8QmdpF3aWIeHRnVh43TwzTvssJcq6
tEfuNwKcdZUWFlYag0kfDHEuhetqCZ0EEK+w82OBFIpeJX+vKGdP+fbAF6QvFJB2
TZdmssGuFNZc+hk0Hf9Xu89173J6vaEBXgGcrqcu/+8EuWx4itdEArERUTS4/ETZ
oSZvPm2QW4w9UTkSe/KcQ6mM00im9kcf4/Kwi1cEoYfw+HSB5Odtmslu6o07pdRh
Mz/8Q/L/JJU7xBPsPdpFY5CE/fgZUTZt6Hrmgo30CtIhc69KT8klobf20cKywhKP
Y77AqDjF1SfuKkkk6FxSh8TCmoNM1EoqKHF8WKg7f184iDkj+QZVB66QHQfLUmVT
13rbJRk5in/gpTxPstNOwLIRLebzaQXkEL4cl6Kp2kWwIBJj7+py5sgj4NMGsypG
zcOmfOu/nSOV8w/I74l934AJK7545KEl9/hd4r0IsCRxfmzvn2M=
=ntwB
-----END PGP SIGNATURE-----

--posw544bqj4cy7il--

