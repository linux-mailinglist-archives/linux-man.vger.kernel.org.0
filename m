Return-Path: <linux-man+bounces-1429-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C97B592C50B
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 22:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EE261F22AEA
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 20:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F61D5FB8A;
	Tue,  9 Jul 2024 20:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="G3jaSAvp"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C0E185634
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 20:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720558679; cv=none; b=YCwmIc2EKBBXfg01jEpl0u3UIBJcZOdbGrX+oMccXXheMyRM3/pgsqQz7gC9LdNxSyRoy0O/s65kCbxzm1f5vhNQ+3dT0A0AdfuUeb3XMiMickSGHI4NwqG2YDFO+EcaRc8uuX50xBHGh/EJYSJNmzM0WUWPSQ9IJ+8c/jKVBUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720558679; c=relaxed/simple;
	bh=kG8URbSMp6Qk6S04ytf1T/OEih9s9v15fMIXeeeGLdk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Rmi54W/u4SDhW0XyAW5z6KWsODlDEeaRXyGFzCDCOfjaAm/OBvBb9NEUcqvfG5/ic8wXapO0KR6cdSFvw1+n211TAMg8yBFxAgpShrSFFWE4sYz9d87uySX9roGqWuN/0raxKmr8NiN92hO/54ab60qahShuvrpQp/LjoJdHuEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=G3jaSAvp; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720558674;
	bh=kG8URbSMp6Qk6S04ytf1T/OEih9s9v15fMIXeeeGLdk=;
	h=Date:From:To:Cc:Subject:From;
	b=G3jaSAvpM9G5ofkxMXS+71SEJSvJzP89DcM/J+6+3xJ+MDPZ6O6sI3gbcyNISWs/Z
	 N9ZTfFDePfWmiftdKMmOdCmD73/MCbLAte1u9szAX9hMzQ4v1+QofM9WthfD9nGzdT
	 jYnMp1yGCupy/5y91TDM7hDxr2FXL/XCsvLB9Dh1Ik2mlOd20NNyZ/VrEKjG/nluuS
	 oMXsIe1V6r3zLRACa20iA7cJMx+qGTi+6YAKCHRlY5WwHABfBqQcAUJvNTftQ5HkJA
	 n8UkyTFBHWFo9xwBwLeb+amQxE0tu9VvIDHvhu+IkNSeUg3Kml7+Xhsg95H6ILSShQ
	 Ew4zqP3hMushw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4F3668B1C;
	Tue,  9 Jul 2024 22:57:54 +0200 (CEST)
Date: Tue, 9 Jul 2024 22:57:54 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <z3bixugjnrhlcli53tmdogma7op7uwstwlitgl7u4mmyqfs3pc@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yqcw4rqvb6mti5a7"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--yqcw4rqvb6mti5a7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/sigaction.2 | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
index ce5ad75..168c15c 100644
--- a/man/man2/sigaction.2
+++ b/man/man2/sigaction.2
@@ -645,7 +645,9 @@ .SS The si_code field
 .BR sigqueue (3).
 .TP
 .B SI_TIMER
-POSIX timer expired.
+POSIX or
+.BR setitimer (2)/ alarm (2)
+timer expired.
 .TP
 .BR SI_MESGQ " (since Linux 2.6.6)"
 POSIX message queue state changed; see
@@ -1099,6 +1101,13 @@ .SH NOTES
 .BR signal\-safety (7)
 for a list of the async-signal-safe functions that can be
 safely called inside from inside a signal handler.
+.P
+POSIX only guarantees
+.B SI_TIMER
+for signals created by
+.IR timer_create (2).
+Implementations are free to also provide it for other types of timers.
+The Linux behaviour matches NetBSD.
 .\"
 .SS Undocumented
 Before the introduction of
--=20
2.39.2

--yqcw4rqvb6mti5a7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaNpFEACgkQvP0LAY0m
WPE5jRAApRGH1nHwOnLlClGZTtcoMrzYJR3dN2/DD++qDeo3hdJ62BMhrCPU+4CS
7nrB0Aa9Nznfz3wZj8HyhSouR+7UyYOxW2n7CbI1QB4/h70f6y0KS6ek4Zm2KMWN
7e2JNdbeWk2HWRIcNzlMIT244QGoJ4WGSnyQYHYLAxaXqF/kP3mF/k6RddXRIqZj
S45Jy4OeK1aEzD18E3jQE1oZs6TAMqb5rIvhlsTNFcThoqUdFD9C2ZECeN1ScfrZ
qbieWfskW6Jpi3WpjefgiBGvP2qjReSTCvsSS+mWJamA1WWGIEUDkxIm3MzNSpRf
1e90/7xNiy5f9nMBA/clBHEBVlGGscd7QDi4+XSV0zzLpANtl+GLhnMbgygOgTwG
IE02eAz4PJEyj3kU1XHMifESGIYyfSkQfwsfS+lS8ezzIlRJTYVQOQwKM2QE1YkE
I3iZxX80wZ8X4vn48ngJTfXmcnRJLOQIaXnDyII+XrBwSEWqwd/apFbBbGtQkwqd
N1K7VLfa04bArD6jh4tGPPCy3rxUSellZ5lgnjADPFhYZ51kJGmoYjWunH4IELuk
W6B9/vEXWBlMUAu5tH0jNxaY80t9Bb5s6bRLfumGnBxodzDQJh/D0UpAGF5ZCC57
Lt/H1MevBJW4lnuD0A+yWh3G5gHFhzv7jAAY7daQ8y0eDianVKA=
=EvQv
-----END PGP SIGNATURE-----

--yqcw4rqvb6mti5a7--

