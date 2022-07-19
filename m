Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 585CD57A33C
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 17:35:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230249AbiGSPfI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 11:35:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230163AbiGSPfI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 11:35:08 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4D52A558C
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 08:35:06 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D4E8EB08;
        Tue, 19 Jul 2022 17:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658244905;
        bh=e6ixb1f7AUJ7I+Gx2sKbuRGFli71n73cnK1zIvOp0FA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YwnP0vbNaS7G0uacuUmN+Dibrokgd16GD+VXtojItk9ow1Qf0GyedFOkHQSWEhEPe
         MfPxcaK9BxTvXNAMDbkI6lzEt7Yj1RxWdnzdTG1lzL7vKy+mUfJ7ycK2VFXJsygrtu
         OyaV7TGTvkptpt5WpAqNbmxIpUOQ/iV+GtIADUTfkoPJ6pyGK418r58rLPgV1kPngV
         g6SZ1fty0AWa0YthugHLgFaPCqXDZg2mzmQnYglrV8fqlbGDf1EFEm5OmxnNu6iYuC
         9MiwV3RBLFEud0z8NraEWLOV+5Gn3Gnmsh/UDMhzGmcwXYtOhGgkuS/WM17YbufiU+
         eHCtB8f3AAAyg+MJnVrJb1vmPdPxfG51z+ux7UROfXwkMcL3nn5roWv4yTPFvhpLeQ
         Se+jWXNAiWHa086tSt99diXEZoSa+udT6NKZKb0/0+UsiQbRp6e4u4bB2eVdOTVjGW
         9j+2nD9TWlPogJGrfMHWeBnEldrYZ/ZmB/vdKB/hJ5j/HG6jMxEDJeUTt3MlYmiSlE
         jd70cT2ZoZvs3pYdyQ8slvSGo9iGgQt8xIbsQCJugQDG9m2qMJL6qM87PJS8jUPJ3u
         r+tTovUizQ7sk+Bfz+GbPvfc1bYvLmH8wrcy53TsjtoYlaLS+SsedgdqDVvbQYCF44
         MAxSEMat34rcX4toN/V/yt/Y=
Date:   Tue, 19 Jul 2022 17:35:04 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/4] tm.3type: align ranges
Message-ID: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dhvu3vzfu2sdluaj"
Content-Disposition: inline
In-Reply-To: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dhvu3vzfu2sdluaj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This, to me, makes these much more readable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/tm.3type | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/tm.3type b/man3/tm.3type
index 5bd34a31e..15284c687 100644
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
+.BR "    int  tm_mon;" "    /* Month            [" 0 ", " 11 "]  (January =
=3D " 0 ") */"
 .BR "    int  tm_year;" "   /* Year minus " 1900 " */"
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


--dhvu3vzfu2sdluaj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWzygACgkQvP0LAY0m
WPEJNBAAqg2lsAqfA1SraMtasEBIkylJn/0qpT1k9SHRprnM+bOxM+3MbK/tKWaP
0gzT88JJ7fgN1f30BmPGY+7ik7WTU4x1Mp1+99T6uPxS+I2Ma3VaTwWyH4Ylv1yd
/ItaXHjE+p8wSDMRjqTfH6oX9/Lt42lleZ3LoE5+ed4VTxU/XhUdDrnR2lKY4Z9y
NdrMQ/ufRZfX+qx9Yu26xjxl8IabvgVsl9Mj2o/NLpT8+RMKGN9g5ch1WOHhpuUE
XqE4a3p4rT521B3Z0RSN7mFNhemwzhJEuCCDNQ6h45LP+Mjrzxa6IvE023C+WuIg
sY2rNVW7YkVQyGz9XCK6ST3lWAooDH1Nc1AqVxAWRbwTm3gVegS8ZGmoIs2j01Um
VtE3OjR6MwPqIhLTPLPhjF3uiKhi/dCkSO8+9ZhG97qCSVreUJUBuqOE1ZFlSXYr
U3piS6vwA7XeYbb8WdWIpsB+0RIqvCVqumDpOkNHBisChfIxMdr0cax+4kTX3vCR
glr0aYbhguQh68PBSmlYcArAKf/ANu2wfIeOcWdY6pJfFZgd2sC78M81SRCfBMMo
OPhii9/7QdlfE5xadrr35U/tqJDkjR3NTM2EmkLsBRDlAcnkySrMB5ZQmQZr8QeA
Rwu9Hze/lMJtj6sVQI23bJCuId9z2Y8NOsMpp//UFaQfR20x/Os=
=vIfd
-----END PGP SIGNATURE-----

--dhvu3vzfu2sdluaj--
