Return-Path: <linux-man+bounces-2147-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A29D9F260F
	for <lists+linux-man@lfdr.de>; Sun, 15 Dec 2024 21:44:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36EDA164FE8
	for <lists+linux-man@lfdr.de>; Sun, 15 Dec 2024 20:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25551B85C9;
	Sun, 15 Dec 2024 20:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kE+CkN88"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9113FD2FB
	for <linux-man@vger.kernel.org>; Sun, 15 Dec 2024 20:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734295441; cv=none; b=VFhGXpehWK+x9dF+/M9QhZcyvLAOVy0zbYfLyHRfHHJHTDuxWJ8TIiLNUgWCSFJx3twXZQuprvs5XHZ6Pe8YO5ETT9iKyKWGCFxYFGP8vS2sL8IE25XeNuybLLsAirzbHxpBmIwesQe0oe9pb3YfzYpwovxkxPGDLRNfTOMLL9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734295441; c=relaxed/simple;
	bh=aSr3M/ldQuLLzGD4L79CfN/wjWvqtpnHpzeAd8tX7hU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uouZx07sXCbXaMyaaDRB1fCX70iAk4qW2xq+4BBnUVOnIW/um692lSqxg3WUikMxte33RKPYzzXvT39CcjmtG3so/KUtaNYdnsm1DNX0EFFmOmui0JYXpZmVqt4MIA2Qrbu+s8oW7rmYjb+USKynshI0afvEkn44+zatSZvgKPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kE+CkN88; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BF65C4CECE;
	Sun, 15 Dec 2024 20:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734295441;
	bh=aSr3M/ldQuLLzGD4L79CfN/wjWvqtpnHpzeAd8tX7hU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kE+CkN8878z8XshM5EnpGxSx8lL+9t2qmea/K77lF0VenCg0P6OQkl/W8Q4lCdkAF
	 5rydnztrZ7IgG2RA7Mf+rQMOQnHOR/Bh4i4W1cdk9pwN79Ghc2WoBHvyn56Jx1WNr7
	 WlqlZOFOFDZRphERGWUUMbA9y8tS5e/GH9D8Aj6MDR6RjhqLEBwY56sFXqNG2bsdSs
	 Od2HZZq+IcNG9lw6yXa0f4NvLSadPy2iiTtYZakBLqR3JtF5R9thylEctN7pJ81OP7
	 5kvUa6g/O3KSZZAk+tTAIEhCiF2jiU4xwcoBB1ajLnBFninGaLKgQz1QEn/g+GnV2I
	 c/eo1/A+NT8Yg==
Date: Sun, 15 Dec 2024 21:43:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] strverscmp.3: this is NOT the ordering used by ls -v
Message-ID: <20241215204358.toi5nb37sksfdwle@devuan>
References: <pvaw3u77afqspd5vjqcke7qdmz4on7qsqbkjltis6hbpxqwwvw@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uzrehbmpt2zlsnfe"
Content-Disposition: inline
In-Reply-To: <pvaw3u77afqspd5vjqcke7qdmz4on7qsqbkjltis6hbpxqwwvw@tarta.nabijaczleweli.xyz>


--uzrehbmpt2zlsnfe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] strverscmp.3: this is NOT the ordering used by ls -v
MIME-Version: 1.0

Hi nab,

On Sun, Dec 15, 2024 at 09:17:59PM +0100, Ahelenia Ziemia=C5=84ska wrote:
> Compare, given:
> 	#include <stdlib.h>
> 	#include <stdio.h>
> 	#include <string.h>
> 	int compar(const char **l, const char **r) {
> 		return strverscmp(*l, *r);
> 	}
> 	int main(int argc, char ** argv) {
> 		qsort(argv + 1, argc - 1, sizeof(*argv), compar);
> 		for(int i =3D 1; i <  argc; ++i)
> 			puts(argv[i]);
> 	}
> yields:
> 	$ /bin/ls -v1 a*  # coreutils ls
> 	a-1.0a
> 	a-1.0.1a
> 	$ ../vers a*      # as above
> 	a-1.0.1a
> 	a-1.0a
> 	$ ls -v1 a*       # voreutils ls @ 5781698 with strverscmp()-equivalent =
sorting
> 	a-1.0.1a
> 	a-1.0a

