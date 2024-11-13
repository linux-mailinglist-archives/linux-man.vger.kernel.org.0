Return-Path: <linux-man+bounces-1905-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 370629C6DEB
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 12:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCDBB1F21246
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 11:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB001FF619;
	Wed, 13 Nov 2024 11:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKzuon3I"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CB6193092
	for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 11:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731497680; cv=none; b=Ej1LWNXjb2NnUJ8ErE7WKs5wl8ZwirxKKevd1McoqQGV7esWc9h9M1/nHrjM2hRngmhO8V+8iVc5czPWyHUCp7QR+Gs1WRRFW0DQ3/St1UQMEqy7piOoOxFT1DcO3J0zw7DRo/1XlJhw3szWIdJYsk0W5yoJdA4dS7JoeJvWdlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731497680; c=relaxed/simple;
	bh=70vocmBhc7gs1MN9m70CIEiOt736uhwZjBLa0CQJyMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gj/wEZRrBOULHXN5GlUHJpgto8/mdJuAufxQYdJ5trV5g+w7NCqUR+fCnAj7yGwFvAzgvTxS6M284KQbspBxpgdwpxQVIyrIaO1kvyfw95lRPad9Q8n2Jejcq32aSRu40SqPg0PfVp5e+WVPwKykDvfg/SfzOnLBcFfJ0Jzf9GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKzuon3I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B188C4CECD;
	Wed, 13 Nov 2024 11:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731497680;
	bh=70vocmBhc7gs1MN9m70CIEiOt736uhwZjBLa0CQJyMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vKzuon3IMJvJI950vDXe+AeJdT/3FZKkYqKQIBTXBGeTGNOgczqkHA1GPmIQ5/AcR
	 Cc8+9zBRXYEl28BY7ftic4/UolVWlWQEy+6r/JshlyhlxdltYawe0/05MvqaxAK5vQ
	 iA2y2DAqJs2le691Hgf8EkJOlaLaDcXdUHOd6D8Dc1nKoWjO5CVbBLK35KOKdSI5RG
	 MHGhVvL7GX5Z2LOCXFWsZz/w7RtwaaufbipDSNGRg+IPWThAklNdEbfW1NgvNw2mbJ
	 Dmr97zbj66jvZo0Z6UOGyBZo+K6DkdeOo544L6XHeS7GFg5DwjQ+m/UgYOp4YOJcRN
	 GldayATu6t1Eg==
Date: Wed, 13 Nov 2024 12:34:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ken Pizzini <ken@gnu.org>
Cc: linux-man@vger.kernel.org
Subject: Re: improve description of %a in printf(3)
Message-ID: <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fcdqfjwmfiqhdrgv"
Content-Disposition: inline
In-Reply-To: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>


--fcdqfjwmfiqhdrgv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ken Pizzini <ken@gnu.org>
Cc: linux-man@vger.kernel.org
Subject: Re: improve description of %a in printf(3)
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
MIME-Version: 1.0
In-Reply-To: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>

Hi Ken,

On Wed, Nov 13, 2024 at 02:11:52AM GMT, Ken Pizzini wrote:
> The description of the %a/%A specifiers in the printf(3) man page
> could stand some improvement.  In particular, it is not clear from
> the current (6.9.1) document what base is used for the "p=C2=B1d" part of
> the format.  Furthermore, the description refers to a "decimal point",
> even though it would be better referred to as the "radix point",
> as the number in question is not a decimal representation.
>=20
> It can be inferred from the nature of %a that the base should be
> a power of two. and it can be further inferred from the nature of
> hexadecimal floating-point literals in C (as specified by C99 and
> later) that the base must exactly be the number two, but it would be
> helpful for the printf(3) man page to state this explicitly.  My first
> expectation when reading the man page was that the exponent would be
> taken in base 16; my second thought is that it is base FLT_RADIX (which
> is 2 on IEEE 754 floating-point systems, but 16 on S/390).  Only by
> going back to the standard and reading carefully could I determine
> that the exponent in p-notation must always be taken from a base of 2.
>=20
> A patch with one suggested wording is attached. The entry for "a, A" in
>    https://pubs.opengroup.org/onlinepubs/9699919799/functions/printf.html

