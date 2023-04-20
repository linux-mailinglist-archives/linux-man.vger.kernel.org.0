Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B1A06E9C84
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:37:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231531AbjDTThE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:37:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDTThD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:37:03 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C3E9B30FE
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:37:02 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2598B6990;
        Thu, 20 Apr 2023 21:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019422;
        bh=EgZa4qInwf1awKj/NJkGo+kYc4Ph5ffuco0QCWgEM+M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=T/DLfr5jkRfHDed2q1NSCh7loTQ0S+QiAfugvViC3mskqu/OssWxIKmf36sehkkVr
         ftcf/8ZcAG1jlKp6tz58hKXooAl3A9Y2+PVRn8iB41fBpqpKJacnRwyoq1cz3yWoXn
         H5jyg8AfyQbQO77tpKe70vAznphbAtlElveqcnhl5SwF+0rQXFwglc1vOGZj+eu38C
         9pJ6lvZLuqS34XYi/ecUKKdThXVny6WSa0J+VpregGAcVd1+1ZTVtCLU+Vjcrmp2wE
         8Z9ScoJDLqxKc7ToeXhSxr9kj9odGEWUDN3Sg9ufNEpiyUgvm6qcwY1aRFGWH7Mgli
         UgfZQoeww3mDA==
Date:   Thu, 20 Apr 2023 21:37:01 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6 3/8] regex.3: Desoupify regfree() description
Message-ID: <4b7971a5e940914a7f6d717a4a9d9ba714edc3b7.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="6fq3gpktqwoh7yys"
Content-Disposition: inline
In-Reply-To: <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6fq3gpktqwoh7yys
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 3f1529583..e3dd72a74 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -225,12 +225,10 @@ .SS Error reporting
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
+which must have been initialized via
 .BR regcomp ().
 .SH RETURN VALUE
 .BR regcomp ()
--=20
2.30.2


--6fq3gpktqwoh7yys
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBlFwACgkQvP0LAY0m
WPHigA//SdKOsiSNBKJOhSwRfp4bQ5kb7tALPQI4ShPiqMKqnx0BAHwR8lp5W9gF
UG1viL0nkfW8dgUEBKXeHcXvHI068kBu82ejyvT9Ha55JSzpYtUQO/jA+Aut25vX
H4GANm/L6T835Bb9NPodG7xWG2W/5KXs9l8N4xGt6xNS6X+KhGwWjRdBeth4Cw8Y
EGi1eT9Tsp8WerfsTUMVc+z2MfQQnBB5SkoDyERHRn+5X0p32DNZj+cGeNBlxKHB
vjjeyrWctut+l3DXfPf9WeJsRoQwiqchVADE5zFq+WrY3RRJ/jH8UtgYiEZwBSE6
B6KVrmHkEhBedd+tSF7+cFqwo4M/7GHiGoJhq7I1Ez0NkuGo3FkfP+g2Fl0dMG1q
7bR40pFzFDflnK1Lfo0OjJaI6oT033N+YjHBxZRu38v6hx5gow2GiCpH0JeEGHr4
oq2yJ7Af2R+f9S9QmMSJv0Yoj1z+8Z78N9AFhnbWBLxoFwenu1/K/yrUi5k0CfF2
mcltmU/r/VIBw2iptij1Yo2YzGeZu2xbAnsdu0vE4HbpDBMxRnj5sjLf7HKIvjM4
sQVWtJeazb6uj0ghjUs5qcvpd3uvlY0ivxcTfStB4jMbeJr3AOsleCZtz1298Uo/
bNWrAWq0WJ3XgqQTVF+5jR6tBIOLGkEg+RDe9e56/9IEF+nilnQ=
=Aalf
-----END PGP SIGNATURE-----

--6fq3gpktqwoh7yys--
