Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8196550CD5
	for <lists+linux-man@lfdr.de>; Sun, 19 Jun 2022 21:57:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234362AbiFST5a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Jun 2022 15:57:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbiFST5a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Jun 2022 15:57:30 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E15EC9FC4
        for <linux-man@vger.kernel.org>; Sun, 19 Jun 2022 12:57:25 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 141732F1C;
        Sun, 19 Jun 2022 21:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655668642;
        bh=dspQMrC361eWlofXVzdLOGfaqRLXR++bu3yfmjBDJ1M=;
        h=Date:From:To:Cc:Subject:From;
        b=jo6XjlLZ/UzCN7QVumNuPpJYJNSF8LcZl0hlbxGhQtEb1L94YdeS7iD3OeQw+q25w
         CXs0uv8UrCl6YPhYjcxr4O09picXd5EOLcMBh2VgK5oDVWNVV5xnQvA7kDSzXR5r5t
         oEngx/QH1iMgtjcAX3UYuYFzq0urp0frhf35QX2pd/5McovqdzZ6SQ2yo2OzULa5tI
         MZ7t3tk9X3NUqELqKYYKJOsFYBNP6pso1+Cdlvjom9fFAj/6V1+iSXfjrSPrX11Kzj
         1UPoloRtCzmhLBxbg/5hwZ+rFSIg7TdrobSKbr7Nv+PwLwKvC26nEbo0Nd6uPG7pzz
         PfeMhuds1IIXH9yLCD6TdYiDhD21p8pfOZTuQxWx5qCW4w3mIpaVY4/LRVnosmptI9
         bUCGLdeDinknuHnPKm9GjGBu47zqLubTPCppIp4a9oLvuMofVQ/P9aGSZn0mhu1JHG
         IKTTCXZmIvpT+sUWnFZRwVr2AZ4g9sKPqqW6WzXmztzOQLZwqZ5hHbz14tLYNwAo63
         M1B2wrfvrWxIESveTkpWM8+wpkP8e79+KqUumvTaR8+zDqrbKiwOx+jL2GfFan5EGR
         ynFJm44G/r2PmcJJSvU7I5U4JoLidclXF2dTFUkFWDHvfNfrTteUWhD9FSc5Xeg5Zu
         u89qDArqVa2zNoBJfCcgEzyE=
Date:   Sun, 19 Jun 2022 21:57:20 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] environ.7: align PWD with the standard
Message-ID: <20220619195720.uxmfo5c4uvfohhij@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ddszinf4htdexbgk"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ddszinf4htdexbgk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Issue 7, 8.3:
    PWD
    This variable shall represent an absolute pathname of the current
	working directory. It shall not contain any components that are dot
	or dot-dot. The value is set by the cd utility, and by the sh
	utility during initialization.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
There's likely a lot more in this page that is either a straight-up lie
or an unfortunate omission

 man7/environ.7 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man7/environ.7 b/man7/environ.7
index 019c5a25a..65f1d8da8 100644
--- a/man7/environ.7
+++ b/man7/environ.7
@@ -158,8 +158,12 @@ used by
 to find manual pages, and so on.
 .TP
 .B PWD
-The current working directory.
-Set by some shells.
+Absolute path to the current working directory.
+Partially canonical (no
+.I .
+or
+.I ..
+components).
 .TP
 .B SHELL
 The absolute pathname of the user's login shell.
--=20
2.30.2

--ddszinf4htdexbgk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKvf6AACgkQvP0LAY0m
WPG5BA//dir2b3Uobva176M/pbC8WWOvvqK3kQf1GNXkPtgzUIbe0VUbV5BeYuWq
3KQScn1x29RlKs5SZm0074rkIzbiWv2KpbsIOcnHmGVFIv6QyomKZqeTqItK6hds
jtOrRadIseUp1pjQNwPe1/+nZHFcCKa4ZfNlsGPqaemGrVI/lZ2dbdYZLKdbxjLs
yg3UuyS0j4s5T+gpGjqXdUglFM55CdGkH3TYsd6w/P0EwQvCK+0GstIzz+UpXxWa
MEL87V/4LZf/dVpchMmH5HTEMT31L60yYBrPnfubSAYwXQULE0Dk8cIStavRSkR2
MnwzUor19xAk1s657vIChMKQSDYWCqtMsW4npkeI8BVQWBmBaIffS2NAUWAaVDOf
+PUiqn11GRZrliCF7JAlsdbDIpsa9vgb6jhb+AvZbJOSQHCaR1SEXky2Y5+zViJv
rqykn2Whx55CdXsbQlpG05hBGhEIT/Gs9LeYSCMgxXqIWp1wNPScZv4ZwF2o+3kk
uPJ7+gkHCOQOp4YhtUa/abo9v1YywL7TapLu3VFFQtzhNc9VmMp3PY9KBQyMoG/e
T16FdgC1c311kAwFlEBYnEaNielW6d/RXFzibxniiaSxkUcCXWN0rRYiFGPczwzF
zemDulc5gGKxxjJdj6i1wzTokfQ4AriuMPOASJhRyAZS/pmRh7M=
=CJQr
-----END PGP SIGNATURE-----

--ddszinf4htdexbgk--
