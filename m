Return-Path: <linux-man+bounces-1298-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1971591C2E8
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 17:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D51D1C21B05
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 15:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA8715749E;
	Fri, 28 Jun 2024 15:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="RBMoZBL/"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941261DFFB
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 15:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719589656; cv=none; b=d5tsJ4L6Wna/c3IqLHYeRJ3Y3y9wyiXwUk4sEaTaBSqQ5bPAdyXlWw3QQeA4+X5+7TK5zZbCRgYxIltCCz2Hq5sVg7FPAZ2hUCw54fvfqUzjgs42OP1KIhK8GYBH8AgMSgG28uvxJVaP9UXMhBPvQhVtSPQjHzTW1hnSwp+eJKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719589656; c=relaxed/simple;
	bh=ocqGzgNEyVwFB6SN5IdGUXYEXdfZmV35xMI5XhKDLN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MFdH5Sj7gB/kzqWeL/SDuGy1cPqREgMriZTCPJvXzplf2adWnK44EqM2RQ/Y/9bmZBv8WmrumSOObnIk1+kG8dzXyIgnW5ezjxgI/23yG92KOkz/ViJkCXENnGj4jCiuRm1qY4nTLWOiBNt+Z8xb5NEEJbD4h+DPeMyTfV1xtOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=RBMoZBL/; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1719589650;
	bh=ocqGzgNEyVwFB6SN5IdGUXYEXdfZmV35xMI5XhKDLN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RBMoZBL/29pBhcfg977OetCVJ4MCHOh4FGwpwNCls+qvnaDhmXtXgiN9seN9YSXka
	 GaaHQSR8BDrmHTv3O2oyxwsHOcGlPThb2f99zr64EIj6a5PejCB4Kzt62tKmJzwR+I
	 EkpZ7vlV7a8pOxf3Ftor4Ax82HYBaUz8jSAES8/8y9Ney6dO2LE8LaFZaMzW1UpFxi
	 sQeqC8M6/CV6wPOaxzY0GTZiwJR6Esq8AbeSVh5lvAUEc61bplm/72XburYU6IsNWW
	 Kf9z/4ct8t6NKdeguS78uIEU5ANvAe/0sMlhtP0rJamyIisAnSlyFpq3B9aOMGpfsP
	 e8PMa72+MkrDQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 87887735E;
	Fri, 28 Jun 2024 17:47:30 +0200 (CEST)
Date: Fri, 28 Jun 2024 17:47:30 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] wcscasecmp.3, wcsncasecmp.3: merge
Message-ID: <wr4xqnhilpx7yszqxcggo7scpt3bnrfha3ohfs6uxwibhfafel@tarta.nabijaczleweli.xyz>
References: <kwchrvxkdauqhgcbcmdb67x7x5rfd3fn2uiyaxdws64dnaoq7q@343i6wpcwmjs>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pyljawm32der347k"
Content-Disposition: inline
In-Reply-To: <kwchrvxkdauqhgcbcmdb67x7x5rfd3fn2uiyaxdws64dnaoq7q@343i6wpcwmjs>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--pyljawm32der347k
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This mirrors str[n]casecmp and is much more useful,
but more importantly these didn't crosslink at all

The RETURN VALUE section is now copied from strncasecmp.3.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/wcscasecmp.3  |  43 ++++++++++-------
 man/man3/wcsncasecmp.3 | 106 +----------------------------------------
 2 files changed, 26 insertions(+), 123 deletions(-)

diff --git a/man/man3/wcscasecmp.3 b/man/man3/wcscasecmp.3
index 88d88b2..9f7f1b0 100644
--- a/man/man3/wcscasecmp.3
+++ b/man/man3/wcscasecmp.3
@@ -10,7 +10,7 @@
 .\"
 .TH wcscasecmp 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-wcscasecmp \- compare two wide-character strings, ignoring case
+wcscasecmp, wcsncasecmp \- compare two wide-character strings, ignoring ca=
se
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -19,6 +19,8 @@ .SH SYNOPSIS
 .B #include <wchar.h>
 .P
 .BI "int wcscasecmp(const wchar_t *" s1 ", const wchar_t *" s2 );
+.BI "int wcsncasecmp(const wchar_t " s1 [. n "], const wchar_t " s2 [. n "=
], \
+size_t " n );
 .fi
 .P
 .RS -4
@@ -26,7 +28,8 @@ .SH SYNOPSIS
 .BR feature_test_macros (7)):
 .RE
 .P
-.BR wcscasecmp ():
+.BR wcscasecmp (),
+.BR wcsncasecmp ():
 .nf
     Since glibc 2.10:
         _POSIX_C_SOURCE >=3D 200809L
@@ -48,27 +51,30 @@ .SH DESCRIPTION
 case differences
 .RB ( towupper (3),
 .BR towlower (3)).
+.P
+The
+.BR wcsncasecmp ()
+function is similar
+(the wide-character equivalent to
+.BR strncasecmp (3)),
+except that it compares no more than
+.I n
+wide characters of
+.I s1
+and
+.IR s2 .
 .SH RETURN VALUE
 The
 .BR wcscasecmp ()
-function returns zero if the wide-character strings at
-.I s1
 and
-.I s2
-are equal except for case distinctions.
-It returns a
-positive integer if
-.I s1
-is greater than
-.IR s2 ,
-ignoring case.
-It
-returns a negative integer if
+.BR wcsncasecmp ()
+functions return
+an integer less than, equal to, or greater than zero if
 .I s1
