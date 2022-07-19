Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C67057902B
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 03:56:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234527AbiGSB4U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jul 2022 21:56:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234779AbiGSB4U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jul 2022 21:56:20 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7825F26ADF
        for <linux-man@vger.kernel.org>; Mon, 18 Jul 2022 18:56:19 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B91BC3D4;
        Tue, 19 Jul 2022 03:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658195778;
        bh=qGwqoAteX1hqNCdPkKnrCQCNuR9KgGtZJ9mPW5dPGTI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mHhspTUNeTjl+B98dc1YfFbDr20ZtrViwvK6CxNKmsw2j8Uw41pVYhZrGXPYd2kKB
         TjHcwF73TijZtKDBh4FsgBfx93HfZT4lFudIpigY2XHizosG1Y+nFKhjgznoG4bOKu
         lQLeJIfBREseHUrZJtmki9O/iWAPNibq36NmGALWytFzU2aOPGAiT9u5Ns0ZQLcGKV
         5+36jEfg+vmAM6kTRSt70Tb5UBp2hv1ZuH/7HTrkBHGWUOo126vw1NoAPyyQQlF9L2
         PXFjj8d41B3w8EnK7aETHbziudK2NW+3SiEHRkZfX4CiESPeKESSXXL7aSGXKSTBHg
         JTcqd4QwvJl1YSdLBIPNDdNxPohzhxqmu253pW2ot8DAl+qXCfjHfriWYes72izWvE
         tKCZwOccjxn+VPDb0Z3q8UGZa/pV4UhgyTdDCWHXDwY4BUYQO/dsvUV5Z+8JPk9rba
         X+Aerc8v+UM4WmNs6AUePmUt8rDie6cORQgdo3FTQx38fqDljd/n/PKTQ4SR13a3sb
         WCsDbPSZ/0B1CxXAb295UQ03N0RIVVHwgacTeUVikkXwEewVXbbZ9Gy6779SdG+msM
         ojopEZB5ydXQaWAnyDrznwyA07DQcTizy/fsM/Wjx5Lmw27BtvHn3CNfodViv5UJsY
         QM88lhn4S0WPwNWtuOOockbE=
Date:   Tue, 19 Jul 2022 03:56:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/5] tm.3type: tm_year is year minus 1900, not since
Message-ID: <82226362f0439ac1b52be2b0266a4bb9b0a6221b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gyfazli4aqbtoynu"
Content-Disposition: inline
In-Reply-To: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=2.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gyfazli4aqbtoynu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Since only makes sense if the year represented is after 1900:
how many years have passed since 1900 in... 1410?

Also \fB the constant like elsewhere in the hunk

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/tm.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/tm.3type b/man3/tm.3type
index daf75e2c1..1931d890d 100644
--- a/man3/tm.3type
+++ b/man3/tm.3type
@@ -19,7 +19,7 @@ Standard C library
 .BR "    int  tm_hour;" "   /* Hour             [" 0 ", " 23 "] */"
 .BR "    int  tm_mday;" "   /* Day of the month [" 1 ", " 31 "] */"
 .BR "    int  tm_mon;" "    /* Month            [" 0 ", " 11 "] (January =
=3D " 0 ") */"
-.BR "    int  tm_year;" "   /* Years since 1900 */"
+.BR "    int  tm_year;" "   /* Year minus " 1900 " */"
 .BR "    int  tm_wday;" \
 "   /* Day of the week  [" 0 ", " 6 "]   (Sunday =3D " 0 ") */"
 .BR "    int  tm_yday;" \
--=20
2.30.2


--gyfazli4aqbtoynu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWD0EACgkQvP0LAY0m
WPHLmg/+Pj0I+7AFaT062TpRdxSn3b3/Ep17Tfh5ArxcbtzzeEg2HF/A9rsfSqGO
TI8xn5xvurSS3qvMUojAWxbJkfbWqDkYYdYlCcbC/UDsTmbitU4eFB2bwGOQ9Bx+
7VeGTo8K4OJrhzakKroK32MU7+a1MPqHHGFIgJEn8tC90UQb7JNHq+HsChbilIoR
6oa9LkrSeV9m22IASwFQsZgu/D1whYv44yFjhWZXefsu187esM13iHO3NmBxwhVT
mjJ4oxQCnfNDuSbQd5TIZYX959ag3hZ6bIt+2oP2fYv/QK93YHvdMWXOZ+dVg7ws
mQwQC+6h+T1QQfCEXst9LupABXlM2ySlZgJTUDeuJpWmHnrt0mNF+NEQE28SuQ64
t0CM/k8t1r+MeqsnMWSbs5A6ZBiMLa+SSjJKumdmW4lV0xL030PYzFeeyUm3Fam7
ewHdiakZkYN5R+Izo7Wr12i7QUvx+2hQnEPHW7c5/mEzz0q4l1amD4oUId8NH8z3
OGJkg57kmSbXcP3vCTgKO4/Ou4Y8Sl2EdvYi+aAkYVTgcQKEXKvOi7TpELAKW3Ya
bmM2Tq9/zKR0+r0E7Cb+T50ZoimBOZJVIpgf+3XO3awTRmvNisf1FBwmt79nKegS
asnvOzOKqsnLYLfICmv2JE1r/K1hnoNOgoW3tJt3NmsW5w8S/1Y=
=eRhP
-----END PGP SIGNATURE-----

--gyfazli4aqbtoynu--
