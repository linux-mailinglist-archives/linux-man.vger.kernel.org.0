Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52C116E9C85
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:37:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232042AbjDTThI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:37:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDTThH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:37:07 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BFFAC30FE
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:37:06 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 215FE6992;
        Thu, 20 Apr 2023 21:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019426;
        bh=ZogY/sBFrvn3kbUvbKlHL9kOnPbPG+90GpqFU3aWgcs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dG9Kt/StI+cdETKF7M3+nLJ9ch16ZSnwuKDuhI+X9L4+in6tWQHB/u/62JkB/HVgj
         LQpHRMLaLOONRExoFJgShzAzvYDpUc9VvmAQyQUf16qieBRpR9P6z3OSS6ixSjOuEm
         /WTOXVmDVEM6EDieGe7rbX/HxcTzwYWeHtO42zbQuig38+CKRQsdfcI0oPRFqV6KA2
         j3I5ZVQKQopLFfTiQAcMRyZNGlPZBjJRLSn1lunYVaOAAhAWRpZMLd/e9kDl1pHlLC
         jbZusCvr36saEy4RgfedYWi5EBab/T/hxDN5E/S91A6WY6yXzTFnabBhYHeHL/Q+0I
         qZqNBur9kwxOg==
Date:   Thu, 20 Apr 2023 21:37:05 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6 4/8] regex.3: Improve REG_STARTEND
Message-ID: <5fb4cc16fc25787cade8b6a93b3ac272c57c7808.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="p36nahyits6baxtu"
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


--p36nahyits6baxtu
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
 man3/regex.3 | 29 ++++++++++++++++-------------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index e3dd72a74..a9bec59a9 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -131,23 +131,26 @@ .SS Matching
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
+as usual, and the match offsets remain relative to
+.IR string
+(not
+.IR string " + " pmatch[0].rm_so ).
 This flag is a BSD extension, not present in POSIX.
 .SS Match offsets
 Unless
--=20
2.30.2


--p36nahyits6baxtu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBlGAACgkQvP0LAY0m
WPGfUg/+KPfVXBNzKZI0eOGkqgVpV+RHH9rx3F66foC02zANpH6QCI0jamXCsdMr
uvqe1TKVvSNJLQYosMHE9geaXvzFJtwW6QIAOJctSotYbQ79V08P7l0jaLJrZsIx
EGsB/hbjncGaD1czCB7oLIEpdvzwM9ZUv7KAuQUDh6MZJzKCMbgpFMBQ6yFRC5mV
yF+tu6ZFKU9GzBFQEJV7bET/PpXbBDMmfuHiqDDm1s0wN1ElVrqaBMrqmL0+E6gS
wM8tDD34ELYJQN65tvE7o3UIqmWTBtn0YdVNg4gnjoDkzhKwHUsImkvhvGZXVrBK
RQxsl/9THXdNGGhGCUvx9M00RORy7cXk660uRzaNBsuTF1hq0/fQdSBqwGx9UwUl
wJ18XVF9fDoEc7VPT8HIwLhvylsClj3QRh0HrO/973kcaCNbwJEGagDe18dPfvcB
MZqtoXUtGpsGC0E/4iFkIPuDBdNMXE+QyNuoKo6n57E74GhlgzUbNv6N9yJ5mc51
uVGKPxT2+kREl69AhbkJWITExnOLvDQAfv0x30xdso2NInb5SxJtfFGVNcpfLElT
sVdGfrlbTkdkTSpwp4++EZOqE9wMlXPgC8Nj+D0TL2w592V0qdonjEeV5yJImwT7
ls30Nlml8346f25xmFluQD9EDiF1j60GJGMmXHgsP5F7BRl0ZG4=
=Tykl
-----END PGP SIGNATURE-----

--p36nahyits6baxtu--
