Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AA056DCFA5
	for <lists+linux-man@lfdr.de>; Tue, 11 Apr 2023 04:21:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbjDKCVl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Apr 2023 22:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjDKCVl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Apr 2023 22:21:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C02D91738
        for <linux-man@vger.kernel.org>; Mon, 10 Apr 2023 19:21:36 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4B3675E00;
        Tue, 11 Apr 2023 04:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681179693;
        bh=rDBxTig8aX2YAj1Mb4sLYm6D2/oYcGFmdKG3EhwwRww=;
        h=Date:From:To:Cc:Subject:From;
        b=fg2hBYo+OSfu1xvwQ677kz8PbIgEt3LAxVHnft1N2oNtUTc1CspBtubfctxvG2I2c
         1NMXC2lSTnfmgyI/Sat4pl1Sn34b6ACOXSe2EpUoi+OorPoTszR5ZaQeTB8zwVHsoc
         etCoAwwnwaQWTCi+LTsEwXUpxrZoQfHkd9Crjm+KhcG/li4KkRlHe9wdc5ZKij07P1
         wzzeQ0K789CZU3KmqCMJU018Q/88NBPy1INCiTbDu6MOB9on2HaNLFIfLl4p7MEnAt
         ik1kq25476vo+VKFJIex0VU3AnNs2SF88XR92GSiX6asvTKoQueM/wn1dNZOYgScRc
         5xZrm8pi3yIew==
Date:   Tue, 11 Apr 2023 04:21:32 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] fts.3: note fts_open() behaviour with empty strings
Message-ID: <5pllbtzrjd5qpzjirtmritpk3it4whf43fnigbv3vqfkgwov2u@xk5dulph2uzk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="w2kzjjjbwketxmbp"
Content-Disposition: inline
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--w2kzjjjbwketxmbp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is undocumented in BSD, too, and present in the original SCCS
check-in (5.1 (Berkeley) 12/30/89).

This is very surprising, since in most other cases FTS is rather quite
sane about error reporting, but /any/ empty string in the input vector
blows out the creation entirely.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fts.3 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man3/fts.3 b/man3/fts.3
index 66b2fcab3..392f8acfe 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -722,6 +722,14 @@ for any of the errors specified for
 and
 .BR malloc (3).
 .PP
+It will also fail and set
+.I errno
+to
+.B ENOENT
+if any element of
+.I path_argv
+is an empty string.
+.PP
 The function
 .BR fts_close ()
 may fail and set
--=20
2.30.2

--w2kzjjjbwketxmbp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQ0xCsACgkQvP0LAY0m
WPFrGRAAiKM21ZWIEsWillBAaD7KOlN0SzPDSQLWifuy2TRsV855lpF8WdUbiot4
C3TTRVE7ePkFNjwwSfLtl6xtrq5Ab9PTvs4L7FOWg9GyCJzcE93T01srZNNNY43P
SphBrnFI7+vCgWqExc780PG9qdkvwES8h8kXmxY9igYXwLZJrve18cQsd59wjfCJ
xaI8bbX+twF9uBRoQQ2eaZVtilUMu/ogLQxbGlIM91c8MuFcaJhe+/6UEC9e9UDr
5KQdOkbx7yKAK/b43pdt/SaMIWP6zGRNTxtgC5z7WxgNFz4tE/YRRZbRUAspOShm
AaP3YREb9PG6eRsPnuuYXwXqsWZWzUTK/Inv4RyvoPFT2QQODj3Njl5Vz0692nWQ
XW0/J5lCBmkW6FJm8+BS9BOPsxPsCA80u/g4oDktl81ebk1Dp9JNsYVxurwg2bjJ
pCIVDmOOI4xk9+qclh+ivmDWbAz/P8rSZrCbuGRa3T63DnAJM7hn4mIfthNq2rRa
tBF2LYWWWt1xWqsKNoT/YSxJEYtUTksyIwyXHghM2//ymYFr7aJprIr/7WScE9ny
rwg5PhvyjXwj7S9L2DFRW/coe4w1jmX0yZsEcWqqWrjHFV3tZWBGG7VGtT3p3kMJ
oO0L+amdgv3iLq4IdzVEMxncnqIkVabSlYDTGdRjs/lSJK/y+wA=
=f451
-----END PGP SIGNATURE-----

--w2kzjjjbwketxmbp--
