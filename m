Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C6E140AE04
	for <lists+linux-man@lfdr.de>; Tue, 14 Sep 2021 14:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232758AbhINMma (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Sep 2021 08:42:30 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:48860 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232524AbhINMm3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Sep 2021 08:42:29 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9F825360ECC;
        Tue, 14 Sep 2021 14:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1631623271;
        bh=uTAd1S5z6g7K8g/9SLF/A6EiSqkC4368M6U47x++3FU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ajLkbFvFzvE+sqo3TrorjSD9zltXB+Q0i3nEqBTxcJQQCxleQanrp6Ah5CP97JsZB
         GJ+e/QEB+rJiJ75tuCS3QnYioSn0sjtu4QTM8dd0XufaPp94Z3K2+VpD5OoW1u+EBa
         Kg2lSNL/EiOf5JzVmHMWGctePre3lcADwET9brz5moEz7PTQvXwxYg/DVQ0EY9ArDY
         Oe3qn3la9TYqU9O1FdUx5Az/iEEZ95EzD9Sr7HiaitbAqhikXCI/UNUMSCK76eg4WT
         P3dvInlzF4aS5fwS4FKIytn3SnQ6ShKnGS2C1TiggKDJ1iSvWo4NuZ0pGyDdkYHuHt
         EMs/btJaZVqcw==
Date:   Tue, 14 Sep 2021 14:41:10 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2 2/5] alloca.3: clarify origins in CONFORMING TO
Message-ID: <a14e365450f9a28840dc4f2ae93ddc1f135294b8.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kqdou7wq6n7sdfp5"
Content-Disposition: inline
In-Reply-To: <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kqdou7wq6n7sdfp5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

alloca() is supported by PWB/UNIX[1] (V6) and UNIX/32V[2] (V7),
for the PDP-11 and VAX, respectively; the former trickles into
UNIX System III[3], and the latter into 3BSD[4] and later[5]

1: https://ftp.okass.net/pub/mirror/minnie.tuhs.org/Distributions/USDL/spen=
cer_pwb.tar.gz
   sys/source/s4/util/alloca.s
2: https://ftp.okass.net/pub/mirror/minnie.tuhs.org/Distributions/USDL/32V/=
32v_usr.tar.gz
   usr/src/libc/sys/alloca.s
3: https://vetusware.com/download/UNIX%20System%20III%20Source%20Code%20SYS=
III/?id=3D11576
4: https://ftp.okass.net/pub/mirror/minnie.tuhs.org/Distributions/UCB/
5: https://archive.org/details/The_CSRG_Archives_CD-ROM_3_August_1998_Marsh=
all_Kirk_McKusick

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/alloca.3 | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/man3/alloca.3 b/man3/alloca.3
index 5bceeabe1..71348e609 100644
--- a/man3/alloca.3
+++ b/man3/alloca.3
@@ -84,11 +84,8 @@ T}	Thread safety	MT-Safe
 .SH CONFORMING TO
 This function is not in POSIX.1.
 .PP
-There is evidence that the
 .BR alloca ()
-function appeared in 32V, PWB, PWB.2, 3BSD, and 4BSD.
-There is a man page for it in 4.3BSD.
-Linux uses the GNU version.
+originates from PWB and 32V, and appears in all their derivatives.
 .SH NOTES
 The
 .BR alloca ()
--=20
2.20.1


--kqdou7wq6n7sdfp5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFAmGYACgkQvP0LAY0m
WPEk2hAAt5WITlVRcKsG/0CLZJRooZ4k39nEaoCyOJhm51lqXcQqimbFtxpjvld1
AbbeD/qhFx1rgNs/6sFeHgYBl9gog+yx/0sQy5L1dndllyb5ZlkuuQ4FriUgHR54
caI87Hdo+e9w9XaMo/bR2Py7NwjlBgFWtN0A4EwkMNStfzv4FwcOOEtDYE7kMeSe
xXRh3eTQJECoPXVlf25QRHzKRTD/4l44Wp2Tu0ZZVQ0jUo9n4X1HV1G3K6/kqf5e
gUr91GUoXBMvftxXVAakMfuJGMWHIeI3xSI7dqnB5B43hKokJaXsA+I69uiMqanO
+RcKhTuFCBXRJGaZY9AxONXvLw5yYoPfkrD1ko0Ooif/4AoVhFOUsvi19F970Yh9
5DBRKbvduJlzmTnezYoQuzu3ouW8I98tQri/alZk/t3vAqkIZ0r6/ZNfao9ywj1h
HjEfr4XE3974jnO9m5jyC62BvsFbrXQVnC5U1MBrWaH+DUyumjiuh6zACf2FBIDk
YmFR9Q8akAhYeOPJJX6kJDr4yZ/WlcLBCklZSyHJ4b48NUy5kVZBaNtn/QPHqwN8
dIO5b1MuglWEh8X8BaEOJfo9Zc7RUlwz03CJ0jWMFC05HlchX4B8QOnwiKS5ROZt
CWBaXiOrNXANgZr5DCqXMaUHCvj+x/R2gldv1QgYGIH1lvvUU9U=
=W0ON
-----END PGP SIGNATURE-----

--kqdou7wq6n7sdfp5--
