Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E58E46E85DA
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 01:23:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231510AbjDSXX1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 19:23:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232047AbjDSXXZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 19:23:25 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A8A982703
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 16:23:24 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0537A5D6A;
        Thu, 20 Apr 2023 01:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681946604;
        bh=Ayu9DG/baqJmBpkS++WSrIGtKNI0AHeUIuISmmFTIqE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ihpylg1jHf3tNTpEfXXkdM0+9xVjRJws7Uqun7vcC66NKxn1PaxfrClaHrTzzxFrE
         f1DxXJuJS1HA8dKy+TFy4WHDKltUxxsLqrDmg75jhFw1RSnQ0PQqrjK9aFIFPQVyk/
         raPoNwPXqR6fkqXfiTkpJicEMlbgFHFOuBTRBsVMBTvFPieRFpaW/sitX2HG6g50og
         SjltiGrMI3jDprgk1HbNlGFa82eVkRp7MC6wthuPph72ST1ASzEqdqhAXJv0BTwvM2
         Xd4nsZ7PpJklclUdrQj4BSeIf4tzrFBmcRxT6jU937wsKunWoRT/837Z6rJ8ez7QE9
         t/gZMf30t9DvA==
Date:   Thu, 20 Apr 2023 01:23:22 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 3/9] regex.3: ffix
Message-ID: <eb0bff3196509aff18b57f0fbb242df02d9c00e2.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="spa6ysxug7ptqogs"
Content-Disposition: inline
In-Reply-To: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--spa6ysxug7ptqogs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

We never bold POSIX, not even anywhere else on this page.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 74f19945d..5aaf42caa 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -61,11 +61,11 @@ of zero or more of the following:
 .TP
 .B REG_EXTENDED
 Use
-.B POSIX
+POSIX
 Extended Regular Expression syntax when interpreting
 .IR regex .
 If not set,
-.B POSIX
+POSIX
 Basic Regular Expression syntax is used.
 .TP
 .B REG_ICASE
--=20
2.30.2


--spa6ysxug7ptqogs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAd+oACgkQvP0LAY0m
WPE5fRAAlUembC3LX7Hcqx3/4umnweHXuKO9M4dPl102dr/ze+JFYg/04dHnxoW1
PHXSDcT1Ywe35rRIe5mYa83U8WVWgEBnV/0AL8yUIsheTIYtQ+Atzm5i+Wazvt4Y
YuQNg1cMBAGtxzlH+SMTRQ2ec0M8l28pO+ni2yORMuMcop6ErMoPX3W7BjFba6zL
Y+j7mzkQEMkF3o7txzQYzjwO4kJTnB55LHAxm3U3XZOJh0rI+nPWB1o+RubYaN7w
rHIVLXGOd+MAzGKB4ISw5lTrwBwcy2MFxBULELO9EYD+SmMXqY5kMURI+V1ePf6W
JDRxF1H9xQsnnj765Do2BQsIlMbuHzsAyvmZ/CQtoLAjhTdjTHwJn75R0igUO5Pf
r+rJd5MCjawmt9hLx0Rc3sXB4HUgnwh16Xw6zbu1XARH9GLg4n+Eq8TjtTo0Mboz
A29thHxcooPOalOHLHc9DiqhNRgnPzLi0htm9si1RpvHjbMRWpLpjrxkYxMKyYn6
c4JuLR1gufJAQWCx8AsPwtdQuNODAQeK922cMrHtIr5c/V+kKFTOkVfqhTWR2zOM
BoL4iWw4dBXYEcFhd/0bVswpR2Hyqj8g8Wd7w2xJ03powFF/MoDdkhaLM32q/SxF
MQMWLnlYdinx1RXPE75YUEpJ2L5ezQz8CtfaZX9Yu+yxAVwH9tA=
=WkdH
-----END PGP SIGNATURE-----

--spa6ysxug7ptqogs--
