Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7F78594E24
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 03:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233540AbiHPBm3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 21:42:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233727AbiHPBmH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 21:42:07 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E2818F23F4
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:34:04 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4F3E0E6A;
        Mon, 15 Aug 2022 23:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1660599230;
        bh=W/auaA43/ak/txk3X9AI1+vgKKceNsGjt+E1tJUdvMk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=II4s2wY7rBBIU1bqEt1A704XoZScJu6W7/G+8l4uXi56JW4XfugRatoVbkrtV1YqQ
         Wd7woN1j7+AfFIr5aBUhXqKl9DD+947QUakVflucKHLphAXMm5nJaLqBh21K86eMdJ
         yoae2FcZYdmZliJSpcrEh2q6umIWX4iSDm/46xjaIHMMs2OqlN2ME2wAiASWqgA+Rv
         pWKuYCCY1ijU6+QdXZh16xcP/jF3TiBO82gXYISxuzlns675bstZ0qwZ+e/GkMLYQk
         1oYRcDlXHQT9SyIXCeY+mMjTf6O8DjsEEp/ZM3vhUwqi8O7uibP1SLTbt7spUFJeLv
         1acu9y9hbXM5d23BUp1vyT6sUu8ym9F2mMzOkNp4IVkgcJiZlKb8XKBHh4/t6rEDoH
         0VBGyo9K5JSff4tHbDul798UDqxitkdXXbNCk7g0HCe+b+uCg/JU7o6sjQiK6IrReB
         0bDYJZnEBB/CNum5qwYs4Bk6DTX38d0AbDOPHE/Aog4CJRBjDh2TvduvlisDyHu02V
         pCUv5gBLp2ER1vKSTrnqdWX6j8S4OkgtAguSM3v3Hjn0mBNPf2Mpi6imp4e0npQ6i5
         IsdM1k5PnPBvMXVPo752UpB3kpu8+BMYNiUNuqVZm0zKdHTpl/tyy5sgfJRkKoaSm1
         FxWs4U4cLkCh1ajvch8uZgJQ=
Date:   Mon, 15 Aug 2022 23:33:49 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 3/3] getaddrinfo_a.3: actually gnu.cz => gnu.org
Message-ID: <e3066c02785707f606606504abf1d5c9f7d3ddf3.1660599213.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ednotml7dw42s57x"
Content-Disposition: inline
In-Reply-To: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ednotml7dw42s57x
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Fixes: a2feb3e14f51a0e74daeb6f0217887ca31799967 ("getaddrinfo_a.3:
 gnu.cz =3D> gnu.org")
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/getaddrinfo_a.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index a5eb85843..25283dce9 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -323,7 +323,7 @@ The program might be used like this:
 .PP
 .in +4n
 .EX
-$ \fB./a.out mirrors.kernel.org enoent.linuxfoundation.org gnu.cz\fP
+$ \fB./a.out mirrors.kernel.org enoent.linuxfoundation.org gnu.org\fP
 mirrors.kernel.org: 139.178.88.99
 enoent.linuxfoundation.org: Name or service not known
 gnu.org: 209.51.188.116
@@ -403,7 +403,7 @@ An example session might look like this:
 .in +4n
 .EX
 $ \fB./a.out\fP
-> a mirrors.kernel.org enoent.linuxfoundation.org gnu.cz
+> a mirrors.kernel.org enoent.linuxfoundation.org gnu.org
 > c 2
 [2] gnu.org: Request not canceled
 > w 0 1
--=20
2.30.2

--ednotml7dw42s57x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmL6u7wACgkQvP0LAY0m
WPG6yhAApuNivE2U5ByfJS2rLyYbqcV6n75ep0c1bMoneeoZrq5CgSnLQghYAg+O
DxosRhnLmPE8cI1G4ZRwhe01bbDTepU23whUud48sgdzDpoCsfulnAKtqu48KSim
APvTaKzxConp3gP9IJBmPRb9gF5XoJjBjG+AR7minQH6VJTeAPLK14s6h6pTwxqA
yPOXtK8eFPHM3h26IhLQH3i5pQEx4wd+YfKI6YzcdFpIrX8jF5VuLZRjQ0mcvxFU
Erv+FzPFxOyizc3ZHNlDS/D4D9GGSe8C7A+n8oOeqDwVJSGJQ1xHxgYvdTG22Aet
f+rHRTCEqg7YsFzRlP8mZGqf+TiogS6e77/kOU8Zz0Glqaj9rFJ4HdGbFe1ihEth
Xrp91Jg+/C0iCFIyLnW2L22vhw00fE4w5YKSvM1AtE8CipfuGpHEhjIGnkLFtpYl
vjTZg5LeBxqPZMR610o7xjdQwwBo7BCbQiRXNTf3cor+EhFqXv0dr0nhPPxSDqZJ
26UrI3yFRCX+omhg0t5ic+gjt+apibkMb/2TijeiTH/lzTI4S35TdmdUqHZS+CQR
PB9E8KSf1z9kudrQ3F16XTcyaCKwBrDWWIdGifz2C5Mi9baRgIy+a6bgUrZ9/sx8
l8FBaCAwX0CGN1aTr07mGWHqWh2k4GWbghzC5zoiyoLlDdVDZtc=
=lnHX
-----END PGP SIGNATURE-----

--ednotml7dw42s57x--
