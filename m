Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FAEE6EA1D2
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 04:48:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231676AbjDUCs6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 22:48:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjDUCs5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 22:48:57 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5648930ED
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 19:48:56 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9DF7266B4;
        Fri, 21 Apr 2023 04:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682045335;
        bh=TZV3ZHUy6/6VjGN3DhDZt8bJcYZ/llRty2+rmUbGR7Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QKT/xlbItBA3ls5znLe8ZL7HxJiN0yhBkmHjcrMXgba2Npl8QxRhdWo+6EZtv9AcC
         AlkI6STUQQy9z9fWjyeHJqn3MOwBzGpdEwbMmxCereEKrOrhDcWGXiNB6+J4Fsaw0F
         Nq3ZtcEsD25oOBL86sbd4kN18mvVnmla3W1RBLKfdcxhfRfLSopt7z8d8k2A5VEypq
         IpPWe833iggez39Rs5UtPZy6DFQoRMDxRGzjco7kr2vz9RW19S4apjDzn0bDzt/7ti
         1mojgnpTzS7T6A0j+6b4Ps3WbpH3oyjOIXsZn+dOSe8PFSBfzqADTDxEZsBBtI2Bqx
         bAFGWHjoY6LcQ==
Date:   Fri, 21 Apr 2023 04:48:54 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v8 2/5] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move & link regex_t.3type into regex.3
Message-ID: <bad3078472294690ca9f46d22c79db492b18e1ef.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="x2xhdsjjkgsdnpna"
Content-Disposition: inline
In-Reply-To: <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
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


--x2xhdsjjkgsdnpna
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
index 069cc6388..f6465d484 100644
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
@@ -320,6 +342,14 @@ .SH STANDARDS
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


--x2xhdsjjkgsdnpna
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB+ZYACgkQvP0LAY0m
WPGXxg/9FC+st6ZIeG4uffNDUtdtiekFqhxfX5iazZWrMUt4y20nN1XtO+T5/YNM
q8QQpMlUe3GOufeFWJgIr7xaoCjhdp5aAPFWuTz7Wo5N/+OMsoawPb0fSUO010Ro
tAOjqo4vYhgt2MPoYr0RG8GVA9chjGMT9u58bpEH/7jxWBjAHreGXrAqiOQI9xA7
iuTpfXVEqEVUrKjZ9fyM2NlmehIqrQZpuHzzXBaYKnr53UHYcgXDurA/zSHp7z/Y
ZYOInqdTX82EMEOfTSVxmzzdUD6CyAruFtYK9XRauxf9GFSMWkC9YcZeOVA7/qow
yEVsa98W8+BhX284TAogO8Ejjg5zCA96w69H/gfaVMBGJTqqM2yygVDrBWYtwJfl
/7DZdtjm1UZ+1io3xbZRWkpfv4UiwdF7kSGWY9nwmGQ4R5cjp0YAZ9jPJnJsmwpL
h9hem8eiZLplwRxcsHCtTUdb3IwPTc/ZbKNB7hlBaiejg0BBvIlTx7cfbrp2hiV2
p5KbUl/KRRgBtQFPIESNpEqzYYmh0+xAkCV806UoHvJ3fURUBsMj/1qVy10tmmYx
mOCH0KpDGhQifGreGSpq2CXLuKvnTxkJ80/DiLPERBiUgzAlzqqM0z32Qui0NMPV
Lz8MOJfoKHncJ6IhCHsD98VEXDkmqy/3rC5pqam2VlBYmGfmnqk=
=t4yw
-----END PGP SIGNATURE-----

--x2xhdsjjkgsdnpna--
