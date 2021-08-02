Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80A8E3DE287
	for <lists+linux-man@lfdr.de>; Tue,  3 Aug 2021 00:35:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232006AbhHBWfY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Aug 2021 18:35:24 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:46098 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230313AbhHBWfY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Aug 2021 18:35:24 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 71F193602F7;
        Tue,  3 Aug 2021 00:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1627943710;
        bh=WuOhiOrPlib59ycfLhtU1h0LvE6Dt2vv9eCEDOmlIYw=;
        h=Date:From:To:Cc:Subject:From;
        b=CbAIkxCcGiriaw3R5lAXTOd1q9sSjsRNQAUeweWUKCrt2RXaIl1SN5vE+ohE+KYSY
         I58bYVZOnoCAxZkZQD2diiSJ9dEjMcoghAgE+ac0M3Pf/u5UNZJjyl+msj3KOgJ55/
         TPBA771poNxsrA79xnSbIUWbwq01QpfslXIXm4PnexVOgbSCWzXZbxKwnwPoLRNa4E
         /m+70Yf5zpMbxCn1Dndt+0+Mab0zCmmzUob7NOpTthGAWFX/FNgxwIBtmroe+sskez
         aQArzK67FpOSYxmngCyVFWdyE3TIwzY+tET509tCKWhnyCCqov2naAfCDXKWGxkf++
         YD+Oe8AAqmRtw==
Date:   Tue, 3 Aug 2021 00:35:09 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] regex.3: ffix
Message-ID: <20210802223509.ep7fzsm5un7p27aq@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="d3akbsoizxd7rdio"
Content-Disposition: inline
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--d3akbsoizxd7rdio
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"address of regcomp() initialized buffer" ->
"address of regcomp()-initialized buffer"

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index b6a83271c..368f48d78 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -66,8 +66,8 @@ All regular expression searching must be done via a compi=
led pattern
 buffer, thus
 .BR regexec ()
 must always be supplied with the address of a
-.BR regcomp ()
-initialized pattern buffer.
+.BR regcomp ()-initialized
+pattern buffer.
 .PP
 .I cflags
 is the
--=20
2.20.1

--d3akbsoizxd7rdio
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmEIcxwACgkQvP0LAY0m
WPHV4BAAkm8MBi/6asJsCuTcaqTR3eMe7St0Zw0pd2ZlFwbZzWUkJWfMlUlWj/Xk
JOzQJ2XMpWgWyqTgFkP/HzVjYqSspqdRBcn4gsbTPBQsNNvucx0GwtLBi+BSksGs
re1B05OrwLlmExQC0H8owJ40mv92igmPpzboSV9mUp4vnMz0dKzd2XgqRAm6uijN
hM38b862cyaJj1yWqKHqkNMWCIApbV2PtIJUVQEFKmzDFRBUQqqGqUII4saLoNBn
O2psVPo3jyH9gjsQg81kozaRQXhczCTE6FzfLmYtESRTVVGmkha++YD4jevgE8a3
EOcT2O7lwPldIHqWbokgV1wlmKXKNRPuOD1SN0eMRRfVjMKr/Mih4+8cI0ezNBq4
P867DEzuCHMIEL6e33P9wmjU9D3KWFm9RuVPN+xu9pwNZMoXvW+Y8W7a2u9syqju
r7sz1nvOOYppPVqyuAvTxU7r0lfEwmwuP3LKTerAfBJP0yVjS4pLWKa5pSxE3oxh
33g+jipT3nYAJzQQS7hcmAHNhCeLG66E5FzVbHLVwT2FuKfz8OsyG2NRL+YrSuwq
D+HDculjFo26yR2XxxVOlYu/yrKIQVkj+FYdgv7DSFV7O2IUG6ZteySLFOvAwEic
H5yeSOADGL6TU46M0b8msCBssm/V3l2oSF+hz280vkvMtC5Itrk=
=1EG3
-----END PGP SIGNATURE-----

--d3akbsoizxd7rdio--
