Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C15A2DD441
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 16:34:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725468AbgLQPeg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 10:34:36 -0500
Received: from [139.28.40.42] ([139.28.40.42]:48588 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-FAIL-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1727160AbgLQPef (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 10:34:35 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 326E63610F2;
        Thu, 17 Dec 2020 16:28:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1608218884;
        bh=hS+mNFvB/Uo4F/adNColZn67LWkXI77IHuQFmPwGdc4=;
        h=Date:From:To:Cc:Subject:From;
        b=BLugvIs9mxe8L7bJ5y1J7e74aS6tkXyPaCACjPsfeVx2gIbVEK9mijimsLJVdXTTD
         pVGLKTcN2E8PDAk9A/6xtAXNEGbenN9A7N1oY4qiqtOkz2FnUVlEOz5vjOE6jZv8jN
         qpLxiF3Z8zOKWqakue2w7AiUsYjC2k8a0mfjsFjgEIwn3zNnkQ5qwWZ+mLRSqiW75F
         u1EvA9xcYQ2vLjxTBkRRYdPQZf3ovPoHAzqakB7KqUGAoM2GzFIs+b7p463rtvg5yI
         I/uvEPSGSITKpQqMTzqtsOONZ18fbslxx9YdtiSJGJmtOxGnGsylZ7PCRsqDK3OjVP
         1xpWU0N3929hA==
Date:   Thu, 17 Dec 2020 16:28:03 +0100
From:   Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>
To:     linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] filesystems.5: rephrase NTFS description to avoid awkward
 (and wrong) possessive of MS Windows
Message-ID: <7b8f5a9ada6202a3f9882e06a0a3ca9c193c9000.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="75aahotbezx373fl"
Content-Disposition: inline
User-Agent: NeoMutt/20201127
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--75aahotbezx373fl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/filesystems.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 1eda05b22..ce8db326c 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -169,7 +169,7 @@ filesystem was removed from the kernel in 4.17-rc4.
 is the network filesystem used to access disks located on remote computers.
 .TP
 .B ntfs
-replaces Microsoft Window's FAT filesystems (VFAT, FAT32).
+replaces FAT filesystems (VFAT, FAT32) in Microsoft Windows.
 It has reliability, performance, and space-utilization enhancements
 plus features like ACLs, journaling, encryption, and so on.
 .TP
--=20
2.20.1

--75aahotbezx373fl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAl/beQIACgkQvP0LAY0m
WPFAdA/9Hq0moWaqrJgDvQFdssybL90BrZ60OBKUE+OcBCdDsxbngUFWnxQ+G6P0
IDvKvpnGIHKIi2JqdCqgoC/qhF7MhxFGux9lNkYgHVQl6l/Kgb1ZBy7thihXIjPi
Z2GJnzm2Ny+8GjtcRL82u8thOgw26AcM4j9oawNGdF80noLOzVH8Y4JY5JFWe1oQ
sw7I6ji4pRdM1RLLxBYHVcYrXIW8asf9bFVjD6jNTKl/AYStL0iUaij05jd7QB70
pbcacNm9biTzLK1SzBZqeos0+F2Nwv2cl/ds25u41TB6jDojbo0ahbVdK2pybbIu
f/yITYUjApB2JTWDhiNM5l/bN3OOhvs6RcCFWB7Hiv349dV9rb1/kQN7sdQfV1iU
f1yy2KahVLbNwMStxngp7wmuYSflipG52UMFhNbFGVMDm3l89JAaTos95ou5r/QF
IHNEu/fF18RTwqqlXSXJakfsCT8w0rid65B5z4iLzWLJ0QZVYWHrA01dmEfnPSQy
HLc4Gl5wHR0Em+Xfj9YNvkeEbhkuVO6LZaqA9bFUbyzmh52tyO1llqKwQdi3xNib
M7OnWgZjgHkaPRw5U6s/aDa32xaewj/K4nv2nAF13q+b72lSGZ/YIWmGx5QVGbPg
EvOR/47/K1GYDMFgZA5CXwCjv5JMcS2kO6dTupIJGvYk09mxaB4=
=R0/O
-----END PGP SIGNATURE-----

--75aahotbezx373fl--
