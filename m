Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 253226E85E4
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 01:26:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbjDSX0Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 19:26:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229700AbjDSX0P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 19:26:15 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4231FE4D
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 16:26:14 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9831A62C6;
        Thu, 20 Apr 2023 01:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681946773;
        bh=blrUygyMqmBk7663O5f3ZoFojY/HXX3VNH+geKQzd+E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mTCy5J6J3TsUVfIx4sm0Ji/yZ0CPHtJhmFo/5kwQS4WvJsc4ig5Mze7kwXXS3Pq3+
         JAC2CfOfiMee1cCKlgVo2nvF2LCbddHxXG42i5xDUcWfgmRCaT9O5KGfPcgCLepPAc
         OYfbSY1Q3PQLvN5Z3UDMNlq8KbsgzIq/NQ2WCRvq2BPnjXuaTirdnHZiti6xv+8Q11
         ToLGY24b1DWxttT96wSpLHR3SECJFVoGH3/my/zH4nfB4G56W6tQsanLUXClIc1VpI
         qVbrT5e4RiksruX1tTkIj3T82lLckdJleku6O3pJWSc95RZ79wBnh1oLolY9LN6ZAv
         yx1Qvyq+ABKXg==
Date:   Thu, 20 Apr 2023 01:26:12 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 8/9] regex.3: desoupify function descriptions
Message-ID: <36b8274e3527919fd0509bf90b3cc700c3dc25b4.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hp3bmavc5ot7n6r3"
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


--hp3bmavc5ot7n6r3
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
index 9f262f985..7d08d4042 100644
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
 .PP
@@ -52,21 +52,13 @@ for subsequent
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
 After
 .BR regcomp ()
@@ -142,12 +134,10 @@ contains
 .SS POSIX regex matching
 .BR regexec ()
 is used to match a null-terminated string
-against the precompiled pattern buffer,
-.IR preg .
-.I nmatch
-and
-.I pmatch
-are used to provide information regarding the location of any matches.
+against the precompiled pattern buffer in
+.IR *preg ,
+which must have been initialised with
+.BR regexec ().
 .I eflags
 is the
 bitwise OR
@@ -242,34 +232,28 @@ and
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
 .SS POSIX pattern buffer freeing
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


--hp3bmavc5ot7n6r3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAeJQACgkQvP0LAY0m
WPE2GQ//cuJAuaSPLGNZrC2AzO4/eLWEtpYveLGt1JS/+eX+ryhhR9e7l4rNYbjn
inkixa4a6WAzPsXvT8g6St6MxpJt52ATKUM3BLfi0g0JqQVKXBb553BiYeRHYooI
j5UKJaEPtIpK3gUy2F6dJVsuF+zf+mBu8x8dOprRh3mSJRVgQDy9qqevYWDtcY2A
29SNwgOza9VWonuh8RWUGCiN7PetzRf1Ba+hAz+Wy5Yzb5sR66C2E5y1QqVIp+HF
l+wLqwo6mlNN5PytrlyuQv0+Y48vi0euXugCyR+si5kasEsKowcwFalpWLtYSnIe
zwvgvHfDT93x25fuaOH4USrC6JeSu3ZxpslTqxfxshL5XST3V576Wh4HZFA/3gAL
ln2OgplktNnre3Ur+ywf0eKA5XJnk9TFFOo76uKNk8FZ586I0wrqPrlrLY489toP
ZaxAAopltDFynFPzneWp58+Gw0OxlFx540UJYajpYnHhAvTWeqHCD4i+GX2YA5M+
yeWn5A7aWZLSe4Rdw5W3/jWSm26eo/qkJrrh0t+r+ahso8tC4LYM9wtLZiTeZmGP
cwOZ5gKwa6ZzuodL7X1zlEPtBAszsXnZLqVi4v/hRcVDyVBNYsyediy9opXnTXhE
2O0+p1bAm2TOrhPHRGjYPz+W6Bw3r+6KwbAgHrh+TtJKEQxOpH4=
=vSeW
-----END PGP SIGNATURE-----

--hp3bmavc5ot7n6r3--
