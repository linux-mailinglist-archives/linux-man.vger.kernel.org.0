Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8649169163A
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:30:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229677AbjBJBaZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:30:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229725AbjBJBaY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:30:24 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D175A5D3D5
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:30:19 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6A613EBC;
        Fri, 10 Feb 2023 02:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1675992617;
        bh=tJRbHpgIpH1sUFkJ36KlKP90dYd7QYsCq3MkrRJ/XYI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mGpFrPqPJPC8bwiLANyau5nCbiHvMR8kPOu4JAM9lrOCLkn77PEE2UgiyJSFbOXhw
         w240cZZlh5d3smzXQaJ/Ml2QFreVmApoD/Uux+PF6ZKXnjsVuJxH6pEGpTszu1bAta
         XprCQFmYsd7EFgY2dghhl2VPjLfpoh/X44j3dEwRO49i9E+Rx02yIeS1a10C9YcLsB
         NYV3T+2MgewpzBDLf0S0SwHiBMMVeZh91I7yErzE2bvnAFO3b0VChklc3kff/Woj/Q
         Oh3xENZbdJYRxbJ6J6GEC1fUQiIlpXaAHfc+MYshDx//Tvj44qd8ME/vyLqYAY0j09
         sK02+rvQ8T1lA==
Date:   Fri, 10 Feb 2023 02:30:16 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] vdso.7: fix deadlinks to Linux Documentation/
Message-ID: <20230210013016.nac4zo2javxt455b@tarta.nabijaczleweli.xyz>
References: <c5d52800-0dd1-07f0-16d4-a8c1936429af@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="n4u2zwmc7cyi64hh"
Content-Disposition: inline
In-Reply-To: <c5d52800-0dd1-07f0-16d4-a8c1936429af@gmail.com>
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


--n4u2zwmc7cyi64hh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Respectively:
commit dc7a12bdfccd94c31f79e294f16f7549bd411b49 ("docs: arm: convert
docs to ReST and rename to *.rst")
commit db9a0975a20c1f21c108b9d44545792d790593e4 ("docs: ia64: convert to
ReST")
commit e77e9187ae1caf2d83dd5e7f0c1466254b644a4c ("docs: parisc: convert
to ReST and add to documentation body")

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
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

--n4u2zwmc7cyi64hh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPlnicACgkQvP0LAY0m
WPGUwxAAgWq7ysR+VvtNg2qVicTYhEDU0qTtRFf8nbW5XbRM3vu1RFrKIwEa6iyI
hEDgTP4jX5rj9JrNlZDYqt/cf93UyjtciVm93R6CuWRQ4K9u7tkgOVDPL9cB3Gct
rM9NfjXE6faog5vyvKHntqtB4qQCZ1fk/ri4TqxkzEQfdN0T91ejku2+EoYu0auO
PqCUuTr8w3MyDOYPj1Qk0/6V1bmWLWLSkbQOpKGbHLLO2Q5vuPuFxk3LFWuqcnuc
zZ4WA2fwT/Nz2xgVVdAf/8avk4gtHL4aS4KNLx5APydivkC9ppXqewNieCBUrd++
EjHN4sHEAGSqtcWGoRKq2mjVnSE9QeF9I3/lYQg/hSCYyNIABXh8h8Mhloi1CW62
24ktDP1OOMDeR9uOUkXe0oVzyfP55CqDk8WIRofY/wtKv2rMq54cD96ZkuXWWfZP
pOllUPMjSZbHJXs1EOUQWEGGEncwQyADTICV2hW747D2rZXynH3E0wVEOtdIxf0B
gVk9svzT7/J3L0CkVBg/XWiPqK4pVlONdC12yU36uGxXXY+bb2B5GFGS0/lJYzuU
poxwWReRCZYHVZsUwWfcxVqWPwwDHg7JjpgRB1e2YJcuILXGwM9RfFTjbH0bjwra
xbe/mIwJhWPUGg3ot5YTRbifcLTatcuP8kP94Djr+ORpJHc/+jg=
=sR3z
-----END PGP SIGNATURE-----

--n4u2zwmc7cyi64hh--
