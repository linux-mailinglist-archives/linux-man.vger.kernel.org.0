Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D3306E954C
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:02:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbjDTNCh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:02:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231250AbjDTNCg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:02:36 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 191636183
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:02:21 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 65E2C6622;
        Thu, 20 Apr 2023 15:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681995740;
        bh=ZmO3I/VoxRj1lKRl5naaf9lIs7alY0FKCMN9w5JNIEQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Tx+JbsUgzems6Yj/znYIuX7CuqZlYjLm8gdfjWgiOne4EaQSHGnEtbJNl9jJGZInZ
         ugGSHcc9y4QVgghSlKmCsFKoWGkUNqagSHgl2cfMmWSjYmNO8KvVxUqfsZJkwpH8QT
         /FI/YzpoN0rhxxOVBJIyStYViEyZreT7xSBxIJaFyNM2VJUH6bkriGPWTRX4hLd/su
         qLFByuVQiWsEMGezoE4zEcKa4hHxFm9km3zWu69Wrz6hbQhKw/AzqQC5DjY4jExKpk
         ICzBCqHncxQ2oFRuazZPdkZl/2RP/2xbKu6nTGcfnlnO4CE+PXg5fZf7L5dRGvU+YL
         2X3AgpG4NWNWg==
Date:   Thu, 20 Apr 2023 15:02:19 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 4/6] regex.3, regex_t.3type: Move regex_t.3type into
 regex.3
Message-ID: <aa660607c516055d6b894803cb2b13186a811308.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="n25uafy6v63ptgra"
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


--n25uafy6v63ptgra
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Move-only commit.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3           | 30 ++++++++++++++++++++
 man3type/regex_t.3type | 63 ------------------------------------------
 2 files changed, 30 insertions(+), 63 deletions(-)
 delete mode 100644 man3type/regex_t.3type

diff --git a/man3/regex.3 b/man3/regex.3
index 00e7e2c6b..615e065de 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -29,6 +29,20 @@ Standard C library
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
@@ -206,6 +220,14 @@ The relative
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
@@ -322,6 +344,14 @@ T}	Thread safety	MT-Safe
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
deleted file mode 100644
index 176d2c7a6..000000000
--- a/man3type/regex_t.3type
+++ /dev/null
@@ -1,63 +0,0 @@
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
--=20
2.30.2


--n25uafy6v63ptgra
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBN9oACgkQvP0LAY0m
WPHa/Q//d1JkZNEbHKHP42CrEd0mjFEMHqY9v4gy9tPSY/66Tdq3a8dltofnIDF7
4xS396F4J4GgNCr930UvPfuya6/dZu8FDieuoQVS7FkCCmNArSKSo6yxBvhkMTXi
+CY9RPklF2OiRu8HFyTGlZaGl9jS23jIGlU6m19CnvjunLTeEzcM1fVtfHdX74SJ
F18LOMTvBxG7x1xG99NkIRh61kjFQy9GXlc8WhBcV1Ni8/kVOGNRUgYX8e/L2Dxz
V9EDDDoGTD1yw2w8S71A92VwcuPTXW6aqGYw8DfjpS3Ca9FR4tMXwJ6Aw7Dt9htd
fGivpFZ1xQUuYU2a4zHFnusRj+BosjvA36XaxNTAhNU7lDmmbprsm6/H7WxFXMB0
rzcRELCoybuixXhTX4zNU/OKMN6DrYWQicuMz3zsrgGK5lLF3OBmz8xeOnffsfZq
cOOWmDkOBbdGmeyfJJhMpZcrwdycwh39IPE3snHIyaSCUXcqC1aDu+78LON5w+jG
6QV7ij5vJf78s+dfX5UkigIXw1HbYpDmbT7BajAzitQtkZPNwGkF1RKd4AweXzYP
dyPDegD8YxLQCqQQ/1V0vxqQD6UCK6G9oystFAan6hzKwJp4aPM6kioIeeu+VTiQ
6laf+pC6W2yrpFxEWJBGFUZ40u345Xo+nGSKgW1tv2jNH9Aefmw=
=JmPZ
-----END PGP SIGNATURE-----

--n25uafy6v63ptgra--
