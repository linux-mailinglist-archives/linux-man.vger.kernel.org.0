Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E56841FBBF
	for <lists+linux-man@lfdr.de>; Sat,  2 Oct 2021 14:18:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233095AbhJBMUf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Oct 2021 08:20:35 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:42270 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S233082AbhJBMUe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Oct 2021 08:20:34 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 525ED3612AB;
        Sat,  2 Oct 2021 14:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1633177125;
        bh=2kSej/vjeoVDrQQXuopCjVzxpb6o6GR9LEF79EZqCOw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kamMbhe5r5bMUQen1owWxiTZgGIGhiVeQgXALp1QmuAbAq91okEEwPwsFxBR8lLVU
         dBWNDIwKN5IPtCLkQrBjEPdNnq+ELpg6yN5eZL8VasMdGzs9JQaj103LBQrmKotemB
         EvwZKBhFL2QQSe+YnpBj9eaI3NOoBCUcKnY239UBAhyjyKaAC5vqHGkKNv5aGlQ8hJ
         sqHj4vBdUrXSQYWPASpLtB4RBrTOExygvhbXcxS6MmoVZT9+xhC1cA4mGaZXq6YGUN
         ZCOfowosWLjJ937YLS3a6Y/Js/d5PYHJWIP9PyWlmWXsiVof11p7/qNya/j/3wln5d
         BdME5nom3n5Gg==
Date:   Sat, 2 Oct 2021 14:18:44 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] rpmatch.3: clarify first-character-only FUD
Message-ID: <39075e7155b7e992b6af5b548258a46d831e025d.1633177011.git.nabijaczleweli@nabijaczleweli.xyz>
References: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kw5hhzfxy3ubqr5b"
Content-Disposition: inline
In-Reply-To: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kw5hhzfxy3ubqr5b
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

It's plain not true as-written =E2=80=92 locales can and do provide longer =
matches
(Aramaic has a "=E1=8A=A0=E1=8B=8E=E1=8A=95" alternative, for example) =E2=
=80=92 but it's important to
note that (a) this may be an issue and (b) nonetheless this is the right
way to process this

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
This should resolve both the unnecessary FUD and the doubts it would
raise, while preserving the note. I'm not sure I'd agree with C locale
being the most important one (I'd put that burden on "the current one"),
but it's mentioned here because English locales (and most other ones for
YESEXPR/NOEXPR) derive from it.

 man3/rpmatch.3 | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/man3/rpmatch.3 b/man3/rpmatch.3
index 846c492b7..1f9732e3f 100644
--- a/man3/rpmatch.3
+++ b/man3/rpmatch.3
@@ -125,19 +125,15 @@ is available on a few other systems.
 .\" It is available on at least AIX 5.1 and FreeBSD 6.0.
 .SH BUGS
 The
-.BR rpmatch ()
-implementation looks at only the first character
-of
+.BR YESEXPR " and " NOEXPR
+of some locales (including "C") only inspect the first character of the
 .IR response .
-As a consequence, "nyes" returns 0, and
-"ynever; not in a million years" returns 1.
-It would be preferable to accept input strings much more
-strictly, for example (using the extended regular
-expression notation described in
-.BR regex (7)):
-.B \(ha([yY]|yes|YES)$
-and
-.BR \(ha([nN]|no|NO)$ .
+This can mean that "yno" et al. resolve to
+.BR 1 .
+This is an unfortunate historical side-effect which should be fixed in time
+with proper localisation, and should not deter from
+.BR rpmatch ()
+being the proper way to distinguish between binary answers.
 .SH EXAMPLES
 The following program displays the results when
 .BR rpmatch ()
--=20
2.20.1


--kw5hhzfxy3ubqr5b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFYTiMACgkQvP0LAY0m
WPFplQ//emcTgoDwco6uzvYbk9Qh1CGAnyCdAk5n9zSPhX4j/Ed1bxk7i9aMJB9k
DzdrsrXj49SKjLLqYPvXkJy9LKh0iskWzkejPu8sKiJGK4GexlDnN0hZoaSAUYCv
ByNqclgTsBOR3KyuVkvnwKrz9qsQoELzExOJp9o9JdvGc3yC6QniJ1iT7U1UWDRQ
F9daMmHVpJC3YeAgqa0W6eYzv0z5ZOImSeivc4DjF/js/E3VTrjD+VKol0iAwVRO
aVE3XDwOmKfSUl3wA3miCgfwZMDRcIKoFv1zTDB/1Y8LzoG0e1OZkGYxrtl0K3k3
X1vbzPgI4Mk1wQh/qpAHL3Gh6Fukj6z+6DMLOfMq7eDFj4lUcM4y+BY13/dxK1Od
z5Hf1RedlR8F45hLpO0p9dVlX/U6TVJ33OWEdPhNOlXpl9PnqUQUVBiu5hHZ0YK4
y6L8SeZRhRCbRh7R9C4wSmda7zS4VQHOR0SNdnaMIvY9Pry/JxcFGwr6OhZ4MM/p
D4mUQ7HKbUz75CT7tQG2OwNh+Q+p/gBW35BJKYuRzcHy8YacKmG8GHJ5hFJ62F6i
3YaIJdlw+7fWrj1xquqHi0A1GDoQXJOpIrgrCpoOQNWpYNZW7NMp8omm38VcR0Ri
5hN6nQRm0YeOpjvE6vPyKO8dTHDGVUb0Mn3KeSpWYSONb3BOirc=
=zU6G
-----END PGP SIGNATURE-----

--kw5hhzfxy3ubqr5b--
