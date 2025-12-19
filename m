Return-Path: <linux-man+bounces-4458-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB96CD0F89
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 17:49:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 81023300B90B
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 16:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1ADB366557;
	Fri, 19 Dec 2025 16:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK087shm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE65350D52
	for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 16:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766162948; cv=none; b=eXW49m2eZwjd4X5/S+mncF3b1+TnZCuF+mKtsLjvf7Hc1duj9wMe28NX+K8nuiinosSY7YDfhOBD2W6APJ+zGf30YVEZRNgAHldO8XYrTUjavtqNEQza1YGxIy/3IZDTpn25F8LIW+GOasceCBQB7GKScIC1OnXFmNeNtElgNhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766162948; c=relaxed/simple;
	bh=yuv4kRVWmcmXPJQQSyjmkZQJbjeNM5R8xu1mdz84Tfg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lKXNOyAKHpVLnG6Kc/TTGpXmXf0a/ZYKp8q0jhqF92ua94JDKi5cK3Eqtt4x3Yqj5bndrebuvdi1y6M0pCsjgHxAiM0/IDUYkOnUTCcgPfhrcEBK3bs8I+LvI0SZzw0X5ziYnM/s6C1ueljZnm81Vcr/6MCGypHacqwlXgGyD3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK087shm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EAA5C116C6;
	Fri, 19 Dec 2025 16:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766162947;
	bh=yuv4kRVWmcmXPJQQSyjmkZQJbjeNM5R8xu1mdz84Tfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eK087shmgteAImzl3EycojLzEXr03FitMtpcODlJRwNkhtyodj1Or+fBpmVDaOiAm
	 rYKu5rd8x8f66hgSiCKV9KIE3/hfhCg8RlIsyCAeghG9ZWlXQXyOsF6Z/tVz6mqY+M
	 zbqiKCKaK2E49k9vda+mDOPs+PVtDTRVHXj0jFu04xV5Ej6xYX9RB9TqraaCTQr+gX
	 hChXm9GeCHucrNMpHEq/XiqXh6pkHlQOrhVJ5i5NHgRzjhl7jwLPcy6Lkp4xlxbqVG
	 K95M0esZv/Vunpeb4nEwHOXwfRxvstuuDYrZW0iCJ3ZaUEXWiNXefuNd4Rxt7co1ks
	 p4wOGdE8AU7+Q==
Date: Fri, 19 Dec 2025 17:49:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: ffix
Message-ID: <aUWBtnnKpp_Rx7wn@devuan>
References: <20251219163144.hrycalv44yxxzevq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="murulx4turmpkl6j"
Content-Disposition: inline
In-Reply-To: <20251219163144.hrycalv44yxxzevq@illithid>


--murulx4turmpkl6j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: ffix
Message-ID: <aUWBtnnKpp_Rx7wn@devuan>
References: <20251219163144.hrycalv44yxxzevq@illithid>
MIME-Version: 1.0
In-Reply-To: <20251219163144.hrycalv44yxxzevq@illithid>

Hi Branden,

On Fri, Dec 19, 2025 at 10:31:44AM -0600, G. Branden Robinson wrote:
> Protect literals from hyphenation.
>=20
> Such explicit protection of man page cross references will be
> unnecessary when the Linux man-pages migrate to the `MR` macro of groff
> 1.23.0 man(7); that macro disables hyphenation of its first argument.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man/man3/getopt.3 | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> index e7518192d..2ed7c7080 100644
> --- a/man/man3/getopt.3
> +++ b/man/man3/getopt.3
> @@ -91,7 +91,7 @@ .SH DESCRIPTION
>  A legitimate option character is any visible one byte
>  .BR ascii (7)
>  character (for which
> -.BR isgraph (3)
> +.BR \%isgraph (3)

Please don't include those that will be unnecessary with MR.


Cheers,
Alex

>  would return nonzero) that is not \[aq]\-\[aq], \[aq]:\[aq], or \[aq];\[=
aq].
>  If such a
>  character is followed by a colon, the option requires an argument, so
> @@ -137,14 +137,14 @@ .SH DESCRIPTION
>  If the first character of
>  .I optstring
>  is \[aq]+\[aq] or the environment variable
> -.B POSIXLY_CORRECT
> +.B \%POSIXLY_CORRECT
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

--murulx4turmpkl6j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlFgfoACgkQ64mZXMKQ
wqm2Kg/9ELIgmbWPORI+dgvOAkgx/HBz9NhQMa8hqewrhdHKpU+GqbvhbcJ4RioE
7EWhptK03Pnfge3oI3/kfSetrBHGisoTpSU7dv1wDQLVWOgub566RU7ltKsbauPf
ZyIiEJciGZj3H482YH0ffyCYCjPIC93g5NHoG2GMcMND6q+NQP1zEHOTkEbkdkDK
QMLDH1SG09woe59VMDm52eips7WY0FFjdyMXzNMhu3tX8mNpxtGh3OE/6G3wEav2
oY8SAXp1EfpK6D67eum6KyFoJ5OCwZd1RT/9Lj4Z+jINiQx5FyEMzh13wCaFHiL5
D07ewZeHDT2ZLYvOkcwVF9cniMm3gsXJCg3NeYt/0RkkefOtnRNopdQJOuZj8yro
mUTqyHiwHui3Uc/jFJftUeD/cfJiRxTv2pJ9aXLWI97BxZzoGvADOFAhcJzmML3q
VxTsT3d1INPglA0oIs+CrGxyxTCNpP0V3NydAje71dPopP2Y2KwwP2tgMeOHRuUu
ozB/Py5uByj1onURFNOpR5f91z+2fKeLDRCU9+2spprk7xxuUuSiUA4B8erC4pv4
P78lyPo2fgzVBgIlLzQAo6CmSMLZ5ofjWWNWDKindvNo9y0vOjmAsw008fytTvwh
UAag9g99Zb7u8JwYygOVLwyWTMcvQ+KwP+c8LjNCUWGOoY2yxUk=
=1Cwc
-----END PGP SIGNATURE-----

--murulx4turmpkl6j--

