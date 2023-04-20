Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAF276E9862
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:36:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231906AbjDTPgB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231583AbjDTPgA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:36:00 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7166319A1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:35:59 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BFE5665B6;
        Thu, 20 Apr 2023 17:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682004958;
        bh=q0AucAHUmUv+DycZi5HHF6N/SkMiM52oPCnEMwRzSsM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Lz1A9UfMPfbIrmkLOutyQZsSlvx+hV08SUfK69JDSCBZTLYFTs+4UlJfP9xDrqrTH
         nDRhyCLa1gQQixFl60+h3wUqRO15p1e7XTHa7+MB+xryIbJZgfM4SC8FQThPeqwV64
         8gSoCbb8JTs/n8KDhhcZ0iF+5/GsMFMn5+edZeghVGao+YIN57l1rFIw+EupxMwX0+
         nzbpyp+ChE4P911KKhYOhTKAB+EIZ10dniHVvgLAEky6oXaT1pPPRZecOZoiKsCazs
         GWlt9XOPcL9sFN7Ud32M4SvzxYMVTmMRxPw+MVq2cYgSosGmUxQfezUkeNQuxOTwLK
         Ey70slJBZQ2mA==
Date:   Thu, 20 Apr 2023 17:35:57 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 4/8] regex.3: Improve REG_STARTEND
Message-ID: <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ski6y772uunlhp32"
Content-Disposition: inline
In-Reply-To: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
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


--ski6y772uunlhp32
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Explicitly spell out the ranges involved. The original wording always
confused me, but it's actually very sane.

Remove "this doesn't change R_NOTBOL & R_NEWLINE" =E2=80=92 so does it chan=
ge
R_NOTEOL? No. That's weird and confusing.

String largeness doesn't matter, known-lengthness does.

Explicitly spell out the influence on returned matches
(relative to string, not start of range).

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 33 ++++++++++++++++++++-------------
 1 file changed, 20 insertions(+), 13 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index c5185549b..1ce0a3b7e 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -131,23 +131,30 @@ .SS Matching
 above).
 .TP
 .B REG_STARTEND
-Use
-.I pmatch[0]
-on the input string, starting at byte
-.I pmatch[0].rm_so
-and ending before byte
-.IR pmatch[0].rm_eo .
+Match
+.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].rm_eo )
+instead of
+.RI [ string ", " string " + \fBstrlen\fP(" string )).
 This allows matching embedded NUL bytes
 and avoids a
 .BR strlen (3)
-on large strings.
-It does not use
+on known-length strings.
+.I pmatch
+must point to a valid readable object.
+If any matches are returned
+.RB ( REG_NOSUB
+wasn't passed to
+.BR regcomp (),
+the match succeeded, and
 .I nmatch
-on input, and does not change
-.B REG_NOTBOL
-or
-.B REG_NEWLINE
-processing.
+> 0), they overwrite
+.I pmatch
+as usual, and the
+.B Match offsets
+remain relative to
+.IR string
+(not
+.IR string " + " pmatch[0].rm_so ).
 This flag is a BSD extension, not present in POSIX.
 .SS Match offsets
 Unless
--=20
2.30.2


--ski6y772uunlhp32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBW90ACgkQvP0LAY0m
WPEyYg//Tl1R87Uq0lvPwLHhTTR62XQt+9PSnLzSkxziRSIs64yonRI9P2beBe/w
YjdxVUamkg0/TvGTsWXEs526QN6OWpTmoLzPqHB+/MN2x4XPwZEOLgbDmFpI4+YJ
faExHe13tcFZWEnqYOwOpDN0E9gRXvl9khzQ+slFGoAWLxHC98R2HT/gf0hhcSdS
vXkiRqqOyGMGtuKmzxZPmdv1vupqSfC6dczVeGI9Y2VsstCw5H9PL98+ma9GRg/o
bOOCErepnfK7o9HJxgsmGChhbcudhf4zKPbrr/zEP2exKiWj3iXiPV2aG1xHbzkI
QnkkeQCawgVNn7J4gXCOUD+iXnQx1v7pa4SvIjrRHcb6TvPubbVlTUdmaFBBckQ5
5g2bX/y9tqyMhHKPbBSynpHUZjB4/IJWXlHGwD+33x5/ipjp2E0DthqqBFVUNHI3
q8SQm33Wc9aDdNWI6z60NYmhP88WVU60A3AEN+rEyxJKPD089EG4MkyLw+fotREQ
/Nm5nJF64t1n6No1oq9LES9fOE4rpW5FnAyAG6z1AfVEiwwXO5ly6ckGh/hAHAV1
jsg0sjHoqyA+I8npi/oAapOQELnHYAfG02MVQNlHamtU1/ivPXeJlYmrdSl3JGAG
k5bn7bJpfO8lg2qJ3xmyhgxUf6OBzySpYKnEGm5LXG0FmC6yJ6I=
=t9ia
-----END PGP SIGNATURE-----

--ski6y772uunlhp32--
