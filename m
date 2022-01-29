Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C6444A317B
	for <lists+linux-man@lfdr.de>; Sat, 29 Jan 2022 20:10:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242081AbiA2TKY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jan 2022 14:10:24 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:51740 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230301AbiA2TKX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jan 2022 14:10:23 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6FC7C3C08;
        Sat, 29 Jan 2022 20:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1643483417;
        bh=WHuDmC22kquvQZ2BYZxjvJv/wu8TIt/9I41OIYzMDwg=;
        h=Date:From:To:Cc:Subject:From;
        b=J+dc78xQjTPxzRaC1yU9WAH+sKXaQqn3wL+kT1kXzF2FyIC6KSbaaUqDs9RXz8HNW
         LhH9dkGbGWB0NIPscGrVoV4LklOi+qH7ycGV9bwR1BYe1D15hmKeVUpWyRc6Odq0ei
         e4K/v5GLPvZp76V8iHxQxk6yvyV5DKO7UT9PwrAk/X9rpiUKAoLuUULKbhuYeRGrT8
         COtB2cfSARHQKU/snJWlElyZ1xscvJgJ0ibvZGTIcDJLbwfpUN9Efd1b2/9Akja/uw
         4HGN1GA+96HupU8or+oppsuJ0u6tDakj/2KV8zGop/44XRDBYZBPJEZ24JnKBG9Kpt
         DWJDpwc8YHnGw==
Date:   Sat, 29 Jan 2022 20:10:16 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] time.7: tfix
Message-ID: <ddac5f5b40345ba565428378e9dcecdf840e23f7.1643483384.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ritq4ozgmsmc5457"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ritq4ozgmsmc5457
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"HZ" is the constant, and has nothing to do with the 50Hz PAL/60Hz NTSC
field/mains frequencies

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/time.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/time.7 b/man7/time.7
index 830da7ea8..95573796c 100644
--- a/man7/time.7
+++ b/man7/time.7
@@ -92,7 +92,7 @@ configuration parameter and can be 100, 250 (the default)=
 or 1000,
 yielding a jiffies value of, respectively, 0.01, 0.004, or 0.001 seconds.
 Since kernel 2.6.20, a further frequency is available:
 300, a number that divides evenly for the common video
-frame rates (PAL, 25 HZ; NTSC, 30 HZ).
+frame rates (PAL, 25Hz; NTSC, 30Hz).
 .PP
 The
 .BR times (2)
--=20
2.30.2


--ritq4ozgmsmc5457
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmH1kRcACgkQvP0LAY0m
WPFc1w//XBTsuJPEDx3bbVcxX7bdDbYBqd4vY/WAn+G6ouFqtQaqn8PjfejCXvbn
NZuZo7A/5bsi0NVGuYucTwgJBr9sZQmyM1VBVTel9jRKbpEAE+Y3GPcW3IeUeS0O
4IB3STRS/kd7XEPf37SWLxw35mkB+uGYbdaD3BP2/VA0Z+ajPH5YsNB6K88aZOmt
fAG79BNyI5RWTa4YNG9GbJKxzkKXe6jG2hnyegY/a4NwQDLf6wP21lJu9xmsi03s
8p0qlMMTq0N8jrajgwaCix4vtEsu9C/6UwmVRoeBKQWwtoi0Eci6dRanes2tVOqz
iiaI9jpwCvnhKsolutDJcHsmPwlS23W7DwY6u7t5Qj6C0wiHPScYvGzSCEJW8HJy
9gMMNlp2/9IxYvI0sCtXXI6Fx8j3bSXn3RgnvoR2B5wr5nEUPlu8UyYXPyEgBVQs
YBlPwZwpVg4G5Q3kvm651qMsdn+9liIGJRbroXAv7T2OSbaXuZNDIVN0uJuNV3Hp
T9nqzWBzRx9R0QIK+KnjpNjeEiMvUXFFm9pMZ7/NQUovSpx6fM+qqYgqdz7l+0Tn
TrfSNtcaUq+DH5a7hJqfr5UHhoBvKy52ayjhms/A6gKGU50+Ja+IBSng4OyFnBSv
ap6AwygjLWvlmtnDKl4xRl9Mg42jwpREmsfxXOjW3oCak/xGAYM=
=J8d2
-----END PGP SIGNATURE-----

--ritq4ozgmsmc5457--
