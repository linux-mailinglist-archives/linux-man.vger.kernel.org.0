Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 799414A317C
	for <lists+linux-man@lfdr.de>; Sat, 29 Jan 2022 20:10:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343954AbiA2TK2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jan 2022 14:10:28 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:51746 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230301AbiA2TK2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jan 2022 14:10:28 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 7AA923C8C;
        Sat, 29 Jan 2022 20:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1643483426;
        bh=5EXDgBF+HbfCXMHN8FP9QvUyx1/6VrTUwSoF1S2jVxQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ozQKku9M8mv6Nw5I7xdCLo2YGWk6ilMYh10WI4euZ0aYsMQuPNUPQ+frs0JuJsO6w
         OWJUE/R2vYvJ8M04pGlVOeiEewk0c8jZxYY0BsMk+d66smPnmWR7ESg4D7n10MM+Kp
         EI4QX8sf/ZPivgI2HX5UDUf3Bwn2RdkwVK7EoS9LlLS6fZmIBafs51VORipTEW7oCg
         1EUYl7XyMrf6Ag735AxVRumwMprEFlk+PIxtNz0jDUNpONGybT0b0HEopV+6v7/me+
         WyeNn1sDSC65BX+n1tYTy5NmGxJd8izLnTq0Hgc9/LpxWj7NDmvOc/PYdTBkM8IUJe
         u7Wv0Yn2wKjaw==
Date:   Sat, 29 Jan 2022 20:10:25 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] time.7: tfix
Message-ID: <7f3f4747384d31517a9e423cc368b99c79c1fda2.1643483384.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ddac5f5b40345ba565428378e9dcecdf840e23f7.1643483384.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="yf4jbwyenyognxsa"
Content-Disposition: inline
In-Reply-To: <ddac5f5b40345ba565428378e9dcecdf840e23f7.1643483384.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yf4jbwyenyognxsa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/time.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/time.7 b/man7/time.7
index 95573796c..72395ee5b 100644
--- a/man7/time.7
+++ b/man7/time.7
@@ -132,7 +132,7 @@ or looking at the "resolution" entries in
 .IR /proc/timer_list .
 .PP
 HRTs are not supported on all hardware architectures.
-(Support is provided on x86, arm, and powerpc, among others.)
+(Support is provided on x86, ARM, and PowerPC, among others.)
 .SS The Epoch
 UNIX systems represent time in seconds since the
 .IR Epoch ,
--=20
2.30.2

--yf4jbwyenyognxsa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmH1kSEACgkQvP0LAY0m
WPEVEQ//SpECmqg0gwIV8KKxbcWw+4x0ORXNiae5jpMu4Es3sv4lq9u0USFEOEOY
pBoI16zbBALnZ+ShpWRMgD9FgQkMKolueE/3aFrjPjvRGYsnwQfdBpbO3MqhV9ns
T77NbNbb0ST7bkYxDBo8tH52DNq6MGYflLC4nzynzsiMpOyKK/4LMtQycF+ORYrW
dbW6YeH9Qp+4dpIsBLBo7Kz9gIZQaZWq06GY9bEeoWq5S1G/FLaK+7UmW6NnC3KQ
wnfFsIJUpPiCo2Ffx1CywIA1a39EdOs1ykBoh6mUjhWuNwBeFn0CrZ5zH5BDe198
igpo6bXFLbWCgDHI+WrP/ksX74IIgM8SiDNbV1/DJa0bIgtVZv0+JtuxLoXTblV1
0e1YlYNs/iX6h+ArNzvTzkHeHroUc8O/H/2Pv8N+G9LJmUTXtqU099s+J3auM14i
m4095lF8AEuDjQwRRgMwFhzPi+Ji2snNVnP36es1YbiT8wVjEIkU7GYIfB7mFj8P
BF/6eU+BC1JFu37PmtX/nV8LU+0Yw5ulIl55IAn+9V21ddVkx50P7qb+c0XVrHvw
Y3wnIIxfWYSHhK41VQwDFjT0/rJBJktznNIFuiSFjeUNZJap3pcJoL5w0d6Bi7wT
h3svJRfwiRpCUXgsJAu0jI6v3S1prHRN9FKLqWy7KRHG/bfYkSo=
=JDjc
-----END PGP SIGNATURE-----

--yf4jbwyenyognxsa--
