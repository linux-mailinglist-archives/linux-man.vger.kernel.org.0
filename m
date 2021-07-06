Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 540273BC971
	for <lists+linux-man@lfdr.de>; Tue,  6 Jul 2021 12:22:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231216AbhGFKYz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Jul 2021 06:24:55 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:46644 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S231208AbhGFKYy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Jul 2021 06:24:54 -0400
X-Greylist: delayed 526 seconds by postgrey-1.27 at vger.kernel.org; Tue, 06 Jul 2021 06:24:54 EDT
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 05CED360CC0;
        Tue,  6 Jul 2021 12:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1625566407;
        bh=sokxQq+2M9jUbuObCUZpOJu2M52OSVHlxUObHNhkPO8=;
        h=Date:From:To:Cc:Subject:From;
        b=Qd1M+dsousEWgY2MDuBjgJ3DoP9uc3LoImndis3Fw2vccVMsmtbsBkfYX0wrAR9JI
         v7UkKKp+URxIfP1lBS5YJ6NcDbwaTBsn2TLgc9hBdKu9H7lThfvC+8x5eNToGVxGHX
         O9iUZQakc2R159+CPgl9x67mtei8eT7n5tMd2iqX4hgEIKLYhLtyWhwO1Wh3hMiv8C
         eI71vMphkCwZubEBgRrbC8dc9jAHzuZ0UqQtbA0eVPYHdVipKhxViT7W7OUF+WYDJv
         q97CLOKhsuioHUL/AqH4McKv/+j8QSwGUMtB9tzxUfS2YxCTw6Po93l4RR2aWyrhWY
         Yj3s2gLX90YhA==
Date:   Tue, 6 Jul 2021 12:13:25 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] ascii.7: add vertical rule to separate the two columns
Message-ID: <20210706101325.fz7y256cvyycefff@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7ww7p4xcem374zr2"
Content-Disposition: inline
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7ww7p4xcem374zr2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I regularly get mildly lost in this table (and, indeed, didn't realise
it had two columns the first few times I used it to look at something
=66rom the left column) =E2=80=92 separating the two columns improves clari=
ty,
and makes which soup of numbers belongs to which character
much more obvious

Other encodings don't need this as they don't use double-columnated
tables

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/ascii.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/ascii.7 b/man7/ascii.7
index f1c0c8d74..053b13809 100644
--- a/man7/ascii.7
+++ b/man7/ascii.7
@@ -48,7 +48,7 @@ C program \f(CW\(aq\eX\(aq\fP escapes are noted.
 .ft CW
 \}
 .TS
-l l l l l l l l.
+l l l l | l l l l.
 Oct	Dec	Hex	Char	Oct	Dec	Hex	Char
 _
 000	0	00	NUL \(aq\e0\(aq (null character)	100	64	40	@
--=20
2.20.1

--7ww7p4xcem374zr2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmDkLMUACgkQvP0LAY0m
WPFBrBAAqpWld+0MGgcZYJVmaPjXQ2lJSFRQaXvO6ds0bj0Ir2g79qf+UDKrrjR6
RxIPp815POJo2xSXTr+9ftJ6pOY9WFWlIlnkuLSn8GuCupurEDHNSn1E0LTbDbCn
pNVyPiAgRAh/kFTEmrY8uVwZZnYsJqjt3sD+DK+9U5SSi0h42jTmgnE5Nx3809P8
JF7IT1m309czh66s8aeA93FFNLznrWUL3CiFL8aqmjRzshScoGaq+ZpQFaC1Fcpu
2NqMGKDmX8kGOzK8odJ+HTveveaLcRnH77zitKhQ801dutBPg6imhj78969ZggB3
BF8uxTOWCF6b0A6qkDjS5Yz9uu1XBwe+pFKPr3Zz1ypffNbDsdS73yKS4+eUsAqT
m8Z/Dj5wwi/Jny1TNFT9D0tQ5ZasdzcBeaE6wIlz/ROGkxneexaDeg93MNHOYJ/Q
jNKUQw6/qaQc/A54eU5aRm1ZyUa7qFPAMhw7SS4GGCjQDVXBxS7K/bpuWaVfx8Rn
haLvcRZP0SJaBlrSgIZ7+KGnJRLqysPRzDTSIFOhu3bznjUpZYnfCeYetx3Yoopv
5iEmglzIcc6makmpwQ64G/I3LX8tgbDve+iuNfAdX43msJG9nrNSuXUMPpGRLUMO
7V8FuxKFjQ1DGWZku+voYI5q2QAaKu6LrlCPkRwDhJS8vEyolzk=
=qsKT
-----END PGP SIGNATURE-----

--7ww7p4xcem374zr2--
