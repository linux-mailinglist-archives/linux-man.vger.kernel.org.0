Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E26686EA0F5
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 03:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230170AbjDUBY0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 21:24:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbjDUBY0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 21:24:26 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5B12730F7
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 18:24:23 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6CD7B663E;
        Fri, 21 Apr 2023 03:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682040261;
        bh=L/NErHMEpoe3mg5ZxfaEZ+IDV+yIju0turgK4zabrfU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=WeoT0X1MrnOC5c5fs38k+glD/MgErtjzJjPHfzOEr6oWGVbdi4U/o8xH1wiWRH6uK
         5szb6xtodquFHXE0WFHUBjy9Aea+15TKHAMMlX7PIdMgsQeBBT326yy+jgcwuBKEuy
         NuPjGo41SwdafbDzq4HLE5hszZAR7YUP04zMI0nXvCFVOsLW0M8NIAKnpA8KMe8GM6
         R8r+LbDd/kur3IoBXYYHmYKqnBkvznNp/p5+Q3Onkdpfy7jK9EPxZ6w/k4eAVN0KfG
         D67z3mzmqhg242fb+LRY+SgEUuqrvNi9vuTti2JBX2sfaa+KIuxsOdOw7jfCP0w8pq
         p8raixqSf4P1w==
Date:   Fri, 21 Apr 2023 03:24:20 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v7a 3/8] regex.3: Desoupify regfree() description
Message-ID: <c7lgmbcgc4zjzaevg2qptf2n6feccwsprsk7yeqjsnrfxw2ivd@rzxrhgdhe3bf>
References: <5c49896a-c0d3-66e0-add1-adb9c441e319@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="mysx5dyyymw7kmv3"
Content-Disposition: inline
In-Reply-To: <5c49896a-c0d3-66e0-add1-adb9c441e319@gmail.com>
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


--mysx5dyyymw7kmv3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Range-diff against v6:
1:  1ad1aa6e9 < -:  --------- regex.3: Desoupify regexec() description
2:  6c4d26f89 < -:  --------- regex.3: Desoupify regerror() description
3:  4b7971a5e ! 1:  5706f1892 regex.3: Desoupify regfree() description
    @@ man3/regex.3: .SS Error reporting
     -.IR preg ,
     -will free the memory allocated to the pattern buffer by the compiling
     -process,
    -+invalidates the pattern buffer at
    ++deinitializes the pattern buffer at
     +.IR *preg ,
    -+which must have been initialized via
    ++freeing any associated memory;
    ++.I *preg
    ++must have been initialized via
      .BR regcomp ().
      .SH RETURN VALUE
      .BR regcomp ()

 man3/regex.3 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 3f1529583..ffdd98376 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -225,12 +225,12 @@ .SS Error reporting
 .IR errbuf ;
 the error string is always null-terminated, and truncated to fit.
 .SS Freeing
-Supplying
 .BR regfree ()
-with a precompiled pattern buffer,
-.IR preg ,
-will free the memory allocated to the pattern buffer by the compiling
-process,
+deinitializes the pattern buffer at
+.IR *preg ,
+freeing any associated memory;
+.I *preg
+must have been initialized via
 .BR regcomp ().
 .SH RETURN VALUE
 .BR regcomp ()
--=20
2.30.2

--mysx5dyyymw7kmv3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB5cMACgkQvP0LAY0m
WPExIBAAszshYAul18nJfLqF3AJQ/BMzf2r+X2S8mrCFbyKHbJ7K8s2XtS3ztA1t
7cGyunbqAvFiUJxreiN8U64p0tsay9Jk4DTfWpe1FzmUUHbKxf0gVfK+Vxh1PiBJ
dW1HVG6IvsG6zpLp4wJt/P3m7dDGlA0hiNf+ix4Y9WgOGFSlS23FNINfCEb/RmCg
Jk9Fxcj9qb5Hhb0oGkwtWUYTAh8p0PV3BltULzpKJJgeOF6FLthW8TAJ/9Y72Fii
IPKod1TO0ZMvLJ5R2PdJz+JP4uCI+FG9JJpO3P+8lEQXZCHACq9+ol6Fu7GL8Z4s
+shEXr3DMXX8goZA1A83A6yzRKM9foW7UNudtAvqeW4ehI9hxnZ8TBCLqlTDPPdZ
/tr+9Eu7YJ+QiKHcrtsXo+fyrVD9Vx7PXcZD0Y1jbON2j/7Vpr3YEnW4f2Oh+mjS
W8PI9p2zpZf7dhRq3iCyRD7EQsli8Awsjg/LE0UmcuApM70nfC5CiR6pedKxxyT9
Fmcly7BhYDAtJdbt6mb4vOb31KVI/9JX4bz3A5MYPZJXa9yMCXU61qCJrXj88EdG
lMSmXE7X1FJacoOwpEKe+xhYu6h84uI+cNK5grlcm7VmVrs5fMH7G6igzxI7pYn1
iAf8Zqv8nfOlAhqDNoVdSP0mXKOKpd8QtefnyL3ANKSA0l7SN38=
=o7Xk
-----END PGP SIGNATURE-----

--mysx5dyyymw7kmv3--
