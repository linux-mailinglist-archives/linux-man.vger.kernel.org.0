Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED3A745EDA
	for <lists+linux-man@lfdr.de>; Mon,  3 Jul 2023 16:43:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbjGCOny (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jul 2023 10:43:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbjGCOnx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jul 2023 10:43:53 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8BA8AE6A
        for <linux-man@vger.kernel.org>; Mon,  3 Jul 2023 07:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1688395400;
        bh=3fg8vhYPES9qLU6FoZdkFT5zMFsQkRWEb5lhFIbGmN0=;
        h=Date:From:To:Cc:Subject:From;
        b=do0l9gd9Xye72tuKiQl/h24VKjojfriYync245DoGeF+uYr77KxLg2EDjnaQo04i1
         OqY0tWXV7XYI74yU8VjmyDgmv0kNtPtdfOhClqzGmUgdS2xGgErABppLO1QjUqzIVR
         YlIFUwsq4Ncxh4hq2gD4J+m5v6SnOeNxOxT/3VAJW5UOUmVPjGusrqVYEUaSr8elfF
         MBxNqPX8adsd4Okmq/X9WHa8P9hrJOZ5/ulVnHjcNakqqvAnZ4UdeoNYjA41TH+ITI
         amZkq5sqIIOAJ65u4wjhkqiSrDNirS1aMhunLMGsRW9Cjix+lUgGlNZojkKXJnbbIT
         ttdUjiHjIDYAA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 099BE1B6E;
        Mon,  3 Jul 2023 16:43:20 +0200 (CEST)
Date:   Mon, 3 Jul 2023 16:43:18 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] fanotify_init.2: remove empty pre-header line
Message-ID: <egwuot7zgfcelb6632w4rkneeccrqug45aumfntkzhevrxcbcp@hdcujacv2gyt>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="drqfz5hhyfavkamj"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--drqfz5hhyfavkamj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Which yields an empty line in the formatted output.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/fanotify_init.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 65d73565f..3f4359e83 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -1,4 +1,4 @@
-\" Copyright (C) 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
+.\" Copyright (C) 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .TH fanotify_init 2 (date) "Linux man-pages (unreleased)"
--=20
2.39.2

--drqfz5hhyfavkamj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSi3oYACgkQvP0LAY0m
WPGKxw//eh7suWKuxGkKG9AP5SiOUj9jH6b1ksm//Kvlh69C+g/g/VNRJunohhiY
dx45Qx31Zs8qTAmWOhHepKpp+gWA+v+t7qezFUb1RDLNPx+Ctk3F2AV5CIbtVwFO
LUbeE/uWV9kQGyR6Vv9k5gkU9XL8yt5mV1S9I6wzLkNTH864+zWrfwVT1V2Y1juD
HfscT56HKCBm3SpDdmbNMRuivgsdl8ADlgDP2ybZ9EnjY9VVXJZCGhGJY6ip+ecJ
h8C8Pp37qkgYbDC8ig5LmodBgFU9R38arzVbfsO1IW/wNz0PsVMlZzCBxcc2ohBp
JVpcHNvCk2su8cOu5xxypmgAQr7u/Sgjqe/RbFE1Yjd1RkuSv/Mhs4fmD+FANJ/s
AQuyJbMMu6/fTb4lNF00io/K8tLRwt3UYs+4VdE2fZ5G7HuU/5FrgnppMCwecBEx
xmw6JWqwdTBBba8+vxfFjPEVnRabDl6TTckmOPtuiOeAUA/6OL0HZh/53Duej21Q
aZMwHf4KEITq1Vk9NZ3TYoU76YTasMZi7iu3F03H0pdVEvO2QrLph8VprodtYrB4
T6oWIbyYjSgmHCuTXsb0C6aBT4FH+eCuJzaAZxQUvKUiR0O2qgK08KoeFq0PZF73
LSqmrXQsWi7r4vosAOr/ZgnN+AnLasIzFb672phqcmPRSte834Y=
=J8gD
-----END PGP SIGNATURE-----

--drqfz5hhyfavkamj--
