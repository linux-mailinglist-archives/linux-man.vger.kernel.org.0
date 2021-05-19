Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB814388BB4
	for <lists+linux-man@lfdr.de>; Wed, 19 May 2021 12:36:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231411AbhESKiB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 May 2021 06:38:01 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:56908 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230288AbhESKiB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 May 2021 06:38:01 -0400
X-Greylist: delayed 539 seconds by postgrey-1.27 at vger.kernel.org; Wed, 19 May 2021 06:38:00 EDT
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E68793602FA;
        Wed, 19 May 2021 12:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1621420054;
        bh=pqdnMewc5rh2Rjrq26GsDSqKI21dF7RpTwRrrmkiKEs=;
        h=Date:From:To:Cc:Subject:From;
        b=VYngycsYpgtinHAMfaKApyeqZ0gDyDsGDt0rZEWvsh7VfWnVV9y//oIzVFXPpoA5B
         bfNPqnMvXpib7I5ewkFtj2Dl0eogzX9nNeT9fjJJhlZLHzz8VZ6D6vbXZq24SWo1fh
         u8ZPGb3LdB/4zzVgGjZ5WwuCSMwENF/CTtpaeOXg++gxNprAaKmrHEUI52xGoneiop
         ZKsuKLzA61fj817M7yqCxMHh1TvWkOy3wiaMcyUdNkKsGDsY3Y+bWa7a0QzJYQLYni
         Ka72RgLNd8Ynzz5w15w+WT6TDVMZz2bByMM0IaNsWy91PCstvfouo7f/rvp7ztGO8w
         Bhvl7+gsfEhHg==
Date:   Wed, 19 May 2021 12:27:33 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] getline.3: !*lineptr is sufficient
Message-ID: <20210519102733.z6otrtvjplpq4jwm@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kfykah6zf4bhuzpd"
Content-Disposition: inline
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kfykah6zf4bhuzpd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

No implementation or spec requires *n to be 0 to allocate a new buffer:
  * musl checks for !*lineptr
    (and sets *n=3D0 for later allocations)
  * glibc checks for !*lineptr || !*n
    (but only because it allocates early)
  * NetBSD checks for !*lineptr
    (and sets *n=3D0 for later allocations;
     but specifies *n =3D> mlen(*lineptr) >=3D *n as a precondition,
     to which this appears to be an exception)
  * FreeBSD checks for !*lineptr and sets *n=3D0
    (and specifies !*lineptr as sufficient)
  * Lastly, POSIX.1-2017 specifies:
    > If *n is non-zero, the application shall ensure that *lineptr
    > either points to an object of size at least *n bytes,
    > or is a null pointer.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/getline.3 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man3/getline.3 b/man3/getline.3
index a32d7e770..d6db42611 100644
--- a/man3/getline.3
+++ b/man3/getline.3
@@ -60,8 +60,7 @@ one was found.
 If
 .I "*lineptr"
 is set to NULL and
-.I *n
-is set 0 before the call, then
+before the call, then
 .BR getline ()
 will allocate a buffer for storing the line.
 This buffer should be freed by the user program
--=20
2.20.1

--kfykah6zf4bhuzpd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmCk6BUACgkQvP0LAY0m
WPHNZA/+M2vgQSL/LpsHLlE8JTD+IyDgKSuinTbRm0huNeWm+a5RVdVhFVb67nqf
0eYWWxeOxZVd4LmGJ9GK7hKRZOsx28ksqZmAE4eayPG0JJ6uUuah5y9lqq9A2xzb
HSqwKbdDSV5Fm6HW7z/AxRhJpAcsZQuRQVmCUcooYGIrc/a8BnRuaoC9mtZyOB49
5iGSGne6RWXfXIQQehHSZWBWn8WWITlg8gLuSj1an3FHs2kGt0FuRh5/5afgmFXM
Qtc+7B9HgVwuNrojiw6pANCWUboX/t7NW+koORjmqr1jjRHktD8nBnu01fpGL34F
hs5cznfQfPxkzwuTXe90Uvw4QPywL4m1m5tqjHPbiHWzIs9Guj9KjsZow2NgvsX1
8XHaGfqQASO0jQRmrVe1JWELUsjBGP8ApqU39PIEvH3S6ZMnYHSLPvi0tvWM7dAb
5UdFp3y6/W/ZqafjY6t27yKZkfRME0oAMiYbYcyFGnfrxEzyfU2uuNPXKQIoNIzF
wZRWVBm8AZAoVopqVbq7YaLqAyBd0BxACqpLRJajfyQE8FuHQR8q6T0f9in09AAu
h6FfBxxjHkQIbQR9saOIwPoAupG4TsNe5uZeVU/2NiFhX5dpqiXSbLbojPIQ/lyK
6omQODENNLrwsRViM51BDA/qin54KqL3bI1JJHjQRv2o69HArxA=
=j+YS
-----END PGP SIGNATURE-----

--kfykah6zf4bhuzpd--
