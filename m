Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61BC949717D
	for <lists+linux-man@lfdr.de>; Sun, 23 Jan 2022 13:34:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236320AbiAWMee (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Jan 2022 07:34:34 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:48020 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S231757AbiAWMed (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Jan 2022 07:34:33 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B60CB3480;
        Sun, 23 Jan 2022 13:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1642941269;
        bh=BmXWMzAcibJcGZzjyA6Me9CJwWyr+EyOjmk5J9wClVs=;
        h=Date:From:To:Cc:Subject:From;
        b=tLhAZ3V7ahY78WJinkyw2xkxqrtr0Lu/w3XHJ5S2KETJ4+ejGpgRHQ+bODL7H5YdS
         E4+crLrUgKEQ/QqUjbNIhQrjR9gankTxTaHe1I+/M43roAq0MUADW5c42NzpTHrh6H
         L8mtNjE1V27X7ZXYYA53kprzPPJSKJ3b1Uq6VUAJ/5O/Gg+Z/4ozaf2zAWkikztXs/
         Pt1/JI7uglMgV+WzPGdqTKwug+bVxKBVlmRwA1Dn82yDbPeJC1HQTfuUIidlb1rJ1u
         wQtA2Io9PL47y17xp2v5VgQTY7cctsIF2CCJS62daiqJpJF57DVZTTIJY2CpZSJYTe
         MDbfZ9CFBDr2A==
Date:   Sun, 23 Jan 2022 13:34:28 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] memfd_secret.2: mention that it inhibits hibernation
Message-ID: <23c18a1fd4f31e59f282a90d2a2437e6355849f1.1642941187.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7sazhekx6g4dtuff"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7sazhekx6g4dtuff
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Ref: https://lore.kernel.org/all/20210518072034.31572-6-rppt@kernel.org/
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/memfd_secret.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
index f3380818e..e9fc8aaa0 100644
--- a/man2/memfd_secret.2
+++ b/man2/memfd_secret.2
@@ -101,7 +101,10 @@ unless the close-on-exec flag has been set.
 .PP
 The memory region is locked into memory in the same way as with
 .BR mlock (2),
-so that it will never be written into swap.
+so that it will never be written into swap,
+and hibernation is inhibited for as long as any
+.BR memfd_secret ()
+descriptions exist.
 However the implementation of
 .BR memfd_secret ()
 will not try to populate the whole range during the
--=20
2.30.2


--7sazhekx6g4dtuff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHtS1QACgkQvP0LAY0m
WPG3pg/9FYIdOFwrkF5ABdN4bgcVtFn65izEbxZWfsRXahMnaSdvT5XBOyEd1WZG
jtJXFgy0QAQiaI2F3W3BC1zGtn78R1yCQIzcNsN6V2LNyISVFvmiVp49VJuO5TlC
xAAx4LpZxz1r/fz7NKsyW2GQb7cEotNxjm8kTyBWYBYVuuAlR+/hq1Kws5rt+eJ5
7BM9hMmKCoddECVyfqG1ao670cnK5tpYUrWrLcm/9QHtF3vCB+QKP3OQ04PGnCcW
1Gih1EmZK9SDr6IqhQtQ/Xup5bSmRnUDRmW35hqUWzI/7BDT77wsE4+C0uqQtO+T
QxNSSpkTqMG5lq3ehVA0mwMd8qSIwz9tum6Ue7kFGcpT4v6U63FuDgMBK8p21ik/
vr/BKMbyhOnOwgJO8oBhtLbvzaCwVYboV2PeDzQBwqBKZJoVC0MhjgaSkmsB8pA2
Qj9spWqe3mufXF7o76eo1/4QdgyoUd/qHrpWljCDEioNW1Dn5vFw26/ylpzhWVhH
VzU+1gxwss9eYopTa8JODlMwtGwTPAUsbOZ+dSSsA9rR91L8Vw4WoewFnRGQhURN
zxKCDs+XuOGfzWjsgOPE3v5G6Reswdh+bsOKIQwC/bgamtY03GgDzyHQJF3WKqBG
Fn7H/vc/gYufYO91JFmISRNhk9oAXDOLZtFbFhpEua8H0MDpqbc=
=00kZ
-----END PGP SIGNATURE-----

--7sazhekx6g4dtuff--
