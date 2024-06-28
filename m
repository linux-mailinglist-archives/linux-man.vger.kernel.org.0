Return-Path: <linux-man+bounces-1302-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4522C91C817
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 23:26:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C6951C21C13
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 21:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61DD67F487;
	Fri, 28 Jun 2024 21:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5X/fy54"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228EC7EEF5
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719609954; cv=none; b=gSqot+84cdB0aeznTTRvjTRLgS49ymZlArEElcgsElNVYTP5FSPbsYxFYCOfOiX18Mp9T1zIRmcrLBrW0mfPR13D7cN5DcBUrc2a9c63u5anVoz/IWTDfz3guVOnpwY+DSiRF0+zSRKGE0ptJE+FNkOCtPgVfeSt+2QSKaZqRlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719609954; c=relaxed/simple;
	bh=oOafMfNSTmmqPy5YbChZT64l8E7narO+uYHYUGGrJ2w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q++4djJhsjV6C5DqOjVhrTedyrK2+S59zgVIXBrrSolfwAJ4UZq/ACSZcWFTbXPbwcO30KLxel259yxxz8yc9lCPj/gAg+oucpvqbtJ0CC6njFQzHtvYYMyDCJTN89Zl1/CR0Mt/0QExkDAmNKKxjUDYkFhy6CsJQLjZ/xWSTp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5X/fy54; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3057C32786;
	Fri, 28 Jun 2024 21:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719609953;
	bh=oOafMfNSTmmqPy5YbChZT64l8E7narO+uYHYUGGrJ2w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o5X/fy54Vo/nGDWB/Q0DZ5arct985M8yY0+FgKLdaO81N9L1YjEpHa9/vmcrSuSKP
	 xq9Ia2h9lK+wjUbpmWfW9bPrBikN+bVi9+eY42hFwMG3cz1mspYsSUaAXHGVvZ5qlb
	 8FaLURmMQHd7uul5uFShRp6g3nPD45ams/zRryon6VumCBRBaXwjMcSQbIJLSZv3Wl
	 8rkqO0tmAygV0PLr1FDJT8GI7uxFEUlXD2wPj2VwciGqC5c19y5mOTXqHp7CDXDnRR
	 qdq8920MKtA9Ht2VwljRUw9BCv2oTFC6GISyRZCwMTI2M/X3UmijwtpSEKSQMbELtB
	 PVv9NMBntIoZA==
Date: Fri, 28 Jun 2024 23:25:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] printf.3: rework '
Message-ID: <wb7sbyi4wjbuhoulmbjxi6dqikp5jqjgj4vdpu2kk5fvxbzw6n@fj4gbmf6bb5e>
References: <zsggflv5tglpkhkobzfmjxtufcq6bkltb7efionlohmkq7ukh5@yr3vt7m6olvt>
 <o2vchme4dchemjo4diziac5rlmhtsaze2yi72fzo5r67umlwny@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sriho7p5vt6y3xki"
Content-Disposition: inline
In-Reply-To: <o2vchme4dchemjo4diziac5rlmhtsaze2yi72fzo5r67umlwny@tarta.nabijaczleweli.xyz>


--sriho7p5vt6y3xki
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] printf.3: rework '
References: <zsggflv5tglpkhkobzfmjxtufcq6bkltb7efionlohmkq7ukh5@yr3vt7m6olvt>
 <o2vchme4dchemjo4diziac5rlmhtsaze2yi72fzo5r67umlwny@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <o2vchme4dchemjo4diziac5rlmhtsaze2yi72fzo5r67umlwny@tarta.nabijaczleweli.xyz>

Hi!

