Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50BF040AE01
	for <lists+linux-man@lfdr.de>; Tue, 14 Sep 2021 14:40:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232613AbhINMmO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Sep 2021 08:42:14 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:48852 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232524AbhINMmO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Sep 2021 08:42:14 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 48622360ECC;
        Tue, 14 Sep 2021 14:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1631623256;
        bh=Wt2jb0sY7Sb85lV9B3v/CUl8ZrpSDWewR+kVHhj3FY8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Tw2Yg0CrHtU+skGWo59E14XA36Dsdhw9i/lCWcwy5Vs+VqqvS+S5sqlhhS33EUtK7
         avyYFeizbpvrDITfgvKqNHrdh7jKZ5oPukoG1/4kRclEOo3lyFjXp1EVRL/2KbFCe5
         5WG+ctnjNSUzWPUji7YDKXzAAtlQ6C+Wc0ols9ROur4JXujpuqkAdePd6gj608odrE
         4CNDfmjmLRgN8ddgmpfVXOc0CxwDoqMLNlJOu4DWVaDuG7nWZyWSIJ+70RdhOfKhj8
         zmr6xSQi+nVZSCHy2Nbcuo46+qsd2wCfFywqHOCEzJrXOQh8Okos3a198Iq8jbPW/K
         81wczEQI/Cxaw==
Date:   Tue, 14 Sep 2021 14:40:55 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2 1/5] strdup.3: drop mention of "the GNU GCC suite"
Message-ID: <89a40c652664dfc41425625d1ec5c15151e2e964.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fa5l42nqnfkh2hrn"
Content-Disposition: inline
In-Reply-To: <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fa5l42nqnfkh2hrn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

str[n]dupa() are available on every modern compiler platform,
incl. Clang, ICC, &c.

By shortening the third paragraph, it now reads
    strdupa() and strndupa() are similar,
    but use alloca(3) to allocate the buffer.
pointing squarely to alloca(3), which is scary enough,
so drop the extraneous warning, too =E2=80=92 athis clearly points to
"see alloca(3) for the limitations of that allocator".

Plus, it's not like malloc(3) doesn't have its problems, too,
but I don't see those being touted in the first paragraph;
reducing these to the bare minimum,
   strdup() copies into malloc(3) and you can free it with free(3),
   strndup() likewise, but up to n, and
   str[n]dupa() use alloca(3) instead =E2=80=92 be wary of what alloca(3) d=
oes!
doesn't really make sense =E2=80=92 it's obvious that, ex definitione,
alloca(3) suffers from alloca(3) problems and input limits,
just like malloc(3) from the malloc(3) suite's.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/strdup.3 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man3/strdup.3 b/man3/strdup.3
index 1e1ac34de..963de7d48 100644
--- a/man3/strdup.3
+++ b/man3/strdup.3
@@ -99,9 +99,6 @@ and
 are similar, but use
 .BR alloca (3)
 to allocate the buffer.
-They are available only when using the GNU
-GCC suite, and suffer from the same limitations described in
-.BR alloca (3).
 .SH RETURN VALUE
 On success, the
 .BR strdup ()
--=20
2.20.1


--fa5l42nqnfkh2hrn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFAmFYACgkQvP0LAY0m
WPG4fBAAnkxsNBvn9uviXr5JOYJC+a37j8DXjT5uFhxyaaPaesy4+9Q2I+RswD4P
Pl1hu2EusOlGO5Z6M91UdC7E6SX5pl1JfAnDyf2q7HdJ/fsKKIFObayhigE54i0/
I70VLm+9v/InGIqtsB35CwWRZDgF/ytUhOBf2NFtoiVHfCFyya/3KLxmNnlgegaA
9TtcMFKy5pRQ32MKf5kndyuIi8ki9qDnhYTnVIHaT34dyPdXIeZ3E4wH0F7gfkOS
FU+7Vj9Ergh0Xz5vL6gk4ElevyQh/Yk7+NCbNeuY22VTAq7/rvhMuc76h6mUaB4n
RUwWZ1nbENnNUyjZt9CWpE9kb4Nba0APXrbSNFgnXnGj7RGSBSISTWbfdZ6G4XQi
/BSAaraGWysQteJ3Q2ZO/CAMQzP9Ch9CkbKmMoh3jfZ0UPqbDX66Fa444suSrPLO
zagnnF9j5BQAKrHfukmGm3pev13u2Ms3dIwBctxi8/2lFF/isQPrdqFUgzgokX11
UhHDJb5vKZJUfDJRqx9+K/f+GOn9Bpnl+1CO0/qp40Bcpy8losGKOFVzBous3cLU
WRE62Z83HD3iqPbpN6l223vVTVIHpWQcfs/bl/ljqc4C6LBnLhQHovis6X9/d7+2
5V46JWSW8khPEhW+zgt33uc/FpHSt6l4GSr0bFxJtFioft65fio=
=ogyE
-----END PGP SIGNATURE-----

--fa5l42nqnfkh2hrn--
