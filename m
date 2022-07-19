Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47BAC579041
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 03:58:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235507AbiGSB6W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jul 2022 21:58:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234867AbiGSB6W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jul 2022 21:58:22 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B465B29808
        for <linux-man@vger.kernel.org>; Mon, 18 Jul 2022 18:58:21 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id F1EC2504;
        Tue, 19 Jul 2022 03:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658195901;
        bh=EnpqYpGjUsnEnQf26wcxpY9l5kIQzB7g/l3a+4aNCx0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=u16OUIKSpYZelAgKu+2zR6o+P7UcZ23v6iCCLwelRm3Gy59CL5bZZH575qiubWoCB
         ZNZBWsXiSGTbVzDuhK97o0OsAfgcVc36mngiqCAearODD5/Z0opk/vHg8DZGXSl+en
         9HJm0cfiWAP/4++Or/9H1WhgJViPgid2pYJzaDvvvRmUP5U0ADOIdyWLdwSqpeIZyO
         5ALdI2NPaNk6y+ixT/nnqlrGLVtb4k9EYtSQw6vlMAazg0CzIxOcyN5UWTHMgShd2B
         Vaa1149fGYBoYO4DR9G1HiK34Lj+B9TvXAuO15ErfooL3OguEmsX/JeMXCxr3yZFh4
         pSQ6WBGJUE8NhWJnVriK0zEEi2hHp54hYymRmnbNMgJgCw6erXNbdrhJ/VHxpjH/z9
         ioVyK7ecfK+cNDXUA2zU+mQb+wItWMDjDMblX+4tg4K4mNWjRw0XBhpAKXrLAbdjlU
         HYTgdf7uKu9lFabB8xuU1r/1Y3g1UOu11+U3PzvAQv1T3E7gpYeybI81XYvunuQXiJ
         y3xl4t4kR1+F7tGNGLyqX1byT071jxbKXJizZUI78m+TJhqSppOmllfpLL45l64wWw
         XZG9M2dKNDrB9965nbQQ80XclSyERdc0ZZx0boygoblSf1G5bSsGFgmwXqwf/YWcQ4
         QjElXZIK/pNPe7Y152vu9jFU=
Date:   Tue, 19 Jul 2022 03:58:19 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 5/5] ctime.3: remove struct tm vestigia
Message-ID: <36e71b9680341df1a27070b6446c20d562ecc3ba.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="k36y4tb4hnmw2x5b"
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


--k36y4tb4hnmw2x5b
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Funnily enough, I noticed this only when writing the commit message for
the previous patch and attempting to ascertain how much I should
complain about what's in man-pages 5.10 (which has just tm_zone (!)),
so that commit is entirely unrelated to this one, and its text is
entirely unrelated to this page's

 man3/ctime.3 | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/man3/ctime.3 b/man3/ctime.3
index d228bdc21..60ee4418d 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -356,21 +356,6 @@ In many implementations, including glibc, a 0 in
 .I tm_mday
 is interpreted as meaning the last day of the preceding month.
 .PP
-The glibc version of \fIstruct tm\fP has additional fields
-.PP
-.in +4n
-.EX
-long tm_gmtoff;           /* Seconds east of UTC */
-const char *tm_zone;      /* Timezone abbreviation */
-.EE
-.in
-.PP
-defined when
-.B _BSD_SOURCE
-was set before including
-.IR <time.h> .
-This is a BSD extension, present in 4.3BSD-Reno.
-.PP
 According to POSIX.1-2001,
 .BR localtime ()
 is required to behave as though
--=20
2.30.2

--k36y4tb4hnmw2x5b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWD7sACgkQvP0LAY0m
WPGKqA//VI1h7rEb/mj0hNwol+tQXkWHRdruy7Vmx/wQl9J6wFPhimULbXX/rVNu
Hr3X9kDhhlelen9dkIGMN5OXCcXkRjUszfwT5dUFFQxlJ5T1cr2tl8QKlUwWk32q
G9Hbg2NrTnsMuzuu1FKnnRxoeB/JBdtEKFRjpFT4hAbtE7VJH/aaBgk0RMIxG7wX
hYpqF5GcfvYnbFXeqsVVapjrEBsUVyZTMg0H1jrkbLo+i0RbPe4zlQpHrTbmLVDd
nKfU/tX1e0BwnvhHXrukB8qAUwvt0YdP2Aiwg/paMrNjZQAFvPE17lFG4Y8QY7Xg
WuMNhPEkO7bVoNT5BaY3CfP0X2VHMh0LPCYm2GydLvD9AGtvhPsy4lc+iwfas3Ry
Na1ct5gNICEZYazn5bR6vl2sWKVNaxduF5ztM4aEQIpUMS2HO0W/cbNRsgBZMgBM
L/AG5glsp6e4eUN1sHSHNeNgJXbQlD4UdGvMXtkqgMNj5rMuYg68YWmfiabm1zex
u4ZVtRrZ6Q7+PO57vb8QdG9Ln7dHTSHN/hQXWY7ApNIKNxHjCaeMbaxdpIf8ueXm
jKnY7f+4uoxeBVIVqUwSKlhu1Gvo961VEx67Y/poVBMwEr8DyuY2PtUq+7GzQFbm
JfOGCkiwZploC1B5cJlgOOR+n6N08Wnm7Fxfg5XD6s+HcG5bUC8=
=CLZy
-----END PGP SIGNATURE-----

--k36y4tb4hnmw2x5b--
