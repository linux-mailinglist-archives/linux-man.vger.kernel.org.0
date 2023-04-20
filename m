Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C5096E9863
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:36:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231916AbjDTPgF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:36:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231583AbjDTPgE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:36:04 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5E20A40E5
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:36:03 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id AD2CC64B8;
        Thu, 20 Apr 2023 17:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682004962;
        bh=Tv0b722PaSaf5EhVvrQyP+If6Glfarj1UM3SVNGo0OY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=C1s/kHZ6q21qsbb/X18H2TJi1nlDeBS4ub+eS6NgDG8e2Olwy1S7On6preY+cU9In
         S96LPd2L2kXvKJcvP/Ss8aEpL0+VseQpylctlVjxn9OvArP4rpKpEdyv6o/I82Qhdk
         vjure3Vl8pnfDhlL9bresw/YuW2pnF7xjc05RLrBfjs78evKlZVBWtxxBvMIKafKc7
         j22YxOfN/jnmX1Y1nbKqf7b49MaTUg3ziXzoLWLGVAjesaGFPnFFCqhq/k62t1X8aF
         x8EwQdaH5eZm9eC+iJQoWSkh6MkmkJj4lyzidhQpiVlro/2xDys5FMWTf/b/PsiWFo
         KOPfw7L3mBKMA==
Date:   Thu, 20 Apr 2023 17:36:01 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 5/8] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move & link regex_t.3type into regex.3
Message-ID: <198b7b4fad3a3bb80f18b3095f3e1cc13a8e4a5d.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zjt5n4y4retfm6ri"
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


--zjt5n4y4retfm6ri
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Move-only commit.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3              | 30 ++++++++++++++++++
 man3type/regex_t.3type    | 64 +--------------------------------------
 man3type/regmatch_t.3type |  2 +-
 man3type/regoff_t.3type   |  2 +-
 4 files changed, 33 insertions(+), 65 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 1ce0a3b7e..897a622d4 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -29,6 +29,20 @@ .SH SYNOPSIS
 .BI "                char " errbuf "[restrict ." errbuf_size "], \
 size_t " errbuf_size );
 .BI "void regfree(regex_t *" preg );
+.PP
+.B typedef struct {
+.BR "    size_t    re_nsub;" "  /* Number of parenthesized subexpressions =
*/"
+.B } regex_t;
+.PP
+.B typedef struct {
+.BR "    regoff_t  rm_so;" "    /* Byte offset from start of string"
+                           to start of substring */
+.BR "    regoff_t  rm_eo;" "    /* Byte offset from start of string to"
+                           the first character after the end of
+                           substring */
+.B } regmatch_t;
+.PP
+.BR typedef " /* ... */  " regoff_t;
 .fi
 .SH DESCRIPTION
 .SS Compilation
@@ -206,6 +220,14 @@ .SS Match offsets
 .I rm_eo
 element indicates the end offset of the match,
 which is the offset of the first character after the matching text.
+.PP
+.I regoff_t
+It is a signed integer type
+capable of storing the largest value that can be stored in either an
+.I ptrdiff_t
+type or a
+.I ssize_t
+type.
 .SS Error reporting
 .BR regerror ()
 is used to turn the error codes that can be returned by both
@@ -322,6 +344,14 @@ .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
 POSIX.1-2001.
+.PP
+Prior to POSIX.1-2008,
+the type was
+capable of storing the largest value that can be stored in either an
+.I off_t
+type or a
+.I ssize_t
+type.
 .SH EXAMPLES
 .EX
 #include <stdint.h>
