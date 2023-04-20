Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 381576E9C87
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:37:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231728AbjDTThQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:37:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDTThP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:37:15 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A72812689
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:37:14 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 08AD765B8;
        Thu, 20 Apr 2023 21:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019434;
        bh=yX27aSvWsop4X58WXzNrWA5k472rDpv+WJ1LvnN2wh4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cg2TVN+xVzwi0Gs+NH3wKtg1S1yU+SYxvTk2WcjrdrhF1wRKn1U8qSOwVYoPTJEQ8
         joj6PvzBN8QHfbjjsjhu+PxuQ9K15fiF09JL/urSRAz6rCim4R8RQ2PJyVdyp/WKyr
         QSL11WUyTuzMTDrjLmxzFyx91a38OEw+8WW3QyQY/c5CUz9Sz6Jj/uzi8RR7zpNOaA
         VJiqyZiN6R5k8XSfYpCL3iSLCL24s3+ana/Y6kBTF3ozsCOU9yASY8P4SM3ug0QDcJ
         FzSNh1idtqY3kwf/Eudq7Jc4/tXatyxbEczC93m6tdJofUVwVLQh8nmzvcq7J2Qp1o
         VjQFPudYsowNA==
Date:   Thu, 20 Apr 2023 21:37:12 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6 6/8] regex.3: Finalise move of reg*.3type
Message-ID: <60ac1a4d1d118b3f92a465468fd2a47b906f453d.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vp3tctdpllobcku3"
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


--vp3tctdpllobcku3
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
index 2b886eb77..2e9bb13ff 100644
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
@@ -342,12 +341,27 @@ .SH HISTORY
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


--vp3tctdpllobcku3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBlGgACgkQvP0LAY0m
WPGHehAAmeIGdpxDveqcqd2F6pHtKfV3WD0JSDzC08j7AWlq/yJb67Q9hj0zBZY3
u6r+03wcL7NhGMLOSPpJNi1WqSj0Tx8LHb//8TgP6GSjeA3eIzMIAjdWrTr01F6d
2ZrPDysHJDNPQ+GEe31gOrd6lCZq1TovHSeQdlfWxT8rj3VhM0wXn+5w6thNzSE4
YAllHhbElNSbO9CGZJdxFFFHJgzBnlhx/KJ5Yp2CaWqviLDvwHhrf1j8qnffylsA
9zVs9gdNTBHGGTBvlA+XGxTJNl3/iXZR2YXPqYz8KDMjUI2u7RA5uXAJVYOnIR64
4D2d7xz/1eiSQMwYaoW0TBFJbbiBbnK2Nqcit6bLDA2Zl4mKNaFGx96qAlx0me1M
wyV2tdseTgqHfEANLrIwy3wOuStJdVABGFj27JS5peJfAtucvgiUXgz4s2e5xIz+
aFO+ixhxz76gw9Dt3DOv1Ltke4kFEByzmG7FU6u08FtmGFJs22UR9owdLfEt56zB
ODaqZNVi6p8CXUwK4spj8GDISy1kA6fiweaQzVxs4mQPhVk3FQl5UdB4Zt5yFdIs
bRyufgfheJ/mJ65JMJ9WwUwBN7QU1AW9Bbvtr/IILvEyirnpObw/Dqvq8i7t2ISI
kJWDbXY7nlwyH/mY4/DipLp/kAK6lOm1AIIeXV+M3Zx6mqx5vI0=
=c23U
-----END PGP SIGNATURE-----

--vp3tctdpllobcku3--
