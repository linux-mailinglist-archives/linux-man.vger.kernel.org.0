Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B88552DD442
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 16:34:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727160AbgLQPeg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 10:34:36 -0500
Received: from [139.28.40.42] ([139.28.40.42]:48590 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-FAIL-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1726773AbgLQPea (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 10:34:30 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D17D63601E3;
        Thu, 17 Dec 2020 16:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1608218874;
        bh=I2uLtU8yCoX+D7HMeK+JZOAZBxmcpLILCzDIcXGL1xc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Uql1TWSt9HSEd0vgbUBQnN0KpLEhcJ27Ff72oJgSbkRXZZDF1EcJn3z7FFp+WQo0K
         BDYpcSmqNlfAPpsQiIZ9AxQj8T3aC8yzSMBC7AnkQ4UNdvEKWpLf0z5Ts88uP2/T3G
         FmFqqBmsk4gP9CtbOv2DEyZ5doklJ3iL3hsuNr7FVNMTOOySt5P8KO7p3zO7olQ1Qr
         XJo9pcTnk/HXXltC+xc7bkMemXmJyeWIytClZ7/c/3AD1jLuttygn2vI69FdQ3got4
         CQsbLxK5HPi06ime+vId6kwCLuYl1ezilc2OgWjUOUIWHvvwv9yuCinZ49i+oP5TPC
         K1CR4ktdgKU9Q==
Date:   Thu, 17 Dec 2020 16:27:53 +0100
From:   Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>
To:     linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel
Message-ID: <365585882722e9c64478aab1b558923e3153b671.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
References: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="yaueflk7p46d7hik"
Content-Disposition: inline
In-Reply-To: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20201127
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yaueflk7p46d7hik
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Relevant Linux commits:
 * moved to staging in 1bb8155080c652c4853e6228f8f0d262b3049699
   (describe: v4.15-rc1-129-g1bb8155080c6) in Nov 2017,
   described as "broken" and "obsolete"
 * purged in bd32895c750bcd2b511bf93917bf7ae723e3d0b6
   (describe: v4.17-rc3-1010-gbd32895c750b) in Jun 2018,
   "since no one has complained or even noticed it was gone"

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/filesystems.5 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 6ec2de9f0..1eda05b22 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -160,6 +160,10 @@ To use
 you need special programs, which can be found at
 .UR ftp://ftp.gwdg.de\:/pub\:/linux\:/misc\:/ncpfs
 .UE .
+.IP
+The
+.B ncpfs
+filesystem was removed from the kernel in 4.17-rc4.
 .TP
 .B nfs
 is the network filesystem used to access disks located on remote computers.
--=20
2.20.1


--yaueflk7p46d7hik
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAl/bePkACgkQvP0LAY0m
WPEccg/9GBqLoTZfivq2f1txkdKqm5h+nphe86djm9ih5KtYGt8H+1N9tdW1g6/j
1nutymA7q0SSuo8XvZrf1z6pBbB/qJ462KCgFuq8p6evb8T75cT6GBFbccpJXtP9
tV6yRTQCwCe0wP2X4M/4H9QZQ+WW1bwp7JiOowEPoPmYAQ/oDSh4x3p3dNDTWm/K
5qOtxUe1wOJ34bbcBxM3Sy/ldTwqBeFzZnswp9ZGB1lQUuut18sSSnSGOUi3K/Py
mI2oMN61e5mwv2W18A/C5zZqJkSSqfb8urQvwkEi7bG5VLNqsf1SgppLFd8rbSvt
x9W78xJ9FEyVPZZLhkuYv/q7Q5o1iXvw9+5N0IlU+uKCTFo+jGOzjgpUT+y+C1Fg
utLybq7rbm5uMBmaGNntRCJTbeZXjw18BPQ5N4fTIYdHoTUk3yxEIJyGnaeOh8Of
ANuwjdceoes3OEfhg8PUf8x53LPhc21+ADNJFNPGCs8v6jM4HU0tcm+WjwqyWstJ
Hat82h2utDoD3pV9v2BKHq0ZE1PvBSWx2l60OM6OSWb7H/2vQwUTQ8lhqr3tj5L+
GekqFxGQ1DRx7K7Q+Ix20PtAD4/OIfWzzuScDs3xeXLVUXfW4p/D72TrOc7/MZ2n
3toAz7KZc4LFaTz/KKB4A5oZzSSRzYobkjrxLKpVVZI/oYpV1rk=
=CjjS
-----END PGP SIGNATURE-----

--yaueflk7p46d7hik--
