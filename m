Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0987496F3B
	for <lists+linux-man@lfdr.de>; Sun, 23 Jan 2022 01:20:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbiAWAUb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Jan 2022 19:20:31 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:39616 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S235756AbiAWATe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Jan 2022 19:19:34 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 95C1527DA;
        Sun, 23 Jan 2022 01:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1642897172;
        bh=swy/XvkcIccb6rrVfojnuiX77l3lEUdVLAPFjYh/lRQ=;
        h=Date:From:To:Cc:Subject:From;
        b=l05I7E1J5QHhx6VwCiwYV6+wayDlQxGc45tktc7D38fclxpfmLPGO3W4gsX9iHgxn
         5D9XoUjvY1mkqHMrUoEfd3uS9UXHoPp76TEP6BLwgooe26FDlCQfAtAsCfendgefkO
         6O1G7t0I6hvg3/pR9SmRlIztDpNG2a+lSH5s+q52zE40yHU/skFjBcQiXt0GVveb8s
         CFEdn1yVaVXUU12kdJBBZE/LkVeF3z/fVCI7f/2/TdUn7Ksd9GyBPpGBiQZugv/UoM
         0RxlsVslcKNey/BZ8dZvpBGD9jINTRsSiLPrqLjq1IDg+5jkEjIMzG8NmKsVq+SwLS
         4irt83Ufc+XGw==
Date:   Sun, 23 Jan 2022 01:19:31 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strtok.3: fix \t literal instead of \et in example
Message-ID: <20220123001931.tstdtcvgpjrkc7us@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="t7h47uv6azzngweq"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--t7h47uv6azzngweq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/strtok.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strtok.3 b/man3/strtok.3
index aec914094..84a25effa 100644
--- a/man3/strtok.3
+++ b/man3/strtok.3
@@ -272,7 +272,7 @@ main(int argc, char *argv[])
             subtoken =3D strtok_r(str2, argv[3], &saveptr2);
             if (subtoken =3D=3D NULL)
                 break;
-            printf("\t \-\-> %s\en", subtoken);
+            printf("\et \-\-> %s\en", subtoken);
         }
     }
=20
--=20
2.30.2


--t7h47uv6azzngweq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHsnxMACgkQvP0LAY0m
WPGyVg/8DQg8y1MzXtV5R7V/Ols6Pg/W3yy1NsHNSt9ST3d3+gBPjaZUSVOn8B7x
yP3cvoJUQCHitn7vgcYyWz09g3VxgGSq+XWnXt9Ovu+CBYnqRXmpwysWD4UEnY7/
h5WEdVnxhNLj0CvsSIg8rXVfunlnuQtQHcTvnN8bMPNQRUmUZFvPgifecxFPXSWP
REyzMUZtMoU7s07JCq6aYqReI2wmiWfED6t+0WSg0p8WkKwmwy3eALubL8CYNrML
M+RD0HWYJLPNje8fdlZZQwpExx+7blCphrMmWeDdx/GSNRZNam2GeR6g3ac/OP5s
PV86h2L3s1cdp8JEsD6DpL48wwQ3pszllATipr1o/CmDsEf2tj7d3NOBZDbSMF8c
39ltgHfOWgn7CGG8ZYblM2NeaP8zBql+ox7XcIjDzZJ+gDT+4WbiG4/9QQkSGGqk
kwG6yFKJBF/wqgIslkV0TaszniwgTkXNREaaTMBejG1KJQBZ50nbAJ1NmSFxTdht
X97RIgmWtoujEeDAvrM9LDpyiyZ7MT9Kuquy0aUZw1K13tCvBE5X7Y6dlJM6mXgg
a4LBIbgcLeZBfcwKhUjVGZZGBHnIrdPGn/sxyyhanNlvzFEhd9Wud5BNycXaiiwS
613xoDJVF6qkoxYEjftsaw16Uu5yneE/jr24Trammljq0E84HO8=
=jdDb
-----END PGP SIGNATURE-----

--t7h47uv6azzngweq--