diff --git a/man3type/regex_t.3type b/man3type/regex_t.3type
index 176d2c7a6..c0daaf0ff 100644
--- a/man3type/regex_t.3type
+++ b/man3type/regex_t.3type
@@ -1,63 +1 @@
-.\" Copyright (c) 2020-2022 by Alejandro Colomar <alx@kernel.org>
-.\" and Copyright (c) 2020 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" SPDX-License-Identifier: Linux-man-pages-copyleft
-.\"
-.\"
-.TH regex_t 3type (date) "Linux man-pages (unreleased)"
-.SH NAME
-regex_t, regmatch_t, regoff_t
-\- regular expression matching
-.SH LIBRARY
-Standard C library
-.RI ( libc )
-.SH SYNOPSIS
-.EX
-.B #include <regex.h>
-.PP
-.B typedef struct {
-.BR "    size_t    re_nsub;" "  /* Number of parenthesized subexpressions =
*/"
-.B } regex_t;
-.PP
-.B typedef struct {
-.BR "    regoff_t  rm_so;" "    /* Byte offset from start of string"
-                           to start of substring */
-.BR "    regoff_t  rm_eo;" "    /* Byte offset from start of string to"
-                           the first character after the end of
-                           substring */
-.B } regmatch_t;
-.PP
-.BR typedef " /* ... */  " regoff_t;
-.EE
-.SH DESCRIPTION
-.TP
-.I regex_t
-This is a structure type used in regular expression matching.
-It holds a compiled regular expression,
-compiled with
-.BR regcomp (3).
-.TP
-.I regmatch_t
-This is a structure type used in regular expression matching.
-.TP
-.I regoff_t
-It is a signed integer type
-capable of storing the largest value that can be stored in either an
-.I ptrdiff_t
-type or a
-.I ssize_t
-type.
-.SH STANDARDS
-POSIX.1-2008.
-.SH HISTORY
-POSIX.1-2001.
-.PP
-Prior to POSIX.1-2008,
-the type was
-capable of storing the largest value that can be stored in either an
-.I off_t
-type or a
-.I ssize_t
-type.
-.SH SEE ALSO
-.BR regex (3)
+.so man3/regex.3
diff --git a/man3type/regmatch_t.3type b/man3type/regmatch_t.3type
index dc78f2cf2..c0daaf0ff 100644
--- a/man3type/regmatch_t.3type
+++ b/man3type/regmatch_t.3type
@@ -1 +1 @@
-.so man3type/regex_t.3type
+.so man3/regex.3
diff --git a/man3type/regoff_t.3type b/man3type/regoff_t.3type
index dc78f2cf2..c0daaf0ff 100644
--- a/man3type/regoff_t.3type
+++ b/man3type/regoff_t.3type
@@ -1 +1 @@
-.so man3type/regex_t.3type
+.so man3/regex.3
--=20
2.30.2


--zjt5n4y4retfm6ri
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBW+EACgkQvP0LAY0m
WPEhohAAlvIXyhi3Hgc1yX3vX36pF0LzIcLcyWjROYQvKW/08I8yRGo6+FBpfOV5
Bczy1oqngBkdg/tsjj8hq/ZCSY0yeVjfvRYk8W97J7pFct+/lPA4VAMoYY8h5YWl
WSVCx+GjJt6dQ5iLU9vdB4mxH99Wu4RgnQ7LXXG/goVsBDd/Yje6Q/Pz/kGprwF9
lCQHpqybtBgpGt7tr3DarujdiCMZXSYSdTAroxI3E/RpGaZHzcvm66QKD2yzIOV0
aPDgfUn4WVRvaosxarD13+bKSZTcC8ebPwHx4SGWVcJ0yN6QR30LRxPNhqWtYb+P
n0r5fBYw9yUnnJHELxkvUu/oFh/C9VV8ZLRiO0J2eDnGyiZQcbzD0eUkm5WsYJ0X
F+fvYn0kNYHiqKVe7Lyam5ADTJ/oW2woYSW4SKDye3JYgzp563pCOwd5sNO4KWES
k1+ytrtnI9sN0IpH+91wVQZM+7L002n14sUkVuHidscLeaoiEbhZf4O9xfKQ3WkQ
1sbpkJ8w6TSPdA+/SBH6IIH58uv0gXoP7b4vJ5aigjXuNgf0bmfSgEHrHKCwLRBZ
MkgnJs7apbMP9FO7xwq1mueLqRU1F+AOk1hV87J/9l/hQqqEpk2T73o5NZxaGCqw
cY5+4Srn1T1NBsdZelwuB+DC1wRd32Ut6GLYXOqa1qC9+M1lIp4=
=ZNj1
-----END PGP SIGNATURE-----

--zjt5n4y4retfm6ri--
