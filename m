Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C34C56E9860
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:35:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231843AbjDTPfx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:35:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbjDTPfw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:35:52 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7FD4540E5
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:35:51 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CD659690E;
        Thu, 20 Apr 2023 17:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682004950;
        bh=zWu/zSK5C2ZbGuEQNS5LTj0fCKmxXejKTq4breS0uC4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GU+nV9Oe4AKQ5oHihKWNghhIccH8GPEuxQfHIkojCJajYvjHSLn22PySiE52c7uA/
         vytoQDs2L92kNZy2ct7jxWSm7euvxndxO0Erjc+27TWvLE1m6QHyg35iuKSHr4uy+p
         55ugpG4aClHdUDEwKUj34+sV5TF2MYTLFpTbO04QCM5NWLbSjE4PsrovL+4BN75Xvo
         ctRvh1xlOpsBI94IncB0XO9G1blg/H/ppUOfyWFe57BAlAeMekYEZ8NLYodod4HVTD
         yII0ukicaKxTeGG2JUgcYspzXXsJgfc4veDwAD+bacDSARbhrDhpmPjFNWEwK7KxBh
         /+TU6h36WsqXw==
Date:   Thu, 20 Apr 2023 17:35:49 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 2/8] regex.3: Desoupify regexec() description
Message-ID: <7240de5b781210489d8155d089e1f6f2e496bc9b.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="jcxhrkhhgx3lsbtf"
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


--jcxhrkhhgx3lsbtf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 2f6ee816f..ae160c9b3 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -105,12 +105,10 @@ .SS Compilation
 .SS Matching
 .BR regexec ()
 is used to match a null-terminated string
-against the precompiled pattern buffer,
-.IR preg .
-.I nmatch
-and
-.I pmatch
-are used to provide information regarding the location of any matches.
+against the compiled pattern buffer in
+.IR *preg ,
+which must have been initialised with
+.BR regexec ().
 .I eflags
 is the
 bitwise OR
--=20
2.30.2


--jcxhrkhhgx3lsbtf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBW9UACgkQvP0LAY0m
WPHYvg//RwmU60w0USLSGlH7YRBuXtuUy1JUpVLIin1jHpm47IKWJZipi/Bhq+m7
SkIb7rTLCn7HgOgAGYE76f7b0re3pDnosPwLZCFCXC2MAenDa+h3213n3X+VcLkt
c9IDRYGztajzQzz94LqRkHbn+UEWBDWNINWIYoyBLXhOP0e/DmAQnWeCU70oD4S8
FCK1aGP0O5V1dEwoyr40SRP18p6fkV49eiBz59PtloWW54PdUlButVy6uDAkBLAt
mYvgQ52E1vRqvmsX2lmZDEqoAYXlWu2P6XUWPBvGGPxQCsScofBwIWNNQjQt7LSW
uW7PFvZyoO+BdtnS46tRILIWJdsPV1Mk/o1sukbq+4bukEliP60Rk9f5Pr8o8cba
IjhiOYnwpAnofCUZ9QapH7qO8NaPygB/Y3Kx6Mc4Ggb/KIZAi+AIFbMhd2bPOP2b
dJdwMpDJ2mUcbs6OomaQDDsDCbC3/iCmtCz+viNe881FK5+NnIQ9xPcZYs748cqI
+5MJw+/1uVVTLe2tS13VTImTsVaZa/on9qQHZZlkesVAjv4iBxbYzi51lksmXhQg
cgsh/Mc63M/FULCLm8u3jWv//Q5VhiN/TF8ASRG4CypxMVlGoOgTX6I51GXvo+gW
I4XyY2A4sUIQNeMkwIUYC5vzDZzlro+W7QnRLu8xCFGu5gmWuok=
=0CJH
-----END PGP SIGNATURE-----

--jcxhrkhhgx3lsbtf--