-is smaller
-than
+is, after ignoring case, found to be
+less than, to match, or be greater than
 .IR s2 ,
-ignoring case.
+respectively.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -80,7 +86,8 @@ .SH ATTRIBUTES
 T{
 .na
 .nh
-.BR wcscasecmp ()
+.BR wcscasecmp (),
+.BR wcsncasecmp ()
 T}	Thread safety	MT-Safe locale
 .TE
 .SH STANDARDS
diff --git a/man/man3/wcsncasecmp.3 b/man/man3/wcsncasecmp.3
index dba58b7..6e8d682 100644
--- a/man/man3/wcsncasecmp.3
+++ b/man/man3/wcsncasecmp.3
@@ -1,105 +1 @@
-'\" t
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" SPDX-License-Identifier: GPL-2.0-or-later
-.\"
-.\" References consulted:
-.\"   GNU glibc-2 source code and manual
-.\"   Dinkumware C library reference http://www.dinkumware.com/
-.\"   OpenGroup's Single UNIX specification http://www.UNIX-systems.org/on=
line.html
-.\"
-.TH wcsncasecmp 3 (date) "Linux man-pages (unreleased)"
-.SH NAME
-wcsncasecmp \- compare two fixed-size wide-character strings, ignoring case
-.SH LIBRARY
-Standard C library
-.RI ( libc ", " \-lc )
-.SH SYNOPSIS
-.nf
-.B #include <wchar.h>
-.P
-.BI "int wcsncasecmp(const wchar_t " s1 [. n "], const wchar_t " s2 [. n "=
], s\
-ize_t " n );
-.fi
-.P
-.RS -4
-Feature Test Macro Requirements for glibc (see
-.BR feature_test_macros (7)):
-.RE
-.P
-.BR wcsncasecmp ():
-.nf
-    Since glibc 2.10:
-        _POSIX_C_SOURCE >=3D 200809L
-    Before glibc 2.10:
-        _GNU_SOURCE
-.fi
-.SH DESCRIPTION
-The
-.BR wcsncasecmp ()
-function is the wide-character equivalent of the
-.BR strncasecmp (3)
-function.
-It compares the wide-character string pointed to
-by
-.I s1
-and the wide-character string
-pointed to by
-.IR s2 ,
-but at most
-.I n
-wide characters from each string, ignoring case differences
-.RB ( towupper (3),
-.BR towlower (3)).
-.SH RETURN VALUE
-The
-.BR wcsncasecmp ()
-function returns zero
-if the wide-character strings at
-.I s1
-and
-.IR s2 ,
-truncated to at most length
-.IR n ,
-are equal except
-for case distinctions.
-It returns a positive integer if truncated
-.I s1
-is
-greater than truncated
-.IR s2 ,
-ignoring case.
-It returns a negative integer
-if truncated
-.I s1
-is smaller than truncated
-.IR s2 ,
-ignoring case.
-.SH ATTRIBUTES
-For an explanation of the terms used in this section, see
-.BR attributes (7).
-.TS
-allbox;
-lbx lb lb
-l l l.
-Interface	Attribute	Value
-T{
-.na
-.nh
-.BR wcsncasecmp ()
-T}	Thread safety	MT-Safe locale
-.TE
-.SH STANDARDS
-POSIX.1-2008.
-.SH HISTORY
-glibc 2.1.
-.SH NOTES
-The behavior of
-.BR wcsncasecmp ()
-depends on the
-.B LC_CTYPE
-category of the
-current locale.
-.SH SEE ALSO
-.BR strncasecmp (3),
-.BR wcsncmp (3)
+.so man3/wcscasecmp.3
--=20
2.39.2

--pyljawm32der347k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmZ+2xIACgkQvP0LAY0m
WPGrQw/9FN/9dYwyu/d4HuOZw21DR90RUm5UM33CabZGLSISz+FhD9Du5xm0yYKa
tkXIyt0Rnr6bq4vIpxVErn0i081JMHpO61G4evAa2BVCpLlWvV6q6y90Kwi7mLCN
3LF/w8ORrk3SsvPTl4yyZCcND3d/9txABAAfKAIkBmw3JJSuMjYqaZ+kRiHoAQFJ
FS1KMZ1O8ZcO2wmFVOM7N4nqYy5ZJvjOW+l9zAQmxZAp19GTE6U+uQqKNvheToBE
yT3BQ1OmLLTnCKFqC1JKaxU8irzO0tjQit9FTx4guYI/G7pHlAurqX6n2UtDYpW1
eHfUCdbo0NsUJRPygTz4QpSDmNIRpcj2inPIHeipL4G/LQdS+hZt25oU7hPV5O9i
r8QzGtJoxdohRpU+8g5g4cgn3OIDdjTWzeB9ga0VJ2995N78LjjnYmvFEIUiVB47
Zm6A/ilyOb7f0o2yye09PO12pmANZMnBwEBkwHsOE5EwO9yxvH38DYk4nv5Ytx8c
g+adsKuhl+/NQayF5jh0a1u7lmnsLp3GeyrS4VDVHKd8TQ7ZTvIm1k0X2ldx7rUf
nJbIk9LYQ4iedVp0dbXvjrG/+S9OrxPfrYBuroKojmnRTXNHgOe0781LHl/uOsL6
AhFrPUN6CDiZvVWnBIT5FCAQeyWh+Q7jGiFrr0mx3Ba4PCL7IsE=
=k4Q4
-----END PGP SIGNATURE-----

--pyljawm32der347k--

