Return-Path: <linux-man+bounces-1925-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1945A9D01C4
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 01:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1815B22E39
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 00:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 614928BEA;
	Sun, 17 Nov 2024 00:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht/n7moj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1545B23DE
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 00:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731804653; cv=none; b=f9dd+4mJ5p2VSJSCJEk856NTMtlNGd4I9xl07zpzVI8qbV8HH9Yg4DufyjjwvZxxs3odem4Xgy5htbpxsP5SszV8hY7eRWyq8QMTGO78vO1wG3cYmbMmY1XuVD+DRBKEs9QeAGbYZMArQdBw1bF8qN0x8wImSVnTO7HOf9KhiPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731804653; c=relaxed/simple;
	bh=fqR1ePetA6cvk4GL2g7hrM6rjQI5d2CP3YjajtH2i60=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qxoVtBJDD0uC4r73E7kfGMhfwwt+s6/9c+mx9ixCkDreSwM8VBCWNtclWmlIi47OfCGty3pUJXGna0/pRIF9UvqHq7Jyy9XoVfNFdQr0S8CD8tyxp6h6iMFc2NbntpFPKzcKJ9OKUh2QmsiKdwY3sBfMh6geGvLEBTHLG8/fHr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht/n7moj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1837C4CEC3;
	Sun, 17 Nov 2024 00:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731804652;
	bh=fqR1ePetA6cvk4GL2g7hrM6rjQI5d2CP3YjajtH2i60=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ht/n7moj73ISgChGyr8WJXljomSiVEsXgIl3BmqtxOyMAIpvLAkugnnx7zt0zounn
	 mXQ9tNehIbaCBco+pGYDMj3K6hrC+ii3zjMGSLB+nNkdgeJF31jZUwVZ9yEwe6A9eK
	 CX/E3jaH12TAp2yMAdncfPzDKCeSJqnq6BJLGDGUT+54gNMO6e6g0ZioTxcbmo0V6/
	 njKDYGNw6aOKAPcAJ5fZMtYLKJ738uJR4B2BBF1RluDjmrnxZ246qizFekJabVG34G
	 i/8wWxDzzDcksiRCI6j1x1b2r5Y2S3chEVolFVspgDEoHVf05NZwWvuiEVZ82SL/gA
	 d5IyQdacXtCzA==
Date: Sun, 17 Nov 2024 01:50:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ken Pizzini <ken@gnu.org>
Cc: linux-man@vger.kernel.org, Jonathan Wakely <jwakely@redhat.com>
Subject: Re: [PATCH v3] printf(3): improve description of %a format
Message-ID: <ruyclrjge3z3n2mfsct5f32i42u6jjram2hu3r2pzxsa74uobn@rpkgudwfkpgz>
References: <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>
 <b932f13642502e063ef139d57b8f3c496023bf4a.1731707666.git.ken@gnu.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zzetinhw7r6div46"
Content-Disposition: inline
In-Reply-To: <b932f13642502e063ef139d57b8f3c496023bf4a.1731707666.git.ken@gnu.org>


--zzetinhw7r6div46
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ken Pizzini <ken@gnu.org>
Cc: linux-man@vger.kernel.org, Jonathan Wakely <jwakely@redhat.com>
Subject: Re: [PATCH v3] printf(3): improve description of %a format
References: <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>
 <b932f13642502e063ef139d57b8f3c496023bf4a.1731707666.git.ken@gnu.org>
MIME-Version: 1.0
In-Reply-To: <b932f13642502e063ef139d57b8f3c496023bf4a.1731707666.git.ken@gnu.org>

Hi Ken,

On Fri, Nov 15, 2024 at 02:11:04PM GMT, Ken Pizzini wrote:
> [I've incorporated wording fixes from Alex.  Part 1/2 of the previous
> patch set was accepted; this patch assumes that part 2/2 was not
> applied (i.e, this submission is not incremental relative to the
> earlier one).  I'm not sure if this is the preferred way of doing
> things, but hopefully good enough?]

