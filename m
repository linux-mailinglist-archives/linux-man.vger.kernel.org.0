Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB5C66E985F
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:35:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbjDTPfu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:35:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbjDTPfs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:35:48 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9FB021988
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:35:47 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BE7636A08;
        Thu, 20 Apr 2023 17:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682004946;
        bh=g3zOWNBFqp5z1cczjsBpmAzyLonk7Ry1UGMHla8Npns=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GZiRuEzp4yrsFd/vrj8GHRG6FsbfzL1VD8FKA6eFnbvKlLndOIXjPOockigupwOs1
         9R0SWII2ZGreFdJDIHagEAuleOohG9oyS74jSo1cs/kYkVlF1ENDzA21GMxmr/5dzz
         QuJIsuEl6M70VmBSIH9zTLOJWNXiJ0DK1u/XlxvE9uBpoAb6ZSTp1FmvtrZMJA+PHd
         1IEsJRG1c7j1UIKdwDS44hl1xtP2qDLVkYXhcSC8PZSqy2PeoRbFIIVetdKmrKIdI8
         T5sqbcn70niwSRIiEC8DObUrDyxW8Y5tw58M+jJmUHRqoNFehk/bMn5nyGr1JtV3Qx
         TZYr/RgzSGHKA==
Date:   Thu, 20 Apr 2023 17:35:45 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 1/8] regex.3: Desoupify regcomp() description
Message-ID: <fcb8df21b1f734ef33a64fa7d0861984c133faea.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gol74vs4ib6udvhv"
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


--gol74vs4ib6udvhv
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
 man3/regex.3 | 22 +++++++---------------
 1 file changed, 7 insertions(+), 15 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 129c42412..2f6ee816f 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -38,21 +38,13 @@ .SS Compilation
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
+On success, the pattern buffer at
+.I *preg
+is initialized.
+.I regex
+is a null-terminated string.
+The locale must be the same when running
+.BR regexec ().
 .PP
 .I cflags
 is the
--=20
2.30.2


--gol74vs4ib6udvhv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBW9EACgkQvP0LAY0m
WPFI8RAAo8AnpzIs2YxB/N5A6tHJkKNCgymYBPSDOwFYXFZDaU2PUqvo0DYbmrjW
Uu256i9mvt567k69so8PO93fbXiIGhYGUqo55Wjoz02j1FCm/clBbzvRMNLtq2kZ
GhzFJ1S5D1DNPlDG27luXSfaWEuMAF0FF7V5SYehcJH8IN+3DaLapPf5CD/rgMb6
fcTwa3g3eOTMz++pRntqfx/fy5DQOV/sRKEl9Ti9C4U2ojNasDI9pZt35OWKnzHU
Gmkfb4d9EFICel3qRRuntt/7PIT55ZeL1Fp27UPOtHmkhmdi4h3XCluizDvgWM5U
c4wXOzGmnpk0WswrE3t9aNDQE8YFQr0bLaQBwrtVI9V2KAlTXqIlovRFCD4dlIIl
jXV5DauWKoXk+XWclWyPgLxLQ/N+PPdS3mb10jrnrrYCaNf1oZbZPqBB4rcapFQB
niw9UD0CLEnxGBP893hPA2xewe1HRcrqX4EHcWCbl3vv8eliasvMrp2x1IXoRXef
Rf5QCWlqtsALHd5aTqfWPh66HVeJUUeV9jqNK9aH8Jnv1nu/RrssjmfNyB4wNSJR
RutGnIcEusAuswZf21GPirmMHmhyRkKlyrgiDcyVbHDiOZThTBVy88lDMmt5V/TJ
NRBWF9giPVaLWlb4HnDIltHbEWrFxn8XJDl97sET85HdWueT64A=
=HJ4B
-----END PGP SIGNATURE-----

--gol74vs4ib6udvhv--
