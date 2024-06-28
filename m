Return-Path: <linux-man+bounces-1297-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2983991C29A
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 17:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AA5C1C21377
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 15:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1666D1C2320;
	Fri, 28 Jun 2024 15:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="RMldFFLh"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686D01E878
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 15:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719588383; cv=none; b=omJAisZbbw0nIRnmFb+mMVzvaMLUAWdtvAJeguNlhHsoXeXB6Lha4WHhH/w/4pPv+YaEV7oRpdIrw2G9etKOHmqCsTd0lIJkwYOlu8NPOP30cfybLxW68p8/JScSErK9ZVRE6Vxj3MuARcXNgHG0AyTNVga8GyKUt6RiKzapblI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719588383; c=relaxed/simple;
	bh=D/NY3R1d8o1JxSBi29I0ukiewg6mEDQnzWJDYNNsFlQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SR3C18LhTuTySRlgE3X56pFuo0x9GgjYX7NvAFDwPWZOMyt4TQetZY8EwRbs3IbPhynyIe0jprNef+UgrvjLG7k1mlBWXCzXh8s4uwVJ7sDYjq44iF2QOMABk3i9xLw6jcfH4E3WUfKxk1e9luhlLTci91xmnEZ2+/OkFwUB9tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=RMldFFLh; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1719588370;
	bh=D/NY3R1d8o1JxSBi29I0ukiewg6mEDQnzWJDYNNsFlQ=;
	h=Date:From:To:Cc:Subject:From;
	b=RMldFFLhyoMdbUupxO37hxycG8Wht9CdAlliiXYk1281Dwe51PHII+xmnzT/xD/8O
	 HZG4s/Xf7cyJemBJQo+XzEyi4lP0a5Y3sHT9+MgNWc8qN/UJJRVlwp/OAprFG8d6YN
	 0cziE8NAN1nZIEb+x+yIe6TPM4/KfH4ojngGiD0ixQjBt2E86XolzyUY/LPjnuYo+V
	 xrGVxw9TBzKpsWz3yQVxpIKqOymb1tOPr/MPwqQw/Gh8qrGJEoEMZVtmdAwdHIP5tB
	 PIzkREOqlbgb+SNZgN2/48LLcodyFexRolE28gRa4AqY6ohlrj4YwYiWGZOvQaKPRx
	 wNFdDVSiSOG/g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 630B97AC6;
	Fri, 28 Jun 2024 17:26:10 +0200 (CEST)
Date: Fri, 28 Jun 2024 17:26:10 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] printf.3: rework '
Message-ID: <4p4tq3fzhkyt3kn7rmlradb5kkfxxuk7b3v2umqzf765pupik5@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qpyznard2ifgwstq"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--qpyznard2ifgwstq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

