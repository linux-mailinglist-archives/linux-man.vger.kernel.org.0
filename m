Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 714E16E9245
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:19:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234829AbjDTLT5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:19:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234667AbjDTLTm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:19:42 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9D6BE35B1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:17:08 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 335F265AA;
        Thu, 20 Apr 2023 13:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681989320;
        bh=KBuRxXx7J+jq38+OAo3bJgSJLvbfDT3dzICMb/37wq0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Yd5AEYIJHKjtr1fLQ9HfxpP/xYz5ealRaGRKgGrfVsjXm4hJbr1pgUW1/8rsCM816
         0AVoMTEJjVqLOy3P9pmXUboa0LTo1c+S+66u9btRSbCsifIG8+NU3yisY2p4oQen/0
         8EWJhgmkRYOQBAQd6XaWJ0cGv1OWKUKg55Zr+b5ysiCXIQ9gkUiT2pKhfinaoRToGA
         z3JNe87pdano0sxEz1ZUilbS+W6/YXz66qWVlfyHlGPb5+fdl+fpKelwMCnJfWpFh3
         KzGfKVxSJiLHkE9nBVxJLXi3QD533bRF07IF0NEZLpQLmUyLEaw8Ead9sJ7ojD1fA5
         r/Ql8KfulNvaQ==
Date:   Thu, 20 Apr 2023 13:15:19 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 8/9] regex.3: desoupify function descriptions
Message-ID: <92194104b9e74c0b55992a6b1fc4f6c585a117d6.1681989259.git.nabijaczleweli@nabijaczleweli.xyz>
References: <36b8274e3527919fd0509bf90b3cc700c3dc25b4.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ybr7sqarfid2pjpf"
Content-Disposition: inline
In-Reply-To: <36b8274e3527919fd0509bf90b3cc700c3dc25b4.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
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


--ybr7sqarfid2pjpf
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
Left one "pre"compiled buffer.

 man3/regex.3 | 80 +++++++++++++++++++++-------------------------------
 1 file changed, 32 insertions(+), 48 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 9f262f985..9bb4a73ff 100644
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
+against the compiled pattern buffer in
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

--ybr7sqarfid2pjpf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBHsYACgkQvP0LAY0m
WPEeMxAAijx5XokgEMpF5dbdtM3ACk4YiNUDmlR6paWusryQpJ3mUU5wHTM+eLJE
NQCjR42UmfTWIFMtsfpBCbyuD37ZGhpfJtYbAUVyvPiBO7oyDZpePsMxdgxujQsh
WBXiNQzEPUhLh9L4Bx9AerWpPS+QzyTwMMz+g98qxEN+0AXWo6Z2O7GitLH/CvDg
f4s2b4Hvy7GRTzr/ZzmW/oHATC61yNF0mHUiEZAZuD+zU2RmvnyzTXTWSPLrgGGT
bByUTTi3PLX/hKpl7yyDlLkzH49G9wKZu2u/sRapJHT2qDPceSKBqpbSZ9R8mdev
BHmb4bEWohXMsyZP+QwrzkblpitNV7YPa5+IF66CpcfoXil/0+YXShc5ZFgmjmZv
XI/DS4+21AmdEJLj7gdjmIm51wSKzHUM1oWw4v0xZH7LoRqWQyAvf5gotf9kIP87
g4vLV6zKNhgZEOzCXA+kYltJAGO4UBduVWNUcs8MvSmwJzNRR2cdDzD9pTJiMs9w
gLivfXVuu9HzbbHzV85mkiKyC6YWmPlMvzsLbR0AtXRkxJE5Vz8DxWv0fNPRErff
pVwfdGuodxQf5iYcHPkeIiqIk3vLdZ5NOoyZSXvzdC4AYZB/eAVTvVbgHiHmbvDc
LmhUu8ifJ/3hEltZqnYDfGkJa+yHGdDZVWMg3Zx4O/Ju2blbMD0=
=QlgK
-----END PGP SIGNATURE-----

--ybr7sqarfid2pjpf--
