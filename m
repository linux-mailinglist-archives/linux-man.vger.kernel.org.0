Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FAA05A992A
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 15:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231530AbiIANiw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 09:38:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233720AbiIANhl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 09:37:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CA0D374CED
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 06:36:01 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 15A6AA00;
        Thu,  1 Sep 2022 15:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1662039361;
        bh=UDSnG/00r1q7g50IEuMuFW/+RHPHyeA7iYxDSGPU22k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GFcVMPk2qKs01OZuEUFv7sP0M0j1rHqkwMC3KqG0rw/TJZtZMK9RYwxw3tnptrrVw
         wkNzIENfk7L9PVo36y5ssXKFn6jutEN9eSMytKCm3847KKSvq/IMyWo46UPpy9APgK
         4JQPkkprOK6N1iURdcUDkYJwGtw7H4ATpPGnGqA3Kv82UW5AeyiEauu8v94ohs7KDh
         9toe6MrVTwImTPdFjWbEjuY4M+eItktVjd5k9+M2hVMMiu9c4YNDF6ASzzxY/2hmMU
         ZoMHJlAenBIlR/I6dEsIa54VdrTgAcP6NsCtX2GoedVsn1uVeHS6DztQpNwzdMVAsB
         hLg4Oj+Q45kcXC8V2Mkm2aqm7NmboBWC5BfuaHk/ss7ZSJ1QrxNuHUJSegvZyos/WA
         eUR+psWHDL4M2ZBEBf1T4djEhUrdCPO7q2UBcgWJLuQoOUr9OxgrhlZ4ZcmBUP17Z0
         V9CuLx5wBvGzcQPA/NoiswUu7kaiFoujb7Rv8HyEVyfyOFkLm/wOZGZv/CG7nfdSJk
         iqy0++H9BcairFf1NQWS2AseJsZ3WM3G3o6eRqtgckrq+UylM5unU1x4a4eUS8QRSk
         YhhcwCbctkSgtIzcCPMCt7HCMxE9ECZ9mICbmFFzAACNdrF6TsSWP085O70hpnRJ1R
         cFsFipc/CN6I4vkXfxSeXSKk=
Date:   Thu, 1 Sep 2022 15:36:00 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/4] ioctl_console.2: use symbolic subcodes
Message-ID: <5850af710e563757039a2a72a4b9219015bd27c6.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nao6czziwjdro36v"
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


--nao6czziwjdro36v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/ioctl_console.2 | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index 932be4e10..4de0673af 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -663,8 +663,12 @@ pointed to by
 referred to here as the
 .IR subcode .
 These are legal only for the superuser or the owner of the current termina=
l.
+Symbolic
+.IR subcode s
+are available since
+Linux 2.5.71.
 .TP
-.BR TIOCLINUX ", " subcode=3D0
+.BR TIOCLINUX ", " subcode =3D 0
 Dump the screen.
 Disappeared in Linux 1.1.92.
 (With kernel 1.1.92 or later, read from
@@ -673,11 +677,11 @@ or
 .I /dev/vcsaN
 instead.)
 .TP
-.BR TIOCLINUX ", " subcode=3D1
+.BR TIOCLINUX ", " subcode =3D 1
 Get task information.
 Disappeared in Linux 1.1.92.
 .TP
-.BR TIOCLINUX ", " subcode=3D2
+.BR TIOCLINUX ", " subcode =3D TIOCL_SETSEL
 Set selection.
 .I argp
 points to a
@@ -710,35 +714,35 @@ The indicated screen characters are highlighted and s=
aved
 in the static array sel_buffer in
 .IR devices/char/console.c .
 .TP
-.BR TIOCLINUX ", " subcode=3D3
+.BR TIOCLINUX ", " subcode =3D TIOCL_PASTESEL
 Paste selection.
 The characters in the selection buffer are
 written to
 .IR fd .
 .TP
