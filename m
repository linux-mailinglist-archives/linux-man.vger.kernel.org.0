Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49AC25AB165
	for <lists+linux-man@lfdr.de>; Fri,  2 Sep 2022 15:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236824AbiIBN31 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Sep 2022 09:29:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235983AbiIBN3M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Sep 2022 09:29:12 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C65464B4A6
        for <linux-man@vger.kernel.org>; Fri,  2 Sep 2022 06:08:29 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id C1CB9C84;
        Fri,  2 Sep 2022 15:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1662123976;
        bh=FVCSijdJKH4IEwdZUvu0o025nYF8VXgCoTzzv7nH3uQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BFjoZKSIz9BxON9oNzGHts3FhEicnTJMgU8vJNHpDWbeqYc9LV/gXV6AFWGZHi8v3
         +htuQg1ao30CdZWvZXw9yMK3l0ajwI7EAVUKQBo6upIDROYTS5kglh2F12lXxQBT5d
         FTVGZ8Gj3n5uYwT74pBP/A5xQ3OwuBEqqIbxRgOGqYXWcwU0/kCoB8LGoCOzzUejNc
         yFme/8fUHkikXIKmiHl/VRV0n+kY+bqBsNntZKroU6HIdsB81x5XuKYqcu3YWJLHoV
         M0FV3+fxeZefOawSD4cS/Powr8O+YHSFy1CLNbeIOzp0xEmhI452dYECrQvFA6vjLD
         3pduWubMVD3iLKfQBHaWjdVMqUcQaTByth37yMcSfB0Lo6VcVQ93OHk6O5iZS9GYy0
         kTZj2gUifG3NNwimo6bFD3MRAyzooR99i0Mpc4IuMLWYcLII8p/Hl1HvgPjqvjqYTk
         EV2VrgPFrwYKbq6BHX1/6Ot2nlMuT474Hut31zBXAosPxoyJ1s6+HJgvMY9yTWvC7Y
         UHFycU+jaUgDUnNzXN42PVtdo6LhCghZCdCHABG1ArQygBUUP36sW1i1bFCf1YeAdv
         N2oc1w4p5tIV3Pn1FAFcEf6hl49xEcvS5oK3B8XNE/uKsE3CjsCKvoNtSCnxLEWrt2
         yPFTaQKRFArPQImzrZIF/E2E=
Date:   Fri, 2 Sep 2022 15:06:15 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v2 2/4] ioctl_console.2: use symbolic subcodes
Message-ID: <bcfd3c4588dee2e5578921ea611cd555df3fa534.1662123938.git.nabijaczleweli@nabijaczleweli.xyz>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tzpfevktcnzsetc7"
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


--tzpfevktcnzsetc7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
v2: uapi header noted

 man2/ioctl_console.2 | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index 932be4e10..338c5e6c8 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -663,8 +663,14 @@ pointed to by
 referred to here as the
 .IR subcode .
 These are legal only for the superuser or the owner of the current termina=
l.
-.TP
-.BR TIOCLINUX ", " subcode=3D0
+Symbolic
+.IR subcode s
+are available in
+.I <linux/tiocl.h>
+since
+Linux 2.5.71.
+.TP
+.BR TIOCLINUX ", " subcode =3D 0
 Dump the screen.
 Disappeared in Linux 1.1.92.
 (With kernel 1.1.92 or later, read from
@@ -673,11 +679,11 @@ or
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
@@ -710,35 +716,35 @@ The indicated screen characters are highlighted and s=
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
@@ -746,7 +752,7 @@ With kernel 1.1.92 or later, read from
 .I /dev/vcsa*
 instead.)
 .TP
-.BR TIOCLINUX ", " subcode=3D9
+.BR TIOCLINUX ", " subcode =3D 9
 Restore screen width and height, cursor position, and all the
 character-attribute pairs.
 (Kernels 1.1.67 through 1.1.91 only.
@@ -754,7 +760,7 @@ With kernel 1.1.92 or later, write to
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


--tzpfevktcnzsetc7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMR/8cACgkQvP0LAY0m
WPH9PBAAiPLqLjOR4egsKtyBHTWMwFUmSaIh+b4LQ7FZdF+gPrudhNMjRzFcCUtJ
JcM3DaDfvsNZAcQWoSjk6cJh56YNQ/Egq8q66ewqh8yY50pkyhnWuVQEdVz5dRDu
i8J88PfU9KNyefXfpHPBn/QidOpwCb7X9m3rw6NvJTwLhKHJaP2sqNRUoNWTFXio
2kAFVz/r/qO4aHvkCf9mQowq1b+GJUK7rKv3Mr5ufRJd/pskK1IdB6lxrA5lBIOJ
Y3s2DH3w2fH6mFoUCWaIDH5uo0giJxzYkjicCaZNrB2Q3aMrdXLP6KvZg7o2I1Uf
V4KQcZgHyCO+B2hJRrzG1QYEHKbr2j6KA9RADVKPKsS2SWekkecONQ0UNbQZPNla
ZP9OvaEBSkIOJT4ijcrqJiHBDuUUsYDhIpggIb5v+PzwKUeQyj4H3VBZjso+puYq
p+hN8PViIga02EgKPtyguH2UWMazNZt5NNR+qAtX+epjdpXEK5KMAL2mIsRJ8ors
aqTnhmZuQSMRzIiWXZCPYemu0ihZ9I6ztVycSXYP6Ff6ul3A6ncYTvroHMqWOmAx
u+9FG8vuZBMwPou4xAJj5fqrlbC3B+QBiD0fSmC2uQwcQ2257Lar5Ae4wx2rNMBg
tV5xlOrqHD2Kb2ikigv54R5xv+d/O5YU7+Q/VmRf7Jqq3Muzm2Y=
=Fikn
-----END PGP SIGNATURE-----

--tzpfevktcnzsetc7--
