Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F53A6EA1D3
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 04:49:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232146AbjDUCtD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 22:49:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjDUCtC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 22:49:02 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7788DE75
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 19:49:01 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BFB8366B6;
        Fri, 21 Apr 2023 04:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682045340;
        bh=K1v1HsRbafvhfHQ3CJI2+D+oZNPVQhEqiypooPZCZAo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=r2pnNaOEtMRpz9IdGFL3lRPSgKCakVQ7Ss+Nqm/FSrgPU+zik5QQsr/zDqV4kiYJu
         NJ1P0ELJz1ds8jkZAwe2sfbx63gIp6OtTfs1a+c9kBPsaSNFH6qOH0qsLpfZOm9K0X
         oFPPxJYaYsiGF4TbILDRvRjb0O8GSf19LummK9qr0xG4YjJZsypQShYTlX235uUO3Q
         X2B5osXNeoDIRFIwYgvMk0qMsJVRlyJ2Zjxy1rleSH6FB9zubnRAzl0qXbMz2gKa7e
         rgoDbMDBe3LsDjg75wL1ypVDEyendBRxnd2q8rjT8v6RB5fpdweFRdSHujeot53dht
         qZEmnWadmNQ5Q==
Date:   Fri, 21 Apr 2023 04:48:59 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
Message-ID: <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="udgxykbl5he6ns72"
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


--udgxykbl5he6ns72
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

They're inextricably linked, not cross-referenced at all,
and not used anywhere else.

Now that they (realistically) exist to the reader, add a note
on how big nmatch can be; POSIX even says "The application developer
should note that there is probably no reason for using a value of
nmatch that is larger than preg=E2=88=92>re_nsub+1.".

Also remove the now-duplicate regmatch_t declaration.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 54 +++++++++++++++++++++++++++++++++-------------------
 1 file changed, 34 insertions(+), 20 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index f6465d484..46fd3adef 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -15,7 +15,7 @@ .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
 .SH SYNOPSIS
-.nf
+.EX
 .B #include <regex.h>
 .PP
 .BI "int regcomp(regex_t *restrict " preg ", const char *restrict " regex ,
@@ -43,7 +43,7 @@ .SH SYNOPSIS
 .B } regmatch_t;
 .PP
 .BR typedef " /* ... */  " regoff_t;
-.fi
+.EE
 .SH DESCRIPTION
 .SS Compilation
 .BR regcomp ()
@@ -60,6 +60,21 @@ .SS Compilation
 The locale must be the same when running
 .BR regexec ().
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
@@ -192,22 +207,6 @@ .SS Match offsets
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
@@ -218,7 +217,7 @@ .SS Match offsets
 which is the offset of the first character after the matching text.
 .PP
 .I regoff_t
-It is a signed integer type
+is a signed integer type
 capable of storing the largest value that can be stored in either an
 .I ptrdiff_t
 type or a
@@ -344,12 +343,27 @@ .SH HISTORY
 POSIX.1-2001.
 .PP
 Prior to POSIX.1-2008,
-the type was
+.I regoff_t
+was required to be
 capable of storing the largest value that can be stored in either an
 .I off_t
 type or a
 .I ssize_t
 type.
+.SH NOTES
+.I re_nsub
+is only required to be initialized if
+.B REG_NOSUB
+wasn't specified, but all known implementations initialize it regardless.
+.\" glibc, musl, 4.4BSD, illumos
+.PP
+Both
+.I regex_t
+and
+.I regmatch_t
+may (and do) have more members, in any order.
+Always reference them by name.
+.\" illumos has two more start/end pairs and the first one is of pointers
 .SH EXAMPLES
 .EX
 #include <stdint.h>
--=20
2.30.2


--udgxykbl5he6ns72
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB+ZsACgkQvP0LAY0m
WPHwiA/7Btb+qpP+zLX4g1tm9CSM5piktO5e9Ph8pd8VN4OnsdyO7fXcHtaht5jQ
VAcVLt5onFwjNCNX34wKlN1jeiE7wCa8PtonoqsxUbA3J+gAVS7IROctTyrXLGPh
TKiZQ4DEwQMm34mC4k07zaS4PihF0VfulPJ7btWvehx/RvPaOMiSTpX8veoz5SDM
ho5DZ5o7/MzzpJ4g6GyYVljijNu/TqpEDb19Mhq9P0fa+3mvzCtQ49H3SMNsMVjQ
Ri4qPmgmKmRX4ZmC7ZFnUvPPpkpfdW5QQ1nNnnRrFdVB412KO48Xl465i2obxccr
fTp0lNS7TQoK6fJ1HhYyIJLsLIubC7mzDc571ckCN83yRcLiRopVzVO+O6fpm8aB
kTwpAQexaBDVE7V1bpY99n/LRE3efTtSE1MZ1Jil+vAocN9CUM6Mnvlrs1FmENZL
RWW7hYGg0sOt/1TkA9Nw1bLb5sblYIRd0Cspo2ktVLe86hFK2waEWegHwv376Pn2
ApTuXXt1SWcOdpEZ8Dy1ITjSGzB1HI/4j1Ai2MFoOm2sT5OkZ+xpXBkkYjvObRol
o2r6uaH9fWFpjpOveqoCIX6SGuX/oVIgC2Wx7gWiyw2xo3SSlXREh5r54dIYV1aJ
A/sUf4KF8hT24nxSjXxSVsE/LODmAVSXC0Ig/e8o+S3C16BTF9c=
=RyzY
-----END PGP SIGNATURE-----

--udgxykbl5he6ns72--
