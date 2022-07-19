Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A888457A33E
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 17:35:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbiGSPfR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 11:35:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233245AbiGSPfO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 11:35:14 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0C7D310571
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 08:35:12 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id C0BFC3DC;
        Tue, 19 Jul 2022 17:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658244911;
        bh=PbvgJFwAlUVHnXUsYduCeX8XC0l/67B5oGGotiYCBBA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jJgXaH5Y1MKITlvRoQnhAnvQgR/d/atbDAhSlmkVtmAgByvJeadp8fYvaxCUZjK3L
         145BzZKtTmWuDs5jYtA+ARoZg0n4fu325YXtsFHWcubIcDIHu8tplyPFA2NnODXiXG
         pjUCT8+vCrajEseSgxAV2EFup1fzWKHzGnVsowRrKd89FVZdEhg3PaFGVHndlGvfcI
         RH/ALMzEVwwh2Npu6wZzuO4t+zuzFPXo9yPn9y1bcqWCtVXDXbnyja7YFnPu+cdezx
         jqVlbewiZz+kfcBSSQGYJ3yZ36peUpeeEEihG3xszl7zluUNaJskry5DM9ixwB+3Ou
         WbQsSaYpLtoZGM8G9SF6uU/HIjv4Ksh2bbnA7DQ0qFyHkqqL36P84Oz/coHg8H0Bh4
         JFTr5Z/qsXT1lcuQZQobH1cYRNw3pRQd9Mg6k/M35ncrDCa+gqid2z6NPtkmmC1I1X
         FjEvevkn/i1zmsQIPNyQlvvHYXqr21VwKS+X4Oj5NQj/o3MPxd4UstA8L0+WPaclwx
         AkKq46yMyxAP3Xh8JImno3Uxb3RDayxQ6bHIw5FeUerkirjPt5GsHEQcLZwsd3P8J1
         R28QZ1YFpb9b+dlX/Qt/LVuEtLiM9i/GlovHLgXyn1LeOUksH2GVwAdDk2VXYHEo1E
         uWTyE8rUhOFFA02e6Hy8iiQs=
Date:   Tue, 19 Jul 2022 17:35:10 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/4] tm.3type: widen member alignment to take up to const
 char *
Message-ID: <7c67aa514f7747d7eabed33a815552265a357159.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kmwfgc3bykxr2xmr"
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


--kmwfgc3bykxr2xmr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This lets us take const char *tm_zone.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/tm.3type | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/man3/tm.3type b/man3/tm.3type
index 15284c687..78e05a41a 100644
--- a/man3/tm.3type
+++ b/man3/tm.3type
@@ -14,17 +14,17 @@ Standard C library
 .B #include <time.h>
 .PP
 .B struct tm {
-.BR "    int  tm_sec;" "    /* Seconds          [" 0 ", " 60 "] */"
-.BR "    int  tm_min;" "    /* Minutes          [" 0 ", " 59 "] */"
-.BR "    int  tm_hour;" "   /* Hour             [" 0 ", " 23 "] */"
-.BR "    int  tm_mday;" "   /* Day of the month [" 1 ", " 31 "] */"
-.BR "    int  tm_mon;" "    /* Month            [" 0 ", " 11 "]  (January =
=3D " 0 ") */"
-.BR "    int  tm_year;" "   /* Year minus " 1900 " */"
-.BR "    int  tm_wday;" \
+.BR "    int         tm_sec;" "    /* Seconds          [" 0 ", " 60 "] */"
+.BR "    int         tm_min;" "    /* Minutes          [" 0 ", " 59 "] */"
+.BR "    int         tm_hour;" "   /* Hour             [" 0 ", " 23 "] */"
+.BR "    int         tm_mday;" "   /* Day of the month [" 1 ", " 31 "] */"
+.BR "    int         tm_mon;" "    /* Month            [" 0 ", " 11 "]  (J=
anuary =3D " 0 ") */"
+.BR "    int         tm_year;" "   /* Year minus " 1900 " */"
+.BR "    int         tm_wday;" \
 "   /* Day of the week  [" 0 ", " 6 "]   (Sunday =3D " 0 ") */"
-.BR "    int  tm_yday;" \
+.BR "    int         tm_yday;" \
 "   /* Day of the year  [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
-.BR "    int  tm_isdst;" "  /* Daylight savings flag */"
+.BR "    int         tm_isdst;" "  /* Daylight savings flag */"
 .B };
 .fi
 .SH DESCRIPTION
--=20
2.30.2


--kmwfgc3bykxr2xmr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWzy4ACgkQvP0LAY0m
WPFMFQ//YAKe+YSxK9Sjhwf2lKBbvxjnrU8DwVyqw+ncsOUp4inkl+GD8Qw4Czcr
lEyUeAOjfLxI2BFCbKKnzbBeOe1sc+fSuSn+JmWH51ps8yCB4BsO9KLFb015qf0t
RZmy3lHz8mnMujv1kmi6Q1UIA9iL0BOoRrTDt+G5suHZ5ekLzUt9ccfJS1BzXgdz
kYq/w4qBwTyPhdYPdVfi0LB/aVuSCy8TgpW4zkLFZbHZ5fB/K7fVvyW7235yOUWL
R1TqAPfxTcw+3t3vKKDIUCa46v6/8GO8MZOzahif2lgqgF2YhdEYW5uvRCSTWWbC
H40niC9XdGmqYsvwntxY8A3aKrQT45ABaL2TyiCQ9CD3xLLTH2jU55ZvTfpVddCl
pUwO8sYxnsuRripbS6vp/Qyk3cCTHcvC1QLwgG0ugsl1JyeYbpfjffuKRd2zt8cX
Ca3lcm7Y9iCMGKNbXsjjvamdGVpTRW1F9R95+pLVg7pLZByqWYxWyj08XucXXM+h
UCjeOcNhjR/3lnxotfS0jLMcrAKDLTIqGiABokdK/CKFeZ6o6r7DHYa6sIphmrmW
NSqlLNIHYSSYCkk7Mxa3V0TmQdwzHXc2P08003eNFDLwzJY4mTti9dR5Nr0X+Bp6
fBqtNAmXuCUFhAR0S4ZAbvoHLhi/9z3GKfSM0UkqJiEEM1Na22k=
=YAGI
-----END PGP SIGNATURE-----

--kmwfgc3bykxr2xmr--