The latest standard is POSIX.1-2024.  Please link to it.

<https://pubs.opengroup.org/onlinepubs/9799919799/functions/printf.html>

> gives an even better rewording, though I suspect there would be
> copyright issues in simply copying its text.
>=20
> 		--Ken Pizzini


The patch is missing the metadata that will make it be accepted by
git-am(1).  Would you mind formatting the patch with
git-format-patch(1)?

See:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/patches>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/description>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/subject>

> --- printf.3~	2024-11-13 01:07:23.023847047 -0800
> +++ printf.3	2024-11-13 01:55:48.368341811 -0800
> @@ -757,15 +757,18 @@
>  the letters ABCDEF, and the exponent separator
>  .B P
>  is used.
> -There is one hexadecimal digit before the decimal point,
> +There is one hexadecimal digit before the radix point,
>  and the number of digits after it is equal to the precision.
>  The default precision suffices for an exact representation of the value
>  if an exact representation in base 2 exists
>  and otherwise is sufficiently large to distinguish values of type
>  .IR double .
> -The digit before the decimal point is unspecified for nonnormalized
> +The digit before the radix point is unspecified for nonnormalized
>  numbers, and nonzero but otherwise unspecified for normalized numbers.
> -The exponent always contains at least one
> +The exponent
> +.IR d ,
> +which is the appropriate exponent of 2 expressed as a decimal integer,

I would remove the 'which', and s/,/;/

> +always contains at least one

And prepend an 'it' here.

Other than that, it LGTM.  Thanks!

Have a lovely day!
Alex

>  digit; if the value is zero, the exponent is 0.
>  .TP
>  .B c


--=20
<https://www.alejandro-colomar.es/>

--fcdqfjwmfiqhdrgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc0jscACgkQnowa+77/
2zL72Q/7BrtkOrZqTckaSM9OZHs0ctPvoCSw2H8jwHZOaDoDI/zwqomh+DlZPEfw
0AtecfHRCh3j5shdEJNzubPTe0+k7hZbqYXH6da+bXsEzhA6byba5FGOIkC6tz/c
4ZZIwRFtY0NQtfMMt/+L5nJTr2wU/AuFE9uCVqXgeqd1XLJQ1PMPiYJ8hryI6FHb
o1mYUDJcZ18wr+HvsNoCg6RMAvtLDXiNd+J0/3aC66AKUbZrV0u/3kZUG/uuaglA
+DO4AgS3bs+azjzgb5iflJhTS1kAnO58Q/GWyiCNeAp5hjI4U/jpi38pjgpJ91RB
WiCZO3G7OoJ0aAELKIzjjLlYyywG4hn9GK8qheMP+/8bTYIFZKw1GNYMPvpx8D/1
v6eZmc5my0E2E4abSNgq/l5jKBjG8AQF7sdTIxaf2aSIHfOdLidLnK9vZSCqcHCx
1Z6K2MLVd5PNHpTIIB5pGUkSy8o7zhUjlFX1tcISY/toFrePd70g9zKZDgCtT2GY
Vkh5syjkU55FiSaDISJNGq0AB0sm6MDu9uIQYMqdSsORw9SV5sdfvkAd5wXmuaZd
atDhb0yRrXJjxmM/OFu6AOyix9ZhrIF87D/mZBhbJBb2qeWPLaIkIM6In6BkJZkr
8n9JwQ9SKfgJPIv9W2CrWHLmXhK+g1ZfnF7KZWM1Bg7HCbnKxvc=
=6UdK
-----END PGP SIGNATURE-----

--fcdqfjwmfiqhdrgv--

