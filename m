Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBDD974BB88
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 05:11:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229569AbjGHDLj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jul 2023 23:11:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbjGHDLh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jul 2023 23:11:37 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 573881FEA
        for <linux-man@vger.kernel.org>; Fri,  7 Jul 2023 20:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1688785891;
        bh=Re4OSJK5N+ZuwWvs42MPNztzlRjIWGeaRLzvvAfS55c=;
        h=Date:From:To:Cc:Subject:From;
        b=SNHV3LLtXVEjR9pp3wIJaXz2JJhs78FbDxuOXFLfMJ/f1OcrdyFRzb3vHaN1VfLB8
         RU1TWNnBmS5FuHuVPHHjiua6KkVQH9UizeOzJrQnYgKsUvW3ErkjrTfs/JY8xgnbp6
         jRtFF4PxNYYcgH8iovNdSnTeFhyjXboUmjNJiTYcEXj4Hl96ncknZd5+ORawI+z4jq
         CbEeGRT5Yfi0vi/jYVgW6f56KNj68gnur71CaduCmwPpUK/McvACtftXFR22ys4dQt
         6H3oZQuq7IHcr7rp92nTLBr2fsBPjfNOn7nqlbIA36m56RBBhykjkQLOIcJZ4RpRLA
         ptuAXUmi24eeQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5F1E023E8;
        Sat,  8 Jul 2023 05:11:31 +0200 (CEST)
Date:   Sat, 8 Jul 2023 05:11:30 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] regex.3: "([^...])" is not an end of sentence
Message-ID: <cndmjlonfcjogtpy7fsrtouncxn335fu52u35poylcwtxihztd@hq2fb3sqvizd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="27iz3jzcpr6nrlkn"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--27iz3jzcpr6nrlkn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Caused a double space before "not".

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 13e540b22..630c0369d 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -109,7 +109,7 @@ .SS Compilation
 Match-any-character operators don't match a newline.
 .IP
 A nonmatching list
-.RB ( [\[ha]...] )
+.RB ( [\[ha]...\&] )
 not containing a newline does not match a newline.
 .IP
 Match-beginning-of-line operator
--=20
2.39.2

--27iz3jzcpr6nrlkn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSo0+EACgkQvP0LAY0m
WPHgIQ//Sd8BYHpYUm2N/9nbeUbrO/lMuLdqzKEwV3qTEZ8KRThxW4Oujqcf8Vxf
oQzmNv0p/skzIt1tzFij6oZoaNe6+C1dnVfo6QMnyWQO9nQldwQST7gITLag2tk2
7d2qKmlSUC7aRlYkkqAFYxptOLRHSrpbYKjAcpTySLInIG2hUouIVxiMwYmVQml0
9Oh6ul+2ktqtrtewZYHtRXcZPjtyVXZFS7p0k809xgJrvQdKo4u5HGWozuAw31pW
vxk54YSSA//vgngkrroyHj3G1iiITptePcgCqknQLKF77Hw4CUrMXSnR9DqVNLA5
4ga/fH+rnaQMSEzQ6/k759SCvaod0Y0Gz7j4D98MOT/4/qEaF+vQwsBRYfMB2XCJ
ggV/3eUOvUj9s/OyT0AMN9V4I5uOxuvjINZnV99QE0um7IH61QlrAJ807dGlU0Xh
6feAL6XEf2qITMAOhkYmfZRcySDwYICJuSCl9yJGXZe+26ESrqaVaWs+EOExIxbp
qBEMDEPEJ2WQDelgfaNB/roCocUdRkwgTzbwsK5XvJALmodmZ1hbJA/u7ph+qtqP
eXyEUvgFF0Ieh7Pxpxooo0Ujwv4DELWKnDjLJcabwJq9Dwu9dzqvJUHyx1MypGfF
HjGwkIlSJ5aqRLBWA5GF1kTbP6iTouMT40gBXpqdF74r14hj/O4=
=KUPD
-----END PGP SIGNATURE-----

--27iz3jzcpr6nrlkn--
