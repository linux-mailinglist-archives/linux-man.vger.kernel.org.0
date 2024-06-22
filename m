Return-Path: <linux-man+bounces-1256-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E38B9132D6
	for <lists+linux-man@lfdr.de>; Sat, 22 Jun 2024 11:08:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8DA71F22CA1
	for <lists+linux-man@lfdr.de>; Sat, 22 Jun 2024 09:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE0B814A605;
	Sat, 22 Jun 2024 09:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="EHHWHSpP"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32B114D701
	for <linux-man@vger.kernel.org>; Sat, 22 Jun 2024 09:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719047283; cv=none; b=a3NhJd8E9RzlDFs66QEPelAGCXEGZT1YtVblfzQXrYGQSRkvKeBE8R7q0Tj0QxWQMyiG2F5WuO7lcPqDesdLNSnCM/IWD6y/dIuTx+otPFYFlMiuYsoaIshAhvPl0YZ2FA+Gul8cm1ueHg22Phj0oj36MPq/PjdRiqaNs86nONg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719047283; c=relaxed/simple;
	bh=Cer/zkBktTOeMNUCsPzk4svSPfvQC3zARlfATSDA4fw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=k9ltLfsFWX1n0rTiJ226I1VYjXZt7gn4fHlyU6x5HmI51KtreJVkbM4sbkKt0WoD7t1XYOktP34dAJGGcNKOv8AfD3X1QMBxtuDJBCACocVibt2rBmJM6tl8pvhJd6JfAgYkGqft4Qtvv/Fkzpiz0zFu6ln4TCJp7C4SQ+zFWsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=EHHWHSpP; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1719046961;
	bh=Cer/zkBktTOeMNUCsPzk4svSPfvQC3zARlfATSDA4fw=;
	h=Date:From:To:Cc:Subject:From;
	b=EHHWHSpPfXjjQ8G0i98jbbQ6eqPMxLNB9VBijjZKdIru8ltoB8/L9kd8P9BaruVnP
	 exyq/FF1T3UwsDTZIAgZwXSDe+mHSPykk/Z8Bmp0bDj8S2FdaHlHf2Y3+GpfTQPZQ8
	 xhTX550WyhOUebAmAEgC6j07amYcp9koqRvVYhtoR4Glmnt5NUeAaRd4hsd/4nMxfl
	 VU9iSQmEZRBhEzL9ZQqQE1iv9hiQALiNiV0ON0rUlqA+4bwfStQh1uHnfykQAAHjJd
	 cgbxg2xMkmqL0ZqPXrmjA07dI65cycuKg7wMwlcSN7hKMh3QmV6y9FS0w2Li/hdqt5
	 fzYISrOupGPFw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 3602F72D4;
	Sat, 22 Jun 2024 11:02:41 +0200 (CEST)
Date: Sat, 22 Jun 2024 11:02:40 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] wcscasecmp.3, wcsncasecmp.3: merge
Message-ID: <l6zyynaohet3fzpuchnkrss5rziqcwqt3azq6tn32q56qggxmp@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4lxz4jy4w6tzpjgw"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--4lxz4jy4w6tzpjgw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This mirrors str[n]casecmp and is much more useful,
but more importantly these didn't crosslink at all

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/wcscasecmp.3  |  29 +++++++++--
 man/man3/wcsncasecmp.3 | 106 +----------------------------------------
 2 files changed, 27 insertions(+), 108 deletions(-)

diff --git a/man/man3/wcscasecmp.3 b/man/man3/wcscasecmp.3
index 88d88b2a3..762037daa 100644
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
], s\
+ize_t " n );
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
@@ -48,6 +51,18 @@ .SH DESCRIPTION
 case differences
 .RB ( towupper (3),
 .BR towlower (3)).
+.PP
+The
+.BR wcsncasecmp ()
+function is similar
+(equivalent to
+.BR strncasecmp (3)),
+except that it compares no more than
+.I n
+characters of
+.I s1
+and
+.IR s2 .
 .SH RETURN VALUE
 The
 .BR wcscasecmp ()
@@ -69,6 +84,13 @@ .SH RETURN VALUE
 than
 .IR s2 ,
 ignoring case.
+.PP
+The
+.BR wcsncasecmp ()
+function is the same, but with truncated
+.I s1
+and
+.IR s2 .
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -80,7 +102,8 @@ .SH ATTRIBUTES
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
index dba58b747..6e8d682cc 100644
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

--4lxz4jy4w6tzpjgw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmZ2kzAACgkQvP0LAY0m
WPEhyQ/9Gl1KEUiWoL8NuE1ujw9eEUqk3Elwxr2OG4ZvCATI/wGkscgGz3SRJFT5
UgOpRlWYDNBKRTn5hh5CRFb6PukABRIq1ibKrySCJlSoZM9sShrlg4teiOcmo9fm
GoRWo5dPalImLFwAWfXc4vogaE8OU98yu3Gr4//pRnQTY9ZbvYRhK/KRD9w/GSP+
haOzHk0rNLoXt9G31Z5By2RRJg1O9S9gi5eUhtMIEXE+k+uIpFRhU3fs4UWDzg2H
P0Z6tdmMc99eYlJT16TKWTHv8XmMLaqidRzmc2HZqQXst8NW33u5y6Uwy0MIJIeH
4367eNnTUMU3pIUgSCc3Kyh0NyUGytiqpb+j0RUK44/nqARL7D22Xp0Vjt2YvJST
4NefSzmooLp7LOT8hJVIYaTund84yagachDYIKp76X0No+pVmNcaOmg5HC6cJ0ih
nE5y/fky7rsR4Rgo26fg87F7QdzrP8Jg3W77u2tif+hioM1Tq9hJfZuYxv0nIA/Q
Gd597C4rsYWVO4LqxCNbbHnzNPXZkjatCtOqC0dXqtW+78pvuxQmgKG2+/B4ZC3I
l9IroL/MPP3BWrd2abpR/lhH7FznXh0m1sGaPut2jOGes1dnbxOcYBsOo7S4QTan
VQgQ1DXPLE3t5dTk0/g2DeW277qGylbqmlgjoAKZiqwlhBl7fEM=
=0MwS
-----END PGP SIGNATURE-----

--4lxz4jy4w6tzpjgw--

