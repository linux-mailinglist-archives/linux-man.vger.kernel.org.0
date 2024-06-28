Return-Path: <linux-man+bounces-1299-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B5891C715
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 22:11:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D81B1F228BD
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 20:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A4F976046;
	Fri, 28 Jun 2024 20:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjEJtrTK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487DC6EB56
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 20:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719605500; cv=none; b=GTZqFEzMEV41o1b4a3SsGBbISer4XuzKgxqRUmCk9JjphWiaslWRoVjeC9RMAB35Q/oliAezdUTRpPuI+qshpRYcxQtfhCZKAgzwgmK6dvuhxKYml5F8xloAs3etoNl9ckikgNAJwYDdFCURJc0M4/5urH7/DaREg9W+G3sz2Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719605500; c=relaxed/simple;
	bh=+BlYuom80oXDF8982NvvU0gHGuhDzocutamSVPJTI7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oca8Zp06td3wk8gIzg5xgmg4mMvitSTkrqzmfpGpbccYXwwx+5QTcy+3WLedXVHFhV8B+iHREbu7MXu9r2jKzduExTt6fJuDD+LHjSjV1AWHUiPhFzhn9kyhIj0afjMuahfx0Fe2a0P8ivUjeo+u/YuLYqOFmyK27f2/UyJUkXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjEJtrTK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C9A2C116B1;
	Fri, 28 Jun 2024 20:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719605499;
	bh=+BlYuom80oXDF8982NvvU0gHGuhDzocutamSVPJTI7U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XjEJtrTK6sX4wnuBtk9RjeEkVYEanHzdsEHS9twr8BcUlzAzbe0dyYXGW78TTiEcs
	 E15/F6D8VrcS9tae7zt008owa3N6asViHwVqjLQQwEcURWMXlcZxmIl3t98B4HHEpl
	 WWTvn5xLw2n+BTHo/f8xfU+LTMffLcgFKKSe8PyY5CZyGQmH8q2VMqWvwYrnU4nakX
	 vZmU7wVmaGGz1DKJiqMSwiRflygRbadgSZ66ceqFdhXHNLKviGl0EnCdx+VvAS3Z3D
	 dyhZ1KYgPn3JxkikiLAeWvce0vVhrIiviJcZqYBMu4YwZOrQv1Wdr2odrEbyOKN8E+
	 W7aN/FOPfsXvw==
Date: Fri, 28 Jun 2024 22:11:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] wcscasecmp.3, wcsncasecmp.3: merge
Message-ID: <scehiu3vxps6tzyox24kfxhj2yaf5jppevjayv6jzii45vnaq5@6bfnc4dugynv>
References: <kwchrvxkdauqhgcbcmdb67x7x5rfd3fn2uiyaxdws64dnaoq7q@343i6wpcwmjs>
 <wr4xqnhilpx7yszqxcggo7scpt3bnrfha3ohfs6uxwibhfafel@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mggyn2cllzmczjg6"
Content-Disposition: inline
In-Reply-To: <wr4xqnhilpx7yszqxcggo7scpt3bnrfha3ohfs6uxwibhfafel@tarta.nabijaczleweli.xyz>


--mggyn2cllzmczjg6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] wcscasecmp.3, wcsncasecmp.3: merge
References: <kwchrvxkdauqhgcbcmdb67x7x5rfd3fn2uiyaxdws64dnaoq7q@343i6wpcwmjs>
 <wr4xqnhilpx7yszqxcggo7scpt3bnrfha3ohfs6uxwibhfafel@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <wr4xqnhilpx7yszqxcggo7scpt3bnrfha3ohfs6uxwibhfafel@tarta.nabijaczleweli.xyz>

On Fri, Jun 28, 2024 at 05:47:30PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> This mirrors str[n]casecmp and is much more useful,
> but more importantly these didn't crosslink at all
>=20
> The RETURN VALUE section is now copied from strncasecmp.3.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  Thanks!

Cheers,
Alex

> ---
>  man/man3/wcscasecmp.3  |  43 ++++++++++-------
>  man/man3/wcsncasecmp.3 | 106 +----------------------------------------
>  2 files changed, 26 insertions(+), 123 deletions(-)
>=20
> diff --git a/man/man3/wcscasecmp.3 b/man/man3/wcscasecmp.3
> index 88d88b2..9f7f1b0 100644
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
 "], \
> +size_t " n );
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
> @@ -48,27 +51,30 @@ .SH DESCRIPTION
>  case differences
>  .RB ( towupper (3),
>  .BR towlower (3)).
> +.P
> +The
> +.BR wcsncasecmp ()
> +function is similar
> +(the wide-character equivalent to
> +.BR strncasecmp (3)),
> +except that it compares no more than
> +.I n
> +wide characters of
> +.I s1
> +and
> +.IR s2 .
>  .SH RETURN VALUE
>  The
>  .BR wcscasecmp ()
> -function returns zero if the wide-character strings at
> -.I s1
>  and
> -.I s2
> -are equal except for case distinctions.
> -It returns a
> -positive integer if
> -.I s1
> -is greater than
> -.IR s2 ,
> -ignoring case.
> -It
> -returns a negative integer if
> +.BR wcsncasecmp ()
> +functions return
> +an integer less than, equal to, or greater than zero if
>  .I s1
> -is smaller
> -than
> +is, after ignoring case, found to be
> +less than, to match, or be greater than
>  .IR s2 ,
> -ignoring case.
> +respectively.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> @@ -80,7 +86,8 @@ .SH ATTRIBUTES
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
> index dba58b7..6e8d682 100644
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

--mggyn2cllzmczjg6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ/GPgACgkQnowa+77/
2zJU9A//T/FOWhTuGGm/4mhDRDxVNtR0T5zcmyk64vfZxw+DMyFKGCSMtC8esFZ8
84NCkZcqai8UI8S/mwiwdQMPFxAgJs7DcLWoND8hmg7vUJKb6s9/eX+kZ6617wKi
/0FL9toEetvq60D28k++vIxhnqmrk8BJtTy2IyxupDw/7HJouykgpG3okKxxYfe2
h2GTgumDZvcWrK9+cMfopFK5Cs7HAJC9gisJww4diHbjsQRH3x7y2uY7MI8MUInj
kjlULQDUiTKHCaP/3FtUZqju+k8oaiQjjC+AL+huJT2RRG6b3fIVTPxzs/B+fRuq
x0b8HXPtm6Oq5pARtRjzd1ZuASphpXXbd35tPdJM64nj+gkb2Jk0Ul+PUbvPeu3V
/VUlQU8ZoE/+1cABxw3j3qF2gcWG6K08dyYyqu1lBBFjUThZjDShdf25720MtQ7M
d9ZDQzXW0vXBtTAt4sZD1yq23J0SuukkW211PiJJ4En2Dz7F7HEw/SfohhQcDiFO
du6yl69L/6Q+M9+ChM2DPxuw/jQACVb3dfgXVtgDEdBUJSWYgBc2LBsUor+eUmWa
3i0jXiKWH4aXcFVmdlGOL/hmgvKBl0kMMJntA+CZ2NII5J//Z5rXhvepcnENQ0mv
gIYHw71KANfxSQNeVTHM5vbhKugNaCq5ga/OyWDUrYNFzW/24iA=
=6i55
-----END PGP SIGNATURE-----

--mggyn2cllzmczjg6--

