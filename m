Return-Path: <linux-man+bounces-298-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 823E181E811
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 16:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B41571C20A8C
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 15:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E654EB5E;
	Tue, 26 Dec 2023 15:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="VHTt/9t+"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1804F5E1
	for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 15:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1703604713;
	bh=bjg1CSbk0urA1+Xz8FcOIvKt7nCK1/2/yc6gXkFvRa0=;
	h=Date:From:To:Cc:Subject:From;
	b=VHTt/9t+7D2FBQ+Y+6D9BetI6X+nFOow0yhxGtgj3IDwLkLhKdkWNuJgt9HevKCbX
	 QEX7hEIEh2o1vtfs5YfquKukGxGSlNJpNHCgvAfXSKMqyILg8iJEvXGXpF4sM4z5Jn
	 sNeM/EAb6HX9hMRUK3eVscv/dSDIdo7HC7IlCBdO8qOWXmkjKIW4g03qHCggGMFFp5
	 u05vNmd6qLqjQF3SwbKWstmOw5/E1kjQrthm53FYIo6Z2R20g8yCLeT3y4VScwKmTM
	 AEbiBnKsqmrd497nTSXp9/muX9TtnefQUGSyyoAa753v+u/ZuRlxQqWeSyNrd1a8dL
	 2CC6G4qd49aUg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E6F8414792;
	Tue, 26 Dec 2023 16:31:53 +0100 (CET)
Date: Tue, 26 Dec 2023 16:31:53 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] stdio.3: note down fmemopen(3) and fopencookie(3)
Message-ID: <pwyv65idwrl2lbir2g7k3x3iqrpfew2np666zxiqspwr7oikcj@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="by7nesmxthhahk6l"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--by7nesmxthhahk6l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I was looking for fmemopen and it was much more difficult than it
ought to've been.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/stdio.3 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man3/stdio.3 b/man3/stdio.3
index 833230402..d340d3334 100644
--- a/man3/stdio.3
+++ b/man3/stdio.3
@@ -192,9 +192,15 @@ .SS List of functions
 \fBfileno\fP(3)	T{
 return the integer descriptor of the argument stream
 T}
+\fBfmemopen\fP(3)	T{
+open memory as stream
+T}
 \fBfopen\fP(3)	T{
 stream open functions
 T}
+\fBfopencookie\fP(3)	T{
+opening a custom stream
+T}
 \fBfprintf\fP(3)	T{
 formatted output conversion
 T}
--=20
2.39.2

--by7nesmxthhahk6l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmWK8ekACgkQvP0LAY0m
WPFwYBAAtp51czoZIm354t7y9A4lps01W0h5WFeRuB9PigmAIkKbMDMnXQyRpp+Q
tL6rLtb4JlbZa1L4hsJavJFrjCkVcjt137hFpEp0qYOOkw3DAoqr6C0X/GR+GLmI
vUdMrxTd1S7kKAXnpMml1gvKxVAnIP4Hz2IQjd27FOLNIiyhbszDbY3vKC18hjGr
qCquRd182gV/qIuIxP53aQh8BJu4tAW3QEsj3RCIkLfqvja+iTLEGq8DytvuyTI7
xDjIQjpf9+wDaYwWbfkjztys8AYCUdmuAtgQeXSrvYbKUELA+zM81tD+LmkaTJS8
1ENgbBQeaqoQUusY0lLkU4MVbsixiG/v92029QQGwWXUyQ6DErtHRSERB5ALLGQ/
k+YKAwXTXHQ1L1gdBqhQCWp0AaXqUzBz7t/0TOWYAoT8oYdkjXorBi8KRFC4JPV7
1deB+pjfgBnc153O1PnOjhP4g70wSuoNEqifSasM7hH28NfbkVVYrbkRsJ9Ajfx6
cwAYco6aujhJZzlLojHbZOBj3ccZJAm6rYn43hOWolRhrpHmre0fRF2ExU2ix+Et
Ncrb/bbWEGdzRT8ODyhgqFvGpLvw3DRUlTcW1qOkANzSpqC6DER4SvrtTgynPwhu
Z3GYYOOwGMCof1OCoIJM/NJIQHD9kcSZSNNNAuupYnTEuvqqaKY=
=42lt
-----END PGP SIGNATURE-----

--by7nesmxthhahk6l--

