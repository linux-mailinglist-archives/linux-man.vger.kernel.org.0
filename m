Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 923606EA1D5
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 04:49:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233049AbjDUCtP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 22:49:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232643AbjDUCtN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 22:49:13 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0DB0F2723
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 19:49:13 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5BA5259FE;
        Fri, 21 Apr 2023 04:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682045352;
        bh=pKbFRLC7FGvEKETIiAoxM+XfdqZvQrnV+5+e8OkNlFU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sMbobYr/EwU8LdC4UXUYssI9ExF+xv7m1oCI80P96bH9gyodFp6ILTWhsC8MIbXAL
         sgJmLsIMRHoKHNSWGE9kkLw1ugHJbJV5HhFp7Gyj+UolZHLn7ulVNWmAvy+/YsWO1l
         lBPDQptKUj3t0WgVKshNl8a91LmI4a7lMd0OUs96ecqHSTLM1VjEazwBgNtXiN/T9J
         0B55QfXqqNKqVdm4aQ4T3LmwYwZYNL7P0lNiiVam45yY8bNDk6YpbwyBBlx4ObFSYU
         VxzkgNhSezNSSF8wgOxoLuZ/IJf8aNwCft+NSptsoOCzpXuecDeTZkvHTSmqa7SJ2H
         t0OFw3CICH7lg==
Date:   Fri, 21 Apr 2023 04:49:11 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v8 5/5] regex.3: Further clarify the sole purpose of REG_NOSUB
Message-ID: <b01685c7abfaca0ec64c8459115d8229f995fb04.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cajxpbfidpdowhm3"
Content-Disposition: inline
In-Reply-To: <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
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


--cajxpbfidpdowhm3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 55fddd88e..060e8a587 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -96,16 +96,14 @@ .SS Compilation
 searches using this pattern buffer will be case insensitive.
 .TP
 .B REG_NOSUB
-Do not report position of matches.
-The
-.I nmatch
-and
-.I pmatch
+Report only overall success.
 .BR regexec ()
-arguments will be ignored for this purpose (but
+will use only
 .I pmatch
-may still be used for
-.BR REG_STARTEND ).
+for
+.BR REG_STARTEND ,
+ignoring
+.IR nmatch .
 .TP
 .B REG_NEWLINE
 Match-any-character operators don't match a newline.
--=20
2.30.2

--cajxpbfidpdowhm3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB+aYACgkQvP0LAY0m
WPHRbg/+NzYeMadYUMknOhIjCRlsc2B8AMY8zx/PGU3Jf9rb23oCYG8bPLCrJV/t
iCezUHD06AO+w8wf/5zHcQbA3E/orxbHnda/i311FuboMohPOcgeP1jYsxG9ggMC
jeCzTro0bSj564cS5lOMPHw1/m3A29Pq1zmshqefwOWIBAUfeiFt5ROKJik78ST1
rtT7eTTquFXfA6aoBAnKJtquoMEYg/DbS4WgxPIY5CRyIS4y3gkjdGWCm2O57qkr
VUj7znl168cOvc3ET1jPpiLh+u5PHgGP3N+yG8izr3T+e7oUV9jiM29XpemEWvjf
tIoQ1OoxMcTzJM6m/w5nd7VoPieYgKXDFIVmwS2Y2jXmSpHBKs/G8okrw9o2dWXw
IX4tJTBmPnpBVoRO7lmvboU1W/WumhqqeSxjZ/JTHDxLGpm2I8Zm5fPNByIZyaho
pRyUI5s6cK+TsQILKWnuWDy1w7hyTMSVMvTWX7PGzoo3cQV6b6WnyGNIsrjtuA1Q
pm6Rh+GTBwL03Jm8xyUTDlPCNg6zLlv5kltkOh8cEol1VL4qAsdIqw0Bd30ILW+P
cxSHIfvD/qp8bcDApMK0Yzq05Nr3EYtjpAM35tHLcQ7+YxiHlNUpmQLDZ32ip+De
VkmXP8Z773WDv4BNoo+upT1Mah4zu1+3eqPLHsM4SuE5N67I3ew=
=4xjV
-----END PGP SIGNATURE-----

--cajxpbfidpdowhm3--
