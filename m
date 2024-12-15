Return-Path: <linux-man+bounces-2148-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B81BD9F2629
	for <lists+linux-man@lfdr.de>; Sun, 15 Dec 2024 22:02:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A2DA1885467
	for <lists+linux-man@lfdr.de>; Sun, 15 Dec 2024 21:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 237801991DD;
	Sun, 15 Dec 2024 21:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="TWAodm3a"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8191865FA
	for <linux-man@vger.kernel.org>; Sun, 15 Dec 2024 21:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734296568; cv=none; b=KNZJRSKIzJBEmhUgmZAn2g7DRBHSotOkXdpUExzN8OVeLnsfCTY6Q5tg7FAzwQ8lmddEJYmaXz8S9payDxBrkrtQCnL+pofWM76jHTozyjVCcenMAx9ubP3/KZV1VtUNmSRSKB91Bv3l7Ri36bn6WqJ90TDJ3Jux5KsAnF8J3ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734296568; c=relaxed/simple;
	bh=trvRvF1hmHe2/thwJDXFCkiW/EbMqJdBWQsdz1Szafk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mlYMwdGFyAPe9VK5tuqICSQWybWLqL4pMy5jKJfbInQzaOyIfWTy9lGiMcG0OmTP3pXynOSAlMvACTPL7HH/mP5jwMvYVcVVA7OznjtRrQ9kTv+UbQ50ghiF6w2eaeVh+guhNkwApAejPUDSm0PuV9oXbDeQOweREvBquZ4AMt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=TWAodm3a; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1734296563;
	bh=trvRvF1hmHe2/thwJDXFCkiW/EbMqJdBWQsdz1Szafk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TWAodm3aA4je1kgKCyKHXb3Q17u5m25O+LwU+hcY8WxznvYEOP4sj0C9iCCDhXAax
	 tjmQ5+zDIFAPzCxgxHAmAMsRTR63YQ1UeZbFOf1u+pFHXGI+4qilDTY2mWZ9uV2FU1
	 6M/wstqlmy7X3UrywYIHSycd9zflgB2GszhmOgWS2yEau49MIygR7EwWqDLGMdmGfk
	 Prv2EacpxzJwWEsbvzMK4Xvkf1C8YaQRgM2iVVTmRrfEXtpsT6fNaPyJ/g5EbK0hM8
	 WOna4/JLC5aXpVIPRgfBmFWS/7czTUT1rpgsypOsVAVDrAWIXDIWQaKHB/zEc8GIMT
	 Q646aUhB9f83g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1EAE6127A;
	Sun, 15 Dec 2024 22:02:43 +0100 (CET)
Date: Sun, 15 Dec 2024 22:02:42 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] strverscmp.3: this is NOT the ordering used by ls -v
Message-ID: <wrudkskbkovv2hll3j4mfvd3hm5e5onagijixk6ymov5maolsk@tarta.nabijaczleweli.xyz>
References: <pvaw3u77afqspd5vjqcke7qdmz4on7qsqbkjltis6hbpxqwwvw@tarta.nabijaczleweli.xyz>
 <20241215204358.toi5nb37sksfdwle@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l3kbbflygpwmdbh2"
Content-Disposition: inline
In-Reply-To: <20241215204358.toi5nb37sksfdwle@devuan>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--l3kbbflygpwmdbh2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 15, 2024 at 09:43:58PM +0100, Alejandro Colomar wrote:
> On Sun, Dec 15, 2024 at 09:17:59PM +0100, Ahelenia Ziemia=C5=84ska wrote:
> > Compare, given:
> > 	#include <stdlib.h>
> > 	#include <stdio.h>
> > 	#include <string.h>
> > 	int compar(const char **l, const char **r) {
> > 		return strverscmp(*l, *r);
> > 	}
> > 	int main(int argc, char ** argv) {
> > 		qsort(argv + 1, argc - 1, sizeof(*argv), compar);
> > 		for(int i =3D 1; i <  argc; ++i)
> > 			puts(argv[i]);
> > 	}
> > yields:
> > 	$ /bin/ls -v1 a*  # coreutils ls
> > 	a-1.0a
> > 	a-1.0.1a
> > 	$ ../vers a*      # as above
> > 	a-1.0.1a
> > 	a-1.0a
> > 	$ ls -v1 a*       # voreutils ls @ 5781698 with strverscmp()-equivalen=
t sorting
> > 	a-1.0.1a
> > 	a-1.0a
> Should we file a bug against glibc strverscmp(3)?  We probably should.
>=20
> And the reference to sort(1), I'd put it in BUGS, saying that this API
> is broken, and does not sort properly.  Sounds good?
No, this API works as-documented, and the implementation is useful.
It's just not what ls -v does.

> > @@ -44,6 +35,10 @@ .SH DESCRIPTION
> >  .BR LC_COLLATE ,
> >  so is meant mostly for situations
> >  where the strings are expected to be in ASCII.
> > +This is not actually the ordering produced by
> > +.BR ls (1)
> > +.BR -v .
> > +.\" because it considers a-1.0.1a < a-1.0a; this is not what you want
> Please refer to sort(1) instead.  I would wipe any references to file
> names in this page, as I don't think they are relevant at all.
Applied in scissor-patch, below

