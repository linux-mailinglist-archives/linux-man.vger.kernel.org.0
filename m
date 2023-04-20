Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C97946E9549
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229593AbjDTNCd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:02:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229841AbjDTNCc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:02:32 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 44454E73
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:02:11 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 659E15EFA;
        Thu, 20 Apr 2023 15:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681995728;
        bh=49Ts+1kwHfCufoXlCMQKFuZGIdaj7N2S3YstG0xkI3w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NFNj4rkA5UKRNEb92cgiYJWdOWV0XtRtyY7fSAzXCq8rViKzq6pnhbrNw+J9n+8rf
         pZ5w7DNSpu7JGbodrYmwIRMm953ukmZTdrQGiJTOkL5ilKQwFjxtlRRAQ/MxiVEPuW
         Tz2cWul1JfbnirbnVjAKw8EKsnL0Kx/9ax/Dmuigb4gF+l3l5J7jtEmrpJCs+60lLD
         NP3835Xyl6YhXNdXoHIf51tHx4lwwjc0n1R8kToxtk0b7s0L98ehpC+C8TN/rXeaTU
         K6zmuTkNxh4ZEwW8yZBaT8AhHL/Ox9bTj3PXwRQRrrBMSzsgw2lctwX6tE4kNYtiC7
         574WtZHLs9O4A==
Date:   Thu, 20 Apr 2023 15:02:07 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 1/6] regex.3: Fix subsection headings
Message-ID: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="6sz7q2fbaezvyncu"
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


--6sz7q2fbaezvyncu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
$ git diff v3

But the patches are re-ordered (and a new move-only one added);
--range-diff, humorously, /only/ picks up that one, and doesn't
understand the rest, which is worse than if it failed entirely.

The 3type move is as far back as I could make it I think,
6/6 wants to come after regoff_t deduplication.

 man3/regex.3 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 3ee58f61d..637cb2231 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -31,7 +31,7 @@ size_t " errbuf_size );
 .BI "void regfree(regex_t *" preg );
 .fi
 .SH DESCRIPTION
-.SS POSIX regex compiling
+.SS Compilation
 .BR regcomp ()
 is used to compile a regular expression into a form that is suitable
 for subsequent
@@ -110,7 +110,7 @@ whether
 .I eflags
 contains
 .BR REG_NOTEOL .
-.SS POSIX regex matching
+.SS Matching
 .BR regexec ()
 is used to match a null-terminated string
 against the precompiled pattern buffer,
@@ -159,7 +159,7 @@ or
 .B REG_NEWLINE
 processing.
 This flag is a BSD extension, not present in POSIX.
-.SS Byte offsets
+.SS Match offsets
 Unless
 .B REG_NOSUB
 was set for the compilation of the pattern buffer, it is possible to
@@ -209,7 +209,7 @@ The relative
 .I rm_eo
 element indicates the end offset of the match,
 which is the offset of the first character after the matching text.
-.SS POSIX error reporting
+.SS Error reporting
 .BR regerror ()
 is used to turn the error codes that can be returned by both
 .BR regcomp ()
@@ -238,7 +238,7 @@ are nonzero,
 is filled in with the first
 .I "errbuf_size \- 1"
 characters of the error message and a terminating null byte (\[aq]\e0\[aq]=
).
-.SS POSIX pattern buffer freeing
+.SS Freeing
 Supplying
 .BR regfree ()
 with a precompiled pattern buffer,
--=20
2.30.2


--6sz7q2fbaezvyncu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBN84ACgkQvP0LAY0m
WPHNXg/+NSz+vDvJ3LGVpvm1VhJBO4dJwE5lEcg3NGX5nHlebE0dffCJeDf0duMk
U6AF+bXcCyRE159fvlJI9Gj3yz4f3oG60EtdS8DuXmZzjMqYRcXO+KvTVvTpVu3A
+taeIgF7NT2ozbyKwh4fssxMGKPWi4a5taMIVfp3ww6Pn/gsDdCgCL4M972I6s32
7GQ83i/8d/0wn+0eOSlsE8YGf83p3BnX9tNwvR81cP1EbfWPyhVPXDlModMhSDbk
jcrZi1I3aPVNxBESP4KZWkc+whBdlwgTV16Trb+X8aSKNjEI96umYvDQlIR7KBQZ
EYBAGZHIl2XlsJYxW4QV5eqilPZqusDyL93CugnWOGuS0yEFBCSh16t10RFM75EG
totHXSeu7s/Q8Fsg/Kirh3zgdkSMPh2vxZ8eEovcaiyO7QAjZ/3kZDl/egGwgaF1
r5VpC/O+Wk4B+P0pevK5gVMywjsN+egDLHSDHr4VmFGZwBNcqJv0/S5Sh7ncOGUv
v6V+7WqQKRjb+1bzx+YZYS7TuThMn6JjdC4hryMuNn45P2Q3hYkdmTvl1DpTdezG
bcipQk5hXsZPb+ZaPPYD8P0fmaxWemMy3OBC1L8TBcXYR0HmUQkDyi/IsZ8F38EI
hIs/emrw85q50G5xMdrrnQ90tWQNIOhzRgUq47aqDYyDKHubOys=
=nenc
-----END PGP SIGNATURE-----

--6sz7q2fbaezvyncu--
