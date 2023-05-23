Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51CD370E707
	for <lists+linux-man@lfdr.de>; Tue, 23 May 2023 22:59:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234597AbjEWU67 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 May 2023 16:58:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229934AbjEWU65 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 May 2023 16:58:57 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B9BACFA
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 13:58:54 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1521B8578;
        Tue, 23 May 2023 22:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1684875534;
        bh=LFkHlmMDjEyMOfaf8F33Smf+IBu/MUuuX7oYo7BZQQc=;
        h=Date:From:To:Cc:Subject:From;
        b=Hl/KVDZUxlT5cqk/YhsmX+KSMrO8iX2BbdwK7MxZDJNeeayZq0gtax62RcRs20Rky
         CLqoMbicVWL1CHLj1QPcvfXBEZGhDSeW7oFPisOjkmRm9aFfs+UE1QHg5H2mgoYo73
         ++5cIzaQAqY+PDx/oKQdKDs3Q/OTi6RLtP6u+yV8aTGLr4waT5ZzTMan3eOvBDtU4k
         Loh/GLjy2W0znqx7USaXJJIjfOFUgRU5EUfudhVeeQgXW5juNFf0IMZ82K7N28VOwI
         26FIMwuPhS1py4GRFy/FAxtsc6Axp+Z457DiFbfWEFXtX1ER1dN76gGeq3kOcTq+VF
         RgHzA8sDTNOkg==
Date:   Tue, 23 May 2023 22:58:52 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] putenv.3: tfix
Message-ID: <dywm7weogmdj46uxmssfipxqybmnyii7c6mvjalm47cdijrnhe@cz7sgvr2pxoc>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="rrxw2ezuzdke5qll"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rrxw2ezuzdke5qll
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Fixes: commit b324e17d3208c940622ab192609b836928d5aa8d ("Many pages:
 wfix")
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/putenv.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/putenv.3 b/man3/putenv.3
index cb80b29f9..b29c71399 100644
--- a/man3/putenv.3
+++ b/man3/putenv.3
@@ -114,7 +114,7 @@ .SH HISTORY
 with an automatic variable
 as the argument, then return from the calling function while \fIstring\fP
 is still part of the environment.)
-However, from glibc 2.0 to glibc 2.1.1, it differs:r
+However, from glibc 2.0 to glibc 2.1.1, it differs:
 a copy of the string is used.
 On the one hand this causes a memory leak, and on the other hand
 it violates SUSv2.
--=20
2.30.2

--rrxw2ezuzdke5qll
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRtKQwACgkQvP0LAY0m
WPHB7Q/8DeEvG3B+P5OH/ZAqG9/7/GX+0fPmqBpkOC80VzMYN2Z4RCPoBEnoS7Xj
z3QamCFFeEFs7SpKT8lCy5lcU1kEgSziRCF6QvoQ5IA7Pn9ILSPC5EXHIL1ox+5m
DZVjbf10xc3xdvM6bYr+f5z9U2PB22gAffUZLwusJ3ECTA2XgHZzgl/8xRJB4bsB
ID9SfNUTt/8UCQfsqcFoicFenYklqe5TIFt6Hq4yBAD/9EIKbdjQEk2UGZEFEhGM
awGDmuT0mI/3KejYAvquwgnfs2lUO3PYpBBf8VAfUO6bNU3Sh5TWfPTS8sQqw27v
q9gy7nFZjuaegzEuhIxpdOTicoyPBy3PL683YN/Onbhfo+8EWrsOtaZLm3kIr8Hn
ghTrfulHW6ztj/4dYC7ljrcjLjT+i6W61kbRABw5bcjuHmP7fy162CfXDRNYjf+j
IQQxXNHZzwvLJ5kfCDLy6LH48nTw581mjBWvi4tW5HNl2PVlP05H+vmr0bExHnl8
eCMAWkv3WjGzhdU0kz6Tndlz33+drkxsg36YmssY2zNbj1IL4oVbgWv+QOGBahvt
eBlQarA8kpNhJaLd2NSv2K8DhpD1P33rSmZmJhc0EsDaHAYbVTlAF5ygaUVNtVAz
Wg489d0hzLPsGbNSqS2qRYZUuoi02MYXJrgZ9rLT5qPfE7Q6zH8=
=X0W3
-----END PGP SIGNATURE-----

--rrxw2ezuzdke5qll--
