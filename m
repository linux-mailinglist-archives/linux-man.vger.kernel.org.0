Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4F886EA0AF
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 02:37:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231144AbjDUAhk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 20:37:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231944AbjDUAhj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 20:37:39 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A5D3A4EF9
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:37:29 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E269B6440;
        Fri, 21 Apr 2023 02:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682037447;
        bh=JVy8I/oXxa3gQEbIMJuubmfMSRwFwWh0sIw3v8W9mR0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZA5t3qOxwWmXJlWMq4sPX+20fdCLsr/4XSb4xPEYrHXV8x6kukCIxEE+YRAgt/bEU
         bymFDA3xkkZdW8YqzVqs4wjcNdXXE6xiC/4aYox3/vWjkM3EXjUUkt8SIsLJAF03ZS
         6a4KmKaVDxreS5srPGSPxsD9Qpgp0JJUYZ6tb3eCcxTPHd+Wl52WdgHDOvs9tuT2CK
         SlB+MfsfLv5PCAXUu3cAbtnMDCak3nxNhzxKDNtSU2GKSvsXeORRSl1bMV/1t7ekl1
         ikGsa5tePI1GriqzFjnTru7fpJpo/xx8+MolGlpgZhCafD6Mt6SmRh/S5tawtc1vdK
         xNTPhXUd/BG/g==
Date:   Fri, 21 Apr 2023 02:37:26 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v7 3/8] regex.3: Desoupify regfree() description
Message-ID: <nlv27uvwbpx6sp5apaevefazd7btm5rrtl7fdzbn6pyzusimy3@kujlrawn6vuv>
References: <2n5iwmnzvwdraarfe4z2ompj3nslrxt5g4zu4pcp55peeciace@vncn6wact322>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hagieto73fm4nbyy"
Content-Disposition: inline
In-Reply-To: <2n5iwmnzvwdraarfe4z2ompj3nslrxt5g4zu4pcp55peeciace@vncn6wact322>
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


--hagieto73fm4nbyy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Range-diff against v6:
1:  4b7971a5e ! 1:  2632fe5c8 regex.3: Desoupify regfree() description
    @@ man3/regex.3: .SS Error reporting
     -process,
     +invalidates the pattern buffer at
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
index 3f1529583..46a4a12b9 100644
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
+invalidates the pattern buffer at
+.IR *preg ,
+freeing any associated memory;
+.I *preg
+must have been initialized via
 .BR regcomp ().
 .SH RETURN VALUE
 .BR regcomp ()
--=20
2.30.2

--hagieto73fm4nbyy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB2sYACgkQvP0LAY0m
WPHUpRAAteJMWb2wqDyqcmO9fkgsoCe3fiLzUU4GVtEpbvHPSOqA0KixAHfAYqT3
sXDQBCvxRPDp/lNfNFRog4QuQmVmO7dMbmAC6S4s5yH3VfhuyZnDEQI2LLRCSA14
GezzXoqg0ylM1qB611JBVprzafmm55ZDw6u7AAzJbPOHWD/8bnQ8aYGOoV90YspF
QaFLUbdMyDYfGQKUlUIkERbNFVd08UZqWB9cTg9qgOzhnXOM1PR2wOlNpScpNoAs
3/Y/0R9h0fCqip5uOU8WkXeKKk/jLlWWTmh0XaaepcleziZUKdHlLkr9mRhJ4OoG
UfRgLMzAvBrmFgU8uIRzbb+5EYQikOcKGVZM11Wg46u8AZp82sIAcVOixKwGyXn8
qggktLI9YnMjkd1xiETmq9vA4tQz6oy+1YzWukEPbQLHwEdv7kdb2i3YFbKtt0iV
aSaI9V7X3YCl8afIAZHwJCKO45Zv3dG4xAd4eb8Y44LQv0WDse0Z+KXnCxBYLyqW
j9er+2D6WxEUR7FQUBt78rQ/u0ZufrOjqK+3eWeurD5vXGpWHXQx5XtL/UVS96Rz
PF96kVhQYN10ogO5FM9htQJRAONx/9zq1h1DQ6Y06tFb/veeuld/Uv3fhBG6Y+/C
5+rU/66OSuLnQFBeP7cidsjGoWwNEOU2gHDY6s9/gzMofw4RU7E=
=4l4o
-----END PGP SIGNATURE-----

--hagieto73fm4nbyy--
