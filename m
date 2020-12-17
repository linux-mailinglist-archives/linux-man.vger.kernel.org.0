Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0DA12DD699
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 18:53:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727388AbgLQRxH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 12:53:07 -0500
Received: from [139.28.40.42] ([139.28.40.42]:50024 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-FAIL-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1726291AbgLQRxH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 12:53:07 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4179F3601E2;
        Thu, 17 Dec 2020 18:52:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1608227555;
        bh=WbPqxZ2MDsuc9q50DVzYyws65JAWEZt0Ct8yv1NLhv8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=B2AJEDvh0NdUqm0L7JAk4Z/AFQzEiDIlDuvdi/XqAkpjbm1Zmrg8S6TaxIjeZ79Oy
         91tVldtck9x3hbENLEg/LeVgrv7ZhuqMTBiGSCfN2Kk0F6xWdVgmad2eLiltRc5+DO
         fFkCDuTki+oDFi/OjfS8XcqwctEbtM9Yw27Maonhq7YZg7fxcx6NsofEPSjncs4Ae0
         iqFW/0PBD476JwowKKbEBKMGsnxM4G90R8KqDv/hibnvVX6pHIPYdLc08cuVwVc9G5
         SlkIOLLARiHMNplv+rVQeluCstRtQKqZVtHW5VWMSpxl/WwpVBQZReI9pG0h51pi26
         +ypjmCEXLAXlA==
Date:   Thu, 17 Dec 2020 18:52:34 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] filesystems.5: rephrase NTFS description to avoid
 awkward (and wrong) possessive of MS Windows
Message-ID: <20201217175234.gxngpbu2mhll2fdz@tarta.nabijaczleweli.xyz>
References: <7b8f5a9ada6202a3f9882e06a0a3ca9c193c9000.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <9374ff73-4562-c5c1-29e9-c347730f49a0@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="c4n4ijvdbegl2hyf"
Content-Disposition: inline
In-Reply-To: <9374ff73-4562-c5c1-29e9-c347730f49a0@gmail.com>
User-Agent: NeoMutt/20201127
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--c4n4ijvdbegl2hyf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 17, 2020 at 05:17:51PM +0100, Alejandro Colomar (man-pages) wro=
te:
> I don't know much about MS,
> but AFAIK, it was MS who designed FAT32.
>=20
> I'll quote Wikipedia, although it may be incorrect:
These are good points, though the miss some of the depth of this issue.

The main point I was driving at with this patch was to fix
"Microsoft Window's FAT filesystems" (i.e. FAT filesystems which belong
 to Microsoft Window, which is decidedly wrong).

FAT32 first shipped with MS-DOS 7.1, as part of Windows 95 OSR2,
but it's a (relatively) simple logical extension of the previous FATx
filesystems (16 and 12 as we know and love them today,
 I don't think the PC ever saw 8), hence the "VFAT" driver name =E2=80=92
calling FAT-anything a Windows filesystem would be a flat-out lie,
calling it a Microsoft filesystem would be, uh, facetious.

NTFS (as part of Windows NT), on the other hand, is wholly different
WRT the scope and feature-set (it does borrow some layouting from FAT,
 but reading NTFS as FAT doesn't get you very far, or much).

The replacing bit is also questionable, especially in a.d. 2020:
while it is true that you cannot install NT on FAT (after a certain
 point? my memory ain't what it used to be), and must therefore
replace your existing FAT partitions with NTFS during upgrades;
Windows NT 4.0, the last product to be NT-branded came out in 1996,
i.e. you could not install Windows on FAT (and, therefore,
 upgrade it to NTFS, replacing it) during my entire lifetime.

Indeed, in $(date +%Y) we live in a post-NTFS world =E2=80=92 putting NTFS =
in
the same class as FAT beyond "is a filesystem" is a joke, but in my
haste and pursuit of a small diff I didn't consider the above.
Please see below for updated scissor-patch.

Best,
Ahelenia

-- >8 --
Subject: [PATCH] filesystems.5: reword ntfs description, remove FAT
 comparison

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/filesystems.5 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 301c8fb83..3727d7a7a 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -169,9 +169,8 @@ filesystem was removed from the kernel in 4.17.
 is the network filesystem used to access disks located on remote computers.
 .TP
 .B ntfs
-replaces Microsoft Window's FAT filesystems (VFAT, FAT32).
-It has reliability, performance, and space-utilization enhancements
-plus features like ACLs, journaling, encryption, and so on.
+is the filesystem native to Microsoft Windows NT,
+supporting features like ACLs, journaling, encryption, and so on.
 .TP
 .B proc
 is a pseudo filesystem which is used as an interface to kernel data
--=20
2.20.1

--c4n4ijvdbegl2hyf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAl/bmuEACgkQvP0LAY0m
WPF6QA//Z8pc+pcv+FTJB/rpgYjpkibJsugIcPhJcAr/SeOeax4RQ9tL7PEMedQ+
J8ZM1h354jVO9Tt/K0KcSS8eWY2tgnAOxVVuyA9/XsvWBNHR4OFEZQmotaZmJkRD
97ObzraIZnSZsVxAQ466B6m+tDfjFqU6xF8Gd8yo6jf/9DwW0hzfskuAg+Nfp2Mw
cR0Uh3Qq5U4DuA3a5YFmB4OZpLkDNLGYCnknusc1AgshDpZyvFvUlt6qJuS8dHUX
fSjNtC+L2dYQ720DjNYJbtMWOOpMY1snTjuWDL/2THI8+QcQOlIxtqxMHg/XqtDC
6glAURpFvYx1jQnO9YqWGM2LoLyM5iPQr8nuqQMNJDEK4ZTDiIRYr36EqCsMZiJQ
wtahpK3NMDDpAfp1GgCQc0LUmXi1LruCuSfEa5Ja9KbtfYthTb6y24t2uesxBEyC
NTQSHPYDs9wf30Y8oALVK6AXcrLTG/IWCjaB1bAUCX+kddGSuH2KrO7nxJT7FAFc
ya9cbH8uEKn84P9dv+MVYjUULfFSUyea4oFAzighmYmQaB7tmb2fl/MZbvZ2QJH9
E7PaKeJEMFfuxcpdAbjJsCKlhuZ9ErDRyBVu3XyqIgyNBe2buAghe0sxpOx9kueG
PuJPHksG0BAurGC5efCwR9pUsUsqgIaKoV7UFifl5B3IqbXefi4=
=H3EK
-----END PGP SIGNATURE-----

--c4n4ijvdbegl2hyf--