Best,
-- >8 --
=46rom: =3D?UTF-8?q?Ahelenia=3D20Ziemia=3DC5=3D84ska?=3D
 <nabijaczleweli@nabijaczleweli.xyz>
Subject: [PATCH] strverscmp.3: this is NOT the ordering used by ls -v

Compare, given:
	#include <stdlib.h>
	#include <stdio.h>
	#include <string.h>
	int compar(const char **l, const char **r) {
		return strverscmp(*l, *r);
	}
	int main(int argc, char ** argv) {
		qsort(argv + 1, argc - 1, sizeof(*argv), compar);
		for(int i =3D 1; i <  argc; ++i)
			puts(argv[i]);
	}
yields:
	$ /bin/ls -v1 a*  # coreutils ls
	a-1.0a
	a-1.0.1a
	$ ../vers a*      # as above
	a-1.0.1a
	a-1.0a
	$ ls -v1 a*       # voreutils ls @ 5781698 with strverscmp()-equivalent so=
rting
	a-1.0.1a
	a-1.0a
compare also the results for real data like
	netstat-nat-1.{0,1{,.1},2,3.1,4{,.{1,2,3,4,5,6,7,8,9,10}}}.tar.gz

Thus, coreutils ls -v does NOT use strverscmp(3),
it uses a similar algorithm that actually properly sorts versions,
not just single numbers.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/strverscmp.3 | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/man/man3/strverscmp.3 b/man/man3/strverscmp.3
index 41bc1ddbd..65346410c 100644
--- a/man/man3/strverscmp.3
+++ b/man/man3/strverscmp.3
@@ -18,25 +18,14 @@ .SH SYNOPSIS
 .BI "int strverscmp(const char *" s1 ", const char *" s2 );
 .fi
 .SH DESCRIPTION
-Often one has files
+For a dataset like
 .IR jan1 ", " jan2 ", ..., " jan9 ", " jan10 ", ..."
-and it feels wrong when
-.BR ls (1)
-orders them
+sorting it lexicographically yields
 .IR jan1 ", " jan10 ", ..., " jan2 ", ..., " jan9 .
 .\" classical solution: "rename jan jan0 jan?"
-In order to rectify this, GNU introduced the
-.I \-v
-option to
-.BR ls (1),
-which is implemented using
-.BR versionsort (3),
-which again uses
-.BR strverscmp ().
-.P
-Thus, the task of
+The task of
 .BR strverscmp ()
-is to compare two strings and find the "right" order, while
+is to compare two strings yielding the former order, while
 .BR strcmp (3)
 finds only the lexicographic order.
 This function does not use
@@ -44,6 +33,10 @@ .SH DESCRIPTION
 .BR LC_COLLATE ,
 so is meant mostly for situations
 where the strings are expected to be in ASCII.
+This is different from the ordering produced by
+.BR sort (1)
+.BR -V .
+.\" because it considers a-1.0.1a < a-1.0a; this is not what you want
 .P
 What this function does is the following.
 If both strings are equal, return 0.
--=20
2.39.5


--l3kbbflygpwmdbh2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmdfQ/IACgkQvP0LAY0m
WPF2Dw/+KvjbeuaTf6RsmHNXL43A0YQp2GUklRLugJw59GoCr9yIUzNS7Susuf1C
QMNpwk95dt5nLPfxr6BIZWosXoQa2408MaI0WAeMWDaHEp705fT454D3OMMsJkIm
EVaMGQX+TQdbK9G1nnz3KGmjpRmFglsNWwXt6vRFyq/lKj2q5Pi3DibrlKaRAV/M
ZTBQ1iKv9CyMAKszd8Jzv0utzlonhvA918KJmnhlKINbLe08Xi67wv7anwT3yUXt
LEX0ZoO5mSCRETwYMfBYDMZMv5VsNvHCH5IRq4g6rihxis9dHbwMjN+GvkJ8Gg8a
vsHD0l0/busDAgfZ4NC5ZBqOCVJmJ/0roDVshqzyVgQIRS/5swQGdJXMjxwsdqF8
Ktb3kdIFnjkdBHI20cLCEL42WbfMVFK0OXjO4idGmSPEs9b97C5yTEyhe/8a5wGX
mTnVAy4XVjf8KzNHSjKSgDZ3mA0jQuqX03hyQnX20VoiXWfbt3jvDbXTEDgMHUXn
Lv/XFYpgFJG6oRVlnMeUTT/5TA6XU7UZLBP+rzKH98YwNRL3JkjCGG9I/K1VmX2H
y+OmL8uasxwguk/VPggZuCdqpIMS1zrsX0VGEx/wzyfefzMZZaJXeYPPoLbFrs24
K2cz07YHyxXwgb2FxAmD3mtmOdPzDJvSUP4MyaYGvdXL90Kf2z8=
=8YP2
-----END PGP SIGNATURE-----

--l3kbbflygpwmdbh2--

