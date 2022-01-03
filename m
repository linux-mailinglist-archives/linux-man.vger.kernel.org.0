Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BC00483549
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 18:03:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234899AbiACRDr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 12:03:47 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:56550 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230009AbiACRDq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 12:03:46 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8884614A6;
        Mon,  3 Jan 2022 18:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641229425;
        bh=ylkj/rkM96379cL8qQLA3O6zWSilPeCp2pac7LSNbeM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=R1SVtPUgujhvzCzf3fyApbdJEoA3Ra2BAoi+XlWGGGMjnt1rrmYb3qFs1cUX9GXr6
         7PBSSt2SMb5gwcmZSOZIoaKxkTQxwo7iHVNjl+6uuiqP+To5aCxPIJlUSwopgnQu5Y
         u/yK70mqVM226+8Jp4cfVYt9RDfH8F7KCaa0wFTkkq3PRHkj7ov2Q/7T9MRXpJe5dE
         yWhw1lsZIaFmcvnvDNPD7cMyO+VX/lyMkR9NzTje//dmOaKrTjHgDQ7IIcRlBDYryh
         kz6156rBr4RbQlqbB5o+ktlgVyb4ddt3PaFEQIPoWDBET3DnW9IJajuHM+UzZvZ4eh
         NtrDyImVhettA==
Date:   Mon, 3 Jan 2022 18:03:44 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 3/4] tee.2: use for(;;) instead of do{}while(1)
Message-ID: <ac4b19f87d515463deb83a0cb3e1ebb03510c1f9.1641229121.git.nabijaczleweli@nabijaczleweli.xyz>
References: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="f3djnroirknic5tf"
Content-Disposition: inline
In-Reply-To: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--f3djnroirknic5tf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/tee.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/tee.2 b/man2/tee.2
index 3160cfdf7..831c02b77 100644
--- a/man2/tee.2
+++ b/man2/tee.2
@@ -177,7 +177,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
=20
-    do {
+    for (;;) {
         /*
          * tee stdin to stdout.
          */
@@ -204,7 +204,7 @@ main(int argc, char *argv[])
             }
             len \-=3D slen;
         }
-    } while (1);
+    }
=20
     close(fd);
     exit(EXIT_SUCCESS);
--=20
2.30.2


--f3djnroirknic5tf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHTLHAACgkQvP0LAY0m
WPExWw/+P0LmrkpiIJKVhBaQOcqV5RFbV3KrcsvkNLFtTcrabsQI6q6RPnw5zkHi
6rcqQ3tZ7QcBt4s0HfJDMv8rB+KNT0DpwrlGxKPcerepNQYkuA1hpzfWCuWwxQnP
HDpSvb/866Cb+hvTjQ9SDpZc3WEGEMBmg1Sxdtt7QXyCh/hLjyYoH0i0hkB017pN
g+6o9mRThT2Ue2ZIlzRFLw9lhbn0tjQo6DYqCCy8xSxBPweq0QbPv3KHGSizMBae
4v+1PA1EG0CPfqwg6e7yeEhnBQqe4lTV/wVNBBUhbbsvcPEVWqU9jVOio1qjEG+n
TJO13LZrsrGI1SwIoMSNR0cG4EjH4j0UxcL5I+Aa8iZjK30jeohZYf6N4JQ2ohC/
ofI9Z1ZaH1MiYjHmpm+IcU0r7sbDAPEE90VkZATufABIb/8j7PNGICe4QNEUSIT0
9NMCRMUn6+nQyxAZUO3DfdqwwssiYYrb9Yr+7syvZfsFDMclO2FHnQFmN5qiMfju
Z/rfeHn7XEF0h87zqJxqGl2edXA8UwE6rzLI8gLa0+dn9GW8wB2VXZCjPbeep6XN
At1Uul4nN//yvQHXpcOpZDGUfdKJtWCmOwIFvIq6/Dq39TrcQewO5vbnWdsmSvxj
pJff63+PyG793R+ayZe4jmyqqvKEYRoyaG1ovK6oRtr06Tfz2yM=
=PE0O
-----END PGP SIGNATURE-----

--f3djnroirknic5tf--