As it stands, this is worse than useless
(defined as: I had to test it explicitly against strfmon() and look at
             POSIX myself to make sure the manual wasn't lying to me
 https://101010.pl/@nabijaczleweli/112694726416515899):

No-one cares if some compiler doesn't understand something from 1994.
(Careful readers will note it's been 30 years.)

"SUSv2 doesn't have this, SUSv3" does is reefer-induced:
this figures in SUSv1 (XPG Issue 4 Version 2)
and the CHANGE HISTORY clearly notes ' was added in i4, not i4v2.

It's important that these aren't actually grouped by the thousand,
but, instead, by "what the locale says".

Each locale has two groupings: monetary and non-monetary,
and it's paramount to indicate which is which
(hi_IN is 3,2... monetary and 3... non-monetary;
 mjw_IN is 3,2... both).

It waxes poetic for way too long about "how to set a locale".

Also replace "The Single UNIX Specification adds" with "POSIX adds".
The SUS is, on a good day, a profile of POSIX you pay 300$ for.
Maybe you could swing this back when it was an "extension"
(so, only required in the SUS profile)
but it's just shaded CX ("this is intentionally different from C")
in Issue 8. It's really irrelevant here.

Also add this to HISTORY
(and call it something sane there;
 the Proper nomenclature is absolutely meaningless to normal people).
The most important bit for every HISTORY reader is the 1994 date.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/printf.3 | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/man/man3/printf.3 b/man/man3/printf.3
index 54a0339..6f6c952 100644
--- a/man/man3/printf.3
+++ b/man/man3/printf.3
@@ -361,7 +361,7 @@ .SS Flag characters
 overrides a space if both are used.
 .P
 The five flag characters above are defined in the C99 standard.
-The Single UNIX Specification specifies one further flag character.
+POSIX specifies one further flag character.
 .TP
 .B \[aq]
 For decimal conversion
@@ -372,20 +372,21 @@ .SS Flag characters
 .BR F ,
 .BR g ,
 .BR G )
-the output is to be grouped with thousands' grouping characters
-if the locale information indicates any.
-(See
-.BR setlocale (3).)
-Note that many versions of
-.BR gcc (1)
-cannot parse this option and will issue a warning.
-(SUSv2 did not
-include \fI%\[aq]F\fP, but SUSv3 added it.)
-Note also that the default locale of a C program is "C"
-whose locale information indicates no thousands' grouping character.
-Therefore, without a prior call to
-.BR setlocale (3),
-no thousands' grouping characters will be printed.
+the output is to be grouped with thousands' grouping characters, as a
+.I non-monetary
+quantity.
+Misleadingly, this isn't necessarily every thousand:
+for example Karbi ("mjw_IN"), groups its digits into 3 once, then 2 repeat=
edly.
+Cf.\&
+.BR locale (7)
+.I grouping
+and
+.IR thousands_sep ,
+contrast with
+.IR mon_grouping / mon_thousands_sep ,
+and
+.BR strfmon (3).
+This is a no-op in the default "C" locale.
 .P
 glibc 2.2 adds one further flag character.
 .TP
@@ -980,6 +981,8 @@ .SH HISTORY
 .BR vdprintf ()
 GNU, POSIX.1-2008.
 .P
+Issue 4 of the X/Open Portability Guide (SUSv1, 1994) adds \[aq].
+.P
 .\" Linux libc4 knows about the five C standard flags.
 .\" It knows about the length modifiers \fBh\fP, \fBl\fP, \fBL\fP,
 .\" and the conversions
--=20
2.39.2

--qpyznard2ifgwstq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmZ+1hEACgkQvP0LAY0m
WPEOmg//YpHxlooKomz4FJjYl088tAnbkYkmOYaRSKizH5lbP8MoOx7AaO3D2+Fi
GHeraSs+hVq1Mbgv+LvkRAU/t3i2P44Uj9hh4LwF5ACsdqN1tK0sA+TgTv0veUY7
3duDQGdLqsjF9W6jcbt30WcGl4+vBzr5s/jtznjYlfc2RCN/sx+kp/rTOEChWANw
27tgmOcRuzv8+0kUkiEilWLSJcLc9gwiB1wwyr9t9VuNTVknZqaxuRBZCYs9Oe/E
ivMyOUbliPszwnUyawkM/A17V3lzfAz4MOtxnPjJkUffLbW7rMSFsUn5ZdLc9AqA
sCQ8ipgeTbp+xsIpE/ixEoo90jfxnoDKUyJw7nl6JPbK68g2KqlkZp/fwSi/FAyB
JtRNZBwHg+UPEhbcMXa6DxbFqYX7TmXrpuug/8A+xqtcLaX4cyv06fV1b1doltG/
OmsIDSYiglookvAo0QPIpLVGS2sXTsBSzEv84bqzTWFw4FDUHD78kc48Q9VfEIXL
2fw3xHrXXGB+bGFP53RTXSpxQZ99krzGsYEBLGf/KK53llsv5qVLxcCqYcK6llgW
3vqO3j1sUvMoocZj9+uzmegP/Y5FMfpl4ZfFVsNFJ3+DKjy7R6ZO4ZqR3L97LsH0
jaoZ2c3sTDRXgk9c227kOJzzozUG3oLc2o48x7112K8qbLKBKis=
=cFCP
-----END PGP SIGNATURE-----

--qpyznard2ifgwstq--

