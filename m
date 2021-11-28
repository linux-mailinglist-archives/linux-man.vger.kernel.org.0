Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F7B74608F9
	for <lists+linux-man@lfdr.de>; Sun, 28 Nov 2021 19:28:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232102AbhK1Sbg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Nov 2021 13:31:36 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:45408 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S234986AbhK1S3f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Nov 2021 13:29:35 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 75EEC1236;
        Sun, 28 Nov 2021 19:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638123453;
        bh=JNIvUPKPIOdTAZFQsz3LYOOSeP7fhOmSVGwhuWQ9xIQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=apXBlvcg6oAXrk1HbPh0ffPyORWjm76F7JUeUcxtWlfNIWoCwlT5PN+USNsyEjhNe
         Q51UUdiKbSWKyfy0NWH6RNlAhWLFmdUlXtiF4X0sCRinbok0jeo9NjVoxgesJDXffp
         a721HCtR09X69w/QcnQLowhO/POUE+oGxzaYRDfX8nWX/97lcT/zXPm6+s6sY4hqxM
         bqQl3Cp/2axDUyOkGMt/krT6C5axKeIc+MMP0553P+bTe5kH/ft8kA4w8H0uzYeWVp
         PTcPMLqaZcsSsweAptHR0IMf1kIg+qL6QyskN7DlV5SOi7GMjLOToElSWe+BXBGRqC
         PGIyslnGF7uZw==
Date:   Sun, 28 Nov 2021 19:17:32 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/4] poll.2, sigwaitinfo.2: fix struct timespec::tv_sec to be
 time_t, not long
Message-ID: <4f82c9aeef69bc78d8c61a18aee3675f31e8a4a2.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="unyewt43vlumozvo"
Content-Disposition: inline
In-Reply-To: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--unyewt43vlumozvo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/poll.2        | 2 +-
 man2/sigwaitinfo.2 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/poll.2 b/man2/poll.2
index 620528ec7..a278efbcc 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -329,7 +329,7 @@ This argument is a pointer to a structure of the follow=
ing form:
 .in +4n
 .EX
 struct timespec {
-    long    tv_sec;         /* Seconds */
+    time_t  tv_sec;         /* Seconds */
     long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
 };
 .EE
diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
index 716661479..226625e4e 100644
--- a/man2/sigwaitinfo.2
+++ b/man2/sigwaitinfo.2
@@ -93,7 +93,7 @@ This argument is of the following type:
 .in +4n
 .EX
 struct timespec {
-    long    tv_sec;         /* Seconds */
+    time_t  tv_sec;         /* Seconds */
     long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
 }
 .EE
--=20
2.30.2


--unyewt43vlumozvo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGjx7wACgkQvP0LAY0m
WPEGRRAAgD9sFlZE61F6PovMLTvVf+4XCSM6fC5QAztqTnLQrN+2FLRXJRojKX4b
UBTwf3fMYRefYzv31onZP4watBW7Y78H9NmqYJcCNbLKUWpduw3d9v7/PvI1nJIl
HIJV3tClZwiwvefHEH0cf88KYm61CE4a8x6gQPwDz87FnqCZmNp5aBzVfsMTyC9I
Rs44OU9X1+o48yHsobi0bHx/uuAu4MFu3PQbD3zJUpx3rem0ZXfTH3lzc77ciUaR
/doe/LIWXYEap+jJIOZ95W+WzaprEaZjKVel954lzVcUrlpxQnzWniL/zsJoBlig
NMn/T5Dcu1n8npL18OH4CO4ievW1LlNVTHR5d4OnlXAY6xgcu1dOw0CUyCT68O3N
OXw/hD1lZjptIY3nvH/mhdsDzB0DCKakbICbk91+4dKbgSBFcFcBzXWrJIBkWYtB
AdaZAmsSMJWpLDQAFdAeZK7IGNO1p5nKNBmlrBeYRNw76atNkP79lJvNcUc49tLE
oH9cHQGdOco0d1L7wsQdw4Ja4nOt9S4E0ElRfArWtn6nMjaNPGOuJZSaXl0ycBSF
OLtolmGhvoypVAqd85hn0PPulu8cKVsZkYsX5YdRQgOql1NUV2NzcxPlG12IhD9m
bTBQfftUq/kmnGuQmmF2LDaVYVaopt4gADLRSQ7p7fkdjn0vrhg=
=HsMm
-----END PGP SIGNATURE-----

--unyewt43vlumozvo--
