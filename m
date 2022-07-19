Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B55D57A342
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 17:35:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234057AbiGSPfY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 11:35:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234995AbiGSPfX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 11:35:23 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A93D0419B7
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 08:35:22 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id DB25BC08;
        Tue, 19 Jul 2022 17:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658244921;
        bh=oVT4ifOAXwGJaYzl/xfVP4SK5y6lXZBCF5x0CoZbvB4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=L3WvBuPFSvsZwNE5o3TLp5Y5aWiGEKfKXEoL5G1SPZeL/qzkSUGioXHR3cIkJu1Q2
         Ask5GzAdvrEjrqwulwO1ryfuMfMZ1LuSbRDyh/JOooMro5Mokh+Dq7NvyA407SuOj8
         Mr8mqz1JRr5QzXdoXTwa9XV1G/TX4+EvCl6GvzBXBt2sg4dr5a5Nxu1FG/3NtxFzB4
         j5UdUkzzQ3xnh0yToA3D0a0cdkJ3r+/uh/q2w1FyVFF3IIcqqAGfe1WsJdZ3ci2K54
         B7dgE2g2CFZ2/pACOgF2jMbGkVCy1ApyNzbkJ1ZTWQMbMd5Umr2jLE1uHKcs/5Z6Ff
         yCZ3EyCZXdDLso9xzJ4ACg/rc0NtZiLJH4Ei2ZCr5Q/NzzxhLkVRluctDW5+KYc5TQ
         aon4J0BW/auMkzgiz6neVDcg8Xtz6q7ACTg/g5plSYGiZvFr8GjCKk9PNr1jZaFIhi
         C/b38SU9aAxrG0U48HA7f7srCUI7Jl8F4RpIQm/k3N6V9hJA0EB9paoYIvjOw21xQA
         4qxzTCWHF4R4sqsSEkHso2rF1p1R6RiU9trKNwgpymb80WJjOyeBv3JaaTT7hUVVR0
         e3J7oK5sUXjaO4BgFrKadt9cPqQJq73WTRzq7qVHq7Gw/O+OAZ31+35wOuD8wFibyk
         SRyYoRJEfBb05LGvjxPcrzLo=
Date:   Tue, 19 Jul 2022 17:35:20 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 4/4] ctime.3: remove struct tm vestigia
Message-ID: <e9b0e687ff10a4607ec0442a3208dd31b6d4eed8.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="uy5emmxytw45mqjp"
Content-Disposition: inline
In-Reply-To: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uy5emmxytw45mqjp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/ctime.3 | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/man3/ctime.3 b/man3/ctime.3
index d228bdc21..60ee4418d 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -356,21 +356,6 @@ In many implementations, including glibc, a 0 in
 .I tm_mday
 is interpreted as meaning the last day of the preceding month.
 .PP
-The glibc version of \fIstruct tm\fP has additional fields
-.PP
-.in +4n
-.EX
-long tm_gmtoff;           /* Seconds east of UTC */
-const char *tm_zone;      /* Timezone abbreviation */
-.EE
-.in
-.PP
-defined when
-.B _BSD_SOURCE
-was set before including
-.IR <time.h> .
-This is a BSD extension, present in 4.3BSD-Reno.
-.PP
 According to POSIX.1-2001,
 .BR localtime ()
 is required to behave as though
--=20
2.30.2

--uy5emmxytw45mqjp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWzzgACgkQvP0LAY0m
WPGZ6A//XY5ZMh9zTbU+p3qo6fuU3BNWcLjfwCmEoNCObxzxX4tbX+QM0uBNzjCI
CtlKKt7CIjsNiaPur1waR8sHtSs2mcT4QxV50pS4Anh2sy1gz+FLMEb2m5oZwCjq
xw+/gh/kpGoTvM7zJgDjic/ibCaWNw+gUmunghLuojjc0RU0Fv1+kjsJ/w1Oxgtj
s+TM+G+OqrbKkujRQKxY+qFP5v8K7r9kRlzkdkgCzf6JM+nn/XjOGX6fCAi1QGlS
31XdGtAhTBNv6SYo5C03EfiAO3laBxG79GlOp3KRF0qC2OwzfPmKx4q5eaLuQn2A
9qLCjJPQp4DfGVHaQ+L/NI0oXJ9bZlftuE9QWSbX27eZzxPrra0nJVHhqHSpXX5z
T3ROtYJpeLQIrm5zcIQ72u7Svs7NrV78z5xf3lP4mbXURpoh2dEgLhU0rxz/maRl
LU5BfbTcbi9KMeQePb8kpuHO+n6FoQ8UEPkRKAvmRVmqzeG/FeqotakliRc3Z73c
CTGVy0dk9Nbw5OavSXx6s+BO7seBl2RP9yqiRSh3eUFjsnssnyfiE7829PjOmAhR
TxO4lAgPTZraCfrNa+AmVFZaYcWrvLHlDodi6JlUmsRqdRpo2YeZrcbAGrG1FRzE
73wkFLBwihjcwZ+xja4f5J3uglE6H8y9b1mXmVxO5/6DuJjLjSg=
=hPEH
-----END PGP SIGNATURE-----

--uy5emmxytw45mqjp--
