Return-Path: <linux-man+bounces-318-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E9C81FFB6
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 14:39:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BABF1F21A6F
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 13:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30B2211710;
	Fri, 29 Dec 2023 13:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="a1wG4pSe"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24F21170D
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 13:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1703857165;
	bh=63fQ3iBOCPWXA5pXVr9REBrS5ZlreQUnke2g+Jhd434=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a1wG4pSef83sFNCrlCAQ7l6TFbQxGHYNd55Cy559lSBX5mhrQyv8xNsaVPTvyoSaa
	 Qou7knxKV1Y8+omiNhLYElCk582ADPVy/SFW8yd0Z+bRwkcoFYQ+VAHfB2ikCcuKAg
	 g6yJbroSXaNzqa2IS4Hhdo2EmqR6KSnBflFzuqdVBxNF58dRKBG1aJJAqZIhL2FJPF
	 FzVRuCjoFFTN9r5xwpLXKFWvtLVpoTnrpuKePb4v3tn40WBN0YJLsZsEfXFZFHG66v
	 LQbhjJllfL/g1tRL+AnBdGBqqvPTeemQRFV3W+2euKUN3kUbsnpbQq6jU2uPYQqglz
	 GHBtAnkI/9i4w==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 991B914742;
	Fri, 29 Dec 2023 14:39:25 +0100 (CET)
Date: Fri, 29 Dec 2023 14:39:25 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] fopencookie.3, stdio.3: wfix
Message-ID: <4efefotydmj6plq2upgsepgm5nembotyf7hm7ruxcs3wd4qbwl@tarta.nabijaczleweli.xyz>
References: <ZY3WJ0UOM4nPEsQZ@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gcp7w6rqkoujtjxz"
Content-Disposition: inline
In-Reply-To: <ZY3WJ0UOM4nPEsQZ@debian>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--gcp7w6rqkoujtjxz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fopencookie.3 | 2 +-
 man3/stdio.3       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
index 93b4abf0c..d1821772c 100644
--- a/man3/fopencookie.3
+++ b/man3/fopencookie.3
@@ -6,7 +6,7 @@
 .\"
 .TH fopencookie 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-fopencookie \- opening a custom stream
+fopencookie \- open a custom stream
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
diff --git a/man3/stdio.3 b/man3/stdio.3
index 0809b4536..a76b77546 100644
--- a/man3/stdio.3
+++ b/man3/stdio.3
@@ -199,7 +199,7 @@ .SS List of functions
 stream open functions
 T}
 \fBfopencookie\fP(3)	T{
-opening a custom stream
+open a custom stream
 T}
 \fBfprintf\fP(3)	T{
 formatted output conversion
--=20
2.39.2

--gcp7w6rqkoujtjxz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmWOzA0ACgkQvP0LAY0m
WPEsMA/+LnzNmICmAZIXpN/7wxpQNn1fTYxeFCD+TKr3QX6Dt/pngwk3S0f85X1/
teVsu5Ver4icAYzvLrfjJ3oV/xibkecNlNchf+CTKDYC2Wqr+QJfn7RYxMxT8PvS
n/ixgsg+3NXOTOXDEhleqHfuMqX3499JvxctS/H3uBPweyklR8o+cZ1xIE5ir83i
KJck1tpJO+1uQoFDK9BbU4qNYusM5zsQ9xpFUMVPiP9fHIKCj9q9LUT0ZWnYlkP3
g/eznkrwSBf0mKDwxixhKuvDxiF9F2xY8SCbFWHbUIdkuFTsP/naDAJGIhR9S5X0
TLx7+CClTrZ9ROs1yy3KZYJRUtZ2Im/t4huBNidl0S0SEXoRX1X5sXHuO8PSwgOf
v5mU8oGPHliaXunrvUVg1XUdVDWt8G6L8+D/KgVbWVSy1uA92iMy4N70XPJpMKAr
Y28d1X8rugXpa0+U7yAthGFAMxnL6kIctCPMwGKRELwuRR5+/fBIaajv4ppNNS1w
F4dgz9DmPaTv6PU4psq7IbVLJyIG2p+boQvD8mYjgYU5IBmZxEu8GqsAX2uR97j+
/zSmMRSAFDUzbvixdVWuXSB5TzmbYm+kd7yX71M8fG5N6G+QoSVj37qTM2u7v5Rz
psDlvj8YjXDsxdq5GA/IhBNy83fnNXhU+9qtV2LaTFmlQNALPnw=
=fOrS
-----END PGP SIGNATURE-----

--gcp7w6rqkoujtjxz--

