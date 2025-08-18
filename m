Return-Path: <linux-man+bounces-3468-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A29B299B0
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 08:31:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B31323BF2ED
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 06:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB0BF272E57;
	Mon, 18 Aug 2025 06:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJzDeFNS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA69223DF9
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 06:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755498657; cv=none; b=GEQ7BBAckCwkmfTaRb3k/ghphww2B7SM6BCl2Thd2goIJkjJShIxbZe2sbX9BGL00WJwfMC6fdecBV21ZQoVWaKmtGwWI62jwdI/9J2kkXbd28imFq8676NDz7XLMrHb/N/nbsMvEiPfiThBeApOnPgbK8e8+WIawGFCsI14nYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755498657; c=relaxed/simple;
	bh=RoC6A39LxTFdpl5130yysw1ZxznvoZprxtTtFbBJgyw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ds8FKJLQFyYgqxQWQlUgcW9pUx6hp1joLfwvzPFAGpaIZ5bYUB0z2plZA2+2z1LKEHXGsfnEP4fORwM92a0cyVAdqLO3lt2xTBk3wKmvI9u48ADVv5TP+6bEJdGrgZMyw5VbAhoxQBIBJLAv7ea6WngtH4HBMYVFsMms7V/KRo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJzDeFNS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C3F8C4CEEB;
	Mon, 18 Aug 2025 06:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755498657;
	bh=RoC6A39LxTFdpl5130yysw1ZxznvoZprxtTtFbBJgyw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aJzDeFNSEeZW/EmApcCONItqvU+TqmDd25YfQJ+HJWRbDCB0nShynkt0yLl9AHYAn
	 XvQKn5jH9MMFvXznBvTJlc4j68ZjZPf985IMASNHmPLWfuJ23yiiZlYTgQbIYsjpGJ
	 xJvDRmbZzNwncJozpyU02LofbOTujIr59Tj3DtmzPkLzJeBUwp5lQSSFd+5shSlpOT
	 VSbswOZY65feBmjQWl8YkN9EectDIpzclIqTsd9GCInJC8ekdbIuTsovaIXm75kWTO
	 7RhjQN9kaAtOJPbw9+wOpmA0EimwFe+CdpN5Id2jLhsOKCxP9kgpdYertdd9T7dFSH
	 2qkjl0DWyIAqA==
Date: Mon, 18 Aug 2025 08:30:53 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alex Yang <himself6565@gmail.com>
Cc: linux-man@vger.kernel.org, Alex Yang <himself65@outlook.com>
Subject: Re: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as
 kibibytes (KiB)
Message-ID: <iutkhvhpxre54i6a5zt4s3xt6khpmignznhg6wdzue5efbhbhh@hgdvsivvg2km>
References: <20250818061203.33211-1-himself6565@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ydiauhe4sj7j4bhq"
Content-Disposition: inline
In-Reply-To: <20250818061203.33211-1-himself6565@gmail.com>


--ydiauhe4sj7j4bhq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Yang <himself6565@gmail.com>
Cc: linux-man@vger.kernel.org, Alex Yang <himself65@outlook.com>
Subject: Re: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as
 kibibytes (KiB)
References: <20250818061203.33211-1-himself6565@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250818061203.33211-1-himself6565@gmail.com>

Hi Alex,

On Sun, Aug 17, 2025 at 11:12:03PM -0700, Your Name wrote:
> From: Alex Yang <himself65@outlook.com>
>=20
> The ru_maxrss field was previously documented as using "kilobytes" as its=
 unit. However, the value is actually in multiples of 1024 bytes, which is =
correctly referred to as "kibibytes" (KiB) according to the IEC standard. T=
his change updates the documentation to use the precise term.
>=20
> Reference:
> https://en.wikipedia.org/wiki/Kibibyte
> ---
>  man/man2/getrusage.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/getrusage.2 b/man/man2/getrusage.2
> index 34e81f540..13c405d0e 100644
> --- a/man/man2/getrusage.2
> +++ b/man/man2/getrusage.2
> @@ -88,7 +88,7 @@ expressed in a
>  structure (seconds plus microseconds).
>  .TP
>  .IR ru_maxrss " (since Linux 2.6.32)"
> -This is the maximum resident set size used (in kilobytes).
> +This is the maximum resident set size used (in kibibytes).

Should we maybe say this?

	(in KiB).

I personally am fine with kibibytes (it's even documented in units(7)).
However, in the past, I've met many people that didn't know the term
existed.  KiB is more widely known.

What do you think?


Have a lovely day!
Alex

>  For
>  .BR RUSAGE_CHILDREN ,
>  this is the resident set size of the largest child, not the maximum
> --=20
> 2.39.5 (Apple Git-154)
>=20

--=20
<https://www.alejandro-colomar.es/>

--ydiauhe4sj7j4bhq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiiyJ0ACgkQ64mZXMKQ
wqkxDg/+PIxgW+RAf+vfuNs8moj5wa/8jRFFjBsNN1slerjE0sPzyDA0eNJjKA0+
0lUuBHIQ/YlXok9idDPXdieQNAGMaUWysSY9jybjtVhf6PfEMd4zQ0VqXNnFqXgw
dOxLFZvAxVq08UbfpC3K2NzHxli7ldDcfzq9jgKVtZ7X0ED7UJBdcJSFgxUM6Act
JT90eQHpUl97CegWKW6qjGCRhJ02lX63sHHUh7anGBs6N8IIjeCJhkPS1Hh5uWiE
x/7nSCdSsedaCHzA7A1GNrOjS3MwOLYJFmFNi0/HHTn3RzRQvraprVxFUJvGA9Js
eZQyHIe2VeiDeHAlPt6EN/QrwgJacc16ziD3XT9ns7if4lkptDkoymG1XPe0xoYr
mAOpzWxvNoL7s8CgM31T477W9Nj/fIPA8xNlsjTpEMq/SeCXEGF4WJr6m3y6XKxn
uoe3KQYvDiuVlHz/sRz8iKYEr/u91qVfnq55apv4IrddNdtR6Ddlaz6YUb99SQPR
cIT8jeiyJVNXM7iJ/gAc9U87sIYtLUxpZbpvy9lKmq516MvvuMbusC/W5pIB9EJw
itU6m0bg7Eu/XLPJwOXP9vWPOEkAO/Shx2bfzBk25iKPOaG+5yo9YPtmOOR/7EoB
L2bAEsiAsUTKSXIZCiJxf4rFBz9Ohp5zEhthmlb/f7D7zD9jv+c=
=EJzS
-----END PGP SIGNATURE-----

--ydiauhe4sj7j4bhq--

