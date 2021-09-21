Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F55D4134C7
	for <lists+linux-man@lfdr.de>; Tue, 21 Sep 2021 15:47:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233218AbhIUNtO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Sep 2021 09:49:14 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:60472 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S233216AbhIUNtN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Sep 2021 09:49:13 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 26EAE360ECB;
        Tue, 21 Sep 2021 15:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1632231981;
        bh=ZX7ab8riUns1peWe62g7qDArh0XQV4VANrKUMzxBHAU=;
        h=Date:From:To:Cc:Subject:From;
        b=pmk5uf67R4SkerAeEkgtMpsFFUySlwygeg9B4A0aTZsiccRK+Cgw0zlAfNo95zyII
         Q1yTIABZOzgSyElKyqU4Q5KjY72TXvYPdb1nKy/coVCc/iwngZ0gSFrSJvUUV8dTUZ
         s4QvWWo9nC53My0zwkAT/xk1Ih/KxsGiW4nOk27YgRxxOf8p+KQ0AbqWdq/XUcUDgQ
         jHXWyNIyMdPRkeuuFCfQPIxiITsZV4lpwn7s8G/nUt0PF2WDnSkIJ7jNPkvqVHn8QN
         V1AztKnVatPvgpnQvVHECQsnPsE1xkwVe4sGDYlxFeuirNI6AsFpcGvp68kmlZIGvJ
         I0wJu92ecA6jw==
Date:   Tue, 21 Sep 2021 15:46:20 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] rpmatch.3: remove first-character-only FUD
Message-ID: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="bhnqz7rkwqz57cpq"
Content-Disposition: inline
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bhnqz7rkwqz57cpq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

It's plain not true; locales can and do provide longer matches
(Aramaic has a "=E1=8A=A0=E1=8B=8E=E1=8A=95" alternative, for example)

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/rpmatch.3 | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/man3/rpmatch.3 b/man3/rpmatch.3
index 846c492b7..e0f92a20d 100644
--- a/man3/rpmatch.3
+++ b/man3/rpmatch.3
@@ -123,21 +123,6 @@ T}	Thread safety	MT-Safe locale
 is not required by any standard, but
 is available on a few other systems.
 .\" It is available on at least AIX 5.1 and FreeBSD 6.0.
-.SH BUGS
-The
-.BR rpmatch ()
-implementation looks at only the first character
-of
-.IR response .
-As a consequence, "nyes" returns 0, and
-"ynever; not in a million years" returns 1.
-It would be preferable to accept input strings much more
-strictly, for example (using the extended regular
-expression notation described in
-.BR regex (7)):
-.B \(ha([yY]|yes|YES)$
-and
-.BR \(ha([nN]|no|NO)$ .
 .SH EXAMPLES
 The following program displays the results when
 .BR rpmatch ()
--=20
2.20.1


--bhnqz7rkwqz57cpq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFJ4isACgkQvP0LAY0m
WPF1Cw//YNaAaSqMSNEAm35P6JoD3lMuhG5vXlEGKv3Aq+0alOD0Ttn2B4F2nRWO
s+LgokO05ks11uFZfP5trQY5yT3dNKCP5rVqCCyF46a0t7TV5lBnXsvMX1zuWhgG
rehRxXW0iFiFXOJ0dGYCX+xPFLC/eIjElBggN5+bbPkLfDWaCVmi7Y8QeDOHEmZS
iWGKAXMxm3QYgZbSMXU4RB26HXs95ZrvW5vE55QlyGF/S3lwV8FBFLXyUnFKvCXj
0HuwlSSHnJvpWGJT0pKgxbv2GzGFDmvcrN0REnAs6OPlEn/1ikUf/+spkFbCAmyD
0OOU7HIaKZNmJRVoW9cGtFXrs4RZOEbjxc80trIebUqDleu9qtIgac1hKwd3eczI
/a45rpGuacWEYcVcesRropVKvgwxbpcYprDc12STJ9372jlntUieKZRu5F8i8Hbj
o5mrBO2hNP+H5qu3mO+XJNWLSvuN5LSBY/EYWKbOJe8CHf/5hDGJmQ+03P0Z6ShK
eRkBae8b8nFexCCeioFOCUlK2/Bx6KMt9Eo2CmQVmqP58Fh4SZVacO7Ns+weV0mc
mfalcV0/sV4dmfkrf+jZm0JKKF0nkoIl+60r5EOOCVxEsS9lH7+H2fWQRAOwhDYt
9Jo9O7irkMy6KYEZint5AIpMPHC8RJ3yVOCRz7TlzvA5JNaWk7s=
=Hbuk
-----END PGP SIGNATURE-----

--bhnqz7rkwqz57cpq--
