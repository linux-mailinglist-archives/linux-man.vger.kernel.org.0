Return-Path: <linux-man+bounces-1448-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD0692FBB9
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 15:48:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6908F281894
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 13:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE7A16F8E1;
	Fri, 12 Jul 2024 13:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="S+jOgP6j"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0472BB15
	for <linux-man@vger.kernel.org>; Fri, 12 Jul 2024 13:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720792091; cv=none; b=nlWAtPueIxDXBH1M68w9sYulqEWG5Y0R0OJ3Uj2eohmhBa1iKskM3uGRUBr8qfAke44+JVyKWliDWUD0VMMauJgAXRaQBkz9gKT//3hSwFuDb2OuVQjOGBMJ1TFnt+uBlnwp50LPRfODeiNC4Y2kqUvOWj6zOR/LuzpLYFl8B4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720792091; c=relaxed/simple;
	bh=TQoaAVZspNeOZMoXZv7npUNF3/TZM04KDQI2QQHTkps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DFAjkpwVF2fVbLTpLfYu+B24OeGrJ/MCzeCupQmX5yczYABngcsxqBPrvqEyeVyiLodzFlHaQEhOA/7NY8/IhL4QTAM9X1cAFcgIFB0plmUuDlFQ4DytP61z/S4LCjMdwLZSpJE3G1HCbM76DBKPwjNeRqZK/P9727vD5h2pzVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=S+jOgP6j; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720792081;
	bh=TQoaAVZspNeOZMoXZv7npUNF3/TZM04KDQI2QQHTkps=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S+jOgP6jFs8MZ9AicgbBvlzX3dUuMn7zrm9SXg2uN6H/u59yF3RU08l6ifqCN6N3x
	 tsF+yOW7TbXv2e3IaUQY3owzR3vNFe0+4QzU4z9b0kNiYNTXh03CQois58+tewyplJ
	 c2QPqRXDrr4X0Mg0KfLfEM3aQBL9il/ZHlEEHqcitQm8NNo4VrSBN1VBFUxH0SxX2g
	 X7Wa4UmTEYzZEORObCdt3euJmV5G3TqsQ9JwPVGYOvvhd6GLp3pqI6HcWSCs7xW0Sb
	 8fMpb65W2ps4ktM8RvYqsqIAC83golAHGjFzg3qpTP5sMvSVA1B6oyds+o4+pWDcwA
	 EUPop2pXSNFFg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 92E30908E;
	Fri, 12 Jul 2024 15:48:01 +0200 (CEST)
Date: Fri, 12 Jul 2024 15:48:01 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] fnmatch.3: update FNM_CASEFOLD availability,
 FNM_IGNORECASE alias
Message-ID: <2lnvud6qnttulm34ns3lsrafguzrdjdgnnnp4yrlsdl6c2yoef@tarta.nabijaczleweli.xyz>
References: <g5gokt26n2vu3epajxzgbtbsmkubv3kxg7smtaewmycvubndhj@vahuixd5endm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="enwh3r22hz3ad76q"
Content-Disposition: inline
In-Reply-To: <g5gokt26n2vu3epajxzgbtbsmkubv3kxg7smtaewmycvubndhj@vahuixd5endm>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--enwh3r22hz3ad76q
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Every system I looked at already had FNM_CASEFOLD,
so calling it "GNU" is misleading at best;
Solaris (and the illumos gate) call it FNM_IGNORECASE
but also provide FNM_CASEFOLD as an alias.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/fnmatch.3 | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/man/man3/fnmatch.3 b/man/man3/fnmatch.3
index 978163a..ef318d7 100644
--- a/man/man3/fnmatch.3
+++ b/man/man3/fnmatch.3
@@ -69,7 +69,9 @@ .SH DESCRIPTION
 use of glibc and is implemented only in certain cases.
 .TP
 .B FNM_CASEFOLD
-If this flag (a GNU extension) is set, the pattern is matched
+.TQ
+.BR FNM_IGNORECASE " (same as " FNM_CASEFOLD )
+If this flag is set, the pattern is matched
 case-insensitively.
 .TP
 .B FNM_EXTMATCH
@@ -123,16 +125,22 @@ .SH STANDARDS
 .BR fnmatch ()
 POSIX.1-2008.
 .TP
+.B FNM_CASEFOLD
+.TQ
+.B FNM_IGNORECASE
+POSIX.1-2024.
+.TP
 .B FNM_FILE_NAME
 .TQ
 .B FNM_LEADING_DIR
-.TQ
-.B FNM_CASEFOLD
 GNU.
 .SH HISTORY
 .TP
 .BR fnmatch ()
 POSIX.1-2001, POSIX.2.
+.TP
+.B FNM_CASEFOLD
+has been available on many systems even before POSIX.1-2024.
 .SH SEE ALSO
 .BR sh (1),
 .BR glob (3),
--=20
2.39.2

--enwh3r22hz3ad76q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaRNBEACgkQvP0LAY0m
WPElGw/9HUaBQlO5g4fau5gugMh3TIyZKhkTaWrO7gqret1o3BoU2VxedXzqf0EL
dGd6HgB8dOFdrce5Zib5o4Rn9VHMV972F+kUpa1yYnhJDsjPvWASjDRaA87Fr2La
LN2mfr3UTIuuS9EOa7eM7k0S7VEHd76tlOI2poBIq6r7KbYUmNqqa3v6gB+nKrnq
h73au0xiAph6S3SIMwqE4qmvnN6yDLDXy/VbvVf/HZHz0YV75PY+vxK25Rt+Aa+h
/ql6HsFnEhbeKORZk9+domsfEoRwKjG9NujltADyGbNoPe7OvGVyGqnQC2bUL7R1
hojZ2oySvkaeLq4L4cyxDYcpnAP2iULsufSZ9Sxr3idg+ejz7WRKMjjJbHbb0I+b
r7JPHyHfjjLjipGpAdjr4axcUWEMhnNhFSDcGzrcwfBMA78zC8jKAzx8fRQl4BI9
ZIrKF6Dw7rb5ilNrxH+Lcf9RyObtNcjLsBwlHHUdu9XW+fvnkehvdXRplGnxbtng
m/2lNxCrcBAwWIEKmz+4bO1+m4/tlPc0Wz1mKf/8I1SB8sR3zcYCWie0Oe6vHvSf
JCgm/godMBSuNEa0fvtoTQxeHjxZzw1NU49OF7JLJ1uTVO2itoA0RDyjd0bKjDG7
1Fhx7T6cgjJs8y/9Afp2DpMJT4ROqipz+mYKko1hEW+0C3fucd4=
=xDOx
-----END PGP SIGNATURE-----

--enwh3r22hz3ad76q--

