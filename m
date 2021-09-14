Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BBBF40AE06
	for <lists+linux-man@lfdr.de>; Tue, 14 Sep 2021 14:41:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232524AbhINMmi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Sep 2021 08:42:38 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:48866 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232818AbhINMmg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Sep 2021 08:42:36 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 7D617360ECC;
        Tue, 14 Sep 2021 14:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1631623277;
        bh=m+mSFI8RjO4Auyd5FfGE3NUsm2iU6BwFYEb9RnPbw7k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RMsN2IupoulaDrF4AXjZlOUhmUcP//nqQ/mrdMdfKEww6se0w+xlrcFZ0XU/C7lhS
         EMGTc6SyaQzVnVqhq4RFtMANFERIc15R+C8bJ0EvOBtYGRSxi60dogMl71OrcsaNah
         G/qGBpOx5pV5Ui5OL7/bZryRlFjjAH2vuC2b1b/+AA7c7zpeIwB5myWYLlsu7ZTRL5
         wGDHG1cOwxInfX5QbJrDeuhTIeM99l3Q3mzMpMR/Dyi3yecRfti7XIc1GojzYr6JZD
         uZUHA1qYFDfgnu04aIVO4dv9CCUEF+7+JHb1Jnc0UJxCI2nOr3mmpc3nhBNNzNFdhG
         E2+o1w/RXETQQ==
Date:   Tue, 14 Sep 2021 14:41:16 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return in
 BUGS
Message-ID: <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sjuif4eauoqqk7qx"
Content-Disposition: inline
In-Reply-To: <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sjuif4eauoqqk7qx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A stack lasts from some high point until it runs off the back
of the pages allocated, making detecting errors impossible,
save for actually trying to access said unallocated page

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/alloca.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man3/alloca.3 b/man3/alloca.3
index 71348e609..20761b079 100644
--- a/man3/alloca.3
+++ b/man3/alloca.3
@@ -163,10 +163,11 @@ The inlined code often consists of a single instructi=
on adjusting
 the stack pointer, and does not check for stack overflow.
 Thus, there is no NULL error return.
 .SH BUGS
-There is no error indication if the stack frame cannot be extended.
-(However, after a failed allocation, the program is likely to receive a
+Due to the nature of the stack, it is impossible to check if the allocation
+would overflow the space available, and, hence, neither is indicating an e=
rror.
+(However, the program is likely to receive a
 .B SIGSEGV
-signal if it attempts to access the unallocated space.)
+signal if it attempts to access unavailable space.)
 .PP
 On many systems
 .BR alloca ()
--=20
2.20.1


--sjuif4eauoqqk7qx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFAmGwACgkQvP0LAY0m
WPGWGg/6A8GuetbOW5HRawhzByaBl5H6FnD79wE+coIhXHuqqTbVQNIhJxesNRRV
qBE7TMnXClJt+yAJKpiis57d8irb4xArxhKEUxodi2oUoFX9BWY5rkzkKHMiK/yu
Rnyg0aC1IbCRKXFvv5euUwb3UrmudcqQSCuXEzA5PPwmxxy94R7GWpK180MFZgrR
iD972TDmUAie5VpihGwWelfn3ewRmOpqAvLR7syCjQABU4WSXqHYcnhjmTmT+GgE
RR1XlC9r78a05EHyDWfaHzGSqCT1k7x97b2t60ZSwIOuI7KguOy/seYw42N855SI
zU9SEtEweBYWS96zipUXGPIO4CnB9nlE5pbZ2utqZgcZHZoD8zIrPj/1+cPBxwhX
F7NypU/JLgzEFN1ZvCmkzPFX8Hr4w+yF2+Effd911IPbhGqehNWmIN+SAqd6PEVl
mQCqk9NkwNaV0yjq6bVQG6U9cnHSDVYFCr5XJoDYZoL9ZR+WAYXBpDIc+hvHMmhM
leNcTD9mo4RwW1HNcJYRlWgeib3+f3UBRpF9spCgg9d83uXVmRoZPtl1hzmjLR6x
leRtz1KU4WQQctv91ccZjidxwWxFkBaTBxh/GJdQ85OBCQXUDqW02KKCqGhD8TdL
bBVUoK3Kxr3vZGbC7wNraXDStf0S+3oWRqq+J8UmLW4LdiylZUU=
=la2M
-----END PGP SIGNATURE-----

--sjuif4eauoqqk7qx--
