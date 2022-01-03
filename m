Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79C51483448
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 16:34:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232590AbiACPeK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 10:34:10 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:55434 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S231320AbiACPeJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 10:34:09 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 92F1C190A;
        Mon,  3 Jan 2022 16:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641224048;
        bh=lI0yc08nW0AhihpUbnZsWMFbkbKTMciid3F5CrMnWho=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iiqwktw2YUiIjhJQCg+LccrhMY5/rOOYCXNey3mAvzNc1xIssmTBgqCDe4840GnSM
         ypz3XeENjg2jXEw/WPRIjYEfWDEc1em3OtTNX93KDfFBZHwoi4ciFNMLwGxPkXWzbT
         M+41zGDruNrEpXkEhAE+7vFc70umd3fTLqnMHrcm73Oex4G3yqO2Ij80eyr1A9AS3F
         3o6Qz0j7OLL+4j3P60EPVhFFfbKyJrtaV4zU0GFlzO3Z99iQmD08skPh0vF84Z/mHs
         uOaEi0ea7HZ6Eefev8xFtMbJtZw/RFG/gsDz+kIpo5v7d75mbc01JgJrHS9q7x/v9q
         Jlvj09BtOS/tQ==
Date:   Mon, 3 Jan 2022 16:34:07 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/3] tee.2: always fail after perror(), use for(;;) instead
 of do{}while(1)
Message-ID: <c68f0d3beba927e3417807201c335d7449fc18b2.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
References: <a59610f1d397bf532e4ce46481f439ac089fb05e.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="h56jti2nnfch2ag5"
Content-Disposition: inline
In-Reply-To: <a59610f1d397bf532e4ce46481f439ac089fb05e.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--h56jti2nnfch2ag5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

---
 man2/tee.2 | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/man2/tee.2 b/man2/tee.2
index 17b93882d..4b410ecad 100644
--- a/man2/tee.2
+++ b/man2/tee.2
@@ -171,10 +171,10 @@ main(int argc, char *argv[])
     int fd =3D open(argv[1], O_WRONLY | O_CREAT | O_TRUNC, 0644);
     if (fd =3D=3D \-1) {
         perror("open");
-        exit(EXIT_FAILURE);
+        return EXIT_FAILURE;
     }
=20
-    do {
+    for (;;) {
         /*
          * tee stdin to stdout.
          */
@@ -184,7 +184,7 @@ main(int argc, char *argv[])
             if (errno =3D=3D EAGAIN)
                 continue;
             perror("tee");
-            exit(EXIT_FAILURE);
+            return EXIT_FAILURE;
         } else
             if (len =3D=3D 0)
                 break;
@@ -197,14 +197,13 @@ main(int argc, char *argv[])
                                   len, SPLICE_F_MOVE);
             if (slen < 0) {
                 perror("splice");
-                break;
+                return EXIT_FAILURE;
             }
             len \-=3D slen;
         }
-    } while (1);
+    }
=20
     close(fd);
-    exit(EXIT_SUCCESS);
 }
 .EE
 .SH SEE ALSO
--=20
2.30.2

--h56jti2nnfch2ag5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHTF28ACgkQvP0LAY0m
WPFSWg/+IYVNSvzur87vfB6Ud6hgJKR2vsUwbwsskcOm5vvSo+iVNEAFVkwBwBel
w2dmDOZy+HbDXic3D+6Bo+KaLhCJljwJ68iXf0AHLsNrpBWVLNr4jcEz8A5eVGuG
Uzf+M0cNRrc2xDTotNnx7ofujT+xR9Z7olBQD+lRv6rXlxUkoeZXD/LH2wgVlAxe
mrHyEqDbpbLGEZ3OqOn2gqP62bo/15JZFKIMqMPaT82lUMabX+mKatHyER1XCGwf
hjpNk1ofE+lssKv1Sk/G1/hwcwHYEMa7ykJ/SzxMzRvAXGDIGZQ0ylH/xWe4i9eQ
dlncfNOTb6g3XPyZLnARGMJrHRoum2MY+zkO7RmmGGMCIpbWfWl1yYhfIfn81LFy
OWthUhnOi3GNXba0ulDjzOKSSNHm7KUrxH6C4blanpAqCeAD43iDbJe4fgg3RWWR
IlB3e6wACKEqR5ABQaJPo/XjRIu9ASTcYnRy7Fjp7GPBPVlks+NEV3Sn/cWqfRwP
KHGbJSf32aZKBkysDtfSqL2Sh90ierQykiJMGzGbBVdIlv4pKTKxC2FemIckvfNk
AmxmhDnPTnwbsS3dbwXQYg8cuxzTB4ppmN2Tc94NpelW0ucX5Ahpg5KLPiLwvhUC
bubu+nKT9SLce+SZ3Y+ZWdZtTtBQBxpvLH8WITa/hta0qCLZsPQ=
=U9ZH
-----END PGP SIGNATURE-----

--h56jti2nnfch2ag5--
