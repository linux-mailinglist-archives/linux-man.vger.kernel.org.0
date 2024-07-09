Return-Path: <linux-man+bounces-1390-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0032A92B994
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 14:35:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF891283A57
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 12:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C21F4153512;
	Tue,  9 Jul 2024 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Z+Ol3Ox8"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5A4158DB5
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 12:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720528533; cv=none; b=c/rp2ceEDmWmKpYBsglDTP2I98WSGzBZXNLuoyKeU8Y4PA+fMVRxgKQu1em2R8CiD0v719m5RdSBfy37vxbBWSiQKBPs0iHHVPfs0A2QqaCRxNGVlN2g9Xkl9E869ewg94Vo1JDDJMHljE7n9mKQUXEqYXXsmH0ZfmqBi643Y4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720528533; c=relaxed/simple;
	bh=FJYoUIoJOwDakPsj8jUVb33oLU7CXJASEhigcVV7sAw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QJQbFvUpS4ThZyoOpAFOty+RJL5jU/Weo8wq83PIg345piuSQqCCOL9lu9M2OaBC3EAcxYrOca5mWHKkwgMJAy/3tQCS1GflZLszP8v9CI23LRFkGNnAqFjInyIThpCsEVmZiB+VgYgucNHExRuvw7jYEJKWrieUlK5l2wRTaes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Z+Ol3Ox8; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720528520;
	bh=FJYoUIoJOwDakPsj8jUVb33oLU7CXJASEhigcVV7sAw=;
	h=Date:From:To:Cc:Subject:From;
	b=Z+Ol3Ox8ZMP4EytpoKyDAQEAupmWk58MunOU+ub+T5jQqEKS9xLb/56iV7z423/d3
	 QidflOnl+VghnkOTvPGxoZwplh41c+8s+BA2fk3KHfjYt4AptYPDfUIp0kiG2YeXNl
	 J2es/tH+LJZvQ3oZ8p+ob+PTwfskyHuBzC2TtaithE5eNlF02WsEs/PtfMXg0bVuAz
	 9SGa4I5sk1FFUPLQETJaloUutYgQPegnD1UAVY72TrMTY/mCbkqq2ybkHuV7mzbfZq
	 fA3lGi5jLj4invEHs5N/7fd+MINyB0/VBgmIHUjw1jnZaCwDnvBT+B3z1Cj7qHnbRE
	 ybqhWWOf12c7g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 486078956;
	Tue,  9 Jul 2024 14:35:20 +0200 (CEST)
Date: Tue, 9 Jul 2024 14:35:19 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] printf.3: the overall syntax is "%argnum$...", not "%$..."
Message-ID: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fie2qgq2d5cvbzut"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--fie2qgq2d5cvbzut
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/printf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/printf.3 b/man/man3/printf.3
index 771e295..7b8594f 100644
--- a/man/man3/printf.3
+++ b/man/man3/printf.3
@@ -180,7 +180,7 @@ .SS Format of the format string
 .P
 .in +4n
 .nf
-%[$][flags][width][.precision][length modifier]conversion
+%[argument$][flags][width][.precision][length modifier]conversion
 .fi
 .in
 .P
--=20
2.39.2

--fie2qgq2d5cvbzut
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaNLocACgkQvP0LAY0m
WPHRVRAAre3zr0uiOdWqKPLvFyrSi8LJOhKHy9u9hYH0zIAheUUSy+R4T/WGSVso
m9VVEh1lT/4Z5FO47g9oEF2DUGtJwfF9ZFrtF/8dsaWPUqJuG3A3H0AoserVIDHz
kjBiSDG4GjuqVSSSDAxUOCaRhAPyu/EO1GA9BP9jZ05EhHLrSlDklGjB7oWyB2k/
6S+iFo8rKnG/BWaU1Scfdae+lQ4+ItEhk+3zoI3PShEYxyOcW+n/jewYB/27t/Ml
JYrSjzbX6jgKFbDIEBO2k4Ayb/4cEX7gCqcyzIXmf2+6zRFYCQmrLHJgW8Wb32SS
oiGjLgAMWwy/okGN/EVvBY7rvWrNMdQWuL2EkLezV0nLwym/OVJu9jZMw7gyYXq/
xpWNggOb8eCjU2w51H5VZlu99A7PRxKnfdMesp0jGv5pH4E/M+rt7Dnp8UMwYZ4h
rsgeAufY7/hBHKQcbGGl9iPiUBZ7yL1axjCyo1d/qRAkE/VAZAI/PXEWFJAS+CPi
O8IarozOZ57P+lJyWzM5t2AyBlz0kA6Qpd5NYouWnltv3x0FaWsuEhQ96HgYLY+0
uOxwo2ghYUJlOPhPvX3F6R9W47vTA8lbjeS49GHdo5WWCQR1ocqGMxDr+xiO9Dl/
WS2weyOxVV5BY31gPp7yfGWWJgysqFOEIdyzrO+A71XI2qyO9lw=
=yNhz
-----END PGP SIGNATURE-----

--fie2qgq2d5cvbzut--

