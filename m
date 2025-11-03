Return-Path: <linux-man+bounces-4248-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0941C2C0A4
	for <lists+linux-man@lfdr.de>; Mon, 03 Nov 2025 14:21:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47CE2188466E
	for <lists+linux-man@lfdr.de>; Mon,  3 Nov 2025 13:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A871223AE66;
	Mon,  3 Nov 2025 13:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFe9AZpL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691CE635
	for <linux-man@vger.kernel.org>; Mon,  3 Nov 2025 13:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762176061; cv=none; b=mV7c5H2/u44gNbTPgxCnJHbXEC4abOgqY/ue97WboioQutZrsdu1kBtTIEG49S9PK8rqf9ChdFIXIVb3KLEEyyR/z/bF9ioleexml+bStqPwAHc+evNuRCgExwVa1/KVqoTAG9yGGYZqWhcixYFY3WePRrOiTOL5My26Q7tbcIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762176061; c=relaxed/simple;
	bh=Ca4VfH0aXLpg/dCWQSrlInWwyA/F8nOgVzdBGbsXiZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hm1OSUxngooMank0kx2Ty0938fLPG1T4QBvAoFSkYCjhjLMluzPvDN9xvk6XBRQLbcn6nBSsUrHP3dQVfImzN55GN1a7VhuzfFqWBT4JT2ETzeo472FTYHkzP9+6GgB5DleIFaArZL5uxQa/NH9lrKBSP4mdrXxv/zBrPYL24pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFe9AZpL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55B10C113D0;
	Mon,  3 Nov 2025 13:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762176060;
	bh=Ca4VfH0aXLpg/dCWQSrlInWwyA/F8nOgVzdBGbsXiZ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NFe9AZpLmOm9QPwUaWdUhh2Hn5ITkfpWhqkO4lDWG8s2zmIROcUCv+qo8Q55qQEPB
	 i+2aDp7NrZ3yJoHjALpU91S7uhrvONaB8GucKWgVGDzMzWXYAWMqpcl3k6OD4sELDW
	 vNpMe/mNfH4SFpaUD/F9FZVHpSb86dBhnCBmjOJRXuNmdNk5AX9Xbi8uyZZ0EwwTjJ
	 PCXqNl2vA+cNnvvysnu/EGC7opRFTUrviYHAcVlN5EEMsz3+vTuFCb5l+dA9mwFssX
	 oePTyZgUDVhQqsF67sDsmzP4OyzNCsgUeWvY9S92oqrfGcoZn/Vr6w2X0n+yMav9R5
	 htoWtuW+pHnCw==
Date: Mon, 3 Nov 2025 14:20:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0JTQuNC70Y/QvSDQn9Cw0LvQsNGD0LfQvtCy?= <dilyan.palauzov@aegee.org>
Cc: linux-man@vger.kernel.org
Subject: Re: tcgetattr() can set errno to 22 / EINVAL
Message-ID: <dsb6oiv7q7ra3gbu4bovy3gah522lgsf3d6h3wxwe4ieuka6fh@g6u5qzlyoxf5>
References: <ebb992217f4a2ceca9a6d9868f50da73c68e8cdb.camel@aegee.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cxvi4injmgg37suw"
Content-Disposition: inline
In-Reply-To: <ebb992217f4a2ceca9a6d9868f50da73c68e8cdb.camel@aegee.org>


--cxvi4injmgg37suw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0JTQuNC70Y/QvSDQn9Cw0LvQsNGD0LfQvtCy?= <dilyan.palauzov@aegee.org>
Cc: linux-man@vger.kernel.org
Subject: Re: tcgetattr() can set errno to 22 / EINVAL
Message-ID: <dsb6oiv7q7ra3gbu4bovy3gah522lgsf3d6h3wxwe4ieuka6fh@g6u5qzlyoxf5>
References: <ebb992217f4a2ceca9a6d9868f50da73c68e8cdb.camel@aegee.org>
MIME-Version: 1.0
In-Reply-To: <ebb992217f4a2ceca9a6d9868f50da73c68e8cdb.camel@aegee.org>

Hi =D0=94=D0=B8=D0=BB=D1=8F=D0=BD,

