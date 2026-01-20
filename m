Return-Path: <linux-man+bounces-4855-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D0BD3BCE5
	for <lists+linux-man@lfdr.de>; Tue, 20 Jan 2026 02:34:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DD013007248
	for <lists+linux-man@lfdr.de>; Tue, 20 Jan 2026 01:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B3B235C01;
	Tue, 20 Jan 2026 01:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrKe7jVW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4743F189F20
	for <linux-man@vger.kernel.org>; Tue, 20 Jan 2026 01:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768872852; cv=none; b=a5NQv8LOdFM9UzacipoMsa2SaAOx8rQdrxXqMWkLfY3JV1tV70hfzI/+I/S3xlXassyFQkEHdS5e+lecGL2URbPbCXBurV9g5tHnyRX9s0yZ+8W0zBH2UgowbHSV9iDXKOjkiqxrsS7W4YuqE3PJ+tcZIaqi7/wIBILq3jqZE3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768872852; c=relaxed/simple;
	bh=W4AaSc0fV2+gLTcVCbA9EKpcCuN5+9FUFOkUQdYmLac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GEFXXI9Vlz2BNPzaURyFsMDyHu+g6sEd3HV3QmHKebXGg8iUhVxXGiydk34R8X5ZrLPpOKPFOkQ4sxstCpP4ztSjw+uSqMuHucqhbu2sqyL5DZMaYIynmHxLuzsrtkl7YF1jp5uRaTuO6j0TDp1a3CEX+0XYxljtL49DE53Wo4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrKe7jVW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31BF3C116C6;
	Tue, 20 Jan 2026 01:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768872851;
	bh=W4AaSc0fV2+gLTcVCbA9EKpcCuN5+9FUFOkUQdYmLac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PrKe7jVWQctgZ8OULANUU3LnSeYZuE9y1dkNlU8hbRhQ1ylTKpDvcJlisJ43Y9M4b
	 +eVVI8q7NSxnAVfonb32GMPGD6h9xbn0EqLcuqo1xkIn9jFaD0PNKn7PJ0x4cGk2AA
	 qnqG69ejL0CcdLqopycxVGhkcwTlb05QrU7Z//F9IC6LqLrGsYEJPZlexisPMufsSu
	 vHYmFSp9qf8j7haNIChsp7mGUwrdLpRCTLaJB4HBPfyNILvbIP1y7NoFr7dlBfQVJJ
	 zNEQLroAv1R0D7O4Tph3qWJJQxA8Sa8m4MFR48enYIfLeV7EwJHLBFmlcvd0Z5QwG4
	 sqowts3ev6rkg==
Date: Tue, 20 Jan 2026 02:34:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 02/19] man/man2/access.2: HISTORY: Specify different
 access(2) prototypes
Message-ID: <aW7aOgFHOdCSiwUH@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cxd2dzltkpkz2g3u"
Content-Disposition: inline
In-Reply-To: <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>


--cxd2dzltkpkz2g3u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 02/19] man/man2/access.2: HISTORY: Specify different
 access(2) prototypes
Message-ID: <aW7aOgFHOdCSiwUH@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>

Hi Seth,

On Mon, Jan 19, 2026 at 11:55:06AM +0000, Seth McDonald wrote:
> access(2) was specified in POSIX.1-1988 with the prototype
> int access(char *path, int amode); [1]
>=20
> POSIX.1-1990 then changed the prototype to
> int access(const char *path, int amode); [2]

I suspect this is common to all APIs specified in those standards,
right?  Or is it specific to this API?

'const' was invented by ANSI C89, so I expect the change was around that
time.

On the change itself, it wasn't a breaking change: programs written
before the addition of const wouldn't notice that const has been added
to the prototype.

The change would be noticed by a program written today, but compiled in
such an old system.  However, I expect such a program to be aware that
pre-ANSI C was different, and it would have to adapt to it anyway.
const would be something that would have to be globally ignored, with
something like

	#define const

Given this should be of no importance to users, I'd prefer not
documenting this difference.

What do you think?


Cheers,
Alex

> [1] IEEE Std 1003.1-1988, Section 5.6.3 "File Accessibility".
> [2] IEEE Std 1003.1-1990, Section 5.6.3 "Check File Accessibility".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man2/access.2 | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man/man2/access.2 b/man/man2/access.2
> index 1ef65a982f04..c0bcf016ae5c 100644
> --- a/man/man2/access.2
> +++ b/man/man2/access.2
> @@ -342,6 +342,13 @@ .SH HISTORY
>  .TP
>  .BR faccessat2 ()
>  Linux 5.8.
> +.P
> +POSIX.1-1988 initially specified the function signature of
> +.BR access ()
> +with a non-const-qualified
> +.I path
> +parameter.
> +This was remedied in POSIX.1-1990.
>  .SH NOTES
>  .BR Warning :
>  Using these calls to check if a user is authorized to, for example,
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--cxd2dzltkpkz2g3u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlu25AACgkQ64mZXMKQ
wqnLRQ/+PKa9zf90cJ1c3VXeU2HEHg4ZqOkFvhnBnFZWEHIh+keAKzgUSCiWqg5R
qZcKNoy9STOXk0Inzf1o3R0X9C+oScWfaBuCE4Qg2o8BpHF/7aNlQou26qz4JXvT
lfEdcNWPb+/FMPwKDei1MZgDNfyMdnNR/cMQfp2mnZIleE5bFs6VrnnX+wbN7rXz
23dMsYsMWP6Ju0SyCNZilHfUHD7cy8Doet6LqnqFws6164Px9X3cNPrzHWTY00w7
MWsxV7XZ/1g17Qd/a/LC3uZ9zZOYDKgl1COG+Y84hEFnPzuq8+QncXXm2+voBCqh
jIQfvbJaYOn2FqJw0/7LLOgVanAGYGU48P/0dzwDdYqLClChLacP5eU8a9RW6ZXy
9tp1fgxeNoz7tCdJjnFK+LaA8X6Pix5CTGlncoOut9DDWOvLO/rZ4mj2r5vJcrl3
W+0RC4fXcjBi67BQ1XaBYi6GkBuyA/R1mofqSIAaYM9Egf9uoeKz572FXJKISBAL
tMANGbgA/EBMmw7Gu9lJc8+NmGAC/kCIGdjeIGmix/SmZtqnuNyQLPP5WgDnK5+B
bytnvioyNbRdTBZWTUKAqfXbahM2K8Y8xHqlLChyhwJnM2CE7/XBfh2m0xm21wxv
wTSCGXXaLxvGligHhV6m2AzPnkB03RjxlmyhzeHC80yRpFgzkrM=
=ZzyI
-----END PGP SIGNATURE-----

--cxd2dzltkpkz2g3u--