On Fri, Jun 28, 2024 at 11:07:02PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> As it stands, this is worse than useless
> (defined as: I had to test it explicitly against strfmon() and look at
>              POSIX myself to make sure the manual wasn't lying to me
>  https://101010.pl/@nabijaczleweli/112694726416515899):
>=20
> No-one cares if some compiler doesn't understand something from 1994.
> (Careful readers will note it's been 30 years.)
>=20
> "SUSv2 doesn't have this, SUSv3 does" is reefer-induced:
> this figures in SUSv1 (XPG Issue 4 Version 2)
> and the CHANGE HISTORY clearly notes ' was added in i4, not i4v2.
>=20
> It's important that these aren't actually grouped by the thousand,
> but, instead, by "what the locale says".
>=20
> Each locale has two groupings: monetary and non-monetary,
> and it's paramount to indicate which is which
> (hi_IN  is 3,2... monetary and 3... non-monetary;
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
> > Hmmm, struct lconv is documented in lconv(3type), but that page is
> > missing details that are available in locale(7).  Maybe we should move
> > some text from there to lconv(3type).
> Nothing links to lconv(3type) so I didn't even know it existed.
> Even then, it's a stub that's actively worse than locale(7)
> (itself not that great). struct lconv is documented in locale(7).

Yeah, I mean, maybe we could move that documentation from locale(7) to
lconv(3type), and transform that stub into something good.  And then
link to it.

> > > +Issue 4 of the X/Open Portability Guide (SUSv1, 1994) adds \[aq].
> > .IR \[aq] .
> BR actually for compatibility with the rest

D'oh; you're right.

> (in the list and below in HISTORY).

Patch applied.  Thanks!

Cheers,
Alex

>=20
>  man/man3/printf.3 | 33 +++++++++++++++++++--------------
>  1 file changed, 19 insertions(+), 14 deletions(-)
>=20
> diff --git a/man/man3/printf.3 b/man/man3/printf.3
> index 54a0339..771e295 100644
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
> @@ -373,19 +373,21 @@ .SS Flag characters
>  .BR g ,
>  .BR G )
>  the output is to be grouped with thousands' grouping characters
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
> +as a
> +.I non-monetary
> +quantity.
> +Misleadingly, this isn't necessarily every thousand:
> +for example Karbi ("mjw_IN"), groups its digits into 3 once, then 2 repe=
atedly.
> +Compare
> +.BR locale (7)
> +.I grouping
> +and
> +.IR thousands_sep ,
> +contrast with
> +.IR mon_grouping / mon_thousands_sep
> +and
> +.BR strfmon (3).
> +This is a no-op in the default "C" locale.
>  .P
>  glibc 2.2 adds one further flag character.
>  .TP
> @@ -980,6 +982,9 @@ .SH HISTORY
>  .BR vdprintf ()
>  GNU, POSIX.1-2008.
>  .P
> +Issue 4 of the X/Open Portability Guide (SUSv1, 1994) adds
> +.BR \[aq] .
> +.P
>  .\" Linux libc4 knows about the five C standard flags.
>  .\" It knows about the length modifiers \fBh\fP, \fBl\fP, \fBL\fP,
>  .\" and the conversions
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--sriho7p5vt6y3xki
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ/Kl4ACgkQnowa+77/
2zKy7A/+L0gAWLeiFOBte3ctrLCC7ZWczSetbhzf3grI7N6X5M8ZcxZZK5yWbPJ1
4KdG7HrL6XGiZbhRPmwGbi5kpehQUPbagvXrIwN7Ck98cAEgzy1oTWC9h5IEi+yH
G4pGLFQ/Ezujx6GV/iRut3G2xetPZFZi6lH/6MxsmjTeqHyyta9O0UWiLeDKqudh
2fDi8NxMHgEUqJpkPoZmksQ1JijOCzpaggsM158hIpfr7hsocHQ609+BPhgRMUxH
yy8iq6xFkhOOpfcLYWW4rroHD3CvNrN97TkYroYWWdw3odix5k2skI8XJlOeKTcr
bHqRQRagMWiRnebZLsDxV9kV0CkbiP9Aklco7/HpcmKivh6H8r8i/uvzTo8gaWR1
xqolYTVGPougt6detzTMLCeb+WrKx0Q61ixEtwlIXjL0E9Hg3GxhPvtX/290fBUm
+FCBC6T5BNUybwzQFSpPRGzoGwIn1qm42fRXyHZ28W0uzPUOW146wHmZEZZ6z0Hi
RMjwhbJ5RvvX0j3V0UMgw7wEXeE0lEexw80nCVuLwEPROVwZnQmdOfyvLXAYdCkX
lppnBZFln6tj15R2MQHT4THvvcOXu/4cMBgDz3FYYHOAbCsAr2yXbEXjfyM9RB5e
QJgugfiyVciWzOU0ywgSl90wCJ08mB5E9/bXOwoIhII4am2WtBg=
=sR5S
-----END PGP SIGNATURE-----

--sriho7p5vt6y3xki--

