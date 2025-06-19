Return-Path: <linux-man+bounces-3169-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BD4AE0320
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 13:12:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77ECD17FC56
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 11:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C4A2224AF0;
	Thu, 19 Jun 2025 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGrUOYn8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C068221F30
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 11:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750331542; cv=none; b=HaUrIl/XEVCz5G+LEz5nRdNwZO48vb+SGseppGJdUIJjPPkgoZsT3t7VbICQWSLbI7U7/D0rV7BxnG+OL7exnHvIASYcRau9Ekwvn6wzsl1vLGHQmfADAjYoM2zWaw3kr65JM0tJ9atBKHOuTWQITnqXntzRRDMD28BsT+aqtqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750331542; c=relaxed/simple;
	bh=FcYl4yTTsm2oK+4a2zkqm7GEHPepHFBV72M4zw1H0Ko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KPnMVwST8B73y2DbDILepEcJY3nZrXMfbPBuyFR/0dpBhXmM89Qiv6d6h/3BQwRcgY9eoEKsIif8kI9DjMoOZy06bGw/qZa2KfgxDyPx4V1JtvkHBPB/EF9EuXZYQQRZkhJ4Gujl7NAcN4Tl1zj39Zz0GYzoSgg+dR/rNZ+lJAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGrUOYn8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 026FAC4CEEA;
	Thu, 19 Jun 2025 11:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750331541;
	bh=FcYl4yTTsm2oK+4a2zkqm7GEHPepHFBV72M4zw1H0Ko=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iGrUOYn8w7x2BNoD/q+9rnu2zxDXzffO7awzJGSQLuUAKilRn1hZCoDthQARaaSD8
	 ip3jjyk3m5TEVF1Q7vSO5AaV5LvV2LOrH2Qw17qT6XOGrd2LPWxNXATl6SkE0opxx+
	 BexgHPMUFZL3TVLk3Z15y/ptefbPjg7Tc2zT2TuHgpQNL/aQnXzfAgDaGidOGWcClB
	 8DUaFheoEfiVMOV4bc8uKXXCKHYXs/G2e04uaich8hGTpxbPM5XZiP9d7pEJeJZgHU
	 6NmPd/Ke1YKfPcBklyFY/2fnmjskzxOzUO/BxRzya91fNIF6Pzu4REc7J5qFbVWBla
	 FTFV5IF4fEytw==
Date: Thu, 19 Jun 2025 13:12:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man2/gettimeofday.2: Declare gettimeofday with
 [[deprecated]].
Message-ID: <tc6b4trkpv5sow3pxgul7i3rc6bjnz7iupryyqzx7a7hxkdnou@65zruztgsi5c>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vjosbsyauupjzvc7"
Content-Disposition: inline
In-Reply-To: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>


--vjosbsyauupjzvc7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man2/gettimeofday.2: Declare gettimeofday with
 [[deprecated]].
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>

Hi Collin,

On Wed, Jun 18, 2025 at 09:22:09PM -0700, Collin Funk wrote:
> As documented in the STANDARDS section gettimeofday was deprecated in
> POSIX.1-2008 and removed in POSIX.1-2024. Mark the function as
> [[deprecated]] since most systems still have it for comparability, along
> with a more modern alternative (e.g. clock_gettime).
>=20
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>
> ---
>  man/man2/gettimeofday.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/gettimeofday.2 b/man/man2/gettimeofday.2
> index d954a253f..bdb2b0bd3 100644
> --- a/man/man2/gettimeofday.2
> +++ b/man/man2/gettimeofday.2
> @@ -12,8 +12,8 @@ .SH SYNOPSIS
>  .nf
>  .B #include <sys/time.h>
>  .P
> -.BI "int gettimeofday(struct timeval *restrict " tv ,
> -.BI "                 struct timezone *_Nullable restrict " tz );
> +.BI "[[deprecated]] int gettimeofday(struct timeval *restrict " tv ,

Please put the attribute in a separate line, to avoid bad alignment.

> +.BI "                                struct timezone *_Nullable restrict=
 " tz );
>  .BI "int settimeofday(const struct timeval *" tv ,
>  .BI "                 const struct timezone *_Nullable " tz );

Should settimeofday(2) be considered deprecated too, even if it was
never standard?  It doesn't seem to make much sense to keep it intact if
the get*() one is deprecated.


Have a lovely day!
Alex

>  .fi
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--vjosbsyauupjzvc7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhT8I4ACgkQ64mZXMKQ
wqno8Q//QneL6cvNAQjGmspISfBUSEe+CS0tzVD5wxavWQJ8eQEYXiiE8IUn3na2
cPpokiYnEjr7KT4R7xIhaUmqjcJpHz7HnzMZBvcVv3RM+71xEi/sRl5uahC+3BXV
s+CQEzbx9ys42XQpPOC2LSwb1QV2i3jNXYmwibb+W8mzVwQDtjDeRf49+3PdVMnb
RbSBYiZG2/qnNtp0j2MLS7kFNRMa7E6RXaa/Rj+yy5OLvZjBhV0Y/GuifH+6+aXE
0vrf0UEfHwNGgRBWqsjPl2M8hxoYELN7ZsfDdmlrX1YVF+oh29kampLpa6yycP+3
IXLM+vjo/xxfHI7ywVx7DqDVJeue0rOVVeXZhXSnnHYke1RjvC4dHiOHP7fGmnRl
/QRHuCmFfsQwGL9tBuPmWqeJefqMfCc2ZF+/7zMulUeHpVv6tP+SdgGo+hoZ3fUD
PzBaY5qs6VkGaYKlLw25JlyrCYp4BEl73IISyPLQe/nNmUqfF/rdhyVaTNPJP1BM
e5U0D+Mxau0kHsB2gfAh/prvN3IVPL1RGGTgam9rxkt2a5TjrxgOgadmMkahkFEi
A4CzDknNFtz7e83de9BQkvq6sECvEnMp+8+yStag4QLTjMxEOk3Qt+6OzXfJqg7b
6yCHpM1aYji+i6dQNVKoSlaZdiTzGeyKkNe5o7P9g2Hsjbtvydw=
=ReMR
-----END PGP SIGNATURE-----

--vjosbsyauupjzvc7--

