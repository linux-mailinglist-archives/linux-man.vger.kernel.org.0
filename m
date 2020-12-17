Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 051612DD6B2
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 19:01:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728186AbgLQR7u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 12:59:50 -0500
Received: from [139.28.40.42] ([139.28.40.42]:50084 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-FAIL-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1727543AbgLQR7u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 12:59:50 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id ED37A3601E2;
        Thu, 17 Dec 2020 18:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1608227958;
        bh=V+TLlkegsFzG1etTS/ZAiAzmFt/fVIC7mnuKGZs4gdA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=APPJjgp8+E3Y+P4MpDPVvFIvBpIkBjcoyDR+kmX6FMaaO4AbxqIrMJzEimSTElQYS
         bt4p/t0+E49hn7IGgAikQ8a0ZOQ89Nx4PmfufDx/w/q4/ncn9tSaoZPjWw0RTsT/Vx
         dqJFOb8hhzMahFuUHCebe45FrB07AY5sAOJS60EeoZ+PL5Y1qPnTdAJCtSSqQCvYLl
         ZCv8YEcz+M433lgr9wlGYEqpM5b79o92ycJj/SgUatruXN0BAKvMSUr2JUJC3Hv9yY
         FMYwsrpWxTKkO7P/Y1ihsZJbEehTknM0iw48Aa+02qJwroPQLkhRMMSnRzdSZeUwbF
         Cc5lPcOX5YhPA==
Date:   Thu, 17 Dec 2020 18:59:16 +0100
From:   Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel
Message-ID: <20201217175916.vx7fox46aqpzkcde@tarta.nabijaczleweli.xyz>
References: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <365585882722e9c64478aab1b558923e3153b671.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <71269cb4-db6e-2908-5c42-2747eb930a53@gmail.com>
 <20201217164028.rphpncqtdavr27uy@tarta.nabijaczleweli.xyz>
 <09db431f-0fac-f1d3-be94-ee2cc3b0921b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qysla4ritnwyv3rk"
Content-Disposition: inline
In-Reply-To: <09db431f-0fac-f1d3-be94-ee2cc3b0921b@gmail.com>
User-Agent: NeoMutt/20201127
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qysla4ritnwyv3rk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 17, 2020 at 05:56:00PM +0100, Alejandro Colomar (man-pages) wro=
te:
> Hi Ahelenia,
>=20
> Please, could you append that into the first paragraph?
Sure, see updated scissor-patch below.

I also broke the line above on the comma, because the alternative would
be either
  is a network filesystem that supports the NCP protocol, used by
  Novell NetWare. It was removed from the kernel in 4.17.
which sucks for reasons I assume obvious, or
  is a network filesystem that supports the NCP protocol, used by
  Novell NetWare.
  It was removed from the kernel in 4.17.
which is three lines anyway.

-- >8 --
Subject: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel

Relevant Linux commits:
 * moved to staging in 1bb8155080c652c4853e6228f8f0d262b3049699
   (describe: v4.15-rc1-129-g1bb8155080c6) in Nov 2017,
   described as "broken" and "obsolete"
 * purged in bd32895c750bcd2b511bf93917bf7ae723e3d0b6
   (describe: v4.17-rc3-1010-gbd32895c750b) in Jun 2018,
   "since no one has complained or even noticed it was gone"

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/filesystems.5 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 6ec2de9f0..71be05230 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -152,8 +152,9 @@ filenames can be no longer than 8 characters, followed =
by an
 optional period and 3 character extension.
 .TP
 .B ncpfs
-is a network filesystem that supports the NCP protocol, used by
-Novell NetWare.
+is a network filesystem that supports the NCP protocol,
+used by Novell NetWare.
+It was was removed from the kernel in 4.17.
 .IP
 To use
 .BR ncpfs ,
--=20
2.20.1

--qysla4ritnwyv3rk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAl/bnHQACgkQvP0LAY0m
WPGr0RAAksfa3DFEFZ+1gQsWBvlKd4jexyJELKDplpEXWJhxC54u1RqbVV79evsC
gMg0toAU83lJISvLioo1OGtVr3xzOoeVQiW+rQIgSmIqnP82j+0s0MzjiQKAKJJR
01InmSR4eE51eEAKrVffLXR0c3+X5XcSB5U0SHX43Ly8V/HMvHPzxSPEz7D1E/Hy
Ws9n9qAYI0F0Md5cMXuqTOB7qwNKrbcqol92VfENV+FoVKWCtjiqYGUbMto5j+hd
mDFkf4E/HWc2fuay1fXzxqM9QzBel1/SWxYtVSalc381/+eB6sGC8+nMU06wnoAj
yhL4dnRaZ2RwwnlzAgm1j+YmbgAQsoVVfAVN++ma13iNoX/iZpmWw6C8WvpKrRa5
zplOq6PCF0lAijLrsztDATEL6cvZ5aTgmaIFYxCgqAw5a7txByO+TpiEv9TreHo7
3HgIqC3/Eqi59uG/9EzCiKQ2jG9IeJrwsLffoc4J4tySU2e9tZ9Py7A+2Xdb3SZT
aLAZo8NGD40/XD+fRK/AFWQW3SE3WZuyVTh8QR2SZtWTVRWP23DHw0qSwqt4zp+0
Si00xCaI0lF4toJTDe6J+iVP8uwGF2lhJS3VxXeGulOlBpAULbnTeXZ+pVkW7ElD
cbuod0EjurgW4MEpPSSkOy/1MaF/tA6gXDTiHvAOiDp733Kwec8=
=UbR9
-----END PGP SIGNATURE-----

--qysla4ritnwyv3rk--
