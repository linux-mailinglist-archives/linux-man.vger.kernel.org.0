Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9448C6E9C81
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:36:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231246AbjDTTg4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:36:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDTTgz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:36:55 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F223D40E5
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:36:54 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 50635698C;
        Thu, 20 Apr 2023 21:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019414;
        bh=2GId2wISbiTadstEAhSS4LFlq+V0gsvqjctIGmdOjWI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=O72wvF+z+VcYi0+wqwZCOWNWMiBHh3bMqqugEzvO+RRgCyp4y2MHzOtmOMG1G/gkI
         AXu02W8PFt/V5k+LMOngW1nTmFLVIFUrJQwjjf5S2e0z7JpuY56hxNKHcTcuh979EX
         iC13bGG429mcl9SDaQ8tzmJXdiHzmU5eOGGwya5dsUwDoDX0XOTOmpiGpZ5SqqjlTF
         hwILThklooqW4ieZSJAJYp9PhO9hj9T8C6i5bz2XHEOarbCI9gPfK3mf40l5HXDtdu
         FMrJIJ4Jzkp+Fa2RQoYDnrrJFP/EIoB8S6gc7vC3iXbd1s6elBZ2moQ8JtGjfhN14m
         I8TbewPKndejg==
Date:   Thu, 20 Apr 2023 21:36:53 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6 1/8] regex.3: Desoupify regexec() description
Message-ID: <1ad1aa6e952df09dea820eabab860dd6df35364e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dt45r5kpy2oxizd6"
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


--dt45r5kpy2oxizd6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index bedb97e87..47fe661d2 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -105,12 +105,10 @@ .SS Compilation
 .SS Matching
 .BR regexec ()
 is used to match a null-terminated string
-against the precompiled pattern buffer,
-.IR preg .
-.I nmatch
-and
-.I pmatch
-are used to provide information regarding the location of any matches.
+against the compiled pattern buffer in
+.IR *preg ,
+which must have been initialised with
+.BR regexec ().
 .I eflags
 is the
 bitwise OR
--=20
2.30.2


--dt45r5kpy2oxizd6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBlFQACgkQvP0LAY0m
WPEFBg//S6ck4z4pRcerxbC4dGEc9wXS+MzBjPq1SMGulRYHXk9Bqw9+rSVlcrd5
bogidAg+bKXy2J7T94fSNC4Q81725bXCIySrBKJxbHxZ/QMeCawwAkVYrJHu266E
Gm/ppNJgZalTH6jVB4ThGT6g4aXBJXWaM7BeW+/dCXYqCuyxS7rP19ZuePaqTIjO
+cPa8lvitBRIFQGq4KlI6WWE67eXgSK0UPiizkbjgppqdyvn1ndSqD4UmD5nro5e
7w97O55jtDxmnyzhHck9XXav94DJIFWrosyJWpekaJ/qSXLsdZwm7NcpdYES9Otp
6+czrvNjKspTtACaLmiK3stszfpiD4WUb2bo3/x4A1eMoFxjiq68x/shNsSDu5NW
g3fL73HLG/51h3MFDSRiMiDR7lQAaRlqzxTaEZGLsi8qwECeZURqIQ+cNuh8iL32
1fmk6dvVlndKHv91L3NvjIypmVNhvO0dT0O8Cq1rWcIl58tCgHJqeJgO+sz9S/Yh
So3FVwD4ER5gjs8lDET066jzO1d1KMAj5+n4KP2gFzsuptwxmRZtBq/dGgz6IQjP
B7ZulSjNRtwR64JSWtUiyWkshaUj8vNcRWb8wMO3SM3sk4o+KpX0zqA4wrGl1Icg
DpatXWFU7iEEhrvi2x2HalkCIU/SnhrTz7c9k1BmX2PGeQWtA/o=
=+yiT
-----END PGP SIGNATURE-----

--dt45r5kpy2oxizd6--
