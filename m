Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF4CE5880FF
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 19:28:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231758AbiHBR20 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 13:28:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbiHBR2Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 13:28:25 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 353F649B47
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 10:28:24 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6F4F39E6;
        Tue,  2 Aug 2022 19:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1659461303;
        bh=cmNATsGnV/I8HnV/h3uJhne41CUIuqq1Slp2Boqz4r0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iYE5ZiL0MVCqCkP90m6a0eNPQcMkAgoMLvZmOtKrAMrkQAkRK5FmBsJfHF13yW5Uc
         JPSh42PXSem9ZySGydIpbop2kptKAEMpGUT2Y4VO9D0ir3RsMRok4NLM7WvVnxEjyu
         qVYulSPQK8hwiVSrfosS1pouNEeDgS3dy3HIAOuvIlKqPY4iScCse5nHV+LkxS4ce7
         qe/f/+LW3WDNzzhJfk3cWP9AjJNmxs9YJuQRBAMiRvbkzoOrnxnYx8YeLkGHhN3R+A
         O30t/Gc+5bfm6VI2k0kgU6eGBdnoGrHeKdoklytyyeQdEnP6qE+W3BegwraGf5TByL
         K+Dq/FaPRmfxS2Y+vV/+Ny4iS68SGXoD0IDG7w5GwqfNVPgxvikCHzDSmF+O0aBIQl
         PYQHq+1DBFajZYlOp+aHodvCGlND337q3qLMchtKHObw3boUFZsMOWv0ABswzTkoXK
         HGx3Cu2fPhDmPRMqMVMcFNUDz51pH1Iq3QkEPbzSLgooCsfzTCO55yCL0Jeu1UypJR
         L32i7Ixn2E+qozj8pFFf5+6TbwAd+v7MKBPmCeFwaFsuLlXMNFOG+5W8Y9lIeA0gD1
         LmCls1zbtv48HbxKKDTBQ2+AJbU8arIKqPjHEoOj1Jwx4RsYOxaKVSiec8/rpkmOn7
         8pYcJOcp0WmOe2XsSjZlByFY=
Date:   Tue, 2 Aug 2022 19:28:22 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 3/3] getaddrinfo_a.3: gnu.cz => gnu.org
Message-ID: <05b8faf09e16a4d5b3510c8adde3615884c2278f.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="3fibautehcrk6ufg"
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


--3fibautehcrk6ufg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

gnu.cz exists at a different address (but is unreachable there),
and the address we had is an unassigned coolhousing one

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/getaddrinfo_a.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index 4a5b38078..25283dce9 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -323,10 +323,10 @@ The program might be used like this:
 .PP
 .in +4n
 .EX
-$ \fB./a.out mirrors.kernel.org enoent.linuxfoundation.org gnu.cz\fP
+$ \fB./a.out mirrors.kernel.org enoent.linuxfoundation.org gnu.org\fP
 mirrors.kernel.org: 139.178.88.99
 enoent.linuxfoundation.org: Name or service not known
-gnu.cz: 87.236.197.13
+gnu.org: 209.51.188.116
 .EE
 .in
 .PP
@@ -403,19 +403,19 @@ An example session might look like this:
 .in +4n
 .EX
 $ \fB./a.out\fP
-> a mirrors.kernel.org enoent.linuxfoundation.org gnu.cz
+> a mirrors.kernel.org enoent.linuxfoundation.org gnu.org
 > c 2
-[2] gnu.cz: Request not canceled
+[2] gnu.org: Request not canceled
 > w 0 1
 [00] mirrors.kernel.org: Finished
 > l
 [00] mirrors.kernel.org: 139.178.88.99
 [01] enoent.linuxfoundation.org: Processing request in progress
-[02] gnu.cz: 87.236.197.13
+[02] gnu.org: 209.51.188.116
 > l
 [00] mirrors.kernel.org: 139.178.88.99
 [01] enoent.linuxfoundation.org: Name or service not known
-[02] gnu.cz: 87.236.197.13
+[02] gnu.org: 209.51.188.116
 .EE
 .in
 .PP
--=20
2.30.2

--3fibautehcrk6ufg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLpXrUACgkQvP0LAY0m
WPEJLQ//XWuRuC2OtiOwTAWb/hw/IEuf1jZXu6H4zP0roDGvtHTjG4dip1XnzWCi
JIq8Dbjg28owr9NKXdRrDgp2bYJn/bfI603Gc1YPC0f5TrnDXUn/dXHkGDdCCRly
WbqvJ4vYFRRrzSUGJfmea+j1gIr02wBjsUGSFX2iNJtpS9Lc3xY4ezdP6cP3lQrG
NKSvIkjkqfoO3MIsShNC0rKfVSg5YQEZ/GHY51dWm+IrDD+TUw2neqMFTzfD759I
0/iTz2GxRllZtKqb4GIn5asQ0zyxqyss6axLRlIpdquaBmtoQarvUYRSQdPDq4P2
+f37c+99Es2d/wOPwC+Ppd3TQUxPXn4JgRRXsD+BVOhtucy2OMLWknY78WwoQ6y7
R+se9ARV1Lf44rVJNDrAZ4ldOaq54TiMYD2X0ojM73JPVfvNw50qTMTEU/ZwieZy
Qtj7talZStHUbgCB/bxEc0bN2ea7p86+tUawo7U5qTC2gyTiliPilMki2p/coSuq
x4Ytzs3p98wCSoBIYpCmaKMAne9KYC+ziVOAm7L0R7G+FrG9TomAKFFfUypHjreW
n/iyhCrvTsrGOcWdskZoT6rAtwJTWNAtA73PeKyCWLSbBGJmO/mZ3nUhkV+e2pzI
EOci8zoKNFySx0H5nodBKS3oL7PLBwQQ8e/lEpTpLOZs4zeNTk8=
=P/RP
-----END PGP SIGNATURE-----

--3fibautehcrk6ufg--
