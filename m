Return-Path: <linux-man+bounces-581-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA0E87A98C
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 15:35:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A0F61F23E7B
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 14:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B91002C9D;
	Wed, 13 Mar 2024 14:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Ge3ltj+T"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C536FA41
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 14:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710340523; cv=none; b=HS5rJ2UyojJXDX/tdwlRj1K7epP0C4qCL4UMdivxUqRRSRiDD8eMXycdIFmxCfsd7YinCvfXE6Ol8ciBMzUXIuCmswNUlGr0wYib7G/OYNQ1OHpS58baFu6G4gTWM4FQlmn5rZIfLlMqsUsEmD8UT7ct/SB9cZ8hgcKcXb2jHPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710340523; c=relaxed/simple;
	bh=Ch/kIo0VqnsK4dn2gdLQBOBFju2/xVOPbGoUr4OV6+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F3fdd5ZfOvvTfzM0IsuT471umDwsfkABzLJ6JNw64xm4Vhqp4ynpqFLOr1wsV765DaBwCQEMf6rZkVpK6z1XT7akzyaBUGyq03zHUYuYVDhvm9el02qgJdJnURtpPJJwx36cUX7sXf7bn3dVQgektWvo1g3LCRfo2ILr2jvpIOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Ge3ltj+T; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710340009;
	bh=Ch/kIo0VqnsK4dn2gdLQBOBFju2/xVOPbGoUr4OV6+s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ge3ltj+TzPO31zk+isOzn55QctYK0Y8xEqfWU4uofEykkJyv0BnfdVf38lKlYgR5A
	 3iRzpQvHIYfxa1tIkfSKbYsDzUrOi9sVaA9azpYLXJ/RTmGghi9SPRHHKzhSMq4BM9
	 f18B0XANPk6QaD8qU3ioIHkjd0dfxRL95rRSk2XlnbBkBvJ39YHr8BdqDONf8tnAgY
	 fDDvgy8lcvGom9ss3qI0PY3c/IeUpH0j4V9+Kf2U9f0G4LsgY4+fBQokNT1tmK3qLI
	 Zqjs5XFRSU37h1jaZfkECNDwIRgwBslx41qOwSQRGLqrW8nhfrQyx5MnqXbuBpBZg4
	 hWNeN42yLeOiA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0D3861010;
	Wed, 13 Mar 2024 15:26:49 +0100 (CET)
Date: Wed, 13 Mar 2024 15:26:48 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 3/6] proc_pid_io.5: wfix
Message-ID: <b59362221695a6671c767e9b3adf4e671193acb2.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v3iv6s3ub24wrlrt"
Content-Disposition: inline
In-Reply-To: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--v3iv6s3ub24wrlrt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/proc_pid_io.5 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
index f66d8c635..4d97bd95f 100644
--- a/man5/proc_pid_io.5
+++ b/man5/proc_pid_io.5
@@ -88,9 +88,9 @@ .SH DESCRIPTION
 while process B is updating one of these 64-bit counters,
 process A could see an intermediate result.
 .IP
-Permission to access this file is governed by a ptrace access mode
-.B PTRACE_MODE_READ_FSCREDS
-check; see
-.BR ptrace (2).
+Permission to access this file is governed by
+.BR ptrace (2)
+access mode
+.BR PTRACE_MODE_READ_FSCREDS .
 .SH SEE ALSO
 .BR proc (5)
--=20
2.39.2


--v3iv6s3ub24wrlrt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXxt6gACgkQvP0LAY0m
WPH6LA//acnm98wq3HqBtSKgZy29aZUtWC/s2IAf7VPMAbgTZhgHb2+GijeGd/O2
ncSne2Aw0P4tWG/WEGqHG1ogPOAMjJmqRW1HDm+C4FlVqN8ftU06yYn/PU5+BFTU
ObUBvnxBNzgIpY0JFB42PWQUqozKj1IHc/nZX2Jf2DvgoJFTYAIUadRzh/fBWdcD
Pb9G7PTMDBGCNaBCj9uDUoAEkXR/u3tIx29izyJgGqqq8XkoIbFXjqV9O5sGAKlh
q5DlPJGC9jrIpMUT2az35AIkIluRAyHmDJ2IG69OXQcmlESSh9OhvGdjZ8m3cJCY
unfhdHZ1p8NoBEj/ppbUC/Lfp6NQ4XonZXG+9NjcGBdRe2sz4zYlWWkY/JxSjIb3
6Qw3eCIsC/DE3klvRfUHPaToWRGfgPJV6JSd0gS42mIaJY1uvs6T9Hr0vAodZHbk
rdveVAvLCKT57idDcK1dxJEkmex1bmUHP/bgByrTzVWHt/PG3FyuRmZQHbyyzIgB
Aj3iCCjhrKqB4oOZ4ZjrwjIi0qk8kFcIHdEYIeBbjUsAf6Pg+hMMuJypAZszi/QC
kP3aeVaSqAHjQQs2OMZdT4gpk6+MPhFpiBuNbu0WRftduqIv+tuABBF5IoTXHl49
nWC8exkTGDE5cZRbi5UKKJ9uCKBsl+pGAOz2sTDgkUcARSNtMUM=
=2uuP
-----END PGP SIGNATURE-----

--v3iv6s3ub24wrlrt--

