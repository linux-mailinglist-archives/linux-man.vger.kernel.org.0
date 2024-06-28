Return-Path: <linux-man+bounces-1290-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8039091BCE5
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 12:54:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A60BAB20B19
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 10:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C839E15572D;
	Fri, 28 Jun 2024 10:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTYi227B"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881422139A8
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 10:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719572074; cv=none; b=IZxBCr7QdhdDEp7SpbCjJKY7xC952P8PR3Wrx1OebVXl4E2G0phjQ1sfGYVQX9iFkrfAGdwOJh5FLanvQLPibb3goYrxAKygdpBLl1cBk7C8mshuQVuRQWcBypu8c2C5tXYqzomcyRtU/82de37qUJ/cxiol3Eu3OF84etQy4aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719572074; c=relaxed/simple;
	bh=0AUBmU8p3JJ7YCkZw9wd70HqZ3Ppnlen2KxFduvVrCI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uJVqh6l96K+czrf+eFXVfMpTY7ZgsAOKbkCjbszc4+KWmaG2Z6B+LAvUyjviqQjPEFsD/wh/z8H3ai1U0xM2slV0+VVxvzboVkaqN3VkWJ0lO/3BXNobqUXjvl/UwTBsJPIMIdq8FR4hF8NHhIJdbJlPeJtScm+cAF0DiMHSTdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTYi227B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8104EC116B1;
	Fri, 28 Jun 2024 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719572074;
	bh=0AUBmU8p3JJ7YCkZw9wd70HqZ3Ppnlen2KxFduvVrCI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gTYi227BvYE/vV2CVxjRsOFSYM8NQxzcnsAXXnH6qraH03QfRx7vEWsbW7FJkjYuU
	 L0PxylQBP2yvVizUrZ2AFQqhCEyyUvGZUfAXNGnWMhKorpxTOA8olaSP5l8ETCiWyg
	 /RmSp/nizqqzMa1bbZISX/tDgxzQ0U7ghLsOPJmE2NdInwjrel2KOBcG0ZU9jF83Sz
	 WEN0F7gLBQJnVJduIOWg/RqCbu1vMqXiVwc3NPoXNa5nw+w/3lpfsPGg2ouoo4vw/i
	 qWYEUgho/AqGJDbzRFuqZkzSYc7h/uI0DhfTs2PizlGZysEsUORJOF2B/1DXH2iysh
	 8+/tZzX/BA1RQ==
Date: Fri, 28 Jun 2024 12:54:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] wcscasecmp.3, wcsncasecmp.3: merge
Message-ID: <kwchrvxkdauqhgcbcmdb67x7x5rfd3fn2uiyaxdws64dnaoq7q@343i6wpcwmjs>
References: <l6zyynaohet3fzpuchnkrss5rziqcwqt3azq6tn32q56qggxmp@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sqcidjrgfosph7rx"
Content-Disposition: inline
In-Reply-To: <l6zyynaohet3fzpuchnkrss5rziqcwqt3azq6tn32q56qggxmp@tarta.nabijaczleweli.xyz>


--sqcidjrgfosph7rx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] wcscasecmp.3, wcsncasecmp.3: merge
References: <l6zyynaohet3fzpuchnkrss5rziqcwqt3azq6tn32q56qggxmp@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <l6zyynaohet3fzpuchnkrss5rziqcwqt3azq6tn32q56qggxmp@tarta.nabijaczleweli.xyz>

On Sat, Jun 22, 2024 at 11:02:40AM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> This mirrors str[n]casecmp and is much more useful,
> but more importantly these didn't crosslink at all
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Hi =D0=BD=D0=B0=D0=B1,

Thanks for the patch!  Please see some comments below.

