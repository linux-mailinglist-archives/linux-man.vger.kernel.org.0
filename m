Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D938567417
	for <lists+linux-man@lfdr.de>; Tue,  5 Jul 2022 18:21:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230170AbiGEQVw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jul 2022 12:21:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbiGEQVv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jul 2022 12:21:51 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B57B81C919
        for <linux-man@vger.kernel.org>; Tue,  5 Jul 2022 09:21:50 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id DE707E9A;
        Tue,  5 Jul 2022 18:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1657038109;
        bh=LHR54GXsg+nf7k0BXXpqbI1PJSBZN347wggvUQajvmQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CjDfFCDyLY9wtF/RLpfRF8Q3xWw6wgv/+WCN3YNlAk1zUvwAt8PvZQ/XU1zqKsjP7
         e4tHIGPhi8TkFW788F2T814ufvE1EOl1dl/i3cIvFTAbWxkWOSLPzSxFv5oXkJD1N7
         KYhjZh1QKrt55hdGr1MWjJuqO7zQYj8NiegacrIABL3wg6ysagAHaF3m+F/v7IfTeN
         I6hkvRvyZMBf1cgKD/QY7DGaGSPPFGrsUaJBDv7BJtkT/deJRPxqdMCWiCHleZQy6r
         f9cKE75New4mTFdAHEOG6FJ08NafG/tZyAjlD6bxmGqpvN0g52uCVrETpu4i36s9uv
         KWUliSlUWfGJdE/bSTi5vUGlnTDn2iUt709vQgi7x+SYpzKS76wZ145ZeyvB+UIc3e
         nGTrQQTFbaIBDC0uPH6Yswt2orQQfl4elU2nFGO5ZgbIeEa6/m+I/S18kY7r8dy+IO
         ISWUFKfmsCGSP/SM2WJlxzqBBJPBylS10a2Aa4JdIkeiXVXCfi/5JC1tQ5jAB9w8xg
         WzkCT2ymxuWc59SDyxridYbENbNHJaSrHtUD1SXdeWJpKo3+1PGQ2MYLDRS6jp2YcF
         hb+JCTTjRuDGtm9gg43wBor+1Khm2n+w2Q1ij+aj859WCcag35RGYKfDPTKzz8Awr5
         3Uivcrvri9MANIeBk0bDg1u0=
Date:   Tue, 5 Jul 2022 18:21:48 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/5] fts.3: remove triplicate requirement spiel
Message-ID: <7d8f0dc1a7b0739bb86d4d610673fa74a3fda245.1657038020.git.nabijaczleweli@nabijaczleweli.xyz>
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qzvcwxq5wmbmf74x"
Content-Disposition: inline
In-Reply-To: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,T_PDS_OTHER_BAD_TLD,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qzvcwxq5wmbmf74x
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fts.3 | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index 5197b5868..d3cb0145a 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -398,14 +398,6 @@ field is obtained via
 .BR stat (2)
 with a fallback to
 .BR lstat (2).
-Either
-.B FTS_LOGICAL
-or
-.B FTS_PHYSICAL
-.I must
-be provided to the
-.BR fts_open ()
-function.
 .TP
 .B FTS_NOCHDIR
 As a performance optimization, the
@@ -452,14 +444,6 @@ the
 .I fts_statp
 field is obtained via
 .BR lstat (2).
-Either
-.B FTS_LOGICAL
-or
-.B FTS_PHYSICAL
-.I must
-be provided to the
-.BR fts_open ()
-function.
 .TP
 .B FTS_SEEDOT
 By default, unless they are specified as path arguments to
--=20
2.30.2


--qzvcwxq5wmbmf74x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLEZRwACgkQvP0LAY0m
WPEBMxAArei+/qoZ1tQe/PdT253LMYCCxAqzPvXZ9CtFn4RgvwBC9ENc9L0z32oX
rtCmYA0hiX9Dl2CmpAzbunIb0VlEI5wYzy5JVwJGqOBykqcxKdBHadqp8wXblZPE
tZLjijztKNwKkHzfrIf3wxlMqiQ1SiwUl3P7SYRQEoH0kQPKTqlI/vSCVnpt27p+
9PIEsRy8m/pAyIx20sDHk2igUp1c1JgG1H7G+n4w2qtlcAPOck1bnNOvPWJEIGA1
Bh/WsZB/n1vjgLDx/J7yu/RPIg1kEK7gCaa5tWhdpiBupBjtW0CYUS7CGE+u0Fr2
l3grAc0LsDK1soOVWduUSd6ZBqE+cz+kA7SJSsm2tP+LpYG7uNEWZCdYbbWuZb/g
1ineKM7ojC0OHdopNsFr2ZxYx+JRIMpKom/XZbtgeY2j87tf1gQvo1alKoibL3bv
0C6M6ST5GFUtBTI9AAFhVoY/H0z5J49IyxFcfk27DCjw0o0OBQm/VVhIVtk7DrLO
ljW4tKxaJV60ybXC/ZGbuJlm9ua/YZaPl4t7kSVlIVe3XB/FgDCXtrN/Eljtiw0H
UQaTcEc5JmmmxXolGRRSFk+xxWiL9LrWcqb+r1logs0zHrBekAcdezrdiTMa9JGR
oDIsSdhoQWdje4GaGPa6wjQ4t2ekX16fM3bXNrbNTOrt1hxJ0OQ=
=Bsg+
-----END PGP SIGNATURE-----

--qzvcwxq5wmbmf74x--
