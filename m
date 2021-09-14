Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D515040AE09
	for <lists+linux-man@lfdr.de>; Tue, 14 Sep 2021 14:41:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232903AbhINMmr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Sep 2021 08:42:47 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:48880 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232818AbhINMmr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Sep 2021 08:42:47 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 09B41360ECC;
        Tue, 14 Sep 2021 14:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1631623289;
        bh=kKQ7dV1s5VIrfKs0J6rdYRM8RRwTU2CsTjf/QcvNNrA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LJOB91nfgcinNt09pjraLNm7dvINtjPi8WvXwdTk4jVkuHbICRvW0INt0GvIroPv4
         knneJlxmfYRRIDTRApzZeZoRON71B+mEc6hNoOf/7LsH6UiMDu1p6zIjzqHf4TgK/k
         mr7iL2it93Xee9PlGiKhhjaMdR3+nJHmWeimxjeotcBaKrpjYTUYk+G6NTkoZ/613g
         YRrdy9FZf/+6lG4wfVTFvNuZkUorlfCpCeEjUr6p7V5sL4KgtAaU1RoaEDfPQtxrLW
         3ZZwo7WYu53NRGdavVsI68KZo9ofIYd6yoWm/B12G5Qa9ySpElHaP5vcQQyJJk2/J6
         pXwA0Y+5KpykA==
Date:   Tue, 14 Sep 2021 14:41:27 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2 5/5] alloca.3: simplfy malloc(3) suite comparison, note
 VLAs
Message-ID: <38e68bf205ac5282fa6f6eac8863c5b9b687580a.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="bfdxyvwoxmd5slno"
Content-Disposition: inline
In-Reply-To: <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bfdxyvwoxmd5slno
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

alloca() is, ex definitione, always faster than any allocator that
actually, well, allocates

Like Alejandro noted, VLAs can provide a less-flexible but sometimes
better-suited solution to the same problem class

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/alloca.3 | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/man3/alloca.3 b/man3/alloca.3
index 936a15954..736182a7d 100644
--- a/man3/alloca.3
+++ b/man3/alloca.3
@@ -90,11 +90,8 @@ originates from PWB and 32V, and appears in all their de=
rivatives.
 The
 .BR alloca ()
 function is machine- and compiler-dependent.
-For certain applications,
-its use can improve efficiency compared to the use of
-.BR malloc (3)
-plus
-.BR free (3).
+Because it allocates from the stack, it's faster than
+.BR malloc (3)/ free (3).
 In certain cases,
 it can also simplify memory deallocation in applications that use
 .BR longjmp (3)
@@ -140,6 +137,13 @@ The fact that
 .BR alloca ()
 is a built-in means it is impossible to take its address
 or to change its behavior by linking with a different library.
+.PP
+Variable length arrays (VLAs) are part of the C99 standard,
+optional since C11, and can be used for a similar purpose.
+However, they do not port to standard C++, and, being variables,
+live in their block scope and don't have an allocator-like interface,
+making them unfit for implementing functionality like
+.BR strdupa (3).
 .SH BUGS
 Due to the nature of the stack, it is impossible to check if the allocation
 would overflow the space available, and, hence, neither is indicating an e=
rror.
--=20
2.20.1

--bfdxyvwoxmd5slno
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFAmHcACgkQvP0LAY0m
WPFmbg//WrTJA/AxXC5WiCC6ndlNKiEEt/7/Wt3t+abyQv8CSOiIVUj0z/KLfAvK
LiQ9TXf1nLAsDCEEy0/XYO2jTjH8+JKrUTrSDe/hH8KU1qElrpL9OKMGzFRXNt3T
8XwexmKAEZjKuGpI93zbSfI9/TJ063sc83GuBbye4QeGF+jHcJc+GdT2ETjNqePx
Mff44cq75j59/2dThkpvdcyDSWxz3yJP8kPVLF2AfBAhT4pxSafzQJJOYFLVVGOo
xm72H4DC2aDrfCZcJ0WWj2bT/iBRD3mXtAC0MIfUEe4GJsciXptqyM9L+kL844Zl
F22snwSx21M6e8GpHBGgk6ni9BhyozkkKBIuG5ih6PgwX9izQcwnE6wmoxVk6Xmg
EgjXUZ8yZ8E8LLyvSxJ/gtA1uUDto5LBviynNiBw8kE8fLcB1lHoi7iZoIa6LU9h
23UzhIF0Ck6lneKbOLUoLrng2H2gjOD5daexmdOugviPaRcV69Su2RSxy0HLdS+t
3YkNtfltFazyAvScYZRuKNUhbWJSUctcr39ZgipTh1H699raBN374QjJ7xwWgqTj
idvBk6qPoYkqlDx58Uej1BuDskYMAmuvDnHg6hord4kkiG8c6rRZquwcvketjBAN
laY89mxFvaXdzsRufYrHb6Hs4ZbuiTPiYpbxaixTw9P5pU48T5c=
=lzHY
-----END PGP SIGNATURE-----

--bfdxyvwoxmd5slno--
