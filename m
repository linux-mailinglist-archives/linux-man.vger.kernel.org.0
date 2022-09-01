Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 223D65A992C
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 15:40:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234131AbiIANih (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 09:38:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233585AbiIANhg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 09:37:36 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 92ED34A83B
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 06:35:55 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 75A24484;
        Thu,  1 Sep 2022 15:35:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1662039353;
        bh=4edzcEtxpaBqKl9+/rkMxI7lWeAqcFJCJffUoOkQ/RE=;
        h=Date:From:To:Cc:Subject:From;
        b=Q99gjtdrbHYGXyWCgQJGa8Elfpnzl/2uJxD/WFwox50Zza3+NIduzVIElb2aPlW9C
         44iiR+GYbuykE0O3Dt7XpQxefqx/5gm6/sv/jZShQ4tL3FDTGQBQi18CO8dzdL4cUP
         eHcsuda+2kevw4s2BMSP2ag5FiTm3IkUDyg2BsnFqjT2YFHC2UbJ8joG9NrSKto77a
         ED/hIGqVhywgEBibPIoZcWeT7tMHUvS+lEbscy75Xpqzo2M8GExUPpC2I+jYinCVGZ
         LpwmYLo8CgZjzldmTLVpAllCaimBjUN0txSRts9V81mG/sf3vFGP5Zxsk7qRSXNSNf
         SjVzL0G+LWgsYTDgFq7owfGf5iLUEWXCAxoUUxi/ujQpsT5dCkmkMPOGTw1dfIBYX+
         O2shBI5oFydteS25HxovOmiyxOJockEr30yKuyfvAZaTqOghCqRhRVhwgW+h0IQTDI
         of2RoRd+0ElzuNwEkQ5z0NMIIB+dbspl7Kl9axaTJTe/BgCCPhD7jJuQ0KNXu8yXzS
         9gPJzQ2IaecmEXjJlsO99mgal9sJcpOSoVh3VigONmHLvmTgvB4P46jnRVMQC9ck/C
         FCeboyToq3vgnB+0rk8qg69VI//2x2HZPJo7dk2gm9H6Yphg5K/qGgdIFM1bNAfOCd
         +RminWlzWZtLA9cQOeRzxySA=
Date:   Thu, 1 Sep 2022 15:35:52 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/4] ioctl_console.2: ffix
Message-ID: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="c7e3bsar7pkb7woj"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--c7e3bsar7pkb7woj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Separate TIOCLINUX from subcode: they're separate variables

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/ioctl_console.2 | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index 28eaade83..932be4e10 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -664,7 +664,7 @@ referred to here as the
 .IR subcode .
 These are legal only for the superuser or the owner of the current termina=
l.
 .TP
-.B "TIOCLINUX, subcode=3D0"
+.BR TIOCLINUX ", " subcode=3D0
 Dump the screen.
 Disappeared in Linux 1.1.92.
 (With kernel 1.1.92 or later, read from
@@ -673,11 +673,11 @@ or
 .I /dev/vcsaN
 instead.)
 .TP
-.B "TIOCLINUX, subcode=3D1"
+.BR TIOCLINUX ", " subcode=3D1
 Get task information.
 Disappeared in Linux 1.1.92.
 .TP
-.B "TIOCLINUX, subcode=3D2"
+.BR TIOCLINUX ", " subcode=3D2
 Set selection.
 .I argp
 points to a
@@ -710,35 +710,35 @@ The indicated screen characters are highlighted and s=
aved
 in the static array sel_buffer in
 .IR devices/char/console.c .
 .TP
-.B "TIOCLINUX, subcode=3D3"
+.BR TIOCLINUX ", " subcode=3D3
 Paste selection.
 The characters in the selection buffer are
 written to
 .IR fd .
 .TP
-.B "TIOCLINUX, subcode=3D4"
+.BR TIOCLINUX ", " subcode=3D4
 Unblank the screen.
 .TP
-.B "TIOCLINUX, subcode=3D5"
+.BR TIOCLINUX ", " subcode=3D5
 Sets contents of a 256-bit look up table defining characters in a "word",
 for word-by-word selection.
 (Since Linux 1.1.32.)
 .TP
-.B "TIOCLINUX, subcode=3D6"
+.BR TIOCLINUX ", " subcode=3D6
 .I argp
 points to a char which is set to the value of the kernel
 variable
 .IR shift_state .
 (Since Linux 1.1.32.)
 .TP
-.B "TIOCLINUX, subcode=3D7"
+.BR TIOCLINUX ", " subcode=3D7
 .I argp
 points to a char which is set to the value of the kernel
 variable
 .IR report_mouse .
 (Since Linux 1.1.33.)
 .TP
-.B "TIOCLINUX, subcode=3D8"
+.BR TIOCLINUX ", " subcode=3D8
 Dump screen width and height, cursor position, and all the
 character-attribute pairs.
 (Kernels 1.1.67 through 1.1.91 only.
@@ -746,7 +746,7 @@ With kernel 1.1.92 or later, read from
 .I /dev/vcsa*
 instead.)
 .TP
-.B "TIOCLINUX, subcode=3D9"
+.BR TIOCLINUX ", " subcode=3D9
 Restore screen width and height, cursor position, and all the
 character-attribute pairs.
 (Kernels 1.1.67 through 1.1.91 only.
@@ -754,7 +754,7 @@ With kernel 1.1.92 or later, write to
 .I /dev/vcsa*
 instead.)
 .TP
-.B "TIOCLINUX, subcode=3D10"
+.BR TIOCLINUX ", " subcode=3D10
 Handles the Power Saving
 feature of the new generation of monitors.
 VESA screen blanking mode is set to
--=20
2.30.2


--c7e3bsar7pkb7woj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMQtTcACgkQvP0LAY0m
WPGxfA//SH6/L16SxM7bC8Jl9Y2t7n7HguQE52gElp2jiQKjzzVr3dDDWUEvZavu
weg7X9TJMjt+JBBNpH2IDKFUIaLtlMKeZQY/p/WdNCdbrQo7up0pX+Q5X6avBRoU
bGmBJfy6Id4SfC9U5mrRkW/lcblSadPQL6Ze8XCkvqTmgI/dtZecbj3QDoLr+W1a
TyMFpROqMADLSvTViKLewagTFaG8uDep2gq+1vsSge2aYqslE2ECx+Aa60AJRRwa
EdlIq/hCefdToR3hGNuMFmlHxKMSDn1CGX1YjCVpmhBEDuKoPK3N68QJ9E9zZ+Yv
Mw11M+6T/dS4xXYwRMnBhHU565F/u+5WHWM9yFqj/hNPSO1/QAoXvw5GK4EGgwqo
b2XQ0wOm6+Zrba4L01SPvcfx1Az+Z1AQlwybkH9LMCOOwqmxB7x7sFRNAWrZgXmm
xbjaHwPXiKT9lsbFhP3XL1w/3XBjdMz/74zsbbzal6NwdpL7cj+wiuIIT5MmyG1N
orjZbgHUOQcTooST8SB3GLv3Z24hXtBk9Ge8oJUHpt7DclPcj9tzxS5TMz5Icjb2
uEjp4wvk7ToL1Lquk/tqsd5dBm2bgPkzkuses4NPfEVEkQYWU72BrqDLaA3hcAiJ
Z04nQNrG6/Wc76UkJVUkXcqqw5Dk3HoWOyUSHp1WWX1kyoEs0QI=
=Wt5W
-----END PGP SIGNATURE-----

--c7e3bsar7pkb7woj--
