Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 800F646A69B
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 21:12:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349291AbhLFUPx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 15:15:53 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:44140 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S236134AbhLFUPx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 15:15:53 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 908B71E48;
        Mon,  6 Dec 2021 21:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638821541;
        bh=ONE8pUX4Q0o6RlYc2ndFFPQj97gvf+/kAOuZwLfnb7k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Lnn+xP7gZT44u+SAOGRw3E2uSkvXvdCcVXKaIFvNMna9OycAhaPIIR99SvwxfH9jv
         0GEraEQdlym2snAjjdN2b+tY3+Xm6oAe3lhR71WdIfo5Enjv07hn/YbNpbLHH8x8hR
         jzFYci0+BHuqe4QBSn7rOyDHldjevNhc1Orryap8lxcGeFAs1+A6JTqBaakDVNPW/4
         dLtE6c3j9mc6cCP9rtYzvtynw6PjJYkOy8LDJM8OzFPJaF9L0hyefIhBJkkFUneEFW
         oFCBofpt+SaaEVsZKnuJ3vjZ/GaKKQkvM2qFI70CUmttYHqWGgD1LQ1ksEoMGS4eK8
         tl91IbBXT9J+w==
Date:   Mon, 6 Dec 2021 21:12:20 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: [PATCH v2 4/4] system_data_types.7: note that struct
 timespec::tv_nsec being long long on x32 is an extension
Message-ID: <385c86a755cbf86877ad323a7f3e0d6e2b8f999f.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
References: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
 <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ip4mct5tv24eox56"
Content-Disposition: inline
In-Reply-To: <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ip4mct5tv24eox56
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/system_data_types.7 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 80679b180..a64a9c55f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1556,6 +1556,9 @@ Describes times in seconds and nanoseconds.
 .PP
 .IR "Conforming to" :
 C11 and later; POSIX.1-2001 and later.
+The 64-bit
+.I tv_nsec
+on x32 is an extension.
 .PP
 .IR "See also" :
 .BR clock_gettime (2),
--=20
2.30.2

--ip4mct5tv24eox56
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGubqQACgkQvP0LAY0m
WPEgXA/7BY/8A51qCK/Y661xKu68fZtKKJuE9ybgtTgdy0nyHfb1kTuxHq1ZaN6d
ERaGq5nCViWglCO2HpSsicghEXnLG0Juhimuh6X+kdVG+FT2jxlHuyGr5YPd+pIU
MlDbt+XwnGD6AivH0vEcUQwL0pf34ftwjXl8jhSK+wxCWqyCMdnKl9OFJ01jN1nR
xL14wPhVPD4kbB3D2Olks8jVZ7zIgkv8Gy7k0q1nJk3A8d2IuvWohMTRsRZp9by1
0OPHrSj6rOYQU8hPh06PsxWV/8h198D/VC8fqpuVlcq8GNguSLqTURjRYsmcQK4r
h8nCmH504P/iIXl74xzyeSAzou3id7QzS5mWC/gmxoFUEwHqScVdgeJatCkupHL/
DpaQ2Kj0o9GagLNCOdgqifcOdPv23xcFDMExtrQWO6qpUSRSsJRKiKvaoeOjWrdK
JxkXJwOpDTZgCuAjVc575mi9sSPOlcbPdi4pyfoMVB5nZs4kcRY9mGslzLQg1Pl+
F0q4ENt5A4CGwLFCsRkdJIe49jiEF4g2ANfGsA2fxziKcc3t84FJuXX4CBJmfak2
3mM7Gy//Hr2tZIEHsga3GjOY26qHIBgkvITNZDLpZs8nZvx+wByi2CTtRrAcOgTI
EB7Dy8tIBOvE1lfZtztVSo9ESOrXQ2UluGUB0uJsyBUzt3Q6aUo=
=Dm69
-----END PGP SIGNATURE-----

--ip4mct5tv24eox56--
