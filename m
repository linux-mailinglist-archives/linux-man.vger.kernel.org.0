Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26E48497180
	for <lists+linux-man@lfdr.de>; Sun, 23 Jan 2022 13:36:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236331AbiAWMgp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Jan 2022 07:36:45 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:48042 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S231757AbiAWMgp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Jan 2022 07:36:45 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B39792AEA;
        Sun, 23 Jan 2022 13:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1642941403;
        bh=ykJI7vAB1jl/5jUglt2ZM910c9TAevTE0+zNUstUHPA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=itYHLnl1b9H9sgGjnRI8heccaoyMGaTK0PAdLkGnAptHYFxI85UBC2kJbVRvSwFJj
         UQExH2B3JfDis8tEMwTiCFWloK/j5ZmWiE6vapTL+g1HbTIOBysvlKZFxrpQXgCNWp
         KDZqz8hhNe27pVA1fHPifMd3ImM50Hn+Ntdy4dDBUok4Ji1rb5pd3r8xxOOrs+wjtN
         ssAc1CscYbe+WwxRHmhQChLW2y2kB38sMF7Fu1YysAq5/8JWyBjxe58tAcO15eEiK4
         rDu4UizTucbv1BcaHkzRuQ842PxlTDNXsm8kJCyreHmTtBOteR8oGf6ua3l/EBnPeX
         sMfnOdHNvMr3g==
Date:   Sun, 23 Jan 2022 13:36:42 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] memfd_secret.2: mention ENOSYS is also returned when
 secretmem_enable=0
Message-ID: <e114b3217d50cb52ae4c0aac5b4975c64879bbf9.1642941187.git.nabijaczleweli@nabijaczleweli.xyz>
References: <23c18a1fd4f31e59f282a90d2a2437e6355849f1.1642941187.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="c2q2gw7ku6cetryx"
Content-Disposition: inline
In-Reply-To: <23c18a1fd4f31e59f282a90d2a2437e6355849f1.1642941187.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--c2q2gw7ku6cetryx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Ref: https://lore.kernel.org/all/20210518072034.31572-5-rppt@kernel.org/
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
I went a bit Big here and noted the parameter name,
dunno if you like that or not.

 man2/memfd_secret.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
index e9fc8aaa0..ee7614aa0 100644
--- a/man2/memfd_secret.2
+++ b/man2/memfd_secret.2
@@ -141,7 +141,9 @@ There was insufficient memory to create a new anonymous=
 file.
 .TP
 .B ENOSYS
 .BR memfd_secret ()
-is not implemented on this architecture.
+is not implemented on this architecture,
+or has not been enabled on the kernel command-line with
+.BR secretmem_enable =3D1.
 .SH VERSIONS
 The
 .BR memfd_secret ()
--=20
2.30.2

--c2q2gw7ku6cetryx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHtS9oACgkQvP0LAY0m
WPHIQA/6A5380xns5q9ZcmtPb0ryjeY7cXqSv1qfEUmBRJ61VhPqotZuRMR1FLWF
WGx5bYR1YzRac95GvyUgCcWGWUYD0MTnFMI2ON2d25A9btDpYmqSffp+aVl4H3wU
zBQu1bUp/ry9wQ73TU/Ay/rN5fuqcJJxMSIyLM2PpASbwcIYPtXQJ27GT5qQaf3Y
KnhbCbzOPdi0Aj+yWDpVolp8GWRLQnPG/+ny5mF4wPY8wrEdzulpZ02IyUJVlmt3
fZ4k7dPbu7G79f7rhiaNzBe5CvKuJw808wu3esDeullkRev2gJw6ZArUt2pAiLAP
cgQXj/FIpIjI1lmFv2pbWU4e9XBPp0hMmzhnR3l1SRkRBziOLSfOMAJNvrGdTu12
5T/CBLZWHedd8XJKDibgnn+1+nDwa/CR3YN/4L7UQ7+in+COSL+4cntzktdzbAXS
2fgzHEzOxWY87S7BfsemCpmGlnVyoq/O3iUV+Fc1oOhV4sQQhaagwrzZ0M0vRmPC
A+4x+Bdd9Q9aWD5FpZ6lGcoXQ4KmilLuNz1hrgP8zPtC1k0SlykLdTqvdocNb+/X
hpuMqPvTCSlQeIOcj6oLePjQj2GxhFHr8bbMmMbifm3Il88buyb3mc8cPpd9HWgS
XT0BhVLPOcB9TeuN+N3/78JaYgaLmH5EKrd/WH8E0L6gaxFH5GY=
=xfzE
-----END PGP SIGNATURE-----

--c2q2gw7ku6cetryx--