-.BR TIOCLINUX ", " subcode=3D4
+.BR TIOCLINUX ", " subcode =3D TIOCL_UNBLANKSCREEN
 Unblank the screen.
 .TP
-.BR TIOCLINUX ", " subcode=3D5
+.BR TIOCLINUX ", " subcode =3D TIOCL_SELLOADLUT
 Sets contents of a 256-bit look up table defining characters in a "word",
 for word-by-word selection.
 (Since Linux 1.1.32.)
 .TP
-.BR TIOCLINUX ", " subcode=3D6
+.BR TIOCLINUX ", " subcode =3D TIOCL_GETSHIFTSTATE
 .I argp
 points to a char which is set to the value of the kernel
 variable
 .IR shift_state .
 (Since Linux 1.1.32.)
 .TP
-.BR TIOCLINUX ", " subcode=3D7
+.BR TIOCLINUX ", " subcode =3D TIOCL_GETMOUSEREPORTING
 .I argp
 points to a char which is set to the value of the kernel
 variable
 .IR report_mouse .
 (Since Linux 1.1.33.)
 .TP
-.BR TIOCLINUX ", " subcode=3D8
+.BR TIOCLINUX ", " subcode =3D 8
 Dump screen width and height, cursor position, and all the
 character-attribute pairs.
 (Kernels 1.1.67 through 1.1.91 only.
@@ -746,7 +750,7 @@ With kernel 1.1.92 or later, read from
 .I /dev/vcsa*
 instead.)
 .TP
-.BR TIOCLINUX ", " subcode=3D9
+.BR TIOCLINUX ", " subcode =3D 9
 Restore screen width and height, cursor position, and all the
 character-attribute pairs.
 (Kernels 1.1.67 through 1.1.91 only.
@@ -754,7 +758,7 @@ With kernel 1.1.92 or later, write to
 .I /dev/vcsa*
 instead.)
 .TP
-.BR TIOCLINUX ", " subcode=3D10
+.BR TIOCLINUX ", " subcode =3D TIOCL_SETVESABLANK
 Handles the Power Saving
 feature of the new generation of monitors.
 VESA screen blanking mode is set to
--=20
2.30.2


--nao6czziwjdro36v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMQtT8ACgkQvP0LAY0m
WPF6uA/+LbMhFAjmC8L5NIBnPUwAxOyTv6UAhYWwcQtMIDzXWFGjIaeBhN4I7Z00
Wff2jIbJcbC/dUQnyLCPrRQ61XKDqUuvI8JBLj8a5Uag3QGbUud5HQdoUiFl/3OS
n9XYN0brrG4C80uCsBUE1rmnIYDmOooFkPwMSRPUUZGysoaYLkAmgcSRmUqkAiT2
f/TdQf4XP2T3FOxSoIsoN0420bm8mAYGGlCBss6zFtBQd3idPjwcX6wJkntPwVeu
ZLICME5wkDs0tuAVs4J6hgFIiWSK24x6KbjezqtDHsRZKVMKXnwQDOb5u5Q9Dyaw
IcFFHVH28LLZerwOrdMVBKFV7o5dInwrgnz2xvwf/HxuxrYxZEkLscwXZli1fLjV
6S8VICPUojEGJeeo88eIwB+0GAqs9YqVBiitXdN3vs1WwH4G6vcpoZZBSxQk62CW
1sTgimZejymL+3CnhqpfXvf3saJ2dn2vGReptuV5mz49UBOF+anW7g3EGj8INokD
MwxSrMePp1Q3Zjf/cK9EMC/P2cQOfrTSrRl+/c7mNqYkmZKJz300Srx3xw/nMPTZ
DJ6LAkoxv33hHlhjL5/Gnn1mWQC8rLrfXrhXkMo103dB14JBCD20QlcUBXrjTSCo
8QfVSoB/EMUrswGjof+uEYHjr2kPDkEASO2EIKQMd95+OvY+uMw=
=QYoA
-----END PGP SIGNATURE-----

--nao6czziwjdro36v--
