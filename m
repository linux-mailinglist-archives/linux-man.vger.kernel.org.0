Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0D4954C564
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 12:04:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347207AbiFOKEp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 06:04:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346631AbiFOKEl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 06:04:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2CACC3BA79
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 03:04:38 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 432F621F8;
        Wed, 15 Jun 2022 12:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655287476;
        bh=hAwWhe3bMFt95HzmGgyagHDm9744DfpA08BxUxP9ULk=;
        h=Date:From:To:Cc:Subject:From;
        b=PliEefLL6GWy0DR5HwOohIbCNTCBIxzT+jKw9NHJ8PVOCvTyPYNgCzdCMumwSny/0
         DZdw+EHp6HYE0JVUvOMNbYsb3Twvbhkj68uYNqPCj8L0tqEM9VNK5X2UuiDrDcHCkW
         +pU1sR90DWU59isQ08nDbHboYki/RWGhunzAmv4adVQrOeWA8BGjgp1zxiXmuN/p3a
         2Dlk1SYHQxmdqZCymmFN3wFc/2gjfwm+7txor/9Ku5/ZkdTiexQfru344cJIY32Lm+
         1FdiOJgOkNd5zYGBE81g1I6eeDMMBAf92xxtYb4sCR0EDkRArurviHx00X7QjrK25E
         73qOX0+KvteZOJ7EtTjd6FnBY+QbRCVCECqLJ3pM4Vh2rQKCYg5Vg8EBzXwblVKmmY
         /vP+/Kr9XnGIGEGe+1pGIpJ/sEDX1feYVLu7QRFatFnfc0FPM4ufQ6LPeXcgERwYUc
         OpvrshjbeFQlZbWZQesBwERW3SVs2HI43/j+aVzakT32xaylC0NGnFos92dbLkUIh/
         q7m9dydDCo05n6xRhZD+umpJjiE8GHVcK5lofZa8z+5Lc5rb/gC4i+Jnv/bErpfVvl
         d39WHIJ2bGumNISi7lSC6GD8NIX19Ww+BTP+wGt90DzJ34uR2AnipVog2WGXf1qQhr
         j8RY9Mke3DEhR1WAgYo6CFPs=
Date:   Wed, 15 Jun 2022 12:04:35 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] uname.2: fix standard reference wording
Message-ID: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fb45hwkymbcpm7qh"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fb45hwkymbcpm7qh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Issue 6:
    IEEE Std 1003.1-2001/Cor 2-2004, item XBD/TC2/D6/27 is applied,
changing the description of nodename within the utsname structure from
``an implementation-defined communications network'' to
``the communications network to which this node is attached, if any''.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/uname.2 | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/man2/uname.2 b/man2/uname.2
index 94c9c951a..b43f5d8d6 100644
--- a/man2/uname.2
+++ b/man2/uname.2
@@ -29,8 +29,8 @@ struct is defined in
 .EX
 struct utsname {
     char sysname[];    /* Operating system name (e.g., "Linux") */
-    char nodename[];   /* Name within "some implementation\-defined
-                          network" */
+    char nodename[];   /* Name within communications network
+                          to which the node is attached, if any */
     char release[];    /* Operating system release
                           (e.g., "2.6.28") */
     char version[];    /* Operating system version */
@@ -73,9 +73,10 @@ So, four of the fields of the struct are meaningful.
 On the other hand, the field
 .I nodename
 is meaningless:
-it gives the name of the present machine in some undefined
-network, but typically machines are in more than one network
-and have several names.
+it gives the name of the present machine in some "the" network
+to which it's attached,
+but typically machines are in more than one network
+and have several names by which they're reachable.
 Moreover, the kernel has no way of knowing
 about such things, so it has to be told what to answer here.
 The same holds for the additional
--=20
2.30.2


--fb45hwkymbcpm7qh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKprrIACgkQvP0LAY0m
WPFwgg/+LV34XJReUItSxcxdlU4LNS6frCwyYl8XdR4VZd+DQJuU9gL+yQIpg5Zy
V//t3JhFqmtB/18pT03sacwJyhfKWdSneElOBXgCArajgYbC7hCJwbdyimBPQHHP
kAic+bVugSLT2NdIGysQ90yycb0ysoflrP1quur7vNkpSLEw2Z6Hundcm/jWGxIo
qAwuNjJN9k4ceSzu4S6Gfd7/tYnh6nQ2wRI1qXRZrfQpP3IXsziNIuegeZZqSrMx
NxXNtDbsUJUHRbYEXH5kDp9MHtt9R3K1ynfDxGqffQQJaRAXB+VPFfhnh/OEHPmw
EBYfvLFspWu0cnDoucNK3tPFQxQxUYZmtHOaHcIiIk+pRzuLJpZSf082sJiE1Lz7
1GrfiQ/roSvFhhqydCb+tyAD2YV1AE81UR6Z1FX4Z2kbsvEZR68EKOP3Pr5lA/TK
j3I4sbaajTam+q+S3Qd52i1/iXwIaWgxzZ4rgiHEQCKDNkggZQoyESAtODPguZwX
GRMht8KnCAdWBM2D8WmArrdVF6ZoSUMJMsz8uWK7PQfbl5l5MfWP8Jv5BEeIZMRh
Yc+fEUL/DR/iAycMIaSxnrwnUdCehxFxfNuStGN1iy2FHX6xcEb0sMf2OS0kpEyK
KbryPAUaHcHMxR3Iea7TzuoSZgPyJP+BELdWnX9gFlfo52d+8/M=
=wCC9
-----END PGP SIGNATURE-----

--fb45hwkymbcpm7qh--