Yes, this is fine.  :-)

> The description of the %a/%A specifiers in the printf(3) man page
> could stand some improvement.  In particular, it is not clear from the
> current document what base is used for the "p=C2=B1d" part of the format.
>=20
> It can be inferred from the nature of %a that the base should be
> a power of two. and it can be further inferred from the nature of
> hexadecimal floating-point literals in C (as specified by C99 and
> later) that the base must exactly be the number two, but it would be
> helpful for the printf(3) man page to state this explicitly.  My first
> expectation when reading the man page was that the exponent would be
> taken in base 16; after experimentation my second thought is that it
> is base FLT_RADIX (which is 2 on IEEE 754 floating-point systems, but
> 16 on S/390).  Only by going back to the standard [1] could I determine
> that the exponent in p-notation must always be taken from a base of 2.
>=20
> [1] POSIX.1-2024
>     <https://pubs.opengroup.org/onlinepubs/9799919799/functions/printf.ht=
ml>
>=20
> Signed-off-by: Ken Pizzini <ken@gnu.org>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D03f5ddf60609961f5ed6f760b2a166f3fc490eb4>

Have a lovely night!
Alex

> ---
>  man/man3/printf.3 | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3/printf.3 b/man/man3/printf.3
> index 7a96ec9c7..2129e26dc 100644
> --- a/man/man3/printf.3
> +++ b/man/man3/printf.3
> @@ -767,8 +767,11 @@ .SS Conversion specifiers
>  .IR double .
>  The digit before the radix point is unspecified for nonnormalized
>  numbers, and nonzero but otherwise unspecified for normalized numbers.
> -The exponent always contains at least one
> -digit; if the value is zero, the exponent is 0.
> +The exponent,
> +.IR d ,
> +is the appropriate exponent of 2 expressed as a decimal integer;
> +it always contains at least one digit;
> +if the value is zero, the exponent is 0.
>  .TP
>  .B c
>  If no
> --=20
> 2.47.0
>=20



--=20
<https://www.alejandro-colomar.es/>

--zzetinhw7r6div46
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc5PekACgkQnowa+77/
2zIxsQ//bLWA55FEyYAUfU27nQj5pHVJFZwQMj0SkamyCFvZdRfp+QiNeT5t9909
jD5guukpx1TGIGGAolFIm/vfrkqQ9i2WeY3NawKNkeLkPbYFCIJXjOoYuKp3LnS3
uN5u+yuhC18BNYXtZPL4iQ/yfH7W+RLJiD38L6L7qdcO3AOCSK7zfLdrqZEeYFvO
4mx/aQN/uIkk1oyB8mNW1rG8EQ9mLVbGxLrmRlYrDuDjun6liHiJEfcsU5F6CS3Z
8T6TIMvj2dxkhwO6On8GO0CUOlrPpAkO2jhFLm3bWLCV2ioSYQIgIXWA1b/S9vnI
Ao88BZwk+/1mI33cJkBAcNr43chuPhlRNKbdU1kmZsABlk7xrtOzUM9asCVtD2rP
oXHH8at/mDmLVXIMBdvINdJ7qTMZmQTkBXmhwjbSOqnE1Bu6qsBkaEbek3VRUOhx
6ex4+Fr2DbxPvtc8PxpCVs/NNN9BtldlwyG3wtMft8qSsMoxpUZULICl4jMkaw1Q
DvJRYbPjPUrm/+8TdhqhkTH8MCTNavH2XvLcr8O5jcoI5/7QaBEydh3HwGl5yuYz
P+HG0whu3RyZTQa7ZGvXhQFa/DMoa3hH3M4aMvADHpF+/UKVo/SazBuRcXSMSgza
mVdCcZitj7sp8egmol1uw/9CIzNnimwVT0/aeSzMCYfm9KsiscM=
=nDcu
-----END PGP SIGNATURE-----

--zzetinhw7r6div46--

