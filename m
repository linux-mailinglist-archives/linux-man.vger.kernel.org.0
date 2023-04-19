Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAFAB6E85DC
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 01:23:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232047AbjDSXXx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 19:23:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232328AbjDSXXw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 19:23:52 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3BEAA2121
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 16:23:51 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8A77565A2;
        Thu, 20 Apr 2023 01:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681946630;
        bh=Efyil7Ubv7dr9PcYQ3MU5jWI4u0ZI2ypI+zKfzbL/Zc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fb+I9PGBHXdR3KMgYJHbNDLVynkv7rKAH/w2gD0nsntg/LjZ3rY/oewUmvtW4E4jH
         IOTv2jD5OuvIreDi/BpCB4NLB/IFn+JdLOdEGrH1KhbJNgvY6qnqxOYHOmBFJ5WOFc
         gbzND89qsMhZQT+vyx5/2y7wjGzjX9zYm65imf4B42/zpFQvAbxYKQcUd4SH3OfQE2
         sSGiLv+L4pl4YBCoLaxNPD37Ymp0ecF9tZeX2fTjQEL8IWRAGs8ekSI4GqLSPj/peZ
         MUYM3hSmuJwvsLtT1J2fcFHmYOcy3NhHz99ibcrhmw0uSRw7MSh0XDCmJ2ori4LwxD
         H7qGrXMF9gwhw==
Date:   Thu, 20 Apr 2023 01:23:49 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 5/9] regex.3: ffix
Message-ID: <bbc587870d387a6cd84adfb8593ba3af28d39792.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nxpc4gx6s6ebd65j"
Content-Disposition: inline
In-Reply-To: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nxpc4gx6s6ebd65j
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use "bitwise OR" instead of "bitwise-\fBor\fP". No other page spells it
like this. The other weirdo contenders are
  $ git grep bitwise | grep RI
  man2/adjtimex.2:.RI bitwise- or
  man2/open.2:.RI bitwise- or 'd

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index b6e574b4d..fa2669544 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -56,7 +56,7 @@ pattern buffer.
 .PP
 .I cflags
 is the
-.RB bitwise- or
+bitwise OR
 of zero or more of the following:
 .TP
 .B REG_EXTENDED
@@ -121,7 +121,7 @@ and
 are used to provide information regarding the location of any matches.
 .I eflags
 is the
-.RB bitwise- or
+bitwise OR
 of zero or more of the following flags:
 .TP
 .B REG_NOTBOL
--=20
2.30.2


--nxpc4gx6s6ebd65j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAeAUACgkQvP0LAY0m
WPFP2hAAqVGEmRcI1mzKgKIDsBf2bQMpS+LxCbi6+moMBna6rcuyzjL7kNLaR0jK
N7ixZIJ0t5h9MvVh3Ci4fOZDmY1hMpvQbBLn5/x+oP8c/FGWRPOMbnluictGy/VT
AkzzcCaxnKEmeRqnJFK8FKgXDzUq8AJyiVoie0l4qrX/wIQYJHUWdAJIFjlUyPwW
siAxhp4kj5NClYFnr5nnDF4fql4t5YdRRRluJ/1gxj3P9TSLVhHlLRvZggI545aO
VSsXufu++6D5a6cng13GTLF4u3v6PXpes8bhm+zBtBA7JCtrWhEyWEMcb+AKx1b8
AaTxF6mgUEH/hZp/8i4Ix2ovrwdd9VPDmT6to8R82Lh/0OqWGKDdUlXPo34iG7HQ
N2gWEbMrVrwLipak1U5bx0Bo6jj3946MnKl+EmALEchiS2Lb05cb4C6/VEazd0SP
0o5RMW8n5aaAIc15TbxSI6a2xuU3IW5l8GxapQPySVVgzfmddQvwJQiGez/+nXdw
lz80jwxvhHT3N5dgRWPFWPrZyWpIjiIYe7RX/V2hSaQ7kzwItiZ0dtX+U48BwEzN
w1dx6YC9wy+a6rQJdi6dtL0x5Xmssv6TQt7YnKRfxlfLAK/zM8kvQIeFRLrNExnZ
fr3d7WDmDXH5j89GzWtatwkXw23usK2fnFLZb1+MgpgdNMw/5Ok=
=TgyT
-----END PGP SIGNATURE-----

--nxpc4gx6s6ebd65j--
