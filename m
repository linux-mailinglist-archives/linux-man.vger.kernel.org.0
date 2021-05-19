Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F179E388BB8
	for <lists+linux-man@lfdr.de>; Wed, 19 May 2021 12:38:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230288AbhESKjc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 May 2021 06:39:32 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:56930 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1348211AbhESKjc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 May 2021 06:39:32 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2F68A3602FA;
        Wed, 19 May 2021 12:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1621420691;
        bh=VWy2300kP6oPLlR6XrUzyCrZXQKK9gvvdM6yDHu4z5A=;
        h=Date:From:To:Cc:Subject:From;
        b=uo84U6/E6nB4pmX7zLi9uBm2DxnttigBZ8GUklzSn5dVswxdAqQrv/AYFeVztOG2o
         0er9oNX3fvMgdpvc5+4YDIGYb9EhN8JpEefOcACujTrLINOGd13tJ76EzEXnG5/F4U
         +f1MxT+g6/y2t88xwuFZgV2QhVJEhWXFdh17IL+scaQ3++zPNsw9jPD5pQTnm7KOj5
         VtjbS8l6neil0gLI4ZuGjCiyxOG3RiwNnNVD0zMwvUo2WI/Qu9MAgczbGKjoXb1dl8
         EBfTUx27vVJWnPYLqiupH4o9wU5nkc7vUvJYS0W+NtotZbzK8Gva2NpMb+kMMJjVlf
         pytOSfx/7HUJA==
Date:   Wed, 19 May 2021 12:38:10 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] getline.3: !*lineptr is sufficient
Message-ID: <20210519103810.fwa3463c6m6jstcu@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="44nltypyjdwt7eqd"
Content-Disposition: inline
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--44nltypyjdwt7eqd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

No implementation or spec requires *n to be 0 to allocate a new buffer:
  * musl checks for !*lineptr
    (and sets *n=3D0 for later allocations)
  * glibc checks for !*lineptr || !*n
    (but only because it allocates early)
  * NetBSD checks for !*lineptr
    (and sets *n=3D0 for later allocations)
    (but specifies *n =3D> mlen(*lineptr) >=3D *n as a precondition,
     to which this appears to be an exception)
  * FreeBSD checks for !*lineptr and sets *n=3D0
    (and specifies !*lineptr as sufficient)
  * Lastly, POSIX.1-2017 specifies:
    > If *n is non-zero, the application shall ensure that *lineptr
    > either points to an object of size at least *n bytes,
    > or is a null pointer.

The new wording matches POSIX, even if it arrives at the point slightly
differently

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
I seem to've blundered actually adding the page update in v1, sorry!

 man3/getline.3 | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/man3/getline.3 b/man3/getline.3
index a32d7e770..6641ecc35 100644
--- a/man3/getline.3
+++ b/man3/getline.3
@@ -59,9 +59,7 @@ one was found.
 .PP
 If
 .I "*lineptr"
-is set to NULL and
-.I *n
-is set 0 before the call, then
+is set to NULL before the call, then
 .BR getline ()
 will allocate a buffer for storing the line.
 This buffer should be freed by the user program
--=20
2.20.1

--44nltypyjdwt7eqd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmCk6pEACgkQvP0LAY0m
WPHgbg//ZAfqDcJgvxRAtVqV4GAcZDNQ+UqV/j5oG+fXOMCBr66C75Eb/Ez/SBtX
92kfQD4ohdcq2RhAiwrG54e0hG5s8b81k9Vo9GhhOXdPP5aOx2kOeRb4tbp0iYEz
/GKPcefhakpEL+edPBTDUJMwGaWCDtiSLRuRtp4xEBDRWcebG04dEMqgpITfP/px
ZgCGQfz3UrokFHQ+oCIVLu5T2tfJa4jgv4b/qk+fkaKS58VLHQZDixI2puXX7w9C
S9ZcIg6u6fEQIPEo9VRMIIfVG0uWaH7d719xMRROFT/PnVaXb6XhGFP2Zc4zeZ7v
Lpc6/8zkjfTLwNBK8Zis/No6AtcWmbwQYOK1K6gTPP9f3yFZKhCwGEjhHqmUifJA
8XCmRqaqPhIsA0mGvuOWkpqtL1LP+rDefHMdeZirKFShfkCONjaesr92/xik7Fa4
j9kgCcbYmw7XxssU4skpLTLjuMKzuT0l/UMACdgI4AIVp6/bd4wBtWi672yxcMEh
CTXY26FBJJXrYzJyioW7UhzzWgJyXjGwx66h/TmQ3t6EtP36+X2e+9S4nbfbu71s
y0pi2jC/J8mNvSY8ctDkf7CzJgJEAUrx7RWp5T47/QKNLL985NXUKeSJWOQWB+8/
Wpn/Xi2+7q2cQowmG5335JSZ1kIPdBK9QpPvYcpk79Mgwrwbqac=
=moud
-----END PGP SIGNATURE-----

--44nltypyjdwt7eqd--
