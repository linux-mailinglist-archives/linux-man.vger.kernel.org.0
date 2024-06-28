Return-Path: <linux-man+bounces-1301-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBB491C7CB
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 23:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B07B028A589
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 21:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A465D7711B;
	Fri, 28 Jun 2024 21:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Ks2Alx1+"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78317346A
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 21:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719608829; cv=none; b=mIJhTAtGif3AzB1ekd+JVEUC3yx2gxl1tEAPKU08e8NvqArzzkeCM7+HiR7kE8R98+gQB7FtUXVVNoxyMX6hStsSuNbw8SsG5Tkj584m63oHbF64mvTMuu1IENu1OGEGDbasgK0WxI9iOPNE7SkBnD5UU3fR+2EJ8DhdG/MeSMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719608829; c=relaxed/simple;
	bh=TlknrLMPImRHycPptJ2ku4byHiivHJWvDc9nKm1sUnk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=umOHtk6xPAyyeBJfJeZlV1EklkTIlKwfZNmVs3qLl6H/90RkTz7oAE7jBSjsuXrYrGEk4O7Z0E1MTo5OZpbGyoOeao7rJONDv4yAnFGn0TCGtY1nqt2DYKqFwogNJA9149vHP8xex49+b0PG6maTT7eZ0vO2IiX3ef3Nh51qQrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Ks2Alx1+; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1719608822;
	bh=TlknrLMPImRHycPptJ2ku4byHiivHJWvDc9nKm1sUnk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ks2Alx1+BswtTjAy7CnCHCl0FeXmIOYtSC6bfkXnoxlfyzqt66+D9VsEVQPHBJFio
	 so3jT5hYX9izEEhO8+CJldtxlU+PgtNzdCTSwG1Dd53mezzPV4fACG3GjqDgC0WM7H
	 uCEySwHkvW4p7QMzbGuXakJiSh8Q0YaEcPdTBVoDQA/3Z1po8af+LLvOVIKYsBQsii
	 O60lEoabPBXhaBCONKJCgnztXyeshgOCmtHg9b7lRd20MUZFnvWDH7fxM7gJc8uH+o
	 nYuFwJ3HLeWlJR9V9HWjG3NUJK3wqcE8aECn0dArLT/rgGMJY1GyVHSA+wK+7pl+rL
	 AxNZyy5YcPbqw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CD91D7F92;
	Fri, 28 Jun 2024 23:07:02 +0200 (CEST)
Date: Fri, 28 Jun 2024 23:07:02 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] printf.3: rework '
Message-ID: <o2vchme4dchemjo4diziac5rlmhtsaze2yi72fzo5r67umlwny@tarta.nabijaczleweli.xyz>
References: <zsggflv5tglpkhkobzfmjxtufcq6bkltb7efionlohmkq7ukh5@yr3vt7m6olvt>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sse3he63ozwcihiz"
Content-Disposition: inline
In-Reply-To: <zsggflv5tglpkhkobzfmjxtufcq6bkltb7efionlohmkq7ukh5@yr3vt7m6olvt>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--sse3he63ozwcihiz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

As it stands, this is worse than useless
(defined as: I had to test it explicitly against strfmon() and look at
             POSIX myself to make sure the manual wasn't lying to me
 https://101010.pl/@nabijaczleweli/112694726416515899):

No-one cares if some compiler doesn't understand something from 1994.
(Careful readers will note it's been 30 years.)

"SUSv2 doesn't have this, SUSv3 does" is reefer-induced:
this figures in SUSv1 (XPG Issue 4 Version 2)
and the CHANGE HISTORY clearly notes ' was added in i4, not i4v2.

It's important that these aren't actually grouped by the thousand,
but, instead, by "what the locale says".

Each locale has two groupings: monetary and non-monetary,
and it's paramount to indicate which is which
(hi_IN  is 3,2... monetary and 3... non-monetary;
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
> Hmmm, struct lconv is documented in lconv(3type), but that page is
> missing details that are available in locale(7).  Maybe we should move
> some text from there to lconv(3type).
Nothing links to lconv(3type) so I didn't even know it existed.
Even then, it's a stub that's actively worse than locale(7)
(itself not that great). struct lconv is documented in locale(7).

> > +Issue 4 of the X/Open Portability Guide (SUSv1, 1994) adds \[aq].
> .IR \[aq] .
BR actually for compatibility with the rest
(in the list and below in HISTORY).

 man/man3/printf.3 | 33 +++++++++++++++++++--------------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/man/man3/printf.3 b/man/man3/printf.3
index 54a0339..771e295 100644
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
@@ -373,19 +373,21 @@ .SS Flag characters
 .BR g ,
 .BR G )
 the output is to be grouped with thousands' grouping characters
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
+as a
+.I non-monetary
+quantity.
+Misleadingly, this isn't necessarily every thousand:
+for example Karbi ("mjw_IN"), groups its digits into 3 once, then 2 repeat=
edly.
+Compare
+.BR locale (7)
+.I grouping
+and
+.IR thousands_sep ,
+contrast with
+.IR mon_grouping / mon_thousands_sep
+and
+.BR strfmon (3).
+This is a no-op in the default "C" locale.
 .P
 glibc 2.2 adds one further flag character.
 .TP
@@ -980,6 +982,9 @@ .SH HISTORY
 .BR vdprintf ()
 GNU, POSIX.1-2008.
 .P
+Issue 4 of the X/Open Portability Guide (SUSv1, 1994) adds
+.BR \[aq] .
+.P
 .\" Linux libc4 knows about the five C standard flags.
 .\" It knows about the length modifiers \fBh\fP, \fBl\fP, \fBL\fP,
 .\" and the conversions
--=20
2.39.2

--sse3he63ozwcihiz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmZ/JfYACgkQvP0LAY0m
WPFMyxAAgBsZI/lH8vnYMvMiv1msGJGp0Wi6RKnNa7PaZsuLKBuyBSNi1TYi7XUx
X1B8q8LHBRwx6GkKJV3guEKfeEuXeV7TTkbrfiosyyD5tGxsJKDq/Ue4ffD8goAf
55foSqMXfMNRxCWTxpl471baVuxmRlrpSwYIVRS3V+eyRKhqg0EZnlK6dJtxNBjJ
aHt6nUZkytlrLRKtlfhs/p1wEJYHqe6im4vnZs5C5AqQn9Gpuvo6pA+fRjZNyN1T
QulKlPqpOpDtzBCi6cOS5eHgKw5XhtJOhKXen47Cn/yue5Q7vezsM1afYCAe++YN
FMXUskSoq7NkM9xZVqwvpogew762HHN36Zm7SBGy/wRGxKBGStyTTES1gOOfR1n5
pMqj2aIFdwe8x4lLjpt34yGzD1k6iPyb7D/u25rptmHq3Vo7kB54hgE9a9UAtg0Q
Wo8Xe+BMf/9Fd6k7SAP3jg7ULbY9cv+aRTKwSAew5J2QO+U7++CMjG7IRL6Wyq5h
5qth5vVADju5qcWSpqEotGBS36A3vQSagBckkqmGpJ5PBRGQxUSeycQZDaARsuoc
YpJTVxFH7anxT0gqJZ/iY7SPbmkwr1hH3E1E7B3e9nKIV85vg3v2tuQ2vx7Wqxov
xqlAYAFIyWmi2eQrNGLetgI8fitBXllesMfYF/kRmXVe3tnMbfs=
=o3U8
-----END PGP SIGNATURE-----

--sse3he63ozwcihiz--

