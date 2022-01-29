Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1F024A3274
	for <lists+linux-man@lfdr.de>; Sat, 29 Jan 2022 23:59:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346424AbiA2W7u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jan 2022 17:59:50 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:54276 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1347650AbiA2W7t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jan 2022 17:59:49 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 7C5743926;
        Sat, 29 Jan 2022 23:59:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1643497188;
        bh=Sba0n6ei8cx/gWd0wKqVnsphMTTT4zHJ5ji5BjGZhZE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=F0EsMT5GbRIHNFu21wf+rPnkLsv1kBEOYRNHRgejR+waFPlcT+7CQY2KoilyuCv07
         peJARvPzkB+4g9o8u88Igql0jNetEVl6GUETfUXs/mDnLIrKotkMXwUclxm+tINByv
         7mIXBgwCYUEeteBKEsGtCG5tIrJG9SrMvCJYV3kmY/L/6rO0SdQwWSEN41Znf6f0nT
         8Tk6PBm1/vmBzHsT9XA3mTC/4dgV/GqP6cbpaDfbe4zGENcQDOzep3WcdmX+Ycs2eR
         J4pMNLUbCs6XccsqCT9T9vphbFLdDsA3XSTDdxOacXmTwtzx381ItzuQ++nKbXQ3ir
         tqasmaDno6STQ==
Date:   Sat, 29 Jan 2022 23:59:47 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] time.7: tfix
Message-ID: <6fbf3b2dd0fa621634b999e663292c606d30ae78.1643496350.git.nabijaczleweli@nabijaczleweli.xyz>
References: <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nmnj2fagz6w7wwg4"
Content-Disposition: inline
In-Reply-To: <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nmnj2fagz6w7wwg4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/time.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/time.7 b/man7/time.7
index 69d72af04..713b8959c 100644
--- a/man7/time.7
+++ b/man7/time.7
@@ -132,7 +132,7 @@ or looking at the "resolution" entries in
 .IR /proc/timer_list .
 .PP
 HRTs are not supported on all hardware architectures.
-(Support is provided on x86, arm, and powerpc, among others.)
+(Support is provided on x86, ARM, and PowerPC, among others.)
 .SS The Epoch
 UNIX systems represent time in seconds since the
 .IR Epoch ,
--=20
2.30.2

--nmnj2fagz6w7wwg4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmH1xuMACgkQvP0LAY0m
WPGsUBAAlmnUHMg04ebXqAzRsNrY2Y4NgAsRFBlyP0Kjxs+VyvnrHHU/ikqh80Yy
dYiiOjh3/r+G8UQArd4htCGnJVwxlQMDkhABqXiUnih/BKJwI6wCZVisxZmU0a8l
ZHCZFumSyJa1y0xK8aaBopF2AgtLQaREv3eoqWx4t+SAwwZHZO5GwxcLzhL+F0JZ
+nKwNMMA3edPWDYsuo1ubgkh6Y4wmSkDBUDibuuBa6j6XFGgBMzepjgiZRFSI9hd
HwmH9tZY+e90FFLq32JNKdZS/sMeBcvtbIP/BrLR5juH4t097yBKWDO5MEx5PRjx
rNLQ2BpnHXV0FNnN8uNTnrivM2gIx41jbyRjX0y6ecmxPbkX98Y8z7+SuV8yHFEw
fsfUKplwQZCSYlPcNxEam9/VGDmoFSWmaNbJGmpjfwnFBgvFBpHxnF2b9HKkwPjY
rOgPWQEJd5IpPpYbSDE2Cvn/rKa0+LlXstWM9wkwB+5hB6TDPBt24z7xomFCOfi2
E92DlV7Fmi9UZUO0MMp8gokIJmh5D9OMqqcEwdpXYXtnkykQSD9gpNX5CEFO9ohn
ZMriTSFimeWutXSHKJTzeucNmBrlZqj4DGIzkmbj10I1S5dzeRjlDPteJ5/2BOCc
w9lheYupOUd75vWXdBE29FL1aRXbB5SQWmDjPkhHu4UBXN8ExlE=
=mlhJ
-----END PGP SIGNATURE-----

--nmnj2fagz6w7wwg4--
