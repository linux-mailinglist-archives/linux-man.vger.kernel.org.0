Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5889A5AB21A
	for <lists+linux-man@lfdr.de>; Fri,  2 Sep 2022 15:51:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238240AbiIBNvv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Sep 2022 09:51:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236824AbiIBNv1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Sep 2022 09:51:27 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7631CC9E9B
        for <linux-man@vger.kernel.org>; Fri,  2 Sep 2022 06:25:52 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 10F0AC86;
        Fri,  2 Sep 2022 15:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1662124019;
        bh=vjpq7GenubhD38nxk1raUddahuU0afLgEGUmXmphR5A=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=e4s0okV6U+j6QPPYQmzECpQehvE4qW1axaUnbZE1bWltg23SQ7DN+aI30jf3C4YhQ
         c/Uh5aIxHZCojZVw6TtKD7qAAyrH4JFEqHrCMPH606N6XjaDN3mCtEf76apGOFCe68
         Sqtpw7wI462ikxusQDSITJ8Hpb9lG79o8MpNX6N6WEAO+re9/7Z1Ukj76Aim1+rm7h
         6flb4HWEGsF0Dc85Mxq0sone/TyD/Qr321X2baWeFwSeNMFV3vcZ7aFPMmizjbBcxh
         6yo63CJw3JTHEPEo/4ij+pWQilYkLgSCvaXlYPZ0J1Vu+XGHVuHCsYdALeW8/qrYiz
         cVpWnKc20ykT1NJeKrvtMhoEZPTGx0opYca82oWK2KDr3VeitYceHnSsB/Oyu4omIb
         mV7YE9UeoRGcKzR81FFJ3zLTKrgqHMh2hMf7KPNP1FccrPTdNsXb+pKcMXpQn8bHeT
         s5wzeVH5t9QkPVgpnZ/cW2Ffal96Hd7lhFoi3/0TXkHxsRtSa4Xp8BADUxmbMGIDTI
         wlXkCVMvFlviJhwiGLEnWaeYBi+Z5xyLdpECq4YN3Pi8HRhvARUqYk5+wJqh1LYtHs
         cawjDWHUnYq+RD+ZpliuBqQ/tEw1I1ZQigud0rjxcN4sw955zFntZHhiBLjog58f7+
         igksDolUwmhkmXRtPlRu7iis=
Date:   Fri, 2 Sep 2022 15:06:57 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v2 3/4] ioctl_console.2: devices/char/console.c and
 sel_buffer don't exist anymore
Message-ID: <3583171b55ca46dfb359af4775e76435b46f2f2e.1662123938.git.nabijaczleweli@nabijaczleweli.xyz>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zfbsaxt3ba36httn"
Content-Disposition: inline
In-Reply-To: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zfbsaxt3ba36httn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

And haven't for over a decade.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/ioctl_console.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index 338c5e6c8..0c25edf67 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -713,8 +713,7 @@ is 0 for character-by-character selection,
 1 for word-by-word selection,
 or 2 for line-by-line selection.
 The indicated screen characters are highlighted and saved
-in the static array sel_buffer in
-.IR devices/char/console.c .
+in a kernel buffer.
 .TP
 .BR TIOCLINUX ", " subcode =3D TIOCL_PASTESEL
 Paste selection.
--=20
2.30.2


--zfbsaxt3ba36httn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMR//EACgkQvP0LAY0m
WPGo6RAArG7aMZkHznEFMIeTTHTHL0Wj4aTFX/si+xhq2k3GX0NMZw9uyeC5jYj5
jxOQ7y1ABJBfOnvFMWsFwXkioo+ptRS3XI7TLXDAq2ejXwNyxlPaP05NxB/KBZTP
u+guQUnDvjQKyLouFR3CFCNpXpXlJZlSxP8nMNwKICQ2AvrAWdkqdUxc57F6f7s9
SKYGNregwifIdcQQ8Aej56a9elIuok3VGKXGY1YXdNsQ5fgEyh6MRu9RRuX9JyBs
4PkhYaHw8uo3h5fvNQbfHr9o6KbaYYdgqHdJHA+GesghVNyIQIu5HnBkjfBHtfTs
sGncQ8IE8nn+NwC6wWbcd4HtJx7cBEKRwKZYfxn9POxTKgvWJPVp5hjQtS5H3nTg
Rk0Q/FF1maZv+kKZYaDgBJo51tLm8RzHI5A1ZPvAJ4VX/psGydXaGbhC98yGqsrh
5Bo9Erx08g2w23HMoS9LsIBkM7tAYN1B0jJqdijayLbnvUtCvBCRlJF6DnIBaGCA
/xWg1JmBlZ/3/rj+kgtdxufRyMKMF9C1SdhH/zjlp0YblXGBTeCBOokhphAd7biZ
PMoag+MmPkQkyB7N9Xbp0lBx+ROhGdu0OaP3KjDbu1MxA0w5RgUP6N8wqSDLUzSE
KRcswiozyskOqobV8qrEoVSppsnGaVkUku2F6U93MC01DR40QK0=
=ZR8T
-----END PGP SIGNATURE-----

--zfbsaxt3ba36httn--
