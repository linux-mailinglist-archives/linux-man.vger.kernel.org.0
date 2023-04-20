Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49E096E9C86
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:37:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232045AbjDTThM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:37:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDTThM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:37:12 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C05DE10B
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:37:10 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1E1ED5F70;
        Thu, 20 Apr 2023 21:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019430;
        bh=S5Qltyb7PNhH1+aBYSMMm2vzBrgyByWcDgMw1HwahqQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EujBV+NjDiEDda4VK7cox834E6qxn3RQwiFLokGkCKJi/NVsnbBg+h+sBVdiPGYjC
         lGt51oIatYF096YjWf7I31rG6eMKR4R6JjtyqHUPBJ0Oyt5j40A30uR3d5OhXxeTh4
         5t+0f/AcxjKtHat6+S3ECvqgi8N+XqvK95p9on5/JwliK3ggMbxf42EOHg7K0Z2kfV
         REemqvmnqojfECQKgeQTX9/HD9KR8tPKHwolgMg9peqBlcO8nXpP/SvE3D8U3sExRb
         AeFg/q4BK8CfaE0xfpNTibudxRcZeCMtDB2Adk83hZgFABH4UmedPK+ppWtHKSGqtV
         BF4vWrqqlSNXw==
Date:   Thu, 20 Apr 2023 21:37:09 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6 5/8] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move & link regex_t.3type into regex.3
Message-ID: <057a4a52267daab483f5781ecd7c6240147ce6b2.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tfqphif6yeideq4m"
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


--tfqphif6yeideq4m
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
index a9bec59a9..2b886eb77 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -29,6 +29,20 @@ .SH SYNOPSIS
 .BI "            char " errbuf "[_Nullable restrict ." errbuf_size ],
 .BI "            size_t " errbuf_size );
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
@@ -202,6 +216,14 @@ .SS Match offsets
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
@@ -318,6 +340,14 @@ .SH STANDARDS
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


--tfqphif6yeideq4m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBlGQACgkQvP0LAY0m
WPHe6hAAreH1YMveK0U1jsQqnSUKpvR5hwxevqFL1l6rbNaO85zh0MHx6QQO8Kcq
a4GOn28LgXtqaES9YgNZbss+Bf8luv3GPIvm92z2tSitFxk2sVIlYW9PDAqIJ1Ge
1aTe1W2fPiRL8AVav/em4MJWYhr2ZI3PYh4W7aHmeunlDJRuENSLLviYxtN8Avh9
xtp+LBg1kd4bl3P1yu8mONstuJaZMRjw/NrRzMBuTZjFH5FctZXbRsr3ny9GIhqA
/RBHkybtF2zLbme3A99zIrGBXoXWCUXnr5UewonN1SlYKAHMPhfQEAVQfO83lQY8
0faTJjRtZtjXMQkYLUIkne14XGJZmZscwzDbiqQtAZxfhuw9JZxbYyij+u5yP3PO
7VWxtjfke1pSu2UXB7/RLQrebNHBISTQ8jfRcytcXmdoXsl2bJKmMrIWvYlF37e8
QPGpSBCMNfJTjWZVNcwnFJwKsZ3Ixj+RypuRMbVNdcQJ0JWsz+vGFz5nX3w774Gu
aH61tMuKIJCC7iTC+zazmnjq8GPD6s80Hocq/c8YdC7VNzermLp80LQ7TilDUtrW
j5M1LBSYFnajbDwknw+lQeGzg40KVZh1D75GbnN2+JICaSj++4o5BOFpZt4eoB5H
WzVliDH0AKns/HGWM4ICw7thlVvT2/xy2yjZpfR87QTHyWt/MRM=
=x4jD
-----END PGP SIGNATURE-----

--tfqphif6yeideq4m--
