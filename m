Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86E696E85E2
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 01:25:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231144AbjDSXZh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 19:25:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230331AbjDSXZh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 19:25:37 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9F2BEE4D
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 16:25:35 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E8D2560E8;
        Thu, 20 Apr 2023 01:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681946735;
        bh=WAKCEM1cDsJjMyBVU4+bl8tZLoupRpN/zdmBAsyFY+c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EHh1pzVhKa0UnVs/ldx26TYjBPAHsnEjPRl+1Sfk9WpD1jtjCu3/mxQg9NvsybwwZ
         9rNiywuleltWdKiDIoY2jSR6aRn9VA8m1NNiykxr/nMeA7niMGyQEvE6MSunv/l5pT
         7l79sY3FbPWy5/q90Q0/jt6m8Mr4C2n2JKjoj6LOzhsEcsZEi/5A68Q6qaDdKqGlXg
         cYlXuNVlP19pvDfATEk0o9/Rsp7T3OQ2P36LTCq3ytqkcy3bXcCAfzbIputeqqdng/
         tWHB9zQ4n+ZDPugiXZhCzWVJxc/caepJpQDyADiDsl4T4GKGvKfiJP8nfp/hl/GLKK
         8iTDYxoDD9Eiw==
Date:   Thu, 20 Apr 2023 01:25:33 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 6/9] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: move in with regex.3
Message-ID: <60165209cca7a64f1e281be54e15db1d8d52df35.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wkxdv4n5rxlnfqsg"
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


--wkxdv4n5rxlnfqsg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

They're inextricably linked, not cross-referenced at all,
and not used anywhere else.

Now that they (realistically) exist to the reader, add a note
on how big nmatch can be; POSIX even says "The application develope
should note that there is probably no reason for using a value of
nmatch that is larger than preg=E2=88=92>re_nsub+1.".

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3              | 66 ++++++++++++++++++++++++++++-----------
 man3type/regex_t.3type    | 64 +------------------------------------
 man3type/regmatch_t.3type |  2 +-
 man3type/regoff_t.3type   |  2 +-
 4 files changed, 51 insertions(+), 83 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index fa2669544..b95b3c3b0 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -15,7 +15,7 @@ regcomp, regexec, regerror, regfree \- POSIX regex functi=
ons
 Standard C library
 .RI ( libc ", " \-lc )
 .SH SYNOPSIS
-.nf
+.EX
 .B #include <regex.h>
 .PP
 .BI "int regcomp(regex_t *restrict " preg ", const char *restrict " regex ,
@@ -29,7 +29,21 @@ Standard C library
 .BI "            char " errbuf "[restrict ." errbuf_size "], \
 size_t " errbuf_size );
 .BI "void regfree(regex_t *" preg );
-.fi
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
+.EE
 .SH DESCRIPTION
 .SS POSIX regex compiling
 .BR regcomp ()
@@ -54,6 +68,21 @@ must always be supplied with the address of a
 .BR regcomp ()-initialized
 pattern buffer.
 .PP
+After
+.BR regcomp ()
+succeeds,
+.I preg->re_nsub
+holds the number of subexpressions in
+.IR regex .
+Thus, a value of
+.I preg->re_nsub
++ 1
+passed as
+.I nmatch
+to
+.BR regexec ()
+is sufficient to capture all matches.
+.PP
 .I cflags
 is the
 bitwise OR
@@ -192,22 +221,6 @@ must be at least
 .IR N+1 .)
 Any unused structure elements will contain the value \-1.
 .PP
-The
-.I regmatch_t
-structure which is the type of
-.I pmatch
-is defined in
-.IR <regex.h> .
-.PP
-.in +4n
-.EX
-typedef struct {
-    regoff_t rm_so;
-    regoff_t rm_eo;
-} regmatch_t;
-.EE
-.in
-.PP
 Each
 .I rm_so
 element that is not \-1 indicates the start offset of the next largest
@@ -216,6 +229,14 @@ The relative
 .I rm_eo
 element indicates the end offset of the match,
 which is the offset of the first character after the matching text.
+.PP
+.I regoff_t
+is a signed integer type
+capable of storing the largest value that can be stored in either an
+.I ptrdiff_t
+type or a
+.I ssize_t
+type.
 .SS POSIX error reporting
 .BR regerror ()
 is used to turn the error codes that can be returned by both
@@ -338,6 +359,15 @@ T}	Thread safety	MT-Safe
 POSIX.1-2008.
 .SH HISTORY
 POSIX.1-2001.
+.PP
+Prior to POSIX.1-2008,
+.I regoff_t
+was required to be
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


--wkxdv4n5rxlnfqsg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAeG0ACgkQvP0LAY0m
WPGakg//eYkr1zTUkZRy4NK6qxkhiGuSyvxs0ehJmtmPQvhSJT93NeRu/e7n1GmQ
kk96RHfwHjLyQ3A/RS4a3GeyGMZ4Iz12gOa+DZ0eH+SXZhJ1/uy9BLYtn9x/hwa7
icGvUVn7Y+6R4Fhq5Z+pm5X2YDZyilYTGfysFWdB6kny8DxHJt8F8KecAPcq5wP7
d6ptANdgX0Q1D8tOZsqmTWAV0bonoEjKHH0TmoMw7tp321251YUhVd2OfE46+du3
wNRGFmDrLlhzLcxR+8CMWJ4liZjQSoa+0Ll9EiVoNJbvWRWIGjAi9SMJK9MpWXDM
shtRkJ9OWbWRMGrq01NpPFkFGkhCFUhNpovIV0ZOwvzXbVmFj5TznOS7050Xgci6
NqNwy0Ezn5Ofxo88kYT0O8al7skGM5e7YfUBDCUS/wTtgdRe9gNdq1Zmv+PO+2sn
bzBO84qoyweVY69Unk/EnlO2Xioa5Fl673fNo0ZuU6EICpftIZHFyli69oDuMa9X
lU+fHPPt/JCEi//mr+dTuqfIP483cNi7WRPdvgmMPusprbLhBYXEsFeBgM3HIZdG
+ZWDRtU9jTGKrQ9nGgcANWitOoMOCJ2ny69dfOa4PNDbTfC1hqY8QjswtqfT//ad
Qx98r+HNxqdxs61L/x0mcGOf9MBwbYRp+wKdlAyhdxB53HJa/60=
=wyXc
-----END PGP SIGNATURE-----

--wkxdv4n5rxlnfqsg--
