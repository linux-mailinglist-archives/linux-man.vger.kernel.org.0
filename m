Return-Path: <linux-man+bounces-1190-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1C590999A
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 20:35:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34FB01F2201F
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 18:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42CA64964E;
	Sat, 15 Jun 2024 18:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tF0f+P6g"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020A13EA72
	for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718476499; cv=none; b=HGo/7ikurSvA40ZcK53BybnCVt5RsWZy13hRYiCyJKhmcQ7clBOpJdvQ674m39/PUD+ktM8UgYMB6AMPaazEx9er37s07hylfViOX2EyiTpFG97wYWmvzs6dvwnQFFCRI8VhDmIlj+SksDkS+mjDDUr6QApPfMRK/bfv5MrKf3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718476499; c=relaxed/simple;
	bh=HsPfov7FdV9KJYrVwOxuMf1BBjkNt6NPVnm41l/ryJM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d6FnVo2XK3NtPtN12txVDz0BF4ve6swqhiOK2w+PlmHuGLO4ZJi2a9HQHNS8yqARRfeiShcNXkP228TzSXiCsf38gZEv1KTm5igGBMrRsyznM2vCGPudV0y1fO95pxQmVEQuDK0vHTHMRIYqVBYA4B3blaPt1dbQt1p3f3Fuvrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tF0f+P6g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFACCC116B1;
	Sat, 15 Jun 2024 18:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718476498;
	bh=HsPfov7FdV9KJYrVwOxuMf1BBjkNt6NPVnm41l/ryJM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tF0f+P6gKiAhRpUIBg3/0w+grKYGpCISX1vJaW9YIuETyZM07TgvjEuymttvH59xD
	 gZskN6c593FZXeNLL7gGOXJsenOOUwtAKMvXSbmTkeVjIpQm22NB88L1DlTK/XL+Ip
	 fqXLqATXz+k/0VKpBIlhBeKaAHtqfUS4fFuWdfxlc4uyh04EP8zPR5Kv5HzJXBPkJf
	 oAY7Cs0bp5R8L917PAC0YZ76u+9B00CSQRivtiogqXdc0WDI4lLK3z2G8Cz/9dKZ1t
	 AV1LAsW4MgpY1E5baJ36hHZGwbqE8vSoVPnuS1t0Br1Pw8ruIb1hHEom+sx88RQELO
	 8kg6XgErp4TiA==
Date: Sat, 15 Jun 2024 20:34:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/: Use \[rs] instead of \e
Message-ID: <v7cqlwm7m4nvkp32ckkf7nr6erveyrlhbb64pkfzxa3qk6kcdi@ufjxxe3qsadd>
References: <20240615183058.452624-3-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uh566ad2kevesqbg"
Content-Disposition: inline
In-Reply-To: <20240615183058.452624-3-alx@kernel.org>


--uh566ad2kevesqbg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/: Use \[rs] instead of \e
References: <20240615183058.452624-3-alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240615183058.452624-3-alx@kernel.org>

Hi Branden!

On Sat, Jun 15, 2024 at 08:31:31PM GMT, Alejandro Colomar wrote:
> Link: <https://lore.kernel.org/linux-man/20240611122453.qn6jyl4go4bvwkqm@=
illithid/>
> Suggested-by: "G. Branden Robinson" <branden@debian.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> Range-diff against v0:
> -:  --------- > 1:  1fc1669e9 man/: Use \[rs] instead of \e
>=20
[...]
>  man/man7/man-pages.7                          |  18 +--
[...]
>  284 files changed, 1173 insertions(+), 1173 deletions(-)
>=20
[...]
> diff --git a/man/man7/man-pages.7 b/man/man7/man-pages.7
> index 007b9e7a2..dc117662f 100644
> --- a/man/man7/man-pages.7
> +++ b/man/man7/man-pages.7

The cases in man-pages(7) are a bit special, since they are mostly
examples of man(7) source code.  Would you recommend using \e or \[rs]
there?

Thanks,
and have a lovely day!

Alex

