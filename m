Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C08EF7417CC
	for <lists+linux-man@lfdr.de>; Wed, 28 Jun 2023 20:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230401AbjF1SJc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jun 2023 14:09:32 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:58388 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230038AbjF1SJb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jun 2023 14:09:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687975769;
        bh=LrsGQUzCY+Il5eL0I63t8oq1o8d9Ffdh2eq/4Wv25H4=;
        h=Date:From:To:Cc:Subject:From;
        b=StcEi1gzvW0MfqJ83fStJcpcEcSOWK3Yyk3Z5I2Fldxz0JQvgVf8mBopnuIYhz6bB
         w+MdRmxvX4UqcniCMxA+LuDx5V13tmIaPNyOXGVo+t9/Pc9O0i0zlZxWuhLBaDtLVs
         jcrgg+VZTnAmRqkzVwIXLQVLyVvVWpbTijQwjhH3ax6P15xs2XWea7uGXPRZP2q86K
         5IP2yUhgnFMKUq3zqqI/+KNryC4NblP2dBCJIiqKz+/+LItQnnIUwvtutcjWBogMji
         LGbsMRDPRZpzGzeUXslw5FOjJ12sQvZ6AfyFhJ8EuPeGpyJD4SQFZ6Nv1T54K73JEx
         Si5v1x8T+CHcA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2F8891A42;
        Wed, 28 Jun 2023 20:09:29 +0200 (CEST)
Date:   Wed, 28 Jun 2023 20:09:28 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] epoll_create.2: HISTORYise "max_user_instances" EMFILE
Message-ID: <e62fj2mtcm3tj2vnl22fdbmtwajm2cbnx6uqlnibe5oajque67@24stcomulycd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="t5kehnfj6apu3aqo"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--t5kehnfj6apu3aqo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

/proc/sys/fs/epoll/max_user_instances hasn't existed since 2009.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/epoll_create.2 | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/man2/epoll_create.2 b/man2/epoll_create.2
index 4d3566a79..e91728bfd 100644
--- a/man2/epoll_create.2
+++ b/man2/epoll_create.2
@@ -83,14 +83,6 @@ .SH ERRORS
 .IR flags .
 .TP
 .B EMFILE
-The per-user limit on the number of epoll instances imposed by
-.I /proc/sys/fs/epoll/max_user_instances
-was encountered.
-See
-.BR epoll (7)
-for further details.
-.TP
-.B EMFILE
 The per-process limit on the number of open file descriptors has been reac=
hed.
 .TP
 .B ENFILE
@@ -134,6 +126,20 @@ .SH HISTORY
 in order to ensure backward compatibility when new
 .B epoll
 applications are run on older kernels.
+.PP
+Prior to Linux v2.6.29,
+.\" commit 9df04e1f25effde823a600e755b51475d438f56b
+.\" ("epoll: drop max_user_instances and rely only on max_user_watches")
+.\" Date:   Thu Jan 29 14:25:26 2009 -0800
+.\" v2.6.29-rc3-24-g9df04e1f25ef
+a
+.I /proc/sys/fs/epoll/max_user_instances
+sysctl limited live epolls for each real user ID,
+and caused
+.BR epoll_create ()
+to fail with
+.B EMFILE
+on overrun.
 .SH SEE ALSO
 .BR close (2),
 .BR epoll_ctl (2),
--=20
2.39.2

--t5kehnfj6apu3aqo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmScd1cACgkQvP0LAY0m
WPHP2w//XqxDKpIpZx0opcRUVu5ZnObQQg1m1wMSTDmv6R8XFO1SEn0aQdQtU93P
pmCbsw2zqkWcFlSHuFAYbSb2tuHDUPhU2YqaYG9C+amxkOZV4rPzKQr0H0RKD6uL
6xp1h70LI6aAgohVvM6vBvdaVplc3VMu17VMxQUY0uRf2xE6AMr1L6e2MDoCFRsd
Wn24gWBG8V+1iTbDsMGV1gHrrV5M85j1rH6hRO/DIM11Eyd2mW5ocvv6h2uEsNii
puI+1DieqsDIxYusLMyDYIVJkvx1fK3ojc+qU16/IxlxtfPvzLJ4ecbW3xfeMdsr
ACG4eFD+yOGixmndkgivmiqBn5otwpCOS8kwTnEmQT1/a/kjRIsyzZgJ7OWK2NRS
72sfk7R8HmOWVC9xBelTHPGBBvIdpDHFR4yNiPG6jJF07zGjjV1AOjT7Deo4UIFE
klbUtPf51nZewvRP3rZ6m7aFWs8Yy+LptU/B9/IzEUf2rXtUhWDSREGui3t2cbCy
qvUrgf8SmmFPM+edu91Y6FS02XJsak79NsVBkNXbjwGEU8sCAE8n8cy1f48MUS6Z
Ld0JunlPy4cWsR+iEq9/YJCcIP1mn9rNV5bKvD4LJe0uwYVM0yPOHUrRai/oRqS8
dZg3OplZil05slGR33beuspL0nqWtpinwYcxm++9++4nuxLYPfM=
=HeMd
-----END PGP SIGNATURE-----

--t5kehnfj6apu3aqo--
