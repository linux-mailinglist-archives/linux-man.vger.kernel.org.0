Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 472F76E954D
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:02:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230384AbjDTNCj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:02:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231182AbjDTNCi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:02:38 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 411F85FFB
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:02:25 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8BC836A06;
        Thu, 20 Apr 2023 15:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681995744;
        bh=T0nCLllUUcQJhvupVKeyui8q3WGQksos4MhJBL3BrZA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MRx8nDJtpg9pdasL3xW04o8kHVO1K2j+I5koDFUSQBWKbEV61iNc8y8lBjsZmNqcO
         WvCZm8XCAg4eecnVunXSzitY7RmwUFKiH6lnSW2EbENAK1HGu4foGjVUwRqQbYwMKk
         j5JwLa9lU6Au85CjndDcx6IO6hr98FT0EyvxIecBFU8IS7+E6vQzdXxRXx1DSVac6S
         tXB8zEzlVdHWRX697WuXLujtTg6tytQF6+aP5EEh4C5YBdgvcqOO0AUis2Coky6vNL
         5J2Fx2c9yaRbUWsQD/oNTD+bW5QsMCkelpwDzmL+7d7yNyXtI/g3vIswkD4FTkd9G9
         YZ4o3E+2EVS3w==
Date:   Thu, 20 Apr 2023 15:02:23 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 5/6] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move in with regex.3
Message-ID: <685b4fb7b12c8e99beedd75d65a000748b771ee4.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="67mqyycjimg2zo6o"
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


--67mqyycjimg2zo6o
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
 man3/regex.3              | 40 +++++++++++++++++++--------------------
 man3type/regex_t.3type    |  1 +
 man3type/regmatch_t.3type |  2 +-
 man3type/regoff_t.3type   |  2 +-
 4 files changed, 23 insertions(+), 22 deletions(-)
 create mode 100644 man3type/regex_t.3type

diff --git a/man3/regex.3 b/man3/regex.3
index 615e065de..6d203fa22 100644
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
@@ -43,7 +43,7 @@ size_t " errbuf_size );
 .B } regmatch_t;
 .PP
 .BR typedef " /* ... */  " regoff_t;
-.fi
+.EE
 .SH DESCRIPTION
 .SS Compilation
 .BR regcomp ()
@@ -60,6 +60,21 @@ is a null-terminated string.
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
@@ -196,22 +211,6 @@ must be at least
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
@@ -222,7 +221,7 @@ element indicates the end offset of the match,
 which is the offset of the first character after the matching text.
 .PP
 .I regoff_t
-It is a signed integer type
+is a signed integer type
 capable of storing the largest value that can be stored in either an
 .I ptrdiff_t
 type or a
@@ -346,7 +345,8 @@ POSIX.1-2008.
 POSIX.1-2001.
 .PP
 Prior to POSIX.1-2008,
-the type was
+.I regoff_t
+was required to be
 capable of storing the largest value that can be stored in either an
 .I off_t
 type or a
diff --git a/man3type/regex_t.3type b/man3type/regex_t.3type
new file mode 100644
index 000000000..c0daaf0ff
--- /dev/null
+++ b/man3type/regex_t.3type
@@ -0,0 +1 @@
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


--67mqyycjimg2zo6o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBN98ACgkQvP0LAY0m
WPECAg/+PfALj9XUkFic9KeHOa7F3HCi/+UZZTnOyREjnZs2Z8U1kBn+yp2Ni7Vv
1I3vOmPibZ/4UVqPCR9iPQT7cxeWJvXG8yddzmOEIl2sEw18fiv1dnnrkgteu+p7
MFRqrjxoPrVAo7S6qYrFyK8twbRtbG3gI3bq+Ux1rkT/NwqhEB+euLtAhiuy0goD
vx1FEoiubZ97uiNoHNmyfHXsm9i3qlXnEivUIRCZdHdezd4KyqaMSupFZeJD3D0L
v4YluUCSCtgn5r+q/6LFMLLdSxmXh5IcWF22Iv76kKH2XXHU9fGnY0KPsBC/IJCP
WJqjhRPshPpjg9S6EmySsiRD9lGpW0lkuWTt/hbiYIJ1geP3GgbBPzmFcnrT0Por
49zhTl5iFMYYlNhzz9BJJqx4dLnZaFx6wCPmfhGwq4QAHDMb0//LtidWIdKTD6LU
+x6H0CK7VptN+sQTkV0FmX7GKfXQs5U1mRLEglWBzKsDWs1s7w9G9yCD56SDMYsr
BwylXWBihACijtJcfqrlDKzZoAABKvGdCfG3Wq9IdlCZowZf95+qsCYyS3+umPbV
5Dkvxx0jhOw5usW96mfHhu8o0MkFDFB/nOqfs9E+a+F6legfSFHtwZIra6GfenHb
fRWNn3/yA90GzRjtkhXc0bSHAcpVzOrBAHFEnmpuYQjVFxoGKKQ=
=XPQA
-----END PGP SIGNATURE-----

--67mqyycjimg2zo6o--