> ---
>  man/man3/wcscasecmp.3  |  29 +++++++++--
>  man/man3/wcsncasecmp.3 | 106 +----------------------------------------
>  2 files changed, 27 insertions(+), 108 deletions(-)
>=20
> diff --git a/man/man3/wcscasecmp.3 b/man/man3/wcscasecmp.3
> index 88d88b2a3..762037daa 100644
> --- a/man/man3/wcscasecmp.3
> +++ b/man/man3/wcscasecmp.3
> @@ -10,7 +10,7 @@
>  .\"
>  .TH wcscasecmp 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -wcscasecmp \- compare two wide-character strings, ignoring case
> +wcscasecmp, wcsncasecmp \- compare two wide-character strings, ignoring =
case
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ", " \-lc )
> @@ -19,6 +19,8 @@ .SH SYNOPSIS
>  .B #include <wchar.h>
>  .P
>  .BI "int wcscasecmp(const wchar_t *" s1 ", const wchar_t *" s2 );
> +.BI "int wcsncasecmp(const wchar_t " s1 [. n "], const wchar_t " s2 [. n=
 "], s\

OMG, did I really break it at that point?!  :-)

Would you mind sending a second patch that beaks before the s?  That was
clearly an accident.

> +ize_t " n );
>  .fi
>  .P
>  .RS -4
> @@ -26,7 +28,8 @@ .SH SYNOPSIS
>  .BR feature_test_macros (7)):
>  .RE
>  .P
> -.BR wcscasecmp ():
> +.BR wcscasecmp (),
> +.BR wcsncasecmp ():
>  .nf
>      Since glibc 2.10:
>          _POSIX_C_SOURCE >=3D 200809L
> @@ -48,6 +51,18 @@ .SH DESCRIPTION
>  case differences
>  .RB ( towupper (3),
>  .BR towlower (3)).
> +.PP

We use .P now.

