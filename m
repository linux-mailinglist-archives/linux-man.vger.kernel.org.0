Return-Path: <linux-man+bounces-3052-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A59AC834A
	for <lists+linux-man@lfdr.de>; Thu, 29 May 2025 22:36:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC6D44E17BB
	for <lists+linux-man@lfdr.de>; Thu, 29 May 2025 20:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56BE023373B;
	Thu, 29 May 2025 20:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0Hdau6l"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141F8219A8E
	for <linux-man@vger.kernel.org>; Thu, 29 May 2025 20:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748550964; cv=none; b=ScMDUIgXNrrQreXuRv7jaJP4r9gUIRLLYWnkoz9QZO7mOMxB++Lrcbz7FaMNBqtZgCVh3RuRXyrVf0GoSuYesRP9tQpbFS0POaUuYMLiLrw3mXkpuo5kJs3HMSmjGZ01p5eCgKQcOPklRqcjWsGNPMlBQPQteqCaZxon0eR+nIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748550964; c=relaxed/simple;
	bh=z5HuVrYe+6wHNyB0xRv4X2cJqL2fsKlolGzZl3t4Lmc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ds+UcHgWwLN2a7ZNItVlXpDsdS4395uzjPAWS6UyJj6fucNp/4j9ySKgAgI3HKabfWSR/2NtyA6o0IUDH5t/BwfKRvFJUKnHGAGpKAOH1ceDHk1moPqJpJX0WI8Ld+MPxNIIuz/zNESvwLOZUZfOyF83aT5s9ffZWEFrMlylPFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0Hdau6l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D41C1C4CEE7;
	Thu, 29 May 2025 20:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748550963;
	bh=z5HuVrYe+6wHNyB0xRv4X2cJqL2fsKlolGzZl3t4Lmc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U0Hdau6lmcqJAXAN2S0JD3VbxiKcuNsPdjcI3nmT5Q/Npr5jKi0HpNl+jnUayuJFT
	 gQrUFqY5/n0blJygiyLJZJM+ZNvy0CNwAWnzT2BoO/C9HUZEIt/lxkfFhvwA+8r/Vo
	 pADCCmA1hleuDHY+C9Z/F5dX8mi+OOgmGT3g8WbHzq6c0TuKuTjUFTCpzQJI6e3lDY
	 CAU7chOzYH6D2BvXsMbNaoLoyJCbQF2K+279x/8iP/03aLH53N5j28xBJJX45kRwYl
	 beXaWxo0fDLRlBJJZcy54cWd6b/MYb7zCh7bobcCsD9ryae2cEQG+7hDRlWKR8Dd15
	 3BITS0pz5qzrA==
Date: Thu, 29 May 2025 22:36:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sched_setaffinity.2: use 0 instead of getpid() in example
Message-ID: <nj7ic44nlv656ab55c3pew5ioocvhsq2dbdj2rrvu2kphdhqbn@lqztjrdwm44n>
References: <v5p4zfqrepnrorszmuie47aiulivcykicxuhtxfkqhrq5t3cis@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ivgxzvc3qgjna73a"
Content-Disposition: inline
In-Reply-To: <v5p4zfqrepnrorszmuie47aiulivcykicxuhtxfkqhrq5t3cis@tarta.nabijaczleweli.xyz>


--ivgxzvc3qgjna73a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sched_setaffinity.2: use 0 instead of getpid() in example
References: <v5p4zfqrepnrorszmuie47aiulivcykicxuhtxfkqhrq5t3cis@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <v5p4zfqrepnrorszmuie47aiulivcykicxuhtxfkqhrq5t3cis@tarta.nabijaczleweli.xyz>

Hi!

On Thu, May 29, 2025 at 08:13:03PM +0200, Ahelenia Ziemia=C5=84ska wrote:
> getpid() is superfluous here.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

I've applied the patch.  Thanks!


Have a lovely night!
Alex

> ---
>  man/man2/sched_setaffinity.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/sched_setaffinity.2 b/man/man2/sched_setaffinity.2
> index 1bdfa4e63..fa49c716d 100644
> --- a/man/man2/sched_setaffinity.2
> +++ b/man/man2/sched_setaffinity.2
> @@ -370,7 +370,7 @@ .SS Program source
>      case 0:             /* Child */
>          CPU_SET(childCPU, &set);
>  \&
> -        if (sched_setaffinity(getpid(), sizeof(set), &set) =3D=3D \-1)
> +        if (sched_setaffinity(0, sizeof(set), &set) =3D=3D \-1)
>              err(EXIT_FAILURE, "sched_setaffinity");
>  \&
>          for (unsigned int j =3D 0; j < nloops; j++)
> @@ -381,7 +381,7 @@ .SS Program source
>      default:            /* Parent */
>          CPU_SET(parentCPU, &set);
>  \&
> -        if (sched_setaffinity(getpid(), sizeof(set), &set) =3D=3D \-1)
> +        if (sched_setaffinity(0, sizeof(set), &set) =3D=3D \-1)
>              err(EXIT_FAILURE, "sched_setaffinity");
>  \&
>          for (unsigned int j =3D 0; j < nloops; j++)
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es/>

--ivgxzvc3qgjna73a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg4xTAACgkQ64mZXMKQ
wqm5qhAAlKI/XrpjQcRu9/d6CKFDyuSAlaIfA1G7nrIrkwrCnkPNjCr9KV4bKyzx
TQpakKxNumPaBC6iQkQqnLI6BCjbiZPh389sK4RdFIm3qRLcvgQ2bQ2vJSJIT8x/
fMD9xCWNz97SCmECGtWYkRyMRzWOfoHARrORAXet4ShJNP15LWf7CHFhOWOn6kPk
EK87lassTIJalV9iFZhc8TPJNgJP1qO2hsb091Vmd+NDrsluUd6JxIz5wzqRpuAh
BBti3q+Wgbznf3CIiOloI+8LIRsWnjJ8su1VnjcyRSgrxlUR4KROwNNYEIRrg6jn
Mtc0vuBo6byaae6yvvrlpADC0MSNMOiIVOFj23sGSUzDqfstnFgh97VVFmJ57fvf
V86iXWzydOgNkR1iDPwAAMcGkKsiOVhnJCW4l74zaGN3lo4c4EliRwSVDd1Vvx9a
zbeS8CKvX+1xXg+OcEBiDfT/aWMXmWe4Mey5Z/85OFXCRUBhKdBV7kPp1IC1HSch
p1ir+gVPzbyJ+0Iq3TEGQ9du7PkDlV/w8t8MPTzBtVPoxxNqJ/wt/7wB0Og82WGX
LOCHNkNjaCT2rFonKldxxE7EDYOfGgYPj3CoWPmTsS4S/kt+/4DEq+DApEY0U25U
raN80uidt8PhogoWxtYTcXiy3jNIHaEKy+1C6e5b2M58gHKvhjw=
=3pRq
-----END PGP SIGNATURE-----

--ivgxzvc3qgjna73a--

