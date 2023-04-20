Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47C7B6E9868
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:36:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231583AbjDTPgJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:36:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232071AbjDTPgJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:36:09 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5C45749C6
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:36:07 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B04F96068;
        Thu, 20 Apr 2023 17:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682004966;
        bh=LdL92dxCcySIlYJjZqdoI6+hvLCN0+myQmHoWb95rFE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VqlVwbjfqmriXHyUyOqwMxkJ+5zPELLuAwDtBqrbvRGeT/verK/L1sXBrHEc6F5lZ
         nGzCt9SzsUCfct8pGtSMM6LytPbmVg31qHDsaHGJV1VHnACTjG/r3d5lR6cV+6LI4C
         vPnpCG9isE74dFNY2klsMUVQoaqfgc+utEqQppD5gL5dhidL8KQk4Q+r5Mgj1wjF5L
         ruzP7NyqB4HXMEOpv46EbeN7c1oAwF5MEHVYP1SQ31qx3eGB9v3M06rr2J4lia3bFr
         ua93ZdZ3N+ftvDHp0BMxAG14ypNm9KGaytrn5LgJzyPEW4NTcUANu9OIk1A1LdaCt1
         HPBTAW0VJWCHw==
Date:   Thu, 20 Apr 2023 17:36:05 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 6/8] regex.3: Finalise move of reg*.3type
Message-ID: <c6bc9cfd0039ae42bdb795244db4f51843e2c88b.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="coxb52j2trakhe7y"
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


--coxb52j2trakhe7y
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
index 897a622d4..75c810c41 100644
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
@@ -196,22 +211,6 @@ .SS Match offsets
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
@@ -222,7 +221,7 @@ .SS Match offsets
 which is the offset of the first character after the matching text.
 .PP
 .I regoff_t
-It is a signed integer type
+is a signed integer type
 capable of storing the largest value that can be stored in either an
 .I ptrdiff_t
 type or a
@@ -346,12 +345,27 @@ .SH HISTORY
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


--coxb52j2trakhe7y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBW+UACgkQvP0LAY0m
WPFO/BAAhtrV0oaoqEqsXn+BWPkEP/QIOQpJ/nc9EuVPYGxJSNgqazZ+0ZKYm6D6
rC0ZShgIgKLn6770q5BRI71e6l3ePmRkO+xs1myPOigSOvZKK/8/EBaoME7Eg8t+
J5dhHkrj8eZh80Mf1ZZY88f0oUi9TVx84uHBdw4Py0RJCF0oT+deWnLbVdGyUmlQ
uRfHHu5MOyv+fY//1cL3auFP5nqVMEnp/tH4iZXZ33zEPxWNuPph3AE0sQ0EL+he
GYBhixO8QNkVWCR9WamFdySHIn/apSWVQnCvCpyDOZBuOo7gL5fsYi9ifWgU9TDr
huDj0g+RtFgvx4fgezXJu0WyhHeuuHmqAMQNDBwEkVsCg4/jAYWA6wpaBW1yUeFM
mK7u8T8bciSdHfvKjCi1P0ep51WaR+aDoxasHh7XlG6OhFE7RpD2HVQZDGD3LwDq
h5IkIXFoibj/fRmYB19a4X1Xr0GVwbKYjM/PL/HIH4C0NhPOd+zW4q/PFx7xkcAr
FbkisobQEwAYpWIfgWnp9UV0BcMw4msywj+B+A561IaH1mkIEnSQ6sz1XIsO39uT
kf9GYo4Qa7jQPOpyzE2vwFp2HXoaFe5VZ2IUvGnP3gBmS2PCGY3+QRlzt7/eT6bt
6kJV/s3t81UlS0ikIgMXxD1QxdtoFQqQEPSVrtbQQmDyRgX+nPg=
=AMZ8
-----END PGP SIGNATURE-----

--coxb52j2trakhe7y--