> +The
> +.BR wcsncasecmp ()
> +function is similar
> +(equivalent to

(the wide-character equivalent of

> +.BR strncasecmp (3)),
> +except that it compares no more than
> +.I n
> +characters of

s/characters/wide characters/

> +.I s1
> +and
> +.IR s2 .
>  .SH RETURN VALUE
>  The
>  .BR wcscasecmp ()
> @@ -69,6 +84,13 @@ .SH RETURN VALUE
>  than
>  .IR s2 ,
>  ignoring case.
> +.PP

=2EP

> +The
> +.BR wcsncasecmp ()
> +function is the same, but with truncated
> +.I s1
> +and
> +.IR s2 .

This paragraph doesn't exactly mirror strcasecmp(3).  I would rather use
the same wording as there, and if you don't like it, improve it in a
separate patch that touches both pages.

Have a lovely day!
Alex

>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> @@ -80,7 +102,8 @@ .SH ATTRIBUTES
>  T{
>  .na
>  .nh
> -.BR wcscasecmp ()
> +.BR wcscasecmp (),
> +.BR wcsncasecmp ()
>  T}	Thread safety	MT-Safe locale
>  .TE
>  .SH STANDARDS
> diff --git a/man/man3/wcsncasecmp.3 b/man/man3/wcsncasecmp.3
> index dba58b747..6e8d682cc 100644
> --- a/man/man3/wcsncasecmp.3
> +++ b/man/man3/wcsncasecmp.3
> @@ -1,105 +1 @@
> -'\" t
> -.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
> -.\"
> -.\" SPDX-License-Identifier: GPL-2.0-or-later
> -.\"
> -.\" References consulted:
> -.\"   GNU glibc-2 source code and manual
> -.\"   Dinkumware C library reference http://www.dinkumware.com/
> -.\"   OpenGroup's Single UNIX specification http://www.UNIX-systems.org/=
online.html
> -.\"
> -.TH wcsncasecmp 3 (date) "Linux man-pages (unreleased)"
> -.SH NAME
> -wcsncasecmp \- compare two fixed-size wide-character strings, ignoring c=
ase
> -.SH LIBRARY
> -Standard C library
> -.RI ( libc ", " \-lc )
> -.SH SYNOPSIS
> -.nf
> -.B #include <wchar.h>
> -.P
> -.BI "int wcsncasecmp(const wchar_t " s1 [. n "], const wchar_t " s2 [. n=
 "], s\
> -ize_t " n );
> -.fi
> -.P
> -.RS -4
> -Feature Test Macro Requirements for glibc (see
> -.BR feature_test_macros (7)):
> -.RE
> -.P
> -.BR wcsncasecmp ():
> -.nf
> -    Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> -    Before glibc 2.10:
> -        _GNU_SOURCE
> -.fi
> -.SH DESCRIPTION
> -The
> -.BR wcsncasecmp ()
> -function is the wide-character equivalent of the
> -.BR strncasecmp (3)
> -function.
> -It compares the wide-character string pointed to
> -by
> -.I s1
> -and the wide-character string
> -pointed to by
> -.IR s2 ,
> -but at most
> -.I n
> -wide characters from each string, ignoring case differences
> -.RB ( towupper (3),
> -.BR towlower (3)).
> -.SH RETURN VALUE
> -The
> -.BR wcsncasecmp ()
> -function returns zero
> -if the wide-character strings at
> -.I s1
> -and
> -.IR s2 ,
> -truncated to at most length
> -.IR n ,
> -are equal except
> -for case distinctions.
> -It returns a positive integer if truncated
> -.I s1
> -is
> -greater than truncated
> -.IR s2 ,
> -ignoring case.
> -It returns a negative integer
> -if truncated
> -.I s1
> -is smaller than truncated
> -.IR s2 ,
> -ignoring case.
> -.SH ATTRIBUTES
> -For an explanation of the terms used in this section, see
> -.BR attributes (7).
> -.TS
> -allbox;
> -lbx lb lb
> -l l l.
> -Interface	Attribute	Value
> -T{
> -.na
> -.nh
> -.BR wcsncasecmp ()
> -T}	Thread safety	MT-Safe locale
> -.TE
> -.SH STANDARDS
> -POSIX.1-2008.
> -.SH HISTORY
> -glibc 2.1.
> -.SH NOTES
> -The behavior of
> -.BR wcsncasecmp ()
> -depends on the
> -.B LC_CTYPE
> -category of the
> -current locale.
> -.SH SEE ALSO
> -.BR strncasecmp (3),
> -.BR wcsncmp (3)
> +.so man3/wcscasecmp.3
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--sqcidjrgfosph7rx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ+lmcACgkQnowa+77/
2zLnIQ//aTNkhRYe/YbX69vCxfLchswvIMVJuilqGNFj1fLbhDZpM+LQb2hg00qm
vfIFbnjyiI5R775l3uGWVVD3/pM9FxwO7NjE0Zw1DTxSG1ca+Bc3CBGrsx+N2cPm
K+Y7oF/pHz+R8PmC4YLRmTfSs8i4RrXdkWrcUdAZcOTlS3ezBGS+qYxkjEIdmevO
G27QaKYs0MsKA9lmL1npFrRW8L9v3RA4LDwcPt948vVixFgpvrvFaTtmC2ZfshwX
KRgcynQKZMjpKod+e9VGBBj9r2mtD7JfE7ESrK1vfk9E0TLU+yjxinW3Fic0tOcx
ltPvceP9ljmMAI+Zy0uGmVFGgJNkou2j5X3OC1eDY3iambx8h7GTmJpIjil/R2Oa
hHccNyqs6MX9J3XMpczLQM9zYfXq9KlxaEK9sgXSPGtndgx4cZATJ+63uidbkdum
cNWKZ7AzoQLt9D5g7Fjy0bkerDJe8WRgJ7LPBp7m3a2LHoK1JV1O4noKUP0gomk4
IBJhfXX2S/C8vL8FIPevM8mlMuyL9B6oXrlnL/eZfgBXCE2rcHlFDUpcTmwhsYRb
ujOmpXYr/gdFQaz0FSFAZkEY9eE88OU8wZoJlNf5+S2aGsEKGkyUt+oLHConqvyQ
+wUdMpKCGaRNp61SHt8SnjO5LXKcE78eYgGLTjnSlhcde2HL0o8=
=y1iP
-----END PGP SIGNATURE-----

--sqcidjrgfosph7rx--

