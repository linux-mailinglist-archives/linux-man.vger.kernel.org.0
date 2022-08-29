Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D65ED5A5669
	for <lists+linux-man@lfdr.de>; Mon, 29 Aug 2022 23:46:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbiH2Vqz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Aug 2022 17:46:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbiH2Vqy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Aug 2022 17:46:54 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F1B158A1CB
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 14:46:52 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 83E72214E;
        Mon, 29 Aug 2022 23:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1661809611;
        bh=yY52+G/jVNIAvUlHIPg+8h+lnlkRnP0wml4c2gzNVJ8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pq+JluUo0B/DA6cJ4aoQOaa9dwUCHmWx6wa+PQI70BrHrDBsDLu2Z70OwA5Mk/r8R
         wHX/IBlJLMs3yzsHhm5+oIKShFX8lMjDyJt/apmoXDj8HZCix9n6DdVRgXbX0DF6zJ
         f9kvexnO9rQrvZGH4qoxfvYowwbNklaTVBx+1dKnZKNwRuWsh1ud1FlAlMYg0sHGTN
         FOc6jJlBHcSBTzHuQ7s5Kw3fn5tyFexUNH5K3BV1O8QpRhAMI0KV+nSbv2oX/g4g4k
         G4FJrwzof4DFeBD29M0A4y+HvTl+coYatDyUaPRzw8k+23Pb6uAZ4Bi+Not8UVv7vH
         1Q5nEPeR+4sfbb8G231xPcUegFe2uwNNm5oRp8CBSKghkicg6Tv532gYAvwtiTQmu/
         Wj8eRXLFXirsgx6J051WsitcitRd9EOgPrNWQratiAi4t8Jd/XhOB9PGrvhzX3dUl7
         tYmeajIA9dqlabPLEoLdQsFuLD2AtjGcF2gWirCouOQZ0BgJIf3sxsRhNWg+N3QxL/
         2QPchTSLkd9BBjx4LapR+bs8qvjRsHTYPobBVsS6ye8g+fBL1VcvHhc7l1IDEIGyMr
         gVXtMAh8q2HXrBr4vRyfMgYVSn17PeJgXyDntWWLGM/w3suB0tiFCiFWnP1HfuSfwA
         esVl3n86wJkhUcrb/Qo+fujk=
Date:   Mon, 29 Aug 2022 23:46:50 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] termios.3: mention the integer types in SEE ALSO
Message-ID: <917f59207f8a33922054f0466a48048b498e6ea6.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="f6xveagozbs4knki"
Content-Disposition: inline
In-Reply-To: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=2.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--f6xveagozbs4knki
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

---
 man3/termios.3 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man3/termios.3 b/man3/termios.3
index 5d6370d94..c28826104 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -1185,4 +1185,7 @@ mask).
 .BR tty (1),
 .BR ioctl_console (2),
 .BR ioctl_tty (2),
+.BR cc_t (3type),
+.BR speed_t (3type),
+.BR tcflag_t (3type),
 .BR setserial (8)
--=20
2.30.2

--f6xveagozbs4knki
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMNM8oACgkQvP0LAY0m
WPEnzg//W5I7rB8YG8XB7Kuh/LSl6MSSIq9JgbQtFQuInqUm8DWDJg+Z1SgZqJA0
6nvRUUWfPg4IaXWxU8mHW0RnCQteB6y19r79H0Rca8nyMjWb1IC/RuhTbSCYhOlT
Nfi+zMQUsFUhxkpMQvQh3mZGCpkmvBGtaduRKppVvMBl+0qlGFXQ3/okRnxmv07U
NqP61CukCuYRmDH4WcDNTGrJvzSV4uKkVCnQCjBMwnD5wWlwwQYjd5TMJOrlesdE
buM95m2854tkIupuDVkxCJKEWrTKrTb6byGccrXj9jqZgDzZCJ2x1YhL1LOZotIa
/XrBg7QX/nNxO6ZZ8QXJiSqll12Jx+5/nBkq8HXwErKwGzgapon2/U07r6o0T3rF
fcDtfNPzQCUjsIj7T/+JXIzjhEPt3+O58JPBrhCyQY5b7qoRyhSvYZSIb98pRWQT
EIFtTutWcSOKtJMQWL+Ayy6GVDh2P73OOncSaYFk4O1PPEwvl+9tUX5zmbhKBkFR
/tco9nz+KB4wyGE0GNyOWQ0JtVJZzLL3G56G0SxbJHl5FPERwzElV1rDx63tYMGN
Yf9k4iNSRCwNJvAZO7+0q4CTlF37Iw9z9G2LTJ7LReRFyjKGGbmohcGVOI5/6jtr
wGcfmbc5jw0Xs22rJtTz28x33S4qc5GES/CJK/FinQ0IBT9fn6s=
=dYXY
-----END PGP SIGNATURE-----

--f6xveagozbs4knki--
