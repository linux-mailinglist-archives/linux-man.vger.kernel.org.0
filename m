Return-Path: <linux-man+bounces-466-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6404D85C367
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 19:11:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16D421F245C3
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 18:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2175B77A01;
	Tue, 20 Feb 2024 18:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="jEgHqZF0"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A5377F05
	for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 18:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708452698; cv=none; b=QSt03uBWKOLwr13irxJt/YL3wcoV5sW/8orlPtURIRLpkiFbVzx+c6vsnadJeFmUg2hcKF+h+WrfQ+TysJuV9cjhRTbJQvdoOqeoPGsCmb6GITJn7eHGPsEfc+6dnwLdytPMTe37y1yoKM4N9+EKHNtPmSPRnDCM2ktU4rqy0JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708452698; c=relaxed/simple;
	bh=d+UEPhu+QQ7E/EaS7uj5jumzZxVVWG90AQVfZmLEoTs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=gZRW2iaa+LRedUGwUOc++sXiK6+NU95w1vcsvWMW6pMIjGZgN92LmSbNirYqvAyJmBuDeYai8qd+euFNP0KJ7Cc+2SzW1DZJpswe/kYSYv2/ibbiJv4EeCpa96cgbtprsIFfILx26ALX/aahlcxoPSATSzLR9T+2wv4X/p/h21s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=jEgHqZF0; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1708452685;
	bh=d+UEPhu+QQ7E/EaS7uj5jumzZxVVWG90AQVfZmLEoTs=;
	h=Date:From:To:Cc:Subject:From;
	b=jEgHqZF0GQid4K5ypRLPhOxd5SK5nAjIV6JWUSGuOD6T7mYOEK91kdvNBIuhrl64/
	 T183S6WzZg25HwOzFh1vhdgLBxuAE5GxDW4Xm19gJjG3OAM1SWuC0DgZXK99vd1nJ5
	 YvjjKMt2LYKT1zE3w1ZbLmlIl6JKNdNBU/VUWjH0jX3v8yev9cNafjmk9JHcOhiI3Z
	 zQfsk5G4gqmoPKUxr6doQYWPbGeLiuTWrX+bhHOCLI2r9dC7hmB2hyVKydbrq0xc00
	 u86C4RbJoj9+FhbJu2E95jQSH7jCERL0p4wJJcUM/0GCnWTkCtZH6tTTdL/Uzt71DB
	 gun/7/LrI+ywg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 694D0249A;
	Tue, 20 Feb 2024 19:11:25 +0100 (CET)
Date: Tue, 20 Feb 2024 19:11:25 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] vsock.7: ffix
Message-ID: <m4ycah66kndxoyd6yajhpe6xogiyg3p6pghwoquhegaqewcjuu@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ardebsr5dnfu2t33"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--ardebsr5dnfu2t33
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/vsock.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/vsock.7 b/man7/vsock.7
index 0add12a..fb30781 100644
--- a/man7/vsock.7
+++ b/man7/vsock.7
@@ -156,7 +156,7 @@ .SS Local communication
 The local CID obtained with
 .B IOCTL_VM_SOCKETS_GET_LOCAL_CID
 can be used for the same purpose, but it is preferable to use
-.B VMADDR_CID_LOCAL .
+.BR VMADDR_CID_LOCAL .
 .SH ERRORS
 .TP
 .B EACCES
--=20
2.39.2

--ardebsr5dnfu2t33
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXU60wACgkQvP0LAY0m
WPGVfQ//Y07A/fRBKjhi13RihIUm7HyShGIAsdkQRtRj8ne49lKXYJ2I5V9yytqr
0r8+DYhI31Ha7b0XuQnsHvA7sRcd16UryaBLYjjfbJI8caMh14ta+AgFJ3fZ0y7O
VEQQ53GRSCyNQ+ep4AIIHWQhmpM100dD26uz9nZTRDHI6b8BAgPa1H5Y1H3Ojku+
xtNu7xx/8CS7URkHaN9+4B9x1m3Nx9aSStpfUgLb3y89kzrwdQbYqToO0Zm1WBDv
Bxt4lFR+Ex2TN8gXCnNbChdDJHo+rMWVzlSpsYopN2qfqObbXUQEUU9BYca6eiDO
FG0vp9FR2+o0I/7svTP9yLz76h+ooxN987tI923ntd7oh/sheZtoxyz06N2noPHK
aT9GmDm37IuaJKNjEvR9gTT080CJjKIfeSNTxrund7bOsMwo/VQ9p3I7gwByV6gR
dopX7qDZF9dw8hRyI520J3Ctvrz1LZDSjplkaf5BYrl+bbQsnO0Io7C33+WL+ea0
W4358Z30S1oeeD/lsncnbP1bKsm0RLnsc5wfAFU4lyibFJfMLXeHLB5huTjrIE3a
5uhI+amJSI7KI+Wbml+VS2+YSPyA+fa8ID0tFyhTA7RKVtCDvSpf7y2lO4J+1enn
xnhfMFBNq8aOXFSdY8h6WntBYhUJK9IJGS8olsUfHmHPgqDNqVQ=
=Pbm9
-----END PGP SIGNATURE-----

--ardebsr5dnfu2t33--

