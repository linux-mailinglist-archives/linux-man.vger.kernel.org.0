Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45CBC57902A
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 03:56:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233487AbiGSB4L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jul 2022 21:56:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236451AbiGSB4K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jul 2022 21:56:10 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id ED28C27CD1
        for <linux-man@vger.kernel.org>; Mon, 18 Jul 2022 18:56:08 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 30E6873C;
        Tue, 19 Jul 2022 03:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658195768;
        bh=waR09q+pl5COtLxK5lj4hqPnoF51gJ2Pi0NsBD4v9Wg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Hiv9sryijIi8OIBvYpReKJHTn1XJzJ2MJJukP2sSQjM4CIUe0iUWdU70qEm7/65dG
         boCp6cfsSt7k1xDgkNDagxgL6sIlcN/+khYxUAAfLMCViqhryVT+sf5LhjAuA41Vkt
         Z1tfc8vM3ZuHtx/juEO9ziv9qawXuqwEPE+xeYkVbIKCYm+wqCkzKwVH8+5eFIm2LO
         u+a3MjjWtpPyDqKVQ4wKvpKMdVcOlJ2sO0iykYM2F3rvE5hyOtXhObkDaB9zf411qI
         9+5tW5UKapoBQpq4bS7NEmhkUR4rq3S5VITJ9y908JbcsOT8VhZyXQsWEuN9cB2zC3
         wd7QIXBPR+sdEqIGnWN/X88KSyHp5hTdxWJOS2aKfkiav6Yvh/XQ+pyoQsSTWmQOfa
         nleEc97b9yeOrvB6/9j5BmRLV9L+JBjnJfzgEW61Zj9tPoYmJF7d+P5RCfp9xPXVus
         MlkmsiPOfxceRY/0QuCOQfOpUI/VhrCqUyqfdApdW8rbD6aMAVOA0vTzg2Gvpb4+KW
         w1Y/em4xaE/ZFKYs+XbbyAFAmJ2M/z6Yr0j1vNPWXS9XEy+E7iObk0U8pqoWOz83Ak
         +/gMR9EEy0o1+4PlaKyFo0cKR+1faWYaaDxwh7PmmyRZMhkkBB2ROjM4kar388Y3qe
         HVikx/66FA89LBnXXpv201mw=
Date:   Tue, 19 Jul 2022 03:56:07 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/5] tm.3type: align ranges
Message-ID: <7125737470fced1f56ee48912df456c4eb941ff6.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tpmyfwmokyrnnmrr"
Content-Disposition: inline
In-Reply-To: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=2.8 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tpmyfwmokyrnnmrr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This, to me, makes these much more readable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/tm.3type | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/tm.3type b/man3/tm.3type
index 8ae3a531c..daf75e2c1 100644
--- a/man3/tm.3type
+++ b/man3/tm.3type
@@ -14,16 +14,16 @@ Standard C library
 .B #include <time.h>
 .PP
 .B struct tm {
-.BR "    int  tm_sec;" "    /* Seconds [" 0 ", " 60 "] */"
-.BR "    int  tm_min;" "    /* Minutes [" 0 ", " 59 "] */"
-.BR "    int  tm_hour;" "   /* Hour [" 0 ", " 23 "] */"
+.BR "    int  tm_sec;" "    /* Seconds          [" 0 ", " 60 "] */"
+.BR "    int  tm_min;" "    /* Minutes          [" 0 ", " 59 "] */"
+.BR "    int  tm_hour;" "   /* Hour             [" 0 ", " 23 "] */"
 .BR "    int  tm_mday;" "   /* Day of the month [" 1 ", " 31 "] */"
-.BR "    int  tm_mon;" "    /* Month [" 0 ", " 11 "] (January =3D " 0 ") *=
/"
+.BR "    int  tm_mon;" "    /* Month            [" 0 ", " 11 "] (January =
=3D " 0 ") */"
 .BR "    int  tm_year;" "   /* Years since 1900 */"
 .BR "    int  tm_wday;" \
-"   /* Day of the week [" 0 ", " 6 "] (Sunday =3D " 0 ") */"
+"   /* Day of the week  [" 0 ", " 6 "]   (Sunday =3D " 0 ") */"
 .BR "    int  tm_yday;" \
-"   /* Day of the year [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
+"   /* Day of the year  [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
 .BR "    int  tm_isdst;" "  /* Daylight savings flag */"
 .B };
 .fi
--=20
2.30.2


--tpmyfwmokyrnnmrr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWDzYACgkQvP0LAY0m
WPFz9A//esSGu2v3DsxZW4SDzJpcq/skTPFvBLbzhO2CWXEXt8KN15qNnxfsd3K6
YaY8n9dRVxx3J/uZurQJVeoP8SPMJDCIhmN0fd+CnruX0mI4DC/Npp2EAgjWxVkM
kMXm9k1H5J5KmFwOonJBjMu+jnvh7ypKXb1r+o7PRUk+jY4LtdzA6+SuQhD6AwZG
wHq1wh3wlv8tyT0RSUxjTO4LxqyPLP5vYjWb3SSRRrqGIsDO6njzYh8KXRg3bVzO
t6cH0rXzuvMZge8MvVInWx1G/pePI1ULujp7blKvPmJUt54mNDx0n6vAJOFsdicx
+T72RECCdbDn9A5dRwyZSfnVtxIIN0u1ssT1CkIRxOkEa+m28MuAk9XoQbicOfke
p8+QYaWgghaabG1XnbbaZ4T3dWa4q24QZ0NP6dS5mKeXlDCnMKiB54WvIzeveTR8
HBzfjojrvCsCMpW3Q6XvcZIMucUp+DY79J5FGhLCKeLTkxCyrxc88bNXtV88gtmr
M5wK/e8OZfrl+GUzNQR7aioVbuue1SPjLsJa0gy2gN+mAQfHnECbr2px0DFQGjxk
brjzOQQjoQlrMa+4htt3u1mIxqkT6BWlf2I5qCxGg9q98G+LmCWcAzCwVwtO9YJJ
+Wx/qweMteqxLEUJD1YoOrF+zkJhFRqxy2PPgt7nKSGE/lDSmJM=
=3nsY
-----END PGP SIGNATURE-----

--tpmyfwmokyrnnmrr--
