Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 243DD564A49
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 00:23:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbiGCWXz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 18:23:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiGCWXy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 18:23:54 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 279A72BF4
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 15:23:54 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6CB85B7C;
        Mon,  4 Jul 2022 00:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1656887033;
        bh=JYNcFD+2Ek1ZLKpOmjC4etJIy4u14BrSMrZnSvHW9sk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZByG77G8JWXjlWyk2oXK7HewGn4ObbSZrJGKm61bIsmEDYXW8nctsx3N7pNG0+SKI
         4ABu3imI6rSxGUh/d5pHS7pvMLuY7e6CnSm+E8FwHEEMFZwiA0IKSqvu9bfN1c5ng2
         9A9FeciTbwzAiqoQemZ7lgplJ65qX2/On5OL1qefgihXolyW0k9RR+KxOlmj4FfrVf
         GUbVvgtoDpBdVVUb/GlgACOGS2KihrLNM4+h+gjJ+RGWR2GXbeQgkHm2Teha/oA7z6
         IJPF/mCfpO41L6YProGLu9bPlDOGm6U/+cXaIGgAdxIsenJKU66mZ9qZ4tUf+WofMD
         Zt2G8jaLe1AXzdUmfFajBCywShSXIKhtmdTFc6SPgch3fT/DDLBu+Xm1eYja1RYDkz
         W3hxZpzRM+i26QUKm4dcQAfz36d98MQpkzc9Fk3wAJiNNibIio/XF36Jv6LnfY9XFT
         VryFpqe73ISviBOX5dvl6JACm+pt9SGljHvh10HL2XXnr3khHJVwLxNbPKT7KY2+No
         WzRQxpdCmtFxehgaOFB+QEEIc6yEu5xoH9FGZnVmmWzuzjct6qx94DXTi9Cwx/MQNL
         zVci62BSXpz/c1k98M3nKZgKDhLDTjxQOLgBnYRtyAu9r8LwI/XGmzmd0oyn2hghgJ
         x68ftH8V7+52QjL2YcR7X8ZA=
Date:   Mon, 4 Jul 2022 00:23:52 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/4] fts.3: wfix
Message-ID: <8206bab7d0d4fa33be11396521c665a19a381f84.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="54vm52xbelfhu3yb"
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


--54vm52xbelfhu3yb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This list consistently uses "this option", force that for FTS_NOCHDIR
too

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fts.3 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index 44465b815..627bb5afc 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -419,8 +419,7 @@ As a performance optimization, the
 fts functions change directories as they walk the file hierarchy.
 This has the side-effect that an application cannot rely on being
 in any particular directory during the traversal.
-The
-.B FTS_NOCHDIR
+This
 option turns off this optimization, and the
 fts functions will not change the current directory.
 Note that applications should not themselves change their current directory
--=20
2.30.2


--54vm52xbelfhu3yb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLCFvcACgkQvP0LAY0m
WPHuGA//dSWjc53784/eArDL1JYNQMSIpes+vyYljXkZbvp/vTktthXs/kt+Q/Ca
xdXFGaK4pHDuMdRmBWNQlaXZ1WZzmvsIcqssZoGip8bEH87WG0ZGcpKwRCbgl5Ru
7LAMFo5UHgSd7UPZYZlcxy+N2NIyjhsbBRTjhATRIHlJeZQXBdMMy+18Ey1Bpaa2
uRDtp5W0/epTKSEOp8I/FgKfopBxixDWKyuSQsttF3YzeFdZRfAVfVjWHAJWRJdd
GL5JUq2FLRqGrVV5xaomILQ0N9UbZX4VfZwurCHwiDXyNdwmFtzTIuVJwGKBORZb
V0E97r/YABX+Pvbp63mLRQiq5FBprbzKrhxlzkkYfojVbRNIQpbL35tXzWHELiKq
s8ptNKs/Nxbp2OGWLTYBSSdigGCo7LGNts94Bxd2cJgCWlQ5PLkJYNuxclYBIrmU
Rw1ma/WwrjuEAgXV2X2iDOlEoEeB5pnCJmQxLmA4N123BZRoT4AW0z9UFuJqFrZw
9Zw6IJYlAekocsgIwA46JuEE3Bovjsrxtv6n/q+4VBy9b7xmykNQJHo3xLDYTnGQ
bG6IsrgClEUqV9xjhO2YPJmSPUzFOSqWAPLo0dpPIHDjrsj3Ooi1XwjA3N0dQHOt
zSir+uS8/cI7/KiWhlXz6cuLrI3rEnsnXC578vnMrEtEcr+CXz4=
=idsH
-----END PGP SIGNATURE-----

--54vm52xbelfhu3yb--
