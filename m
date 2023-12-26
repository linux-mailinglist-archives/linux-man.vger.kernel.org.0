Return-Path: <linux-man+bounces-301-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCC081E848
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 17:04:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FA4B1F23A9A
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 16:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9FE4F5E4;
	Tue, 26 Dec 2023 16:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="O7PG3fiZ"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750644F5E3
	for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 16:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1703606655;
	bh=38C47C4h7pgScqBlI4d5h0ksmyL7+kLroPcSa+zI5bE=;
	h=Date:From:To:Cc:Subject:From;
	b=O7PG3fiZQxVexb++3VibneEDf8OCFg8Ur2AEzTce7iO89Dci6cEdlU80NxJUgP6Q7
	 ejKJgJxwQXtxOd0vvLrceyXCPgZ0pKTIL7pziXb1uaJ+49LmUuqrKoZLWOOhKvcF5e
	 QJBWM6TdJwiNkQ2T1BuazVSB63g/fyO1oSglM6ITOD8UAy2VOhAEQek9bSdzwKpbb9
	 3mzHjq0UdOm+AkzsTkkUg1qSHVbLrNPTqXWu5ShTSGGYkesOI1gZD68YCjsbxeVTcI
	 ZOOyqOsKR11g/VDZ1bpKf+hmkaUt7TFDfbav18ZPH9VHCieBHmIx0F7jhjSw5eKSMk
	 cFDRGx7zMbOhA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 14E7713BFA;
	Tue, 26 Dec 2023 17:04:15 +0100 (CET)
Date: Tue, 26 Dec 2023 17:04:14 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] open_memstream.3: ffix
Message-ID: <ge2wv33km2k5xaigbfprs7ndq45fpymqiqr6it5kyq3zmy3bak@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4qexvkolksnrrrsy"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--4qexvkolksnrrrsy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/open_memstream.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/open_memstream.3 b/man3/open_memstream.3
index 2f657e0a8..63a1ea9be 100644
--- a/man3/open_memstream.3
+++ b/man3/open_memstream.3
@@ -7,7 +7,7 @@
 .\"
 .TH open_memstream 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-open_memstream, open_wmemstream \-  open a dynamic memory buffer stream
+open_memstream, open_wmemstream \- open a dynamic memory buffer stream
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
--=20
2.39.2

--4qexvkolksnrrrsy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmWK+X4ACgkQvP0LAY0m
WPGf6RAAjM5y7sF+C6ljs0kKhOSuJ13l2BcUVARjGGUPphVUhilSRKqZD7pdBgBJ
BsIe7fwKxxGzw0bQC/FkZcz8hlmvukDoWDmrhPOmzfgP3MYbzxsiIqbDIQb/Jpjq
ZFigIr7w8I2k6Zgc3ctNhYmlDorUvDiUODBT0qV4Sv3Q0/nfK+gAixGLzaieL3aM
vkFeXElTEOLFWmv++shhpcWvEvLNd9jk7JoRH51J/XgKzl85bv1itp2kIggBJaGo
qneqH3Uv14rdjEw+MZ/JH39gyYQEeDKFA18P0uJ8TEcIzd2QQD/2gq7jViZL8LfW
oI1Em4A3ay5bj80xslJrV61FOnVZAeg6t2ye6N9GWL7wOwJSvRKx6BdozBG8TY7B
w4z7F9Op486HAJp/MdPOftOKsnfaoZd3202RXLw6E22YDq/G50BHIPzd9dgLturX
2ZRjqX3C27pTxGtOCJYiHpYaip4pj9d+vdxRXi15W3Q7Abxx11JQDR2/wfoacrcC
VxN1VXBsYdHTphn9KU6PUKSStEU5NdMtDXQ8VYXouGtTzkjs5f6LHLTKu3eIvZ9U
tRbAm3Ck02OzTpdUU1xL+PmIOCQnVbGIDpjWys5wVUgoY2iTn+KoxFIgHpqeQ0eK
M5agS9af7OGG3V4KXCDJGFtSrVBVXc1WM801zJc6wjKyBJtjWPU=
=ATGg
-----END PGP SIGNATURE-----

--4qexvkolksnrrrsy--

