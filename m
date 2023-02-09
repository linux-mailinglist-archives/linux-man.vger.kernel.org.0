Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7AF3690E9F
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 17:49:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229723AbjBIQto (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 11:49:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbjBIQto (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 11:49:44 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A7A2C5B75F
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 08:49:42 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 57CBB1432;
        Thu,  9 Feb 2023 17:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1675961380;
        bh=kNKXipi/sClNfZ2aCXGLCYFrLWWfSgYIgl96wEkEnzg=;
        h=Date:From:To:Cc:Subject:From;
        b=YZogphwBBvIPyqRKzdPIm+CjonLeLGSCAfjYEs6q1u28Iq9WqyIXy/ZW/0V6HOmrM
         hYPoHP7xLjU9sQBu8Ffg+/QhXtNf7+cKBSpbBRPj7FrcaCZJnuQw0QQ3OtlCO/bWnf
         hxAtyuhvP1NML6vvbdEJ122XSq/6f6kYkiZ/UNjYJ9nJQlQk/14dsIu6mpX7h8SXM3
         itwii5buuLvN8TzdF3anlWxFdyV+otb8kwfZSVr02rQBH74NDl62KooEhYBA/daIk3
         x3Iw1csrVzWLXUsoamZqaYccayLIDUjaGanxxdhdThHcn5rE0xHcBs10pgLEWn+yxg
         84ZNweFCZpxbw==
Date:   Thu, 9 Feb 2023 17:49:39 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] vdso.7: fix deadlinks to Linux Documentation/
Message-ID: <20230209164939.kejinsncbdazdgpw@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ynw4tp2c6gugw27o"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ynw4tp2c6gugw27o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Resp.:
commit dc7a12bdfccd94c31f79e294f16f7549bd411b49 ("docs: arm: convert
docs to ReST and rename to *.rst")
commit db9a0975a20c1f21c108b9d44545792d790593e4 ("docs: ia64: convert to
ReST")
commit e77e9187ae1caf2d83dd5e7f0c1466254b644a4c ("docs: parisc: convert
to ReST and add to documentation body")
---
 man7/vdso.7 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man7/vdso.7 b/man7/vdso.7
index 9bfac91b1..c48735f8c 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -213,7 +213,7 @@ __vdso_clock_gettime	LINUX_2.6 (exported since Linux 4.=
1)
 \}
 .PP
 .\" See linux/arch/arm/kernel/entry-armv.S
-.\" See linux/Documentation/arm/kernel_user_helpers.txt
+.\" See linux/Documentation/arm/kernel_user_helpers.rst
 Additionally, the ARM port has a code page full of utility functions.
 Since it's just a raw page of code, there is no ELF information for doing
 symbol lookups or versioning.
@@ -222,7 +222,7 @@ It does provide support for different versions though.
 For information on this code page,
 it's best to refer to the kernel documentation
 as it's extremely detailed and covers everything you need to know:
-.IR Documentation/arm/kernel_user_helpers.txt .
+.IR Documentation/arm/kernel_user_helpers.rst .
 .SS aarch64 functions
 .\" See linux/arch/arm64/kernel/vdso/vdso.lds.S
 The table below lists the symbols exported by the vDSO.
@@ -278,7 +278,7 @@ __kernel_clock_gettime	LINUX_2.6 (exported since Linux =
4.4)
 \}
 .SS ia64 (Itanium) functions
 .\" See linux/arch/ia64/kernel/gate.lds.S
-.\" Also linux/arch/ia64/kernel/fsys.S and linux/Documentation/ia64/fsys.t=
xt
+.\" Also linux/arch/ia64/kernel/fsys.S and linux/Documentation/ia64/fsys.r=
st
 The table below lists the symbols exported by the vDSO.
 .if t \{\
 .ft CW
@@ -328,7 +328,7 @@ set_tid_address
 \}
 .SS parisc (hppa) functions
 .\" See linux/arch/parisc/kernel/syscall.S
-.\" See linux/Documentation/parisc/registers
+.\" See linux/Documentation/parisc/registers.rst
 The parisc port has a code page with utility functions
 called a gateway page.
 Rather than use the normal ELF auxiliary vector approach,
@@ -604,7 +604,7 @@ The documents, examples, and source code in the Linux s=
ource code tree:
 .in +4n
 .EX
 Documentation/ABI/stable/vdso
-Documentation/ia64/fsys.txt
+Documentation/ia64/fsys.rst
 Documentation/vDSO/* (includes examples of using the vDSO)
=20
 find arch/ \-iname \[aq]*vdso*\[aq] \-o \-iname \[aq]*gate*\[aq]
--=20
2.30.2

--ynw4tp2c6gugw27o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPlJCIACgkQvP0LAY0m
WPGI6g/+IdVolmpEbDKdDGd2g0VhznvUovCxE+XTqsaJVGj5guGynsNYRX2NJ4a5
HX3VoxBMIjYltq+XrkiCJHaI2pRwMsH+AHPe89B39SOcyjmLO/w1o5Nv8fzi4QWH
3D3pMn+ZM649/lE/N2tz3H22rciJgavDKIQp41OKWVuvGeBoYt8F+fJAOF6lA2nI
BVQvXZW7Snq3p2WDtCYQhUXDofo5PwFAw+NrreSORvy0QtG7kEh4O3mJzLGgEEwJ
Krns/YxUmUOW9B45RJbfZabSXUdW5ZiFMRoRF8sSyRImD9b/x0Xp3GFd4W6niw0F
loc4V0Vi/QKnqFD+6PNvTT446j9qoFaY0XrX64SojFVBkY2L9824c0KaXl8Yjzph
Aktza2PUjOUPcXhLmVt3dSTxPdP9J2VPnm4Bp0tIkWTdT1Q8uX6Nt7AENVKbOVzu
pPfHZtgkHS5MtXTmq5lWN1A7J3ONjFOuNDDsXBMQn+8fKPeVDa60KLKlr9N3VkTL
49z7mF0kyGqHavA+uYaokzCUt2628baxwHwApwxnSLUAA3a6AlnSYSmLWy+gvVHS
C9hXVuQVYEqYm+BGLU/waAc9pHEFH+QVBIMLHoO68f9hB+b1wRGu/GC7ENDH4nrr
8geyYJMUdh8lR0p3YQHdSmshG/1LrDp4yy1NQCCOaHt6ZV+kZS0=
=979g
-----END PGP SIGNATURE-----

--ynw4tp2c6gugw27o--
