Return-Path: <linux-man+bounces-4478-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BA01BCDBE2E
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 11:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 60E5830021EE
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 10:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228BF2C11DB;
	Wed, 24 Dec 2025 10:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxVjrTJc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D669C22CBF1
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 10:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766570604; cv=none; b=XyBHJNVjUcdz71pXfREhzGgry23LP+Onif6COBjTrPvGekxqThZtuJehA0ajDemR6iNImifHSF4qTgfV8WiVwosgyEY7GGWK74cKMaRsTi35MgiKSQeG3Lb8k6dWXFnPg0ZBtvK8WP6Upebv3w6HNFpcymcjQFm1Q5PrPJyImf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766570604; c=relaxed/simple;
	bh=5gJN1kt5IGDJu2NvcLzDXDsb/wY/tqxhQ6qV8stRxA0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lIoUfxfji8SxzJjr71SZomlM+iSp7LgxC+a5kAL93BIrkUuwWN8vjvcW2wyrPyVaW2aO6DTOJ5y2pH6n+jmnYWhxokcbsa6MQwD+TL0vCyUDGTUlD1MjBofZBdBc9yQvPn/PABd3N0Hv308fhtZ3YUfS5Np2P3kV0FTILBUsi4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxVjrTJc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99358C4CEFB;
	Wed, 24 Dec 2025 10:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766570604;
	bh=5gJN1kt5IGDJu2NvcLzDXDsb/wY/tqxhQ6qV8stRxA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pxVjrTJck7z0+k8SMRfxvztgUTWdJE3ZFA96C7vk6RLwUR9WCerEYjvTDQNgHWBeA
	 J9Kgj0PpekhmFk2KCfjaKAGdLAbUqVdLrbd9Hs5zXPQvulK2zqEfDbOc1rTfljxkPk
	 QdSoOK/zti5Zpi4TSspjU2PUgNuSti8PBDekf85IgbGdeEJsJjKbyFx0mxNaeZSdoa
	 cKKBlbarJBEOq7scE1OkgCaIMxAd8m1oREMbuXqaFw8Au9uK85esE7G6N2d5fRYAv3
	 KOBjM4dQjQXDjPWzvpY6MPFzLd3BhjzbT4vWia4nPggY4lA3b2LaJA9K+Vf8MUuWZi
	 rU1MKPT7Fl9Xw==
Date: Wed, 24 Dec 2025 11:03:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt.3: ffix
Message-ID: <aUu6CrfBstpApFeR@devuan>
References: <20251219171602.6255ekvsx24ocub3@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5lqfot7wvlovajs4"
Content-Disposition: inline
In-Reply-To: <20251219171602.6255ekvsx24ocub3@illithid>


--5lqfot7wvlovajs4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt.3: ffix
Message-ID: <aUu6CrfBstpApFeR@devuan>
References: <20251219171602.6255ekvsx24ocub3@illithid>
MIME-Version: 1.0
In-Reply-To: <20251219171602.6255ekvsx24ocub3@illithid>

Hi Branden,

On Fri, Dec 19, 2025 at 11:16:02AM -0600, G. Branden Robinson wrote:
> Protect literals from hyphenation.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man/man3/getopt.3 | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> index e7518192d..da390a1dc 100644
> --- a/man/man3/getopt.3
> +++ b/man/man3/getopt.3
> @@ -137,14 +137,14 @@ .SH DESCRIPTION
>  If the first character of
>  .I optstring
>  is \[aq]+\[aq] or the environment variable
> -.B POSIXLY_CORRECT
> +.B \%POSIXLY_CORRECT

I was wondering if we could write a script based on yours for finding
all places that need such a change.


Have a lovely day!
Alex

