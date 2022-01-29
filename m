Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E98184A3273
	for <lists+linux-man@lfdr.de>; Sat, 29 Jan 2022 23:59:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243810AbiA2W7h (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jan 2022 17:59:37 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:54268 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1346424AbiA2W7g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jan 2022 17:59:36 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D9D343924;
        Sat, 29 Jan 2022 23:59:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1643497170;
        bh=y+33dpB68aPneZT1dHqCBgNqQomIckd165ItCcFMSkE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XVhkRAzy3XFN7AHIvQYlfS/hPbI4u2ktnYeFaxImyDNNYhBXASnuNCGEBYyuisk/Q
         UuzkhWNVh1WizXnm8t6alI6ZMQ0N53gEA3ZPdWojNJr+9pJdF0cA9piAzMCcJJE3FN
         LeOQqJQFRzjQ9lHwbEypGQwjbfdJIdmvjJTeXMnpUOC3HZoqnGBGZtw8HZ9NSvdy7F
         FRDTCiy5HiJEVdoq+Ra9F4fIOkF/7EIirv855wcZ+6G1Ix/ohRUfau7QZL5Lkn+MCA
         vM9LcTXO57MgFJNfQQI2jUr9Ov+uL9yMuuV26hC1gN+4e7P3ILh1NTPVZMAsTrc05a
         rS5Fz8oQeV/4w==
Date:   Sat, 29 Jan 2022 23:59:29 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] time.7: tfix
Message-ID: <0a60b9e43ced4b05e740f1382d497258212d4be8.1643496350.git.nabijaczleweli@nabijaczleweli.xyz>
References: <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="grffzwfwkurazdt4"
Content-Disposition: inline
In-Reply-To: <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--grffzwfwkurazdt4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"HZ" is the constant, and has nothing to do with the
50 Hz PAL/60 Hz NTSC mains frequencies

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Without doubt the frenchest thing I've read this year, and, IMO,
a really untoward moral high horse from a document that double-spaces
compound punctuation and calls the English Index "Index English";

(Also, hilariously, Annexe 2. R=C3=A9alisation pratique des d=C3=A9finition=
s des
 principales unit=C3=A9s est publi=C3=A9e uniquement sous forme =C3=A9lectr=
onique sur
 le site Web du BIPM, but it's 404ing just 16 short years after
 publication, which is very cool considering it's an /internal link/.)

Nevertheless, I find it difficult to disagree in this case,
spaces before the Hz do work better in this parenthetical
(but I want to note that this is becasuse you pointed it out,
 not because the French talked sense into me).

 man7/time.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/time.7 b/man7/time.7
index 830da7ea8..69d72af04 100644
--- a/man7/time.7
+++ b/man7/time.7
@@ -92,7 +92,7 @@ configuration parameter and can be 100, 250 (the default)=
 or 1000,
 yielding a jiffies value of, respectively, 0.01, 0.004, or 0.001 seconds.
 Since kernel 2.6.20, a further frequency is available:
 300, a number that divides evenly for the common video
-frame rates (PAL, 25 HZ; NTSC, 30 HZ).
+frame rates (PAL, 25 Hz; NTSC, 30 Hz).
 .PP
 The
 .BR times (2)
--=20
2.30.2


--grffzwfwkurazdt4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmH1xswACgkQvP0LAY0m
WPGY1A//X54ENOD6pDhDg4iLskwlVsN0p6vGWUNHmTquGesFVBKQzc87dQS3flCJ
EoakzrqSplPXMVyHHNigEB6rOPgP8aanm2dJgQuv5bWclc/1eEXkk0iVwodbaxFD
oXyF04c0uwOhxG0sf0iQ2+euDcyOtRpyepgH1AL+kv0nRO3ax1xKCGgsxLL7chpi
Axrr4Edw18+xG6KZUbUF+V22STQiF31BF7xcttnmg74U9vn1cGqP3p1zORdDfaaf
t/yzADNe6lPChCpv/HgQCfH3XdeUgxkTU2sQZCTj9vG/IeYAHc+KmkKNLg/n4jIZ
x4FpftiaGnijtZB6hzSJjbZFdd76kVyxDtKfhxZDFx3EV5p2y8QU5YxD5hDnnyN1
+q3I/bB6zceh3Ve/B7CaECge5Im6rj1YIuTNtXCgaS5kRSslRLNYAnHWxKKbOYlF
DnL8mprEl0+7jNCY9+Vz3ZW4S87wvm3t69OXUGiVzb/CKUtepKdVbrDHaPyKTpWl
uHUx0AIqLJodq9WWIPzKTJemNGbJNZkmY+NsVDSN6Ghx0Yl1jYLFztA2Aw/p5hm9
of3YvEtVTtC7Ht6Iudcvyxu6hZhI+jXcWEYvHdXAmNMSHB1RGHiHPpgxTYCLF/1X
6jsTeyZRtOzGXkWZjF9OtDUKuVHpsu4h6d1lcXeQTkDXf3emOYY=
=s6ye
-----END PGP SIGNATURE-----

--grffzwfwkurazdt4--
