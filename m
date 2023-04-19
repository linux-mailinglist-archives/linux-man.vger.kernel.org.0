Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E28D96E85D9
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 01:23:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232327AbjDSXXZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 19:23:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231510AbjDSXXW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 19:23:22 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CCF8D2D42
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 16:23:16 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 194686526;
        Thu, 20 Apr 2023 01:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681946596;
        bh=NrUl1wWRJPlm6MPwZFudqA1Hp69IYxN1SVp9yDmO/3w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TIemtwmBbtmQvxgxc7duI2lp6wRMY+GJ1B55FjScXaF8OgwWNC/NDJoF7nP0wvdGo
         ZM6SP7XM2c3wCuKyfYHE9rJA3rNGgJbbuEclgBblmMi73Zzioh6aSGpQzhvUbcr76/
         H9SSWAbGbIa851LYttQUDWF+s14e7cYFfI+4eXht3nwaR/FIyzqG/JkDkDhIN5e3Md
         QYmnh4T4vtuFKoLOCBx60gsYs7PsYPgMXhLxI52xiF6PdJEgOFKkVqPNBWTfAMGBTU
         NUwqXUDVFMWWFfAJPSdKiRIuIizFlVxedjsl5n5UWt9J3DgWFSjAAXYevJ+QBbNpbl
         doONpXtjxqZhw==
Date:   Thu, 20 Apr 2023 01:23:14 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/9] regex.3: improve REG_STARTEND
Message-ID: <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dq72oxirw6lkynco"
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


--dq72oxirw6lkynco
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Explicitly spell out the ranges involved. The original wording always
confused me, but it's actually very sane.

Also change the [0]. to -> here to make more obvious the point that
pmatch is used as a pointer-to-object, not array in this scenario.

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
index d77aac2e7..74f19945d 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -141,23 +141,30 @@ compilation flag
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
+.RI [ string " + " pmatch->rm_so ", " string " + " pmatch->rm_eo )
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
+.B Byte offsets
+remain relative to
+.IR string
+(not
+.IR string " + " pmatch->rm_so ).
 This flag is a BSD extension, not present in POSIX.
 .SS Byte offsets
 Unless
--=20
2.30.2


--dq72oxirw6lkynco
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAd+IACgkQvP0LAY0m
WPEVCg/+JzhIfYEWmtQANLU4HpVva412bqkK+Aa5EWeDbaXKnbmJOHksuCbDsmJj
ufcidVZ26uaWKz8E/fl6iAv5UgnQ1PCeRY7oU2tox3+3+cMSVawhEI6ytiskRe7f
+SXtPoHDjcTgYWUHzT51e0CqEROK68Xg0fj4avkPzZjUv4SZqPlODiinQi2CERws
gPXQH7X13xmzj/hjmScR7h1V/tXCRcwBooxjRAuJCJFdPlLPYiSOgHd+8tZKpesC
ehq2jDm2QtuEnwjt5iqZEa6hlq1t3Fn5RZXUYR5UBF/bZIR9TSnAW3ObEhNhHqf2
VobnQh5LqkKm6lIqRyz1VCrq3xLLTsxeM7qEoubYYuh7AHFXObf5toxvAxliiKmG
0or1c69i2FqutVj+lDzvWTPvtheSjAUHyl+yxwlkTWLpYDFSQjpeqrysG4O5YxVB
C0NkWSxYDLQ5J+vSjuDC1rh/o0QtTvy9912c6jNB6AHvr19WBZa2fthdOWtp4Hj2
R0BZyZeEEUxtgDLtyfagoCB128XXgOlzi7lYEOnNndVpme3q3HCNvT0qZ5u2nBEk
jc1aoVyKhOK2LIFzPNKdX8gr3JOskpczfNhuTZ2i2d4ZOMCe4WgnmXBZutoLFkae
Jy6XFk1CaH2fvVS+qu0Zhf/9n0oYK3H1uUQXZSK6c56gKTPpJcw=
=1FpM
-----END PGP SIGNATURE-----

--dq72oxirw6lkynco--
