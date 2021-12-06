Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DD4946A699
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 21:12:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349279AbhLFUPm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 15:15:42 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:44120 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S236134AbhLFUPl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 15:15:41 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D02231C5C;
        Mon,  6 Dec 2021 21:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638821530;
        bh=SPG0Qd44DVu+Yz+ySkU8D0Zj+E46opQMkOi+gcCZh74=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=opzHtro3yNTWkzVV3vOCPaT5I3ktA6xnaW5FpmQFjpjKBypSLzgEjJyW/kaBajEXr
         daOPXaNYt0bXa+ypAVFTFLj4L29vpDJqICZ4JH1CELeokTLX6Xyo709agi7N51Wkyd
         Q9RLY+z9TGJM8TfaPg1NHWujHoyT1gcZBYw6vUUfj/Yazc5TpFFvK0tvOHN8dZskiB
         /hT6sxe9RAHC3rG3ZWNyVtqQFDdlB70b1AnO8IskVxQnVNxU8W9jWalKkxD65KwDAw
         a0PkIrF30IkivQdp2TR8V4J/tCnEkTIpEM7jB5lvc3Dmv0kEA+kl9qK7Kc884euTRO
         9PxNwbjF8X7pA==
Date:   Mon, 6 Dec 2021 21:12:09 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: [PATCH v2 2/4] system_data_types.7: standardise on struct timespec
 fields comments to ucase w/tv_nsec range
Message-ID: <4502a11502829db4d493d2558de2a4070d907308.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
References: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
 <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="pduvqghxmwxbpuda"
Content-Disposition: inline
In-Reply-To: <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pduvqghxmwxbpuda
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/system_data_types.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index d117b1d2b..1e6a3f74c 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1544,7 +1544,7 @@ or
 .EX
 struct timespec {
     time_t  tv_sec;  /* Seconds */
-    long    tv_nsec; /* Nanoseconds */
+    long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .PP
--=20
2.30.2


--pduvqghxmwxbpuda
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGubpkACgkQvP0LAY0m
WPHqfhAAtV+n0LnS8y8NAXow7yScua51npAtJ7BJYoBIt/5iQyohdCew0GfW0Ii4
VtIBn54HMXkGjuGBGtyaYGOhZiHIf1YUdxFdbv+DKHNIX5FuMtTInKxgJ9YwP7SF
OQTYYgam+jEkhco/49LlJNKxdDcQivSfs8Le1en+9nq5RcWqD3O1+8mRSGknM6us
9dz9RzIVymWnnfiVfqStuesEbg++sb76KDjUVWJ2uoaIHMxUO3KdEs8kSVKpON8S
zaboV6b5MYfamkq+xu4XfsK9TzVhYoHUC0XBPwEWFjiHmZ+0UtQBTvh8rxTqMzbG
3KmhHmk/Bt/8jEaQORDShNeLdnYJROsaTIB2o8ieyOfYvpEb2aGZkXXIm/AiaFwa
C/+B87TStQkrS/Nd6w+vhWNuzD0X7jWY7W3Na9o8YwWXA3BAkvIpyt51DK2qq1Df
jUf5cpMwwapcfURVwTk0CTEqn6qyISTzVYwkM2rllpvJ8UeFa0ov1m1BCUzfQ/Hs
sx5dG9/oFNgUpvY82/4EsVRn3MjgaHDymb/yMsFcc4gTmHCtutKw0JWVMQzY3/Cc
Cn/e41OQBx8oZ30/ga9LY8zCnMHCEIodRE9ZXQsUIpn1lHvRB/cCCzQss5WGiX/8
D9a4R7jjPy/50fFJlCeqViRsH87Uq6Saqa0vrOdZoEbHL4GHo1M=
=dkZE
-----END PGP SIGNATURE-----

--pduvqghxmwxbpuda--