Should we file a bug against glibc strverscmp(3)?  We probably should.

> compare also the results for real data like
> 	netstat-nat-1.{0,1{,.1},2,3.1,4{,.{1,2,3,4,5,6,7,8,9,10}}}.tar.gz

>=20
> Thus, coreutils ls -v does NOT use strverscmp(3),
> it uses a similar algorithm that actually properly sorts versions,
> not just single numbers.

First time I learn about ls(1) having a -v option.  :|
Was people too lazy to type `ls | sort -V`?

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man3/strverscmp.3 | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
>=20
> diff --git a/man/man3/strverscmp.3 b/man/man3/strverscmp.3
> index 41bc1ddbd..7c3643860 100644
> --- a/man/man3/strverscmp.3
> +++ b/man/man3/strverscmp.3
> @@ -25,16 +25,7 @@ .SH DESCRIPTION
>  orders them
>  .IR jan1 ", " jan10 ", ..., " jan2 ", ..., " jan9 .
>  .\" classical solution: "rename jan jan0 jan?"
> -In order to rectify this, GNU introduced the
> -.I \-v
> -option to
> -.BR ls (1),
> -which is implemented using
> -.BR versionsort (3),
> -which again uses
> -.BR strverscmp ().
> -.P
> -Thus, the task of
> +The task of
>  .BR strverscmp ()
>  is to compare two strings and find the "right" order, while
>  .BR strcmp (3)
> @@ -44,6 +35,10 @@ .SH DESCRIPTION
>  .BR LC_COLLATE ,
>  so is meant mostly for situations
>  where the strings are expected to be in ASCII.
> +This is not actually the ordering produced by
> +.BR ls (1)
> +.BR -v .
> +.\" because it considers a-1.0.1a < a-1.0a; this is not what you want

I hate this reference to ls(1).  ls(1) should not even have a -v option.
Please refer to sort(1) instead.  I would wipe any references to file
names in this page, as I don't think they are relevant at all.

And the reference to sort(1), I'd put it in BUGS, saying that this API
is broken, and does not sort properly.  Sounds good?

Have a lovely night!
Alex

>  .P
>  What this function does is the following.
>  If both strings are equal, return 0.
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es/>

--uzrehbmpt2zlsnfe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdfP4cACgkQnowa+77/
2zKpNQ/7Brd33L7jKsMBfc60F4kIrC2SdARWeeLBnVdn2KpCBAfDDACmmb3rO+/2
lEae5ijKZ+vFhGu6zG6V8ImCiM6nlr1LFxK+YFZQDHXXCc9rVysKoZ1KsfsaFpBs
R5Azc1ln4EhhR8zpZ2CEKK3THQIJcZnhuvJoG3jxy4N/59dZ6egGcxg/m6rz6uLL
+elHV1K+G/dl0RXRsppsJeLGfFEwbY1x7ESnPBLgRO+iCIZVj9zgRHJxd/RAjn+h
V8RcM8GyS/2cltpMTnAQBUEr+dFqCGdAwib54L32Uh4A6mDyVIWt3JMV7QUHaYQj
fCql3jVNUJxHvxVBlwOPd0Qgmag3QmQeypmC0bPsJrG1a5RpFkBNyEv5aBvdgaEU
yPjT/iu+oqUOzn5SgMikgeGviBZB4ILMIIjHJ6QlESJ8eeu8TKXDM2tNvr1aYAVr
+58ki9QzgZXGuisNze31WbT1c5zNTWvftAywX/9biKnIh2MknW8x68oM3VW+H4Zo
oSogaQh3TxE+Yq89oTC/p0bTZhxwG1bpKs2y9SVntUB4YFQQfJZx8/sfTSWls4hR
v4WgGIIUndShK1MWkFCFVeKwo/X//OYCfCjifmnVMQnRmvsIjacRkVw7ustB+yQI
bh3Qeb9AdFjze+DtrqRk/J9ftOZTKl+Nj3Hn5bm5NLsgALspW1o=
=FjL1
-----END PGP SIGNATURE-----

--uzrehbmpt2zlsnfe--

