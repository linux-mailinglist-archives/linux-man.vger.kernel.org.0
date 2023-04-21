Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F33C6EA0B2
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 02:39:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231169AbjDUAju (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 20:39:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbjDUAju (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 20:39:50 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 471E39F
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:39:49 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 901F06A14;
        Fri, 21 Apr 2023 02:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682037588;
        bh=PEhfFtSheaZL6ObHn2/pZhEJQ3ScRz+HNANdW/7Xxvo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TyEyqtsIueHUwK6E0xBMdzfjQU7rcdom2XobJa9ZCvsBiUhuLkurQW7aLhNSSKmsy
         c0oZAAYfcj5BJEcxQDAPrQ311hicxrlkwmzaY+XM9gw8Iy8JfJ/d5XVPwCte/Ju0fj
         wv9Pmau9iNWLivmoGvC4CGk/oouj0VAQNTN2NAq3FmepJUsswgUN/nVSxr8tkSGkS+
         hMAaqok1jAD6ps0D+KQ1es4Rx7z4D1+gPEjCmsgdQtldVsCjHQ6I9kKdRaRwKeAWC0
         QElrMJwiw4saVHoeMYgMZEO665yEyF+T+SqC54i2OmP4BaEzWZiPG6gzABhMVeNvmV
         CkRtwVheIB2bg==
Date:   Fri, 21 Apr 2023 02:39:47 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Message-ID: <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="272bkxki4fyeyd5d"
Content-Disposition: inline
In-Reply-To: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
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


--272bkxki4fyeyd5d
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
Range-diff against v6:
1:  4b7971a5e < -:  --------- regex.3: Desoupify regfree() description
2:  5fb4cc16f ! 1:  ed050649b regex.3: Improve REG_STARTEND
    @@ man3/regex.3: .SS Matching
     -and ending before byte
     -.IR pmatch[0].rm_eo .
     +Match
    -+.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].rm_eo )
    ++.RI [ "string + pmatch[0].rm_so" , " string + pmatch[0].rm_eo" )
     +instead of
    -+.RI [ string ", " string " + \fBstrlen\fP(" string )).
    ++.RI [ string , " string + strlen(string)" ).
      This allows matching embedded NUL bytes
      and avoids a
      .BR strlen (3)
    @@ man3/regex.3: .SS Matching
     +as usual, and the match offsets remain relative to
     +.IR string
     +(not
    -+.IR string " + " pmatch[0].rm_so ).
    ++.IR "string + pmatch[0].rm_so" ).
      This flag is a BSD extension, not present in POSIX.
      .SS Match offsets
      Unless

 man3/regex.3 | 29 ++++++++++++++++-------------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 46a4a12b9..099c2c17f 100644
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
+.RI [ "string + pmatch[0].rm_so" , " string + pmatch[0].rm_eo" )
+instead of
+.RI [ string , " string + strlen(string)" ).
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
+.IR "string + pmatch[0].rm_so" ).
 This flag is a BSD extension, not present in POSIX.
 .SS Match offsets
 Unless
--=20
2.30.2

--272bkxki4fyeyd5d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB21MACgkQvP0LAY0m
WPGSmxAAk1eSVilatfhJbl8Gvz9rYYUkbcLdgnBoXghC6uevhridM+ALGNou8Vrl
OFLQ0VUalRkD9mNUazTwQpH21gRd0PWNdKzhirHXgxvBzzWklc5rzOvMvOezw3hw
BZm+wlYRDLGPWlIbYFc4NwHxQNlrDeQ8QPalLF53QIhafkK3P/Hqgf9xXNIPCGaz
qtEF0AiJ9qyoxcfwdjB8gf3vM9bgTKLAiCkqt8SV2n5AzweoDj4By+9fd6ZwLDvk
aX6YwfWMa3ahad5eAum+Rc801gjqdJKUr1fSJNx1RSVAsNA3mlXoqFP5PtOwZeKA
Z88U4K4jqfk2h1mfpcRJNm9rUxlNiY/g995va4ZHix0rmpeq3zVZcmH4oWzUASAd
S9a8NFj7tgKlokwHF5diIc0gIF/7WKZokowCA6sSoThf7CP4xdQYbofgpoBMfZ5U
yZAm/Opy9JozUUqmV2oa7qNrCc/M0FkS6aVuoxcAtnuCNbj7Aqb8qJKX0l5rmREN
oyHOpf4jGnbjm18zamY2mnKu6coDc7GKe9pRPc9nYKtM7ZDMMMstGUFHA85ycrIM
WXbdjho6DzvK7LDhDyvplJLsJD0fpaubTSVAo1RI+pI0a/oyKdMfiJtoXxD/Izse
ZxrxMs3atuXZGA2Sf07rYlBmwAJD2YTvITAhsLPCvyki5xjWKt8=
=w4PR
-----END PGP SIGNATURE-----

--272bkxki4fyeyd5d--
