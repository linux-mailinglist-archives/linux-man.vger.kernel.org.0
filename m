Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECF086E929A
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234664AbjDTL2u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:28:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234807AbjDTL2d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:28:33 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 12449A258
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:27:31 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 31B6067B0;
        Thu, 20 Apr 2023 13:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681989435;
        bh=irkOSLleTgGDoqlhZDGJago7QFZctsSI7w7phg1D/kQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=G+xuZLu2Vl0x0mtV0IMFlxaNnR2ojbS60APVIApMJ8WFfGzs9NDOLoh8QHGwXiYJ4
         08W6hK39lDe65/U+uRciKKbLatokrlUJu6kAVBww/39l/w8Eid1WZ8mqhCl1P/Wvj4
         qnAu5pemmDRcDy/h+jQ6wRqHhpd9bBotsDt7h1FSbnWF2xeHXbowwbxLbvf8Hm+79i
         e4Z+/f1bTO9A3eWHPAqESbLJ3hseWuKBB56b9dxDtb9NzJyL5Jk/ijo8IIFYoAps2B
         bSTSmxN9xnwxm3hjjlL+pXblI4j0HA2iZA3A7lJd7ygbMC+RRgvPXkBFu7TisCGxJ8
         3TJ6gGa0Vb92w==
Date:   Thu, 20 Apr 2023 13:17:14 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 9/9] regex.3: fix subsection headings
Message-ID: <3sqgdjgnmrcyumyhsxwpac45zxysulehdlqnrujdkhz4rpptrh@3vxsp563hwey>
References: <f5ef1d788924aa9b9b011a17024bee59130853cc.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="h7lx4qapbbvimkge"
Content-Disposition: inline
In-Reply-To: <f5ef1d788924aa9b9b011a17024bee59130853cc.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
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


--h7lx4qapbbvimkge
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Missed the .Sx Byte offsets.

 man3/regex.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 9bb4a73ff..552763940 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -45,7 +45,7 @@ size_t " errbuf_size );
 .BR typedef " /* ... */  " regoff_t;
 .EE
 .SH DESCRIPTION
-.SS POSIX regex compiling
+.SS Compilation
 .BR regcomp ()
 is used to compile a regular expression into a form that is suitable
 for subsequent
@@ -131,7 +131,7 @@ whether
 .I eflags
 contains
 .BR REG_NOTEOL .
-.SS POSIX regex matching
+.SS Matching
 .BR regexec ()
 is used to match a null-terminated string
 against the compiled pattern buffer in
@@ -179,13 +179,13 @@ the match succeeded, and
 > 0), they overwrite
 .I pmatch
 as usual, and the
-.B Byte offsets
+.B Match offsets
 remain relative to
 .IR string
 (not
 .IR string " + " pmatch->rm_so ).
 This flag is a BSD extension, not present in POSIX.
-.SS Byte offsets
+.SS Match offsets
 Unless
 .B REG_NOSUB
 was passed to
@@ -224,7 +224,7 @@ capable of storing the largest value that can be stored=
 in either an
 type or a
 .I ssize_t
 type.
-.SS POSIX error reporting
+.SS Error reporting
 .BR regerror ()
 is used to turn the error codes that can be returned by both
 .BR regcomp ()
@@ -249,7 +249,7 @@ Otherwise, up to
 bytes are copied to
 .IR errbuf ;
 the error string is always null-terminated, and truncated to fit.
-.SS POSIX pattern buffer freeing
+.SS Freeing
 .BR regfree ()
 invalidates the pattern buffer at
 .IR *preg ,
--=20
2.30.2

--h7lx4qapbbvimkge
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBHzkACgkQvP0LAY0m
WPEndQ//V3aYqmTDNGLgEqqmNph3fh0vBgZl7EuL1E0XsHfj12qq1H5AJw4ozPjw
wiLfeJz6OzCAP91YGVp19eoBejE/zN3+gmVhT0n0a8KvBp+ZMffLu/9z9VyMeaBE
bGRnl9qxcNk6L6v1AIYKgpnSZpfzuSfnrDYfrMFjm/fyRsCO1jB6Gb96oonl/TqZ
jD3EAhF2ctMlbjSzFP9O5tSYQlRYeFgCMXTuHpE0xf/qfK1H9bFuCTJpoHOd1LPv
sJpCq4EwhJDV5OoV8KOJdxsAwGPoEsglrMQ/2GAglHPLDXsyZoY7r1EbQ/1Rm8bX
tcUhlwZ4thnFBOMBnNkIbrfRjebidr0/yQ4ySZWkYBrCm+r7dJkk3Yj5shRPtmli
5d7XZQEhOzY3uwHg/hc2Vg3C/Oq7BaZTpROyKr6pYfYsaRhFzTyCjdTjoo7p5qsE
tC4o+vatuplC2FW41PkXFlzEzUbmyy8qTrgaAYk5E84OChuw9jfVtxoy3PJTXyzN
L8jfJ5A68weELmZ55gBufgjssjnPkmPEHt+NUS6NIqOX7R76wXYzPQPn+eF52Tni
vhhwb658nLtU/Sca1qOPvrMEQHuFNDRW+zKp66i1XDyAFmeTjhYd1f6SNTGwOtQN
oYILlRHTcQDm5cHejY+WX/3qwnYvBuMqlniflYwSiQRWGEjTDxw=
=5w5R
-----END PGP SIGNATURE-----

--h7lx4qapbbvimkge--
