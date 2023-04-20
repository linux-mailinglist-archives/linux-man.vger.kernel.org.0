Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76E036E954B
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:02:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230512AbjDTNCe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbjDTNCd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:02:33 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 21B1B3AA4
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:02:17 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6E3EB690A;
        Thu, 20 Apr 2023 15:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681995736;
        bh=iB+qX/I0XUg3weAzQYhOqYiJqklD8vcsIbGVL9u2FmM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XZxSUfpNAfC/Lu2N1ADrCy2uf+xcVIvLfZjRAxEV6OkM74owbzVFv8YNLHj+fopP5
         AMdnxuMK2jHUZa+JODOyQjiMb/uzvXyJuR6HIgygmqOjwLOX5ofj1nA14AJ0rQFCko
         hIl/4nexFIObnB8NQvDQfT8hToSomfjQDawz/LdGbNd6tH33jXw94wyVqQe07+kOU0
         Z16/ZV+WmaJ5MHaHN8BovYJNKZBUe4flgTGxO48Z+plBddS8KZSxGm1uQSuDYKXhFe
         iaNchFdhQzPCNrQ7EoI25qn8RFTQ5Y///POout4MixXYtCZFdUPth98T1E3Beib82n
         lasIr56fmLbAQ==
Date:   Thu, 20 Apr 2023 15:02:15 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 3/6] regex.3: Improve REG_STARTEND
Message-ID: <13d805ff942c9cb2fe1517f0e043c86d2b51ee68.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ua2tsa3nkgtft6we"
Content-Disposition: inline
In-Reply-To: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
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


--ua2tsa3nkgtft6we
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
index b4feaba19..00e7e2c6b 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -131,23 +131,30 @@ compilation flag
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
+.B Match offsets
+remain relative to
+.IR string
+(not
+.IR string " + " pmatch->rm_so ).
 This flag is a BSD extension, not present in POSIX.
 .SS Match offsets
 Unless
--=20
2.30.2


--ua2tsa3nkgtft6we
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBN9YACgkQvP0LAY0m
WPFFlg/+LfwlmKCyDqQaIM4KhkyDwKGhOeCf9+PCBTuSk9qecMZSuxwkqgFHDFRX
dSqreZdZDEVYMiyh6Iy/sgYIfBTKcWXYrM4fPbSeUg0687PEfbXyelHnY13r/M+1
BAuLTvHlfG3nYfVy3NmZfFHJHXO5eLAB17w5XzXXe/gP8NHCqLcnK0LnvbnpsLae
mLHmE+cGbBiskPe8ELpI2j87s6aFICAn0+fdtU3aHrwtNVqrd0Usp6LqnLtOCkRs
d20lGWJ/iWsz62lBEg9bWQ063Opcib1KwKZ3Gej4RQi6+datcYcpEVDV1oRTsu3p
/fIAF+WNvFITWnef2JtkP/OtGYo1jJONZppl5i6zjeX7lnrYn/CASidfGJNyIWPC
lQLn5BghS3ZvatysEdEtFFHEdlykzxeWo6C3W7pa0SS5Pi+E/DkjHxvzyP5wJKqv
K2OrpI+3W44ecndiXxZxzVmdozqiXMQTzl/JHf3FBqRPmN261EBGJT78/L/wjtYS
L+eXMWe+5NgBD0kB6kRSnJDduhlQeUwTbyMeH/EAksUz5Fcg0ULXAiIXgBBUxCY9
53ZD8/wRpTG2G19ivYaU/ZDc9+vg8GrjZZwDTwkTangfrafnL6KOk08ajY6Zz61n
cyVZvQ9TjMJGmfIDuGKeUIkzwym7gFy1uAwm+xBZAT7bkvmlvDQ=
=/BEv
-----END PGP SIGNATURE-----

--ua2tsa3nkgtft6we--
