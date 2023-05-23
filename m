Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DD2170E65E
	for <lists+linux-man@lfdr.de>; Tue, 23 May 2023 22:17:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238065AbjEWURn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 May 2023 16:17:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232824AbjEWURk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 May 2023 16:17:40 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EAAE318C
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 13:17:36 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1858A8B64;
        Tue, 23 May 2023 22:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1684873053;
        bh=n9VUi6FGmMCo2zObiZZg8XGHQr5+fv9FQ+8+HuMq4kg=;
        h=Date:From:To:Cc:Subject:From;
        b=eTamRwE4CxoPXKlNu/1/SAiNno5bw5PIeBdgfdtLPArAAca0d3WT21Acz6pOwb6+v
         eQ+yn6i/zU+jaKrqheap/GKDmFHu2yS5M13CHBFscSSwrHMNllW5a3a3Qp7vFVWKyc
         Kl/wO+g+xZ+Vsg3E+MHp4LGTRoORxQLPasnHCONZE+SZLTPetu4Em2xUw/3j8SkZgm
         nfnTX2vAyI6GTmyzcqETFXZ3M0DpszxLm0nAa4s+TJU8HchfBpjMzd0T2AKQWu8qb2
         E/BMKikdYsSNkYCl//OJUrCCnItyHT3aXa5ZGHvi9uDTLXOZO8kh4bgpryVCek3R97
         mRrItMPN6g0BQ==
Date:   Tue, 23 May 2023 22:17:31 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] putenv.3: originated in SysVr2; in 4.3BSD-Reno; fixed on
 modern systems
Message-ID: <qpcje3s62iktwkacbn6knkes742z7zxksjwhq7dgfcmfetoivq@wevyfyxir5md>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="czgow7dzzq6kohxb"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--czgow7dzzq6kohxb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Fixed in:
  NetBSD 6     src lib/libc/stdlib/putenv.c 1.13
  FreeBSD 7    putenv(3) says so
  OpenBSD 4.6  src lib/libc/stdlib/setenv.c 1.10
and is correct under current(?) MacOS as well

The current wording implies that all of 4.4BSD's descenants also carry
this bug (at least it did to me): they did until like 2009 but they're
fine now
---
 man3/putenv.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/putenv.3 b/man3/putenv.3
index 59c2ff1..cb80b29 100644
--- a/man3/putenv.3
+++ b/man3/putenv.3
@@ -83,7 +83,7 @@ .SH ATTRIBUTES
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.3BSD.
+POSIX.1-2001, SVr2, 4.3BSD-Reno.
 .PP
 The
 .BR putenv ()
@@ -119,7 +119,8 @@ .SH HISTORY
 On the one hand this causes a memory leak, and on the other hand
 it violates SUSv2.
 .PP
-The 4.4BSD version, like glibc 2.0, uses a copy.
+The 4.3BSD-Reno version, like glibc 2.0, uses a copy;
+this is fixed in all modern BSDs.
 .PP
 SUSv2 removes the \fIconst\fP from the prototype, and so does glibc 2.1.3.
 .PP
--=20
2.30.2

--czgow7dzzq6kohxb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRtH1sACgkQvP0LAY0m
WPEbMw/+Mpk4FD8igsotfZfn3t0eE8860qaL0GXZqqExFl8kY2StKRo+Pq4acyah
G//RES5QCOqBedaPzahHzsdNU2/Ypefr9zokqtL5Nm7W2dIdlITfD7o+MoD3WqYu
8h2a0WQ8FWEJ3Xh3uDRBAF0kJvVxdcgvjaDgdHrTyClG50NRHQ+vYDX0dO24cx0f
x0LdEL+1bm+3ugD4i9EidZg9hQh38VjsDCKjdrn8KacisM3+C25ixz1sDJhvS5TA
scAm+nuM9WrKWHwbZgr9mthawEdWAsTimiJxzgzFtG4S0oZrx7ZdvXBx4BeHX7ht
JKwqTRn1TzPIgDcXoLxZJEQvmCjWL2Vlrh5ACggu0ug5tnwxbPL5ZsV8zIPxGCNj
Ou8ap95Vhr3LsQvbVjsNSeOkexhtphXbR6Wai2fTIpr9fp+Ls6vsF9mIBOqHJdhq
duW4yu2A6eTQ8VOCBxS/fB03VJGa/gPWOQVO5XOtS08/aQW/7edtkjpaP2T45UBD
YgpBghD0KKmYotKAtIZEqkcM/BatKccmsBse0asiwYMDAzfp6DR+IVA/xHFTXPCf
Azo0L/CYavMb/dTm5MuOPR2cg86LwIJVJdpHPjDNFwCaUWpPjMrhbyQ4cMw7Y1vS
968Sel4G5FQdp6D0sWCgX0bXHHoCKFQZOEh0b2BS9vDbjnudq24=
=8ncA
-----END PGP SIGNATURE-----

--czgow7dzzq6kohxb--
