Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC48A6E85DB
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 01:23:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231194AbjDSXXf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 19:23:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230331AbjDSXXf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 19:23:35 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 07A63E4D
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 16:23:34 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 56EA05D6C;
        Thu, 20 Apr 2023 01:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681946613;
        bh=Vx1rbb++rsZhl7WuHu3an3qaw1q/DMSCMVgGMYpjBMQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RXdXQPFl68Tj+Ygrx1Iuu4RwXXA+t4FzTY0a3KrfjkOBr67yPGsKfkLOhH5zul8Za
         pTHmFagw5r6/Dvd2nN0fwvDx/qMqOZKR8FoRTtFbBH82aqi55uWtg79XJ2MKKIL36T
         A/p9RzGLwEp06CNXUygWET4jhgAzEQAGaGo5+UJE9YBWAvjDVuN70ec8bihOo6O6r7
         U6GCv+eoBwGOjQOJXrUFPNG0u5QF7hGi3457d5SehM0Fg/PEYsfIzVaO0xyxtlPTcb
         fAdM7EBLXh5hOtz7+WoppXuJ+Py05IDujfeAj2xkIogpOe8WxSB2AQjhf6bjmvYi/1
         DF8/8PtNp/ddQ==
Date:   Thu, 20 Apr 2023 01:23:32 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 4/9] regex.3: wfix
Message-ID: <3f7a0a3e3ef00bb490ce2b4040087dce9d114ddc.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="rxivoww2wkvqdzqw"
Content-Disposition: inline
In-Reply-To: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rxivoww2wkvqdzqw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"Not in POSIX.2", so is it in POSIX.1-2008? POSIX.1-2001?
(or any other combination of standards from this millenion
not mentioned on this page?) It's not: just say POSIX.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 5aaf42caa..b6e574b4d 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -289,7 +289,7 @@ Unknown character class name.
 .TP
 .B REG_EEND
 Nonspecific error.
-This is not defined by POSIX.2.
+This is not defined by POSIX.
 .TP
 .B REG_EESCAPE
 Trailing backslash.
@@ -303,7 +303,7 @@ occurs prior to the starting point.
 .TP
 .B REG_ESIZE
 Compiled regular expression requires a pattern buffer larger than 64\ kB.
-This is not defined by POSIX.2.
+This is not defined by POSIX.
 .TP
 .B REG_ESPACE
 The regex routines ran out of memory.
--=20
2.30.2


--rxivoww2wkvqdzqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAd/MACgkQvP0LAY0m
WPFOZhAAsQdvbcPYIp9i1iMaco1JXh1n8uGyhUiXFcpBEG6EbR3cTN9H5y6ahZcy
kx86nUL7fxsN4gMgby1+AHN/4uoKS1l/Qlz78XNPkCjoH5q17s1P4+zZKkHKmsAK
Uqmbwme/YEHRl6oixsePfcKwjSnU4Q91IWMoYS81/QJ/fa1H4CyC4su1LheM223E
sUGBm6sL3E846YqjdnoTjve/TBZD4U52ixzfMfvCrGqEqe/uk/dczs49iobAIelo
5IizZkUkQF+yMnvLYymwOaYPeo6vkgeMPScAXypWQblKwVTg12qtXVp6Fr4uaOHO
h3bxQOorlVh691g1XpW71RJFlB9eaMRhrCsjVDz0cTO4JiGeUWIKu2fNftkQHFUD
rg6UGm4A5zl+omXL6XdaWDvwHeMaTZL/Dr1Lwg/ZUm+riP+WrJhEHGacWCUk4Y/Y
5sGFNGdPsyYeDb+wkJRqAd7jrxiTPmM5h015lo8mtO7tFkbGp6cRKlPNsYLNv58Q
J0oLZdhq2zOAWHcprNGo6Y0CXgqwXjUemxlx81Rj5QdRhTYvaDB8YSpoZqQnJ2/f
o1fMOdk5WkCkkT04waTv/ZurggE0QpswtWe70Tqq7egmQiRyuT+pw1oMjtqxa/IU
e5zaA3y4EVmf/dMn2NWATkn1HzJFrKNc/D4qrZbOi0xtlcd2/0o=
=PpQQ
-----END PGP SIGNATURE-----

--rxivoww2wkvqdzqw--
