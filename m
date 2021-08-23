Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B39BC3F5288
	for <lists+linux-man@lfdr.de>; Mon, 23 Aug 2021 23:01:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232503AbhHWVBt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Aug 2021 17:01:49 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:53688 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232401AbhHWVBt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Aug 2021 17:01:49 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B235D360F14;
        Mon, 23 Aug 2021 23:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1629752462;
        bh=NFguoRXL8Fqre1zns6DSOqF5OvYs2DIA1neoAmvTJOA=;
        h=Date:From:To:Cc:Subject:From;
        b=cv3qE7FEVTYoxdKbRbLbEt+jyxYHC0tC2LnfaAhwdJ50dnWuPk4hAFgjXGe2Aw11e
         68gIzq2sMDOz/3/cKD3q0gQU600W+df6tU61ixvue8QQLv0Vo1WeivwmVdr/p12SWa
         JdJxa8c1NFy4i6KJog1yIvu6pWpijx96nv7rOlokv752hQP8KqD0vbula8w5440HC2
         zk+eaQQsDJNo9/5ukRPzFFBq+3kqI8MbJ7xgitWssI1bmrkg5OTP+c7pFflzJnQNWK
         PYaGwTswmpbOrg0Q7G1eoeIhau1Zlvmy2RiH90u26UCIu+E27g5pSTJM5DgiqjWe7y
         gEnsT69fioNVQ==
Date:   Mon, 23 Aug 2021 23:01:01 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] strdup.3: drop mention of "the GNU GCC suite"
Message-ID: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7fkypvlmv7jct2it"
Content-Disposition: inline
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7fkypvlmv7jct2it
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/strdup.3 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man3/strdup.3 b/man3/strdup.3
index 1e1ac34de..963de7d48 100644
--- a/man3/strdup.3
+++ b/man3/strdup.3
@@ -99,9 +99,6 @@ and
 are similar, but use
 .BR alloca (3)
 to allocate the buffer.
-They are available only when using the GNU
-GCC suite, and suffer from the same limitations described in
-.BR alloca (3).
 .SH RETURN VALUE
 On success, the
 .BR strdup ()
--=20
2.20.1


--7fkypvlmv7jct2it
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmEkDI0ACgkQvP0LAY0m
WPGaww/+PapCaU42YTWeH7rxQFjeed87UjzHIVezza519e3YZ83PC0yNNzZ/r4WJ
21I/dTyVhv2jtc/TRggWhVDxjQuflHICsiP4762E5L76xlLDNGf2sVK3dhtzcs8i
/X15wZibMI095MJ0p8D8CFMQ7DWyzfxjh9tvvb0xQ6CBSUkVyl2n53S9LvLLiwcp
bG9EssS1hRHf05lfugHzxXxb4cN5YaX88Li9KxEWPkAxGdOWBf9Hi5QC0P89/eo8
fZcbKcA7lRWFFKw+ulS0fdFslfqQtfxEwAGSAU4fUmq4+ZGvPn9j8nxvkjRgFeKn
O4u75monPGywwSU4nRfmY+I5HMhGDg/sOtHoSWohWyqyqTn7xE0j/aDl3n4dO8j6
BzhLBxI4RPijX7o2ry+JOoAQCx/Veq6FdSq+ZdLal8gGK/oOvE3qPtcSjonYQQry
AkiEGBkxR1ZL86AyxNn0NZJUv5ZPnL4oWCvButzUze+Ry7Cb8Krsxq3kHdIos04x
DBuDiHkPEb582qicxztCIBfBS7NcJtY1gDUoRIyBlH2TEGZ1cPIa02J8f+RuMrzw
zIBOLSaaNYtGSvM5nZcOnDYUxfp+b8gKYF4XGJiTSjeks0DteW5IdGGjC5ruC5Xb
QuAmc8gdLVRlOzcpirJ1hQegqHQcXPiBkRLw0f/E9JXDVwOyruo=
=yAhU
-----END PGP SIGNATURE-----

--7fkypvlmv7jct2it--
