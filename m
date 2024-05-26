Return-Path: <linux-man+bounces-997-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB998CF3F3
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 12:39:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 267E21C20916
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 10:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 052619454;
	Sun, 26 May 2024 10:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7O/oxzp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA93F8F4E
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 10:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716719950; cv=none; b=n5eZbR/0tf9CKSafJY/XntI1TbjBbx52YfVD+3xy9yP7nVItD9++cKLtXIbd6Rdrz8avX7ePbnKMJeGzqLEP7o63z0EqYsrWr+zzFVeGlzCYA4kQzaAiojT7+/8XWyQllrlonUANAGkUCrQqa1C2ialXCFyT5Ui3ti2kDUefXpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716719950; c=relaxed/simple;
	bh=hv5jtxAzBBD6Ny/nU4wTyiX9YUgHOIEKXo7PgkTEZIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cjqt+5Ohe7I0u5DdD81g++GL6yAyoi+clrsJlSPYyPQry/ADVTxyVmLCKY8SDArWzvXjDK2bPHHHqy6ejrEH9Q7kdGXevZhR6e4zJ8q7gngXSLZ10XdM3hJFsKXSSKbUxIdtmwsUjZ6eAVDQDyK/lKCr6eRLWg3CLsXQhUPoVUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7O/oxzp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95F7BC2BD10;
	Sun, 26 May 2024 10:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716719950;
	bh=hv5jtxAzBBD6Ny/nU4wTyiX9YUgHOIEKXo7PgkTEZIw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O7O/oxzpbbbeOtCTv/ztZFbQhlLxCAV7+d53lGqc7NfsDk9R6ZP7ZvkzXlUg8Pft3
	 6MzGEYGI0TEEy+C0Iy95bOShsf7dFfT9rFz5Ejyegyg2KV+zrpsKgABlZmqLJVg/Nm
	 D985aQdcOdhixCtGAhcwHbAkL6jdgIFlrKiyOYzC6+kaSz5NzcefwxHkKu4jrksTRM
	 o7TTk3P8mIY1b+r5Rbsg1IqobFPRWAxye/ZhFT+t/S3UFD5oNz7X0iU3k+Mpi4Ip6K
	 z3lOLqwSOBXO7Clrc4AfzeLWwwxxNgFahPQQfjGPF0LvkcmRAibmlBXCmo4wMO8Y5O
	 +B6gsGeOTzuAA==
Date: Sun, 26 May 2024 12:39:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE
 requirement
Message-ID: <nx4yzt26bte57ak7vnc7tkl7ofs6fmqxkaexhvx2ixx7jst4yb@xui6m6mjxoz6>
References: <20240526064227.937757-1-torreemanuele6@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ce3maxhltbw7ugvd"
Content-Disposition: inline
In-Reply-To: <20240526064227.937757-1-torreemanuele6@gmail.com>


--ce3maxhltbw7ugvd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE
 requirement
References: <20240526064227.937757-1-torreemanuele6@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240526064227.937757-1-torreemanuele6@gmail.com>

Hi Emanuele,

On Sun, May 26, 2024 at 08:42:18AM GMT, Emanuele Torre wrote:
> Like the unlockpt(3) function, grantpt(3) requires _XOPEN_SOURCE to be
> defined before including stdlib.h.
>=20
> unlockpt.3 explicitly shows this requirement in its SYNOPSIS:
>=20
>     SYNOPSIS
>            #define _XOPEN_SOURCE
>            #include <stdlib.h>
>=20
>            int unlockpt(int fd);
>=20
> But grantpt.3 did not:
>=20
>     SYNOPSIS
>            #include <stdlib.h>
>=20
>            int grantpt(int fd);
>=20
> o/
>  emanuele6

Patch applied; thanks.

Have a lovely day!
Alex

> ---
>  man/man3/grantpt.3 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man/man3/grantpt.3 b/man/man3/grantpt.3
> index 94526691b..f2d70ebd6 100644
> --- a/man/man3/grantpt.3
> +++ b/man/man3/grantpt.3
> @@ -11,6 +11,7 @@ Standard C library
>  .RI ( libc ", " \-lc )
>  .SH SYNOPSIS
>  .nf
> +.B #define _XOPEN_SOURCE
>  .B #include <stdlib.h>
>  .P
>  .BI "int grantpt(int " fd ");"
> --=20
> 2.45.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--ce3maxhltbw7ugvd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZTEUsACgkQnowa+77/
2zIsKA/+NBFGA0CF5aG5FD2Z6ZWzkpyPP+EgPuAXIn+eubPDSUyGgExT921o/XIy
/FDfwORjXqjKAD5wdrn7xlRMVny7Bj8up0GUkS/Ei4ffmxvBtm3Tzbq48jr3dHTz
ha2Jk9A/jTmMcOuSehJCeDlWQwJ0Qa3mrR3T3SZSiTEZduIEeiZYuFgRgCeW2pxI
lXrD3YODyVHEJXFPhnDiIZzKsdN/SCs05pP5Hswqaw/Kbk9aTtdwBUKOp8v/tQfg
dCJHzGBirY0MiZXdxvmXvTJyAI1Td6xklc9oD4b+qoylUxAziXXrHzgSuMVNYZjc
g//+VnVmr9spl+r43L8DKcZa1ZV8XZXSf659zgEWjUuKvcgIaw4ZupFicLjGKgTZ
tM9nMU3H55lhIDK3QZ2GEzKkkyjAPeBIpFfdtk/kpzvYUVoJVKxpI9aBmw9RV6lz
7dO33tQqYVkH5J+gxnMjBUJ0cqoQ6z0MasvAvtc5nb2H1IwmcuT74LH1s4s3x7VW
hxI7iSFGzUFBzAU/Tt5DrpFIreoAAxiukyUJfH6Ct0dqWHdahNGqpl5pvdjlOqOD
GmO7dmHx8Ly2BNPAud2Hpy9k3TtA2EkiF+Zak4lWwTEOprDrZB4HSoS2epnWGb8a
O8qz6wTvTAG2vWvsttzTw+RL5Qd9wB76daqGW1pRGkRVydwr4M8=
=2I3E
-----END PGP SIGNATURE-----

--ce3maxhltbw7ugvd--