On Mon, Nov 03, 2025 at 02:45:06PM +0200, =D0=94=D0=B8=D0=BB=D1=8F=D0=BD =
=D0=9F=D0=B0=D0=BB=D0=B0=D1=83=D0=B7=D0=BE=D0=B2 wrote:
> Hello,
>=20
> please amend the errors at https://man7.org/linux/man-pages/man3/tcgetatt=
r.3p.html that the function tcgetattr() can set errno to EINVAL 22 Invalid =
argument for /dev/hidraw files.

You should file a bug to the Austin Group, which is the group
responsible for the POSIX standard.

That manual page is just a formatted copy of the POSIX standard.  See
the COPYRIGHT section:

COPYRIGHT
       Portions of this text are reprinted and reproduced in electronic
       form from IEEE Std 1003.1-2017, Standard for Information
       Technology -- Portable Operating System Interface (POSIX), The
       Open Group Base Specifications Issue 7, 2018 Edition, Copyright
       (C) 2018 by the Institute of Electrical and Electronics Engineers,
       Inc and The Open Group.  In the event of any discrepancy between
       this version and the original IEEE and The Open Group Standard,
       the original IEEE and The Open Group Standard is the referee
       document. The original Standard can be obtained online at
       http://www.opengroup.org/unix/online.html .

       Any typographical or formatting errors that appear in this page
       are most likely to have been introduced during the conversion of
       the source files to man page format. To report such errors, see
       https://www.kernel.org/doc/man-pages/reporting_bugs.html .

IEEE/The Open Group               2017                TCGETATTR(3POSIX)


Have a lovely day!
Alex

> Using kernel 6.6.60 on armv7l and libc 2.36 (where tcgetattr is implement=
ed in termios/tcgetattr.c as ioctl(fd, TCGETS, =E2=80=A6)), this program
>=20
>=20
> #include <errno.h>
> #include <fcntl.h>
> #include <stdio.h>
> #include <termios.h>
>=20
> void main() {
>   int fd =3D open("/dev/hidraw0", O_RDWR | O_NONBLOCK |O_NOCTTY);
>   struct termios s;
>   errno =3D 0;
>   int ret =3D tcgetattr(fd, &s);
>   printf("Returned fd is %i ret is %i errno is %i %m\n", fd, ret, errno);
> }
>=20
>=20
> puts:
>=20
> Returned fd is 3 ret is -1 errno is 22 Invalid argument
>=20
> Well at https://pubs.opengroup.org/onlinepubs/9799919799/functions/tcgeta=
ttr.html  Open Group Base Specifications Issue 8/year 2024 also says only E=
BADF and ENOTTY.
>=20
>=20
> Kind regards
>   =D0=94=D0=B8=D0=BB=D1=8F=D0=BD

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--cxvi4injmgg37suw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkIrDIACgkQ64mZXMKQ
wqkksxAAs6yaORmjhrYzgu/U7Uljx7Z5CC9YpO5Uy+xbTivcjavEtSoghJCXkO2M
ELiIA+OuUefxm9TuLU2tlJatAdDgNm4BtPKs3R7N+SoUJynsq6n4wQKZx7eY/LMD
S+sSuYU5sxH6fEF321tO+TBLt5Jz9Me0yoXfoLJI9lEFGz8gZjmfcsCl9W+S3xaN
hqBLdD8Unx4aqWVNuPT3Y2byrL7OFTbBCx4FlsvWUMxP69z0LW8XQwZAisM+jHD1
73IfczVyerPt65WLi0cBryhyF9Miw97xAd+t8R4YFBrw0BJXuDr4MXl/p1mqrUlZ
ppqL8moK4CmEOzMbfmaIT0UrLNFhpUr88aWuGZD7d0YMbUmIWYmSmpLxXJZ8OWJY
e/3aicJZcN04jmQP6qMfQfxjdtg5vcUnX9xfihjbU099spSJkCTDsugJ6lSNkaai
RC+7Vjo56J0zD3eh7o2oZcPqBohOEdjrQByuMsosPbTT8GXSm66hSuKsb9KPZ8WD
/3qh3D4Fp0reS/4OKqbhrRfxG30TKmqzvf5kc/2bjVVzr62T6xDtGH8Zeo+0/evc
3v9BBd7X7zJ7TUt/kDLNXXKQYFTZ247LhWWWj5j1+EbW+KaWr+6jNirtpOjh5KUj
SS3h/UUikalBfk7542L5cSzlGpj10nvLFAk+AOE0j4HpnmaBfFw=
=N+5R
-----END PGP SIGNATURE-----

--cxvi4injmgg37suw--

