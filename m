Return-Path: <linux-man+bounces-3203-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6B0AE3336
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 03:08:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E646A16C817
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 01:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43F903FFD;
	Mon, 23 Jun 2025 01:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JV4PvuYl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028944C6D
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 01:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750640883; cv=none; b=MuSNCU7TZ4+XgnabXBpkb7lwBWEV7ZIZLRBoZPzOsX4ffEb5ODvtClpXlSI2d5j2hKQ1yJ+aqMTMJL63C1AocvA5qAjtPZe06qclO2f9XDeV1FPfFxOLYrt2NTqsFO/YOTfvx1E+cdXSSqLjXUgkdfHQUrkVjPtZHimbv8QnybE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750640883; c=relaxed/simple;
	bh=icrni7fU74pDa957VerRU0pUOJ8duGP5294S7zMRYOY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cALtC9O6XeloSrsCGrZ6T6PNGJbfeSMzdgevsWUGiA+XhdrZOG2uZjJ7ls6o1+40NFTK4vqoQk+nr63k5fDMFKd7/YNmcvGnMtX1VfdsQrhaJZWixH926bWITu4zUEym/uloV2p7OU4DtgF0FqpUnuubl4g2/w33qWhohSm7w8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JV4PvuYl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD904C4CEE3;
	Mon, 23 Jun 2025 01:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750640882;
	bh=icrni7fU74pDa957VerRU0pUOJ8duGP5294S7zMRYOY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JV4PvuYldNmoU0t4ReMJtvm9dmxxC8gQJ2+kng9gZdDwhnz+Mw4o7hglWBRmVFKs9
	 AsENcCM3H2TcAdt5qszSD9ZhxUrR6LVLdoh4rKczRfoKFtMDMn+y1kgvGQCE/RItIm
	 //ZB+4jeNo4PsIdGnsG17Qxg/NH/jrJey+vUQQXaVsSUXbZJhsrmZSztzHlM/6hCNM
	 uRAnh0XESuy7SHsgdr+UCmwVStFJChDXxcF41xkZsWXXC+Mqfaujq5I+0MZJ0Y1xIS
	 tsrKQPibKYEhYvBCUZczrecXrKuZvh1y0O3++S2Hf2eWj5EtHaSpkuxbytncFayId/
	 qkLkhJH5vc0vA==
Date: Mon, 23 Jun 2025 03:07:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Benjamin Peterson <benjamin@locrian.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
Message-ID: <k5vl4qnfeylnzetspyrsjwfib5bruvk46c22pmiosauyrzc23a@qi76gp43mr4v>
References: <20250619051342.145412-2-benjamin@locrian.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sezol6fk24jdygsn"
Content-Disposition: inline
In-Reply-To: <20250619051342.145412-2-benjamin@locrian.net>


--sezol6fk24jdygsn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Benjamin Peterson <benjamin@locrian.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
References: <20250619051342.145412-2-benjamin@locrian.net>
MIME-Version: 1.0
In-Reply-To: <20250619051342.145412-2-benjamin@locrian.net>

Hi Benjamin,

On Wed, Jun 18, 2025 at 10:13:42PM -0700, Benjamin Peterson wrote:
> Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW flag
> to fchmodat.  glibc added userspace emulation support in version 2.32,
> and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd
> (2020-02-12; "io: Implement lchmod using fchmodat [BZ #14578]") and
> linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()").
>=20
> Signed-off-by: Benjamin Peterson <benjamin@locrian.net>

Thanks!  I've applied the patch, with an amendment mentioned below.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D4044e31a053f6c370b2188deba583797018f04a2>


Have a lovely day!
Alex

> ---
>  man/man2/chmod.2 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
> index 307589481..24b9b0dbd 100644
> --- a/man/man2/chmod.2
> +++ b/man/man2/chmod.2
> @@ -197,7 +197,6 @@ If
>  .I path
>  is a symbolic link, do not dereference it:
>  instead operate on the link itself.
> -This flag is not currently implemented.
>  .P
>  See
>  .BR openat (2)
> @@ -329,6 +328,10 @@ POSIX.1-2008.
>  POSIX.1-2008.
>  Linux 2.6.16,
>  glibc 2.4.
> +.TP
> +.BR AT_SYMLINK_NOFOLLOW

I've amended this s/BR/B/

> +glibc 2.32,
> +Linux 6.5.
>  .SH SEE ALSO
>  .BR chmod (1),
>  .BR chown (2),
>=20
> Range-diff against v2:
> 1:  f234de5b8 ! 1:  ea0fbaf94 man/man2/chmod.2: Document AT_SYMLINK_NOFOL=
LOW support
>     @@ Metadata
>       ## Commit message ##
>          man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
>     =20
>     -    Historically, Linux systems did not support the AT_SYMLINK_NOFOL=
LOW flag to fchmodat.  glibc added userspace emulation support in version 2=
=2E32, and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd =
(2020-02-12; "io: Implement lchmod using fchmodat [BZ #14578]") and linux.g=
it 09da082b07bb (2023-07-27; "fs: Add fchmodat2()").
>     +    Historically, Linux systems did not support the AT_SYMLINK_NOFOL=
LOW flag
>     +    to fchmodat.  glibc added userspace emulation support in version=
 2.32,
>     +    and Linux gained native support in 6.5.  See glibc.git 6b89c385d=
8bd
>     +    (2020-02-12; "io: Implement lchmod using fchmodat [BZ #14578]") =
and
>     +    linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()").
>     =20
>          Signed-off-by: Benjamin Peterson <benjamin@locrian.net>
>     =20
> --=20
> 2.48.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--sezol6fk24jdygsn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhYqOkACgkQ64mZXMKQ
wqmD5w/7B+SqO5OTx0zP3boFBI1uEK+if1yg7ILZjoVlZiLp5g1muxkn3dcJK+I+
kxYhl+/7+tHxtIXtaw3Kk/Vn1Xl3MbXadP3HhW8CiLSH/STOWpg+kr6ktN0+lKcU
5dQuxG2DK8IzSBN0dS374nQyhQO0e7qpDx+yCL1mzYcmoU06lRYyxoKNcmUOjr4k
l0msnJrMSamyOPKPMzWCuGk9BUPJC4sqP8V3BMIcCIipdTEnzfBOzSSFyajCyFNa
lCobjPTMXeZaWAmHOo+kQQHhwSdbsK44dCtVT/p9c+l4wV8ZXI7KrkbpFHXPOQXi
zd/LI88uWiqJxN/7BofffG/qWlIVDArH0Y6cE9VkWQDe72FFiAFTUhNgKtNkG/bw
93Pb0QR/bthKtg/nFcwG4wa8H9q2jrHsGHKa1F8m7QfyyuEjK1F18+qk6f3yynal
K7HAwSr7kOZZPZT2+i0fRMwJzDxaVjsIPN+YeuKPhzp4w+Y5kzVRHHaypYzXUX2y
HJakruW63sMCwKd/XkdwlKz9/VDx4/XTt5aiVuWMU5IwBM6ynEUYL5AgY5YuuvbJ
OEseVey9T6h8OBsJk7naG1iXiEyTxiJIkQKSool9GRL/v+E80yfYAexh9oR+mngu
+o8VVIUNhy0oGf5Tq6L611gjWPLXb18lWkuRTpc8OiqKj8l1AOg=
=DbYA
-----END PGP SIGNATURE-----

--sezol6fk24jdygsn--

