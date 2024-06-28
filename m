Return-Path: <linux-man+bounces-1300-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0677691C755
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 22:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D10A1F21072
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 20:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BFC76F079;
	Fri, 28 Jun 2024 20:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXdyYJTz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D95B645
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 20:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719606791; cv=none; b=A2hj4HJYJ0a9X6cujKSRfVZviZkeUyUBCl6f+5qhsU4EOPlAhK7ZZfTLyZNR7Vv5LjJIer5sMBl8vePD+VOOQcEep0V4dUgrqVc9urqt+763tYafZ6oeIbfLSR7FHKEEjMzlKEbw/nYCiAlBSVEs7eaNDAtTB83Vbfz3kMfV5Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719606791; c=relaxed/simple;
	bh=3JkPk2CA02dGOjgv/PE9cWdkssr3+v+rX7xGSnmKMMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XbB32+C5uzXtvLcwwSitLX6K9AHkeCYrK+yzVPUxYPI5ju8/w6DBl28fiv5H4vXT8QYJ+vDHkuDQVVEwaqdjLcheg0sX9ZD05KYvo6reXNIIBaQ46SNV3z5LqRoaz8QS5HWG4wrczGcHtj7lBdqqIsGyoN5fRK0Sw3w2//zoSOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXdyYJTz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05B8DC116B1;
	Fri, 28 Jun 2024 20:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719606790;
	bh=3JkPk2CA02dGOjgv/PE9cWdkssr3+v+rX7xGSnmKMMI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lXdyYJTz5Svo/V1Mr9c2YzSz51WD9Zhse3x48qvnfdsd5NObqe4ImSrOQbI/mNkgF
	 YTMjDSshDEwme0H0X60q88T3x/CNlfQCpqrCUZgkGlPQzMSuYJjNOBUcUMpIctTAFB
	 rTkBgZX34eD0ILRkkbuj99IqAqPp17eJHDLf1nzMuuVjK+UnYkRkuYXjDDh0I67Kyz
	 V+xCUJeir9rSxhw+2y9Oe0c79S7cJLG7IEDTtOGl20MuCelfE3pMMIum87939lvjXO
	 2Nz53+v21OxWbEVkzPnkSTLeYt+unM/LZzJoIKaK4K8ggcN3K9ai5+XwCliGwTDT3r
	 Mt0qg6OZvrWfA==
Date: Fri, 28 Jun 2024 22:33:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: rework '
Message-ID: <zsggflv5tglpkhkobzfmjxtufcq6bkltb7efionlohmkq7ukh5@yr3vt7m6olvt>
References: <4p4tq3fzhkyt3kn7rmlradb5kkfxxuk7b3v2umqzf765pupik5@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2vm7rc2bxxds447i"
Content-Disposition: inline
In-Reply-To: <4p4tq3fzhkyt3kn7rmlradb5kkfxxuk7b3v2umqzf765pupik5@tarta.nabijaczleweli.xyz>