> @@ -184,7 +184,7 @@ .SS Sections within a manual page
>  for important details of the line(s) that should follow the
>  \fB.SH NAME\fP command.
>  All words in this line (including the word immediately
> -following the "\e\-") should be in lowercase,
> +following the "\[rs]\-") should be in lowercase,
>  except where English or technical terminological convention
>  dictates otherwise.
>  .TP
> @@ -464,7 +464,7 @@ .SS Sections within a manual page
>  (don't hyphenate)
>  directives.
>  Hyphenation of individual page names can be prevented
> -by preceding words with the string "\e%".
> +by preceding words with the string "\[rs]%".
>  .IP
>  Given the distributed, autonomous nature of FOSS projects
>  and their documentation, it is sometimes necessary\[em]and in many cases
> @@ -611,7 +611,7 @@ .SS Formatting conventions for manual pages describin=
g functions
>      .BR fcntl ()
>  .EE
>  .P
> -(Using this format, rather than the use of "\efB...\efP()"
> +(Using this format, rather than the use of "\[rs]fB...\[rs]fP()"
>  makes it easier to write tools that parse man page source files.)
>  .\"
>  .SS Use semantic newlines
> @@ -669,7 +669,7 @@ .SS Lists
>  .TP
>  Bullet lists
>  Elements are preceded by bullet symbols
> -.RB ( \e[bu] ).
> +.RB ( \[rs][bu] ).
>  Anything that doesn't fit elsewhere is
>  usually covered by this type of list.
>  .TP
> @@ -958,7 +958,7 @@ .SS NULL, NUL, null pointer, and null byte
>  is the
>  .IR "null byte" ,
>  a byte with the value 0, represented in C via the character constant
> -.IR \[aq]\e0\[aq] .
> +.IR \[aq]\[rs]0\[aq] .
>  .P
>  The preferred term for the pointer is "null pointer" or simply "NULL";
>  avoid writing "NULL pointer".
> @@ -998,7 +998,7 @@ .SS Use of e.g., i.e., etc., a.k.a., and similar
>  In addition, "e.g." and "i.e." should always be followed by a comma.
>  .SS Em-dashes
>  The way to write an em-dash\[em]the glyph that appears
> -at either end of this subphrase\[em]in *roff is with the macro "\e[em]".
> +at either end of this subphrase\[em]in *roff is with the macro "\[rs][em=
]".
>  (On an ASCII terminal, an em-dash typically renders as two hyphens,
>  but in other typographical contexts it renders as a long dash.)
>  Em-dashes should be written
> @@ -1073,7 +1073,7 @@ .SS Generating optimal glyphs
>  .P
>  .in +4n
>  .EX
> -\e\-
> +\[rs]\-
>  .EE
>  .in
>  .P
> @@ -1090,11 +1090,11 @@ .SS Generating optimal glyphs
>  produce real minus signs when pasted into a terminal.
>  .P
>  To produce unslanted single quotes that render well in ASCII, UTF-8, and=
 PDF,
> -use "\e[aq]" ("apostrophe quote"); for example
> +use "\[rs][aq]" ("apostrophe quote"); for example
>  .P
>  .in +4n
>  .EX
> -\e[aq]C\e[aq]
> +\[rs][aq]C\[rs][aq]
>  .EE
>  .in
>  .P

--=20
<https://www.alejandro-colomar.es/>

--uh566ad2kevesqbg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZt3s8ACgkQnowa+77/
2zJYiA/7BexwzDxcysuwt/K6daPFlha1DpRbam/sh3PD926uHs4JianpSi7rJMSG
9N7QAWputX+e3qa1H5gdF15VC/vH2n7JToYrnyridzAdFgCgYT+W0BcQSWV+COIc
HqYuMq0sG9tK4b3hRt56vq3179YfDOQm1GEow1qHsjEVJ6ymCQVRl2QgxbPYCSmM
ojyz6r53kjERa+3uMPZl9di02V5hBuQ4t2E/h/H4SIKGnP4R2pLuEexUMiNGZeEP
2BFp8n/IGAhhX/ee/qgXfoYa2qm8wnGIIIRb3fWIbE76zLb2ZX2IifGEp69oYsZy
L6LAnt5Bat2ktpuAl3wbf6WJO9qqIGulhzD7Ap5uhHCHJNWjN742weFa3vUXnsBZ
GgnUFuVKX3+jJmKOVn8U+svtkhc53YcdPnz5AcwwOLwApkIJu792m+gVmak8MvFC
2g58Ok0fOmwfru+Z6lZ44T0HP9T9/Ndck4h+1nu3B3Hcdvb20Vn/6oSLpfbOmseD
Qxjkj/HrYrac7xTFhCyQB3uXyw0eD37PepwAhxz0Lx84Q2tAK7KhBedpWQVrmhmD
VaW4GdzW51XaM8VJwQRaU0iO5lTiHRGP1DFUChGVyJNrUemlMD53HvesVlRB/q87
Hbat0z2GPFjrdCsOFLGkO19rDujo3TrRRN+TX0ZfviJrxD/+zlk=
=1qKZ
-----END PGP SIGNATURE-----

--uh566ad2kevesqbg--

