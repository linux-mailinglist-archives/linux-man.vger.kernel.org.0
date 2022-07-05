Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCDCB56741B
	for <lists+linux-man@lfdr.de>; Tue,  5 Jul 2022 18:22:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230432AbiGEQWM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jul 2022 12:22:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232713AbiGEQWL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jul 2022 12:22:11 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B8FC51D0E0
        for <linux-man@vger.kernel.org>; Tue,  5 Jul 2022 09:22:10 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id EF878EA2;
        Tue,  5 Jul 2022 18:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1657038130;
        bh=j5ad7QjGDLZseBOiWFjLib+HuWQMY3Ic/KJBSjPI80E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XK4S1tT8fkNNnzEZlU1P4KqV8mp6iqkXj5XH0R58BKzGhPun7wMvH/L2GeD+Qmjs3
         rGC9Zqyljp4VWxayWgmbcBboQeGashxcHyERtbUaJqi2/t0zseVG4iuH8OnyPMonoT
         VuqmaJNR+Hgft8AUyp+GK2RxaooeKb0BVhZY6t4Tm+GFcEwurNUaSA3w1R3N7NWIxa
         Xpkklbv1Xz3YRWN5L3gaAheL7zDVAmIII/RLsG3eDArorpJO0rSQdhCIpZ0rw0cTmw
         Zmcn/lE3ahfqDkj9GOtUJ3RWNFVPxMjPchT3eXyo2QOJxmXZ78nT0yGgamWgjJJXXq
         LVwwdmc58V1DGu+Gnpna0cuo/2UoVF2YZjzXGfKdfMVdzg8lirT4FhA6BJZJxKemT6
         3LRYeE9N86R15exGrlagUEkPNbAM+GdgwxKcwfXVP5wRY7NCSkjpoM14RbTd36T9ej
         zx9R66SYDeIVbZo1x5tkME038ahu+8RluL3Tw+iJbKAH1NheT1s0PJNRChqgwkzF7y
         CoDLI/2bxA2ux4kRB7BDjt/pp5rBUnK8qfT9vsR8xle6Af4yj1brGmYeZ2oT/YW6NP
         7ecl4YbOLEvNFdbl+pzJ0SslvcauXRQmL2kAWfNHrLrFmzvL1+KAJ8JSSo6ecKZveA
         6XN89WoSNLgtJH5zYL3zut14=
Date:   Tue, 5 Jul 2022 18:22:08 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 5/5] fts.3: tfix
Message-ID: <2a0a2b0a3a12ec34f416b6eff2d175ec2ffc8fbe.1657038020.git.nabijaczleweli@nabijaczleweli.xyz>
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7xkwhdtj3wfkriix"
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


--7xkwhdtj3wfkriix
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

statp -> fts_statp

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fts.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index b49d85adc..f4796747f 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -433,7 +433,7 @@ pathnames were provided as arguments to
 By default, returned
 .I FTSENT
 structures reference file characteristic information (the
-.I statp
+.I fts_statp
 field) for each file visited.
 This option relaxes that requirement as a performance optimization,
 allowing the
@@ -442,7 +442,7 @@ fts functions to set the
 field to
 .B FTS_NSOK
 and leave the contents of the
-.I statp
+.I fts_statp
 field undefined.
 .TP
 .B FTS_SEEDOT
--=20
2.30.2

--7xkwhdtj3wfkriix
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLEZTAACgkQvP0LAY0m
WPGriw/+IlaORaXyFaAuS4OU9w5tblP0AUYBDSUAC7zJtpUX25i2CWiPBW0MMi7A
zRCooDL5Iw1LUSyW6F8gD4fiD5gv1T7T7PjOfV+2EFhtVd6EMXufhHyHFu2Y7qYw
lWPl/5ewR6PkfS+nfwFpDRh+DPnZmCkMtTrSUzNgdMgjezOkoeHAsZct+spwGdnr
4Q/6+cqB+U5vy9h4JR954JfRo12uZW6x9vrme+KZERExm+x2Ks2ALvSYcZrLxgM9
ngOWitZWVSCAkXUXENhNh1JtbDN8uQL5Lw/754Iu4SgLDd0tP9L89U8sw0ZbWby3
WU6BIi9gqWXjlwM2FW1uGIi5dXUD3mJDtmJzK80Nyo0XtU9HYVyGWDWpqTfVLeY7
pyJakt9W8RYtzp8vVLL217niFxkLYj1DGe5P/ToNOyTYz3nsM3pgYde4b9D1jw2D
ZxF3tUt3K2CLAtRb5cRJTRvAUbw3yFYcswXJSN/XUlpPMHClYhvXC7c/mFvDtACu
azWJl8X08G5fFwUX6IFREtxyXhEdgQ/aNIjIs3f2pKNY6eB5eoB3AitPYERQ8kUf
9IdGIxQmbw4Yp4OmU5ksdCzaa1c8shdyKRKdf/Jums36ODRezoYtVarHzJV9teUh
NgQnNroRV1YzkXEaBmCuV0hvdlK/Jqc5DS+DNXmpKsp1MJAmXH0=
=Fkpc
-----END PGP SIGNATURE-----

--7xkwhdtj3wfkriix--
