Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 183FD5880FE
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 19:28:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbiHBR2P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 13:28:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbiHBR2O (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 13:28:14 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BF23427B1D
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 10:28:13 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 01944BC0;
        Tue,  2 Aug 2022 19:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1659461293;
        bh=PAyJ1TcCoorE6SFEcWyiX3/zeOZ9F7Scd7OSYjYSaYk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AlcuPhK0AlnHx8Ac7mRLsaOOHe2Js9dPdQQcOL1xQYZWNuV/xweYgoYOHvkMu46wY
         +SsY5YaJUeofshCIlk4y/1jafxHmNUe3p1eOZ77vqg4ql7NrYdm1vD/EpPkxm+Fcbd
         encOD5D9SQw8bn5QVq6tRk/5V4PP2NCX4aY0Sjts23ln/pHACs/3LImg7nOfmxeyXi
         UpjoJp6SHd0G/QlEVHQJlRv+irTlrRAOPCFqlEJGQW9ftyjeR7ymk6+T9isZMi5qdr
         ukwwP0dzHRWGvdF92n9L9gjnDOT27x47CBIlboOQMdUlbKmryQkoWpebJRuzpxgh9C
         UlBiLZEMUrDRVo18EBymuaRaC3v7bIYZlPl9X2qGw67CTFbFb6fShi/gWAUFPZLy0U
         YR8BKKj1ODvrPHc0xb8m70jFEynMrH+jHk6EHbKAp5c4cvxwZ5fZ+HJci9KY0p5uMQ
         dD1TAw/AxCrRyk63H0TdkOIFzSsIQyZHHryat6tC4pxgIewWqu2lnEbii4WrnZVM01
         CqhPPv6t+ootgH4iG3i7iVkY5cBrFOhohuYFTn3P4OARL4KvsVHd5KPKFeFGgmE4qA
         X/l3Oe03bsUD8A/XPPP4sPbuPt6NX43enrApHE3f+GVXTgiub0nNtrXPz8zJ4jgR3u
         rBydzrJdku7AJEz/WpBYsq24=
Date:   Tue, 2 Aug 2022 19:28:11 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/3] futex.2, futex.7: {ftp://ftp =>
 https://mirrors}.kernel.org
Message-ID: <709f80ae5c73715e58d08f155d0032f0035d7c88.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tr6f3s75balfq3xu"
Content-Disposition: inline
In-Reply-To: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tr6f3s75balfq3xu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The former doesn't exist; the latter is the new location with seemingly
compatible data

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
mirrors.edge.k.o is just what www.kernel.org/pub redirects to,
but mirrors.k.o is equally valid

 man2/futex.2 | 2 +-
 man7/futex.7 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index a036ca47a..e8a8a5aa5 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1981,7 +1981,7 @@ Drepper, U., 2011. \fIFutexes Are Tricky\fP,
 .PP
 Futex example library, futex-*.tar.bz2 at
 .br
-.UR ftp://ftp.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
+.UR https://mirrors.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
 .UE
 .\"
 .\" FIXME(Torvald) We should probably refer to the glibc code here, in
diff --git a/man7/futex.7 b/man7/futex.7
index 18c2f5803..ec273c151 100644
--- a/man7/futex.7
+++ b/man7/futex.7
@@ -117,5 +117,5 @@ primitives; it is by no means the only one.
 .I Fuss, Futexes and Furwocks: Fast Userlevel Locking in Linux
 (proceedings of the Ottawa Linux Symposium 2002),
 futex example library, futex-*.tar.bz2
-.UR ftp://ftp.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
+.UR https://mirrors.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
 .UE .
--=20
2.30.2


--tr6f3s75balfq3xu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLpXqsACgkQvP0LAY0m
WPGX0BAAtZZQgOZ/5W709Lmn6fKMkvHkAWTKdhOzcSntm3L7Xic31dedwSKgz/a2
be6EL2cKG7hiUTPZ26k5LViZKe1z+jmIj1FnTFZu/kKYR9uGOu6eF1PqtolPOiyo
vpDV4Vk6ZBDJU7gORe6TswCUTuJmhTLY3lMZtj9OPZrtDrAy+M102JN/HxQXfNB3
qbUK8f3YO2YsY7X7uRJ2NKMVYFi1k337V/yEOZb8HSkFXhztl8Hz8nnTTZdaJrbv
TF03tBwPu2To+5QY+6tmv8txfT9JwfR3uBFkHz6k8fQuSHV8r5duYcUwDAzOmDQm
r6Fw3fzlmfXz/XLdHtvUammgxgN2hxtidVNDM78ylBecmNEMmIkfWAGABHPzN2MQ
OvaEYRfrmqlymDO9fJyLSByO5bMmHE0y+HDi6WksfeIzeZ40b36H3KKBPSrN0UCQ
wMUbncA2AbNW8o+H9Y1jiMIX+msfyCOOkWxtavlFJ/9K3QmSrctO5wmGhob5cYV0
hNQ39leWjYh8q+oZdhO/za7arh0i531RdwagUimK61iRhZAkDL/8k/SgbrsZWPZY
zOerUdX6JNhhC5tWAnNvju+pBMn5nPCrcxMIFT27rmdPqbm4wneNMyNfBm27SO3g
IqYqLmF0uqhKE3oIL3/+kVInrd45x+s1ZArbb5Wh+TTIKfGH5SE=
=WN1s
-----END PGP SIGNATURE-----

--tr6f3s75balfq3xu--
