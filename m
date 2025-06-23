Return-Path: <linux-man+bounces-3199-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD5CAE332E
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 02:45:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE0BA7A4F6B
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 00:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B7E3FD4;
	Mon, 23 Jun 2025 00:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biPy0vp1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A72E71853
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 00:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750639515; cv=none; b=mK50vPNeu/l86QfptwEuSCr3tqvzxqOvUHSqk+yFhvLBBBxVBpDmcCyoYz/JEIIJUlx8Wy8tBBX2d225HLl96DlpWyQvqhqB3I3A6zGTBk9njdz7gJu43E0CHIMP8838aWEws2L890bztLX/IOUrgW+97lDZnaDp3VvG7I4NsJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750639515; c=relaxed/simple;
	bh=dj8Q9ph9UU9Bk8LnOY4eOwrO9zAS9R/iRjzGX/9JJ+U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y8PoYCZNdBWUfbZDKDMIXdaHcR/UBppjzI/ih1lLEkawNOUiOvDCAP9aaFGa6m/62PWQCDSVeFvm6J8+2W808x3ABjBQvay67UqEXt6ja6Gc3Vs8vPPd1gpQWrhYXTuKQ9wkQWshrHfwgbN9nLwOr47EcqgSm6DOc7zS/dG+qTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biPy0vp1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C070C4CEE3;
	Mon, 23 Jun 2025 00:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750639514;
	bh=dj8Q9ph9UU9Bk8LnOY4eOwrO9zAS9R/iRjzGX/9JJ+U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=biPy0vp1flIWa+9n3+GTIfhF8bM9qyC4sGEtVLEYhTwW91m/eR9p/ka8EJTmuiL5X
	 g9dY+pI4AlnT+FSqgYUM/rmhrbho3CXBo6eYn1DpuoHjCO1vme1WLImuBD5a3xaukA
	 1vnB76Gc8Y2FaJVQlg2+w7tz6usVZfD/MSNQk/TZKYt53nInDGlaK30iBpAXSnlLmb
	 HrpSLOW9CuZAQ9XOEDarw5pv4O22rGuu5iAtQ9ncEri3d8W4lBcEtT2vCQ5UsQuHU7
	 DOLL4jeIcjMoDI7ikRpeXc0g6EMAjPYj45keF4DsSo/3WFZEh7fbgD8uodVAwTZt88
	 Oy08vkscjGotw==
Date: Mon, 23 Jun 2025 02:45:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/ftime.3: Declare ftime with [[deprecated]].
Message-ID: <pw6e45wrz223x2txs6ee7uqb5rvg72k3rdozwn45nuot6ygf2k@2n5jvobjv4zo>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
 <5924c3b09d8e373be6ac1b5ca663b8ad7d106d93.1750306917.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r72vnjshiqspzfjj"
Content-Disposition: inline
In-Reply-To: <5924c3b09d8e373be6ac1b5ca663b8ad7d106d93.1750306917.git.collin.funk1@gmail.com>


--r72vnjshiqspzfjj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/ftime.3: Declare ftime with [[deprecated]].
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
 <5924c3b09d8e373be6ac1b5ca663b8ad7d106d93.1750306917.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5924c3b09d8e373be6ac1b5ca663b8ad7d106d93.1750306917.git.collin.funk1@gmail.com>

Hi Collin,

On Wed, Jun 18, 2025 at 09:22:10PM -0700, Collin Funk wrote:
> This function was marked as legacy in POSIX.1-2001 and has been removed
> from many systems, including glibc.
>=20
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>

Thanks!  Patch applied.


Cheers,
Alex

> ---
>  man/man3/ftime.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/ftime.3 b/man/man3/ftime.3
> index a34b15888..8ae808ec2 100644
> --- a/man/man3/ftime.3
> +++ b/man/man3/ftime.3
> @@ -13,7 +13,7 @@ .SH SYNOPSIS
>  .nf
>  .B "#include <sys/timeb.h>"
>  .P
> -.BI "int ftime(struct timeb *" tp );
> +.BI "[[deprecated]] int ftime(struct timeb *" tp );
>  .fi
>  .SH DESCRIPTION
>  .BR NOTE :
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--r72vnjshiqspzfjj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhYo5IACgkQ64mZXMKQ
wqm7Kw/0C11uFaDgRK11osVGXjU/4//TAtC3KzO7FPq8WxeLP2qLwQMCWyFR6dgK
hKKgy0rXPSI0LodzGQpjR66EE3iIQUxTeR61gA4Jp3D8JRC6fj2jboYwT6dWS7Vg
aPb3BWrUZXcQrh8F6X2vce4C5xemlFXjEdbftXXDuH2S9p+fj2GCibwNWnT0NScL
3OPAERp1IZGYiAeFS3W9UaLHL8cBDx/wHOvGp9X+MOvSYO9JwJddoirVxXZ+e2mk
lB4PGLb0ll2v/PUnhRWPtocIh7l2VsAXX55MtRASaQFgeIcRXamUrmeiuYaHb8o2
9MQVIbrbFlhgI6+7MnoN7hdN6ogxV9IyrEgyPvAna/7KD/z1/uQedXm3gnYMadLa
oaAqlEDchldyk1Q9uaXJRCs0K1uPfFiqFE9tpLQYxzrfUiwr5meN+ZFNk7wtB05O
uR0UMWzqzgslDC4kKSp+t3mjWtzE+0IO3RQhhVV5ok9fFIJA4u26APya2r5X3ctr
x5qDnL0QMIYzGGFODqWRh2+Ht1ZbAYfNmqdm0ug+SXGy0S2Ai18qyzMyCev9Vz+a
fBrjvUwluIBKzWWCHcyqhZ0w+0mCmZ4zXiug0853ywVW6LPvUKfFD7F8Kypzabk1
AREQAAS1x2fu5jLMfV2RYHsEjbhfa+W0RG2fl+ZjAw/Z6qHqpw==
=WvI2
-----END PGP SIGNATURE-----

--r72vnjshiqspzfjj--

