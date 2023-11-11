Return-Path: <linux-man+bounces-30-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B037E8C5A
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 20:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C44C280E0A
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 19:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9A9B1BDE2;
	Sat, 11 Nov 2023 19:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m21hP69A"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7851CABC
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 19:46:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 168B4C433C7;
	Sat, 11 Nov 2023 19:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699731962;
	bh=sWdKRYviosi1o5mm87g0Mk4pShUSKsyBG8yyAEo6mig=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m21hP69Ah803uJW9vucEJ0ZruwKJuqKFc3IvdaBo9YkLkMVIbjxgtC7JKUslmHZo5
	 18BcuXVhA8zGZavAUe9iGxu61oDcWiv5HtdUn32aH4ns99kJWQDifZ5L90SHxKJrA0
	 CuYDbvo4TtFtVSqHVm6PlH4u+h6YartwDtCuDoo+XpymcWd/UaFn6IpcFBWSfoPrjy
	 nWBB5qK2mYMbeVSJjeHJIJLJNuwXW2HKjoJyqu97tr+T6vKYk+hbcvuH8fZyr4EPMi
	 CpX50jE1nuFav2lu3UJVE8CMP7/NJvMKhrh43YXsc4wCnlquOI3XdzxYceRqdsz+92
	 CpCXR7nlxWuuw==
Date: Sat, 11 Nov 2023 20:45:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getdents.2
Message-ID: <ZU_Z9yO9JI9wIMtW@debian>
References: <ZUJaYgHOEqVzhGhP@meinfjell.helgefjelltest.de>
 <ZUJujd_4993OjKiO@debian>
 <ZUJxggFs7EE6uWgv@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7bRigVWSJ20+t2sj"
Content-Disposition: inline
In-Reply-To: <ZUJxggFs7EE6uWgv@meinfjell.helgefjelltest.de>


--7bRigVWSJ20+t2sj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Nov 2023 20:45:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getdents.2

Hi Helge,

On Wed, Nov 01, 2023 at 03:40:50PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Wed, Nov 01, 2023 at 04:28:12PM +0100 schrieb Alejandro Colomar:
> > Hi Helge,
> >=20
> > On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    Zero padding byte =E2=86=92  null padding byte?
> > >=20
> > > msgid ""
> > > "struct linux_dirent {\n"
> > > "    unsigned long  d_ino;     /* Inode number */\n"
> > > "    unsigned long  d_off;     /* Offset to next I<linux_dirent> */\n"
> > > "    unsigned short d_reclen;  /* Length of this I<linux_dirent> */\n"
> > > "    char           d_name[];  /* Filename (null-terminated) */\n"
> > > "                      /* length is actually (d_reclen - 2 -\n"
> > > "                         offsetof(struct linux_dirent, d_name)) */\n"
> > > "    /*\n"
> > > "    char           pad;       // Zero padding byte\n"
> >=20
> > Both seem good to me.  Why not zero?
>=20
> I'm not a programmer. But I thought the term was null? If this is not
> the case, then disregard my proposal.

It isn't simple.  Here's an overview of all the similar terms:
<https://lore.kernel.org/linux-man/ZU0eKrZprM5HSGt0@debian/>


-  NULL is a null pointer constant (as well as 0 is another null pointer
   constant; but don't use 0 for pointers, please).

-  A null pointer is a more generic term that includes a run-time null
   pointer as well.=20

-  The null byte is 0.

-  The null character, '\0', is composed of a null byte.

-  The null wide character, L'\0' is composed of several null bytes.

-  NUL is the ASCII name of the null byte, or maybe is it null character
   here?  It's a bit muddy.


For padding, you'd use either null bytes, or equivalently, 0s, or zeros.

Cheers,
Alex

>=20
> Greetings
>=20
>          Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--7bRigVWSJ20+t2sj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVP2fcACgkQnowa+77/
2zJQuA//S5rbu2JSC97xS6iUsLgL4QBie7hg5f60UUgDkI0NMyb2Q/zPI2ZcYor8
T0lxsZu+ATDFzWlFqwDWGMK8V+/E4CITHUyBu3zvWHeHMr4wfJf+fT/rUcR7+qDw
51ZhbR1SGsgbDF1Nwtp+jxUEuiSnA0XisS8r7MTmMBQGxH559FDxAE9/zX5gHGBW
dJpg1ZvMEx5BLMIhWPd4WK9RvJqvojTezhvg6AZGz9gZUu2V3shTl8RLY1l/cNhI
DwcntcNX41ld27A6TM7Ts+o46SEXc+mhKTZ4ZltIgX/KjdB6kDOhMPzUCqXdNLhD
NnGDcEcnjj7D5pZHuDdKPBm4baThDMV2xXcPZMTyLg3LenfZKTeARgB6fxUjGu3D
0pNbgBzFPZ7FtzVtTPuXSMaGFjRX8bOhRI5zS6xXMcHtntIxVfNGgf2qdyjvJQ69
iyOHdPRlIDLsgqNux3gb1lutp2Hv10HtUVW82qj2MFVPrd2SFPzACs3v56MZ9P0M
0zkyQpsRxDgimgQczaR8U7ZvoJTymYHHc/SlRRDOW9fSlT5b8F88vYOqdo6NU4ZS
WxYnHlUEKg3S5DDv60U2uaL9EtKAiStoqIw8Om3m64U9vkYTkbboaFUGGZXIllK0
DdtGhXW8EB7yxdV47Icx+hQgvpIN8XMfetc2IDWE0ZdBQHAdkAc=
=qLUP
-----END PGP SIGNATURE-----

--7bRigVWSJ20+t2sj--

