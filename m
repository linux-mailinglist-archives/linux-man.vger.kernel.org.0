Return-Path: <linux-man+bounces-1364-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1462929AAB
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 04:03:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CD6B28117F
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 02:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80332138C;
	Mon,  8 Jul 2024 02:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="f5qVv21h"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C062D63C
	for <linux-man@vger.kernel.org>; Mon,  8 Jul 2024 02:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720404235; cv=none; b=SvO285GttOIqyzTgdSJzMogPBl/AMPyRDVBbVULL5Dy8Iwe8MKLM/ebITY1aNG8UTiWZvBB4ysQSnxoTsPvzt99LbEfd7rPEZIhRtmR+EWdhPvg/u6gqV4NHdwJVKCG6lZkIOocmMohuaHei7OlAN5PdnaVUTObX+/ez+Nv1EI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720404235; c=relaxed/simple;
	bh=f5ExSDt7b8qVc2asALOeixUH/YmoVikf1UDgGjJ9aWI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=IT3ZvRXAPGbBYqA9+h8EK1yp4WkV89VEndN7FhGrqjyE1H+NS0Kwqtqs4yeJQ0m1KmWgcwFTqG4opj0Swit70IqHMTpbt8jhIngQEuvW907MvwmczfxPI8oE3R1NW1zg0tJqv+kwqBdMjdXW7S8m9D7lKf44KhaaImTZZPYszfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=f5qVv21h; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720404221;
	bh=f5ExSDt7b8qVc2asALOeixUH/YmoVikf1UDgGjJ9aWI=;
	h=Date:From:To:Cc:Subject:From;
	b=f5qVv21hpMkMySJURgTlhpGIvW5YBneGBfvk3Pn2BuPzd/JgTN6ZY5AFD1K4q6syn
	 wR4A08VVtMFBKyGloNVpmfsQrfAgO4cnm3RzlE1YBsBVUT/Od8GBWOS4Ug8poiKGIf
	 1GkcQdhnlqtcPtJNJipeVZMEtkD60LPXkvlpm9YfvBzODrk5XTXI10eNJTh+ycLobp
	 kGQX4UipYiVWpr97XY9RkI01NKxiOA05yN6Lw1fvFevqg92bq0LT7B4III3XJ+H0fX
	 ZDqoE+L+l7zmbL/MBZmi5wBVptohRbCUhQ5KJIUpfJN3/vPdX9a2ghYbyzlvqKMHBj
	 /SoeUBgBRFPaA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 21DE1835A;
	Mon,  8 Jul 2024 04:03:41 +0200 (CEST)
Date: Mon, 8 Jul 2024 04:03:40 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="32cs76isb6hwrwfq"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--32cs76isb6hwrwfq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Applies to Linux and NetBSD.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/sigaction.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
index ce5ad7579..538028f54 100644
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
--=20
2.39.2

--32cs76isb6hwrwfq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaLSPwACgkQvP0LAY0m
WPGBUhAAq8UPOvYs84C0ci/up2S+VM4klw9YIjoPq+3xFcUZ7Ctjw7BRDyrWMXaA
vRM+WF/UWomIcuQYMCBryifn/Gcw6snzGlpdUKE/VeCvNwL7W0z1Kwaz5CnAu+13
+aUBxLnGDVcjTcbTN1IfOuisrTTA/1cs7PRW7x2Bxf2duYKnDZYc5Fwb5CMXY5KH
RWeWt7G9DQkNIz2oqdoj83+5rLTQNvXWSZb/K8JQtfLfSjImldXevZY0th54bWQo
UvowNpI3zRe195TzflqOWT25LAM0h3AW8ZrFDbzYDVF+uMaA1whatWWFggiXxHjF
XCoiHNRtwCA5T71DYYtggNxLetCsw2Fa7TRN8tlBsPWZmj35YflMGDHSCcpurwvy
1VF5mu7uQdobsQUqNFuBMf0a3qxFmvzk1Thn14sZvKfaB9JggpcDzU1GlhE51aD3
3zyd5ffEPQSvwT6qbgvO16KrH+qFfHUleX98UAOid3E3szX43hKK8vcTpaOPlIss
O/4UWc9TuZ0qeikiy/TyZUGC0Bf0f4d3v+JReIglSAlDEop+IwwH8MIqrNWXenWG
HGSe+Hjd8LuiYX1Jf57GvA9wznHpDJoOazWJgwKBWM1u7xwbJUCA0mtcIPrd0Ux0
0LxZ3eUE4gUl7SldjE6DXjMmZwLtGb6L/iA04dIPdWNKRrSSsGU=
=m83p
-----END PGP SIGNATURE-----

--32cs76isb6hwrwfq--

