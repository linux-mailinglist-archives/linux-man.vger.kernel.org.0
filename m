Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5D0F6E809F
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 19:48:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbjDSRsy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 13:48:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbjDSRsx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 13:48:53 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 00543F1
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 10:48:52 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4E6B25DFE;
        Wed, 19 Apr 2023 19:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681926532;
        bh=jlsB4RSH5DvF8tceQ7A+Nln8X9SLLttCoUty+dPRvmw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=aU4nKf216BMdUXSPwBXnC7JcOprkq4yj8O92TsGR+FiyRvFBih8hxq/9HN3U25r1u
         iETwE73qbb1rfFYagKbjZugcyct03vmW/6koOPyECFWAjO4uFdRoTSKOx4KVl9SRhC
         d+CLU8M02A1yI5PmlMYGVMvcRenviYGNzlxkLpb0nkVyu3hv2/XHrqwx7I5IbsWQVh
         n0NXLev8GbXhh1Lfx/SrQEYsPxTQDJPgoGGIXgqfvOWC0Cyee/Xn08nbpCfsHThVnE
         dL+C18FS3HOi9j+USlc9CmOZMqcTY2Uj5by2LSdyk9HoXYoViP7pXSrpOpON3rWNd4
         SmTsaUg58gu+Q==
Date:   Wed, 19 Apr 2023 19:48:51 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] regex.3: improve REG_STARTEND
Message-ID: <52a12177427a5e781b16b4efc85f8b90360a4e8a.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
References: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5jokv2pkndgpqdzk"
Content-Disposition: inline
In-Reply-To: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
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


--5jokv2pkndgpqdzk
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
 man3/regex.3 | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index d54d6024c..2c8b87aca 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -141,23 +141,20 @@ compilation flag
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
 .I nmatch
-on input, and does not change
-.B REG_NOTBOL
-or
-.B REG_NEWLINE
-processing.
+is not consulted for this purpose.
+If any matches are returned, they're relative to
+.IR string ,
+not
+.IR string " + " pmatch->rm_so .
 This flag is a BSD extension, not present in POSIX.
 .SS Byte offsets
 Unless
--=20
2.30.2

--5jokv2pkndgpqdzk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAKYIACgkQvP0LAY0m
WPGtQg//VtP2fNBXY5Zu88LtQHY/0ri6D6xrANjCUo9jc73WiAL0eurv9bv2DiHV
koZT/daXVxV611mG0uLQ/oH/MFPE0keUiLmXzLUsF5L4RNKyzacXJC1X3suS3foO
U0yS/R1QXUmkE2CvoU8OtB7ypZA17rYTfeu7v8qgyNOvkTBltiarnsqlsA90R4U5
DIx9kJpv81u8BaA8OMiuNt15tHhKbv0HvCAceHIKvUwtXqjReV4/+Zg3Coouiwr3
e6K9hZ6x9bKrioiiUCyYatg5i0zXbbhYD/9OJae6Kicz1mWfrFGGHheXgr8wZl0Q
kg6zTPSdGPddnRwhMNtLtqrmSXS5B05HYobKQN4tYJrtpJ2m6dR6EfSR5S5+4+NX
JwTpaxqse/FX/nXZHfHodBq3f68CIfJLLTr3NL9a4GLf/yH1WlC4b/0c2m/DcmF6
2j0WVCz1nWwuzqjbC2XoMK9XiKWSXWI55q2Kz43HIhE8lGRKthD5k8lk1CMOv32j
udT4V3+C/CSaODVUIgWZCSOSluiZ3cV1/doaKCvMSIUU8EX7z8y/Cfm/r+M/lvLZ
gHRADQziq9Zcr0120Zb8MB0C8fapbRBavX4vh19etKtlHuTIjWC6D1Wn6OoBryIK
tcMVYnPYYxOJvpOhKIpUIbNKhEYoakM+Ji0JXQRgcj9de44lEeU=
=k/kj
-----END PGP SIGNATURE-----

--5jokv2pkndgpqdzk--
