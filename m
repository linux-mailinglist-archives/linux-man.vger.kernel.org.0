Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21A606E954A
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:02:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbjDTNCe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230386AbjDTNCc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:02:32 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3A8B41BC
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:02:13 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 79C4362D2;
        Thu, 20 Apr 2023 15:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681995732;
        bh=6dkd+9aBxc7Rx15RicKUHSc9RXq5n59gEEawCjAEFIw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AdP9s4B7CJlFZZQpszNpvz82kNXLmUdzbOTcUgNip2dfK43NLThheTEQNvcWRYBAk
         5EsNp6vmluloGxla1H9a/nmW9IRSzUp54xTM97EdE/sodfDEvRRkdhswtvZmIQEkw5
         8KxbskJ9l213jGzTWsAgvqc1HZvRVoMEHch3vzds1DTj5gpN0K5/9rJQaqqKKgkiUY
         +EPi1HsRgJhp53aLjs8VlulJPuB3r21ocv08QNEw04TSLdebZFqUJ6wdY7B7gFrnLM
         3zPXidNDUs5a4CBW4suthJdDHF3BStzDtyJ4XYNKKWkdoukIv8dYSIoaqM3DJGnT3W
         X85eyQ7gRZ+xA==
Date:   Thu, 20 Apr 2023 15:02:11 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 2/6] regex.3: Desoupify function descriptions
Message-ID: <93265aabd86cf84d93bf80af1e56b12258f0ab08.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kaxnsutobpja3mrw"
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


--kaxnsutobpja3mrw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Behold:
  regerror() is passed the error code, errcode, the pattern buffer,
  preg, a pointer to a character string buffer, errbuf, and the size
  of the string buffer, errbuf_size.

Absolute soup. This reads to me like an ill-conceived copy from a very
early standard version. It looks fine in source form but is horrific to
read as running text.

Instead, replace all of these with just the descriptions of what they do
with their arguments. What the arguments are is very clearly noted in
big bold in the prototypes.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 80 +++++++++++++++++++++-------------------------------
 1 file changed, 32 insertions(+), 48 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 637cb2231..b4feaba19 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -25,8 +25,8 @@ Standard C library
 .BI "            size_t " nmatch ", regmatch_t " pmatch "[restrict ." nmat=
ch ],
 .BI "            int " eflags );
 .PP
-.BI "size_t regerror(int " errcode ", const regex_t *restrict " preg ,
-.BI "            char " errbuf "[restrict ." errbuf_size "], \
+.BI "size_t regerror(int " errcode ", const regex_t *_Nullable restrict " =
preg ,
+.BI "                char " errbuf "[restrict ." errbuf_size "], \
 size_t " errbuf_size );
 .BI "void regfree(regex_t *" preg );
 .fi
@@ -38,21 +38,13 @@ for subsequent
 .BR regexec ()
 searches.
 .PP
-.BR regcomp ()
-is supplied with
-.IR preg ,
-a pointer to a pattern buffer storage area;
-.IR regex ,
-a pointer to the null-terminated string and
-.IR cflags ,
-flags used to determine the type of compilation.
-.PP
-All regular expression searching must be done via a compiled pattern
-buffer, thus
-.BR regexec ()
-must always be supplied with the address of a
-.BR regcomp ()-initialized
-pattern buffer.
+The pattern buffer at
+.I *preg
+is initialized.
+.I regex
+is a null-terminated string.
+The locale must be the same when running
+.BR regexec ().
 .PP
 .I cflags
 is the
@@ -113,12 +105,10 @@ contains
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
@@ -217,34 +207,28 @@ and
 .BR regexec ()
 into error message strings.
 .PP
-.BR regerror ()
-is passed the error code,
-.IR errcode ,
-the pattern buffer,
-.IR preg ,
-a pointer to a character string buffer,
-.IR errbuf ,
-and the size of the string buffer,
-.IR errbuf_size .
-It returns the size of the
-.I errbuf
-required to contain the null-terminated error message string.
-If both
-.I errbuf
-and
+.I errcode
+must be the latest error returned from an operation on
+.IR preg .
+If
+.I preg
+is a null pointer\(emthe latest error.
+.PP
+If
+.I errbuf_size
+is
+.BR 0 ,
+the size of the required buffer is returned.
+Otherwise, up to
 .I errbuf_size
-are nonzero,
-.I errbuf
-is filled in with the first
-.I "errbuf_size \- 1"
-characters of the error message and a terminating null byte (\[aq]\e0\[aq]=
).
+bytes are copied to
+.IR errbuf ;
+the error string is always null-terminated, and truncated to fit.
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


--kaxnsutobpja3mrw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBN9MACgkQvP0LAY0m
WPHdsw/8DscrFFi782yH489GrQ96ot0ZAqCEOfXtHzKbRJw1jBAFJfufpJWW6qQp
CtRkPjILVG67geJI5av1iL5V+GbOEhbdW8USXkUkj1CXncWA2UT9v9NZ2tb4qqjm
1LI0CuPwvUq8q9wuYWG8SBGvu+sigc5T+aYpo4IPfuVyVxmq8y9EK1ktlAWELHwe
v46H0YHZBYFGEnLR630JoMuPN/FrYYux0hQM9ZWw+Q7OpChyu4pIDH6b3drg0J2A
5g+EFMv2hbW+Lt82CudjjVX4KkdR6dOJVY1VCFfD9trgyOum1p2pD3/48g3Z+7iG
yshYiUK3v1XFskzwzErpHTsl3Yy8SPCE5SeWMida7F/9rAQaC7hBSIOU/KiAfVRN
E+i10yabN6cQy/BMGJJ+kcu4q8WvM8v8D7BUtyDkw/sYJqzE6U6gr5jozZkJKhhw
3dkvnSPLIoKnHBggVA+b2u4UsPqX2TwDqrQtISTqNYlu75RwRCogrf/PFrEdNyMD
UEA/iI3T2Xy1MdZO0TWYgKshe0Fyq875MKwW3yfTMhWwpcWVRXuzH8CfdRVYpB7z
voO6ctfnzSqmYUBX1j/xSqvKjTekUkM+zVAkexyLM6uFhsCpCFdqM2Z8wLCy9bL/
cT0ImXbNpzIjveOiLmizsrktcWOkDMOcGW9VK108QfgRbFE+Mwk=
=wf1o
-----END PGP SIGNATURE-----

--kaxnsutobpja3mrw--
