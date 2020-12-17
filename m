Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3E122DD440
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 16:34:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727246AbgLQPef (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 10:34:35 -0500
Received: from [139.28.40.42] ([139.28.40.42]:48586 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-FAIL-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1725468AbgLQPea (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 10:34:30 -0500
X-Greylist: delayed 369 seconds by postgrey-1.27 at vger.kernel.org; Thu, 17 Dec 2020 10:34:30 EST
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6E8E53601E2;
        Thu, 17 Dec 2020 16:27:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1608218864;
        bh=ANE/v3q/wKhDVAkb1WgZoL6+GcDAgRKkMK88f6fhpnc=;
        h=Date:From:To:Cc:Subject:From;
        b=VWNF2eH94vEt6flLscwjNdToTsHN5S7ttkml3RESWmRDfRHTN0UoUQedYorA5wFiM
         aVPpEuxF4K914HstRyRo6EWhMkzaJHDsyG3N4Dok/6SfN5CTqPFI4ZH+KZ6trOxBTI
         x7b3R8YTs+pR6mJoWJ7JRV5zFwA6uXpeJoOzU2hxpvgx2AHjEo1FdeqSlUaAD7QY2O
         Oax/iI28S7UiNEqq334ZWa2nc3flo8Cl5+3QrknO1Ezbzx4fL0EF12A1QAcGfdTDG1
         PMIqD1Z/zz8GJ/REI51HKXb+MEhkIoU+4507T1sn6ip0D1O+oddMmdBRehI7eUfdCc
         DcWKbmlpje5ow==
Date:   Thu, 17 Dec 2020 16:27:43 +0100
From:   Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>
To:     linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 1/2] filesystems.5: fix link to userspace tooling for ncpfs
Message-ID: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="4vuy2qw6cm7egc6h"
Content-Disposition: inline
User-Agent: NeoMutt/20201127
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4vuy2qw6cm7egc6h
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Corresponds to Linux commit 1b83df308f69a5a3cc59be03bd7fb23e4bcebd8e

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/filesystems.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index b44dba184..6ec2de9f0 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -158,7 +158,7 @@ Novell NetWare.
 To use
 .BR ncpfs ,
 you need special programs, which can be found at
-.UR ftp://linux01.gwdg.de\:/pub\:/ncpfs
+.UR ftp://ftp.gwdg.de\:/pub\:/linux\:/misc\:/ncpfs
 .UE .
 .TP
 .B nfs
--=20
2.20.1


--4vuy2qw6cm7egc6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAl/beOgACgkQvP0LAY0m
WPGaLA/8DH+v9bplqzf4rQqznF26Ct4BUl34KstYkR/OtMv+R0McnCPUJ39DAS5X
nmjgM/qlaHhzN7gsjI2uvTDgQAaQ4zcpR0dEJCiKQym2WZWjCbj9MO+RSOQHK8yh
UXTF1F/i8Yz7DZUGdewgKLkr/yOkk33KO+xh2Pdgp7amNDt0WYR8wimJ9cadAtY7
Ovkf1Y5D/KSg7AOXM+OcHPb+voVQm332yxy0cB3GX9vzXdAahsRZ2Igg7IrVVpCM
f/FsK0zNPZj8dHSb5jthU5brbPxRyMw7p4AvRiIj7hx/c8qEoHNY6ESKwqIlI8/1
F7gYSiYcy0RbDymyJaupnyRfMxPLbm2Oj/2xy7exU0s+XB/gyGSXIBjjeFL38FCs
dSuzAjxeLgKAzpbNDcMU8DRKhkRMNx35IR1bF3uHrVyfqucEdPGf+XlnX/jnMmOd
9NmQ/3Q9GsGDWPetx0gaX6VL06foRfm1L5hJwNzW0pxGpBfTHAgbjgL+zoRTBx37
5AlH+DHJezfsnVZisevgyc8o1gT0XtaTznMm6DPNBkYin23nP+uKGV7ReVhKEwYL
svDgmLIssoAA9hx/ifOcRBrsxTm12nh6Tr0z4elTSubNABiA/zgH8Q0Lq3cFAN1x
43uMSYkUXDncgo2P0PivcFeahZc4AZmvmmrM2D1rgPtD6HHB4RQ=
=hSy8
-----END PGP SIGNATURE-----

--4vuy2qw6cm7egc6h--