>  is set, then option processing stops as soon as a nonoption argument is
>  encountered.
>  If \[aq]+\[aq] is not the first character of
>  .IR optstring ,
>  it is treated as a normal option.
>  If
> -.B POSIXLY_CORRECT
> +.B \%POSIXLY_CORRECT
>  behaviour is required in this case
>  .I optstring
>  will contain two \[aq]+\[aq] symbols.
> @@ -221,7 +221,7 @@ .SH RETURN VALUE
>  otherwise \[aq]?\[aq] is returned.
>  .SH ENVIRONMENT
>  .TP
> -.B POSIXLY_CORRECT
> +.B \%POSIXLY_CORRECT
>  If this is set, then option processing stops as soon as a nonoption
>  argument is encountered.
>  .SH ATTRIBUTES
> @@ -249,7 +249,7 @@ .SH VERSIONS
>  .IR const ,
>  but these functions permute its elements
>  unless the environment variable
> -.B POSIXLY_CORRECT
> +.B \%POSIXLY_CORRECT
>  is set.
>  .I const
>  is used in the actual prototype to be compatible with other systems;
> @@ -284,7 +284,7 @@ .SH HISTORY
>  .P
>  Very old versions of glibc were affected by a
>  .UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;h=3Db=
f079e19f50d64aa5e05
> -.BI _ PID _GNU_nonoption_argv_flags_
> +.BI \%_ PID _GNU_nonoption_argv_flags_
>  environment variable
>  .UE .
>  .SH NOTES
> @@ -294,7 +294,7 @@ .SH NOTES
>  and \[aq]\-\[aq] at the start of
>  .IR optstring ,
>  or changes the value of
> -.B POSIXLY_CORRECT
> +.B \%POSIXLY_CORRECT
>  between scans,
>  must reinitialize
>  .BR getopt ()
> @@ -303,7 +303,7 @@ .SH NOTES
>  to 0, rather than the traditional value of 1.
>  (Resetting to 0 forces the invocation of an internal initialization
>  routine that rechecks
> -.B POSIXLY_CORRECT
> +.B \%POSIXLY_CORRECT
>  and checks for GNU extensions in
>  .IR optstring .)
>  .P
> --=20
> 2.30.2



--=20
<https://www.alejandro-colomar.es>

--5lqfot7wvlovajs4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlLumgACgkQ64mZXMKQ
wqkKww/+Iv5BvAYb38+Z118+1xj2q53TGtebklbxPP4hrku+ht9UXSb6Bz0cYuwz
QyKfW6lCwGMxxY5PyFNE24h4UxcIaygeKPwoNqak0ij7wzLtbTb+GVTtf5ihKhMK
k+p9HmBL3kLNm0+Qw8Hk+Y0TktorKhpyGHDJUgn9WqVSjdriQddHJ97I53uBqpeL
Q1VQ0dAo8/GDe5KxFkj0F7arO2op1NjetY1xLkRU6jCSR2gzpErs01Czsore83e3
4vq7mbyBgOweZfGZGbQQna7gKp0haoNx0VxKQ+eCgvuF8HtTbfUU0A9XDCf2+OQ0
sdwP7Kce7FdUksIuKE0m8Dl9IniNWbV6PiIRL0UMaLeJs1dbWBKX2LlF4pp6nt1v
vonjiRILLx34O6flajwQo910P1Hl7XHpc/1WjhYpwTtiOJA7PSyHywJtwNZKepf8
it/D+A+bt/ueuZ6UQ5YpZb0N17LyVK0AUIe84ifpIywFlkiFbsF9WlkLgaf+iag/
X1EcOZnhHNCuVOVrx4YQRxMjQqFVNPXPxh97tYp/WQlI6OdQAzftI4vmAZXJHAso
FbZkFTU8T/ybgJqUl4iS7HrQmC5oDY9M5jiJuP9kvTigx+Wh5z/nyrk5ZzpmDgs5
UGwC1HWBf1hxefiImqGPAPoLsevebSJkeq1zKcfEdcz0MngALlI=
=68S/
-----END PGP SIGNATURE-----

--5lqfot7wvlovajs4--

