Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04A37741894
	for <lists+linux-man@lfdr.de>; Wed, 28 Jun 2023 21:05:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjF1TEW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jun 2023 15:04:22 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:34886 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S231927AbjF1TDs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jun 2023 15:03:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687979026;
        bh=IINw9p56qixBtb98kfLrgxsNrVpvhFTk0DMwTiobfvs=;
        h=Date:From:To:Cc:Subject:From;
        b=mtEDisdk1uAnI5yWuYRO/zkXd+H52lFRZPRlxaHKOkayWJJiIoGcDQxOdjAbE7M2n
         85B/rN6TvilduGEElVa5pXrjKcO/PJMZvW592yn/s/q1VPJkalKAXCEGblMKHOSdFu
         gm+VlHt8rPRFnZnX1Oiv03MGehhevGF/HVrm6CDVuHBrx/zgrVHryvs9EmjC8vmsJ4
         0ai5yd1GgUAbjTj1MFvdWMEDuFoQJmxUH/79YWGZBOcTWCCQDNGjqnjwIEpyMirX+G
         FZlJYiys5rPaBOp22fEraQBApBKriDtnXwVqpcX2OVIPDipsoyE09js6sRBMpX81SE
         qSTAOOMxc3z+Q==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id DA54A19C4;
        Wed, 28 Jun 2023 21:03:46 +0200 (CEST)
Date:   Wed, 28 Jun 2023 21:03:45 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] epoll_event.3type: epoll_ctl is (2)
Message-ID: <s2rztkgabrb5ljvukad42liu7fsaomsh5rafnsvtj6xux6uv37@niw3jfqv5dqd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2kcvoqsq5zcmln76"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2kcvoqsq5zcmln76
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3type/epoll_event.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3type/epoll_event.3type b/man3type/epoll_event.3type
index efb229fd3..0d335c5b0 100644
--- a/man3type/epoll_event.3type
+++ b/man3type/epoll_event.3type
@@ -52,4 +52,4 @@ .SH STANDARDS
 Linux.
 .SH SEE ALSO
 .BR epoll_wait (2),
-.BR epoll_ctl (7)
+.BR epoll_ctl (2)
--=20
2.39.2

--2kcvoqsq5zcmln76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSchBEACgkQvP0LAY0m
WPEmHQ/+Oaa84rVnwx4EilfEpBk8W80gnNCHq95AN0aTtCXPNefuEMymMZn2S1Tv
BchwkXpr5dm688ymtfv7GLCS3Edk7O25H/hjR/tj8+2qQMzkIQrcO9pCpjQ3fk1s
lbM6e4hbbsSbLA0iP8rg1dwC0CBdeKyx+ldGE/y3zm+W55Y04PyvzH66EO+jI4Kc
I0rxWTFT9mpSDMLtWFjpKUrm2p0FNLFVno3QyD4LmcrnIlx0dCWi/YLQ6yDKhJZU
tFHn+2w+ByG8ndOGE4YXbhXu0vxNj51v2U8zFlRysceZo+iiONkMXy+gNgg1Xsyn
93EXSCqcCa1CNZJx/X1bIZjohYysg4aWwkHuER3fOGB8uT051FtmJ3Xpl/4/fi+6
09S+zH3b8hB8e4j57CtWrr+3DCwJxKyOk7RaVHJGQsXhshxozvFq4Sm1Wgv8Ipa/
e/in9yZOmmnBCL4jBfNmgoJ5j7g+cGEtCwkxiBNreOwZOVw+lncSZVBhDE5AmqZ0
XZYI5ORo25kowchX11XMLH2oigr6xVnEv7Twao1VLmDhoRsmhAODpFnQgSPCrRfv
0sWjJM7cURDu92Tl57nQ/m95akrtWqnnAwxpYO4ZMqmYGInYtXKm2A8quLmuTEAR
OyLXr8Rw7p4lHMWoBEwCloKgFOfjftIwvY2aVVXlWozPj9CFyLk=
=Ztba
-----END PGP SIGNATURE-----

--2kcvoqsq5zcmln76--