--2vm7rc2bxxds447i
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: rework '
References: <4p4tq3fzhkyt3kn7rmlradb5kkfxxuk7b3v2umqzf765pupik5@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <4p4tq3fzhkyt3kn7rmlradb5kkfxxuk7b3v2umqzf765pupik5@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On Fri, Jun 28, 2024 at 05:26:10PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> As it stands, this is worse than useless
> (defined as: I had to test it explicitly against strfmon() and look at
>              POSIX myself to make sure the manual wasn't lying to me
>  https://101010.pl/@nabijaczleweli/112694726416515899):
>=20
> No-one cares if some compiler doesn't understand something from 1994.
> (Careful readers will note it's been 30 years.)
>=20
> "SUSv2 doesn't have this, SUSv3" does is reefer-induced:
> this figures in SUSv1 (XPG Issue 4 Version 2)
> and the CHANGE HISTORY clearly notes ' was added in i4, not i4v2.
>=20
> It's important that these aren't actually grouped by the thousand,
> but, instead, by "what the locale says".
>=20
> Each locale has two groupings: monetary and non-monetary,
> and it's paramount to indicate which is which
> (hi_IN is 3,2... monetary and 3... non-monetary;
>  mjw_IN is 3,2... both).
>=20
> It waxes poetic for way too long about "how to set a locale".
>=20
> Also replace "The Single UNIX Specification adds" with "POSIX adds".
> The SUS is, on a good day, a profile of POSIX you pay 300$ for.
> Maybe you could swing this back when it was an "extension"
> (so, only required in the SUS profile)
> but it's just shaded CX ("this is intentionally different from C")
> in Issue 8. It's really irrelevant here.
>=20
> Also add this to HISTORY
> (and call it something sane there;
>  the Proper nomenclature is absolutely meaningless to normal people).
> The most important bit for every HISTORY reader is the 1994 date.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man3/printf.3 | 33 ++++++++++++++++++---------------
>  1 file changed, 18 insertions(+), 15 deletions(-)
>=20
> diff --git a/man/man3/printf.3 b/man/man3/printf.3
> index 54a0339..6f6c952 100644
> --- a/man/man3/printf.3
> +++ b/man/man3/printf.3
> @@ -361,7 +361,7 @@ .SS Flag characters
>  overrides a space if both are used.
>  .P
>  The five flag characters above are defined in the C99 standard.
> -The Single UNIX Specification specifies one further flag character.
> +POSIX specifies one further flag character.
>  .TP
>  .B \[aq]
>  For decimal conversion
> @@ -372,20 +372,21 @@ .SS Flag characters
>  .BR F ,
>  .BR g ,
>  .BR G )
> -the output is to be grouped with thousands' grouping characters
> -if the locale information indicates any.
> -(See
> -.BR setlocale (3).)
> -Note that many versions of
> -.BR gcc (1)
> -cannot parse this option and will issue a warning.
> -(SUSv2 did not
> -include \fI%\[aq]F\fP, but SUSv3 added it.)
> -Note also that the default locale of a C program is "C"
> -whose locale information indicates no thousands' grouping character.
> -Therefore, without a prior call to
> -.BR setlocale (3),
> -no thousands' grouping characters will be printed.
> +the output is to be grouped with thousands' grouping characters, as a

This line would be unchanged except for the trailing text you added.
Please add it in a separate line, so that the patch is (slightly)
smaller (semantic newlines).  If you were writing the text from scratch,
I wouldn't mind these words after the comma, but for modifying existing
text, I'll be a little bit stricter.

> +.I non-monetary
> +quantity.
> +Misleadingly, this isn't necessarily every thousand:
> +for example Karbi ("mjw_IN"), groups its digits into 3 once, then 2 repe=
atedly.
> +Cf.\&

Please use expanded words; not abbreviations.  I don't know what Cf.
means.  For the commit message, it's fine, but for the page contents
not so much.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use of e.g./,+10p';
   Use of e.g., i.e., etc., a.k.a., and similar
     In  general,  the  use  of  abbreviations  such as "e.g.", "i.e.",
     "etc.", "cf.", and "a.k.a." should be avoided, in favor  of  suit=E2=
=80=90
     able  full  wordings ("for example", "that is", "and so on", "com=E2=
=80=90
     pare to", "also known as").

     The only place where such abbreviations may be  acceptable  is  in
     short parenthetical asides (e.g., like this one).

     Always  include  periods in such abbreviations, as shown here.  In
     addition, "e.g." and "i.e." should always be followed by a comma.

> +.BR locale (7)
> +.I grouping
> +and
> +.IR thousands_sep ,
> +contrast with
> +.IR mon_grouping / mon_thousands_sep ,

Hmmm, struct lconv is documented in lconv(3type), but that page is
missing details that are available in locale(7).  Maybe we should move
some text from there to lconv(3type).

> +and
> +.BR strfmon (3).
> +This is a no-op in the default "C" locale.
>  .P
>  glibc 2.2 adds one further flag character.
>  .TP
> @@ -980,6 +981,8 @@ .SH HISTORY
>  .BR vdprintf ()
>  GNU, POSIX.1-2008.
>  .P
> +Issue 4 of the X/Open Portability Guide (SUSv1, 1994) adds \[aq].

=2EIR \[aq] .

Cheers,
Alex

> +.P
>  .\" Linux libc4 knows about the five C standard flags.
>  .\" It knows about the length modifiers \fBh\fP, \fBl\fP, \fBL\fP,
>  .\" and the conversions
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--2vm7rc2bxxds447i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ/Hf0ACgkQnowa+77/
2zI7tg/+O4V3Y73w1GQTAmPcBPNSX2FAgdtLdlJG4pjZXWHxzGm0L6dfjwQKQO/4
f6hoB0HAre+mF5CJM+wzZlaxUVncomeF9FI5X9+6KD7FUD0XGh+HTSQvsioAPWrw
eWpD9ZeZA4WmJUMJ57Q/osHODcV/xaLNMvZPX/NwwmmMLnolMxbMAQN4wAzdoov+
r1fD0dcRfNkOOuewewaZzvKezTlxP/BMsf1OPuGPHx07drMInaDXIG4o7tgwQobn
htBxQPimAUcxmjYCpBjAQ+ShS+MNvGCpafZl9RfL9glpBDdAmIqUMWrnGALmANKN
7x86W0pfEwa1Zzj6fYVfJnAwMNbeS2EoN4+lJpB+S56pBW/n8qPimFuDKc3nePzL
/jfKCpvXMZwMoAvfhkpN/fBtd67xtwhsjSViFrTAILxfHtqyk+NnUNpGB9a45J9r
mSMrDxCHzL5AO3BYhCPyAkBfM6omuFSEEw5EFHPIgs5B8O+DjhvKpN29UYbw2AQo
N9Cxva8WRFxDCXGDYi2EO1Ouy1cFLQqKNsXqxkdaHsvwEmhOuO0E61xAofQHk1A+
mlsKpPqu3Dyb/4cyjrxGwGmmfOnkk+CetaAKiNze4hRSanJ5wKZLwB7YYLETMZvL
o8FcGMXgkFiJZj+TZ8I/mGqUnixRTdMF5zz+APxUK81/+BkZ1b8=
=Yoh5
-----END PGP SIGNATURE-----

--2vm7rc2bxxds447i--

