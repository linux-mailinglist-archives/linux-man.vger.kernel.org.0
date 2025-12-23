Return-Path: <linux-man+bounces-4477-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6281DCDAAF9
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 22:36:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E04E530057EA
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 21:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B4F30F805;
	Tue, 23 Dec 2025 21:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uONFe7li"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD130B50B
	for <linux-man@vger.kernel.org>; Tue, 23 Dec 2025 21:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766525802; cv=none; b=aHB0Fi/1mP8JDthYNp2RRAJ3PQ8cL0Gm/+f+DEtE2/tbiMt3SIPOQ5RFc4s1avsN3jxilF6pGL5HFJQk9fNZ4V4KXm975JQu+eJrKS2oxgMhJnfPEq2G5DCPr81xkpHgvn9N1YzblEXWDGbS73uzQ4dGIePYln4kIgEOOUsIx6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766525802; c=relaxed/simple;
	bh=43hWWmXM9Ah/Aet0kuNONHE3xwBD+BEdaYRIIk5PvpM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XgYUbGbfqQf9123qevISVhUBtTr2lpYfNLzLuqztIf2I03aYW6tcbYN2A/WEtv1QDOni/W8nbv/yBzzmOQO1h24L5KN3YQqaUD5WSiuyYlH5eEp51dF64vsj0NUi4oHjvtXhy/drpLZ8xpKfpb/SeNNamXBrp+mXOfz7DYPtJsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uONFe7li; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07218C113D0;
	Tue, 23 Dec 2025 21:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766525801;
	bh=43hWWmXM9Ah/Aet0kuNONHE3xwBD+BEdaYRIIk5PvpM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uONFe7li9uk+61HMJssactPhaILBycaSpGr3ORcNqgB1iHRZkf1SdCepN81+ElyTn
	 6DZ43A0diXWMBhidfy1MSRvSM77db9UiCfbGRPnZGZ1iyju8X620sDg4fQ0oR9bXNb
	 k0MiyzUmHbajEDkU8EFnMV6OzDjfZMPnmwZ0R359G0e4605o6HcJfDwKeoYm/y6xGv
	 fVZH/aU8Pi0O9AmOWiTGW6JrAuNh/YLUXSQ734whw24LwstDtsqzxs3hDdraUB9DX2
	 ax2Sv1ZUku28UJAcEpK/oR5850oRaqHALD0XtE9VnoREnytkRbY9w+qDQ1njqxtAbr
	 rvW+Zgbu5nGVA==
Date: Tue, 23 Dec 2025 22:36:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt.3: ffix
Message-ID: <aUsLLmhHVOOg81S5@devuan>
References: <20251219171602.6255ekvsx24ocub3@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="biup6p6oblmw3xns"
Content-Disposition: inline
In-Reply-To: <20251219171602.6255ekvsx24ocub3@illithid>


--biup6p6oblmw3xns
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt.3: ffix
Message-ID: <aUsLLmhHVOOg81S5@devuan>
References: <20251219171602.6255ekvsx24ocub3@illithid>
MIME-Version: 1.0
In-Reply-To: <20251219171602.6255ekvsx24ocub3@illithid>

Hi Branden,

On Fri, Dec 19, 2025 at 11:16:02AM -0600, G. Branden Robinson wrote:
> Protect literals from hyphenation.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dac538808a249bc08d375c94cecab5ffe3eb269aa>


Have a lovely night!
Alex

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

--biup6p6oblmw3xns
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlLC2YACgkQ64mZXMKQ
wqnDgQ//UuQYByutS/1plaCKOEIXuvAQqyQ7dUc/ivfzz3tOfN/GwvaD/r4zo/AF
EDbN+SsPk64cwrJzSzzObTjDz7pZmA8zq+72rVp5qheV9hcT++PF4y4ybrGauyrD
daPr6ylEkTZsdhRO1vALus8EefkBjJaa93tXi6jglv1a3Gv8vcgSbIHXM1MXWeqf
ZdkR0AvSmN7aTtS7N3jz0aPv5iJhfUK/ZLlBsB1mjyksz9oTW5Xnte4zwleHsHXS
27BmvVBMqT3IgH3/Woqqlsur/cB+Q2h7aRCnD0FdiVs0A/SmY3tplcpGsIvI0PeJ
0hCc9E4OBbohD2JB9q45JbnSdNA2jlXhygrR9LXnwKL7eoW4Z6k3ZhQhO+UTIKfG
zaG+I2G+wXXupO0i8Eav7BwXJTxdTvF0Xf2wMCcX6puHfh5qe0VIo6c7QX7pxVZD
p8FlKJ+TczLTdSK4wzUPJ9K2lmXhXcselGvs93JxrBU+1AjJ06t6BF6MXI8ZXTsY
sP2cTRgJGu8JWMIyoyOs5BSzAXIQPjUA5ahKNwF5P0A+Ds2+PoDImjIRUIzrNNhD
h2IIFd6xktFKm8uKhuhEPbP01fiLlXWf9Up4Tp6xbRTgM7sHKOJeCBPPGq9xh5uI
mYFcj6Pybz1TRJY7ryQArlsUxcY5YiOHsu8K03TSWEroZWYy2Lo=
=8Lc4
-----END PGP SIGNATURE-----

--biup6p6oblmw3xns--

