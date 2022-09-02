Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADDB55AB343
	for <lists+linux-man@lfdr.de>; Fri,  2 Sep 2022 16:19:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236431AbiIBOTY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Sep 2022 10:19:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237531AbiIBOTJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Sep 2022 10:19:09 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6B16DDFD0
        for <linux-man@vger.kernel.org>; Fri,  2 Sep 2022 06:44:47 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id F0551C88;
        Fri,  2 Sep 2022 15:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1662124038;
        bh=rkiCO45ENIkx3yFpgluVMGTFWUSdpWOfUhGxjGaJAsM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=utJFekJuMZfia0LPXLn83MroFkfyLinfQ6pJ5Z2h7fPOCoYFcHRUjkB7/ObarQxqY
         G08/QFgMrdKHJBDmSWmnxms10twremFKoNaR12w8DfbnMpWolu6S2FkakHvxb7votU
         2hzRM+e0j12EDeJE2RgBvZ25JaOANiG2h4uKRNAJZ3cAPMWDFCWrO+wAyBAiG92+MM
         bHqHRtJ0RQ7ECF0Fro1dA3qHmNgYD9HHWbLU7uMzu4pao2Rl/+pk8BpmFaJjt26t+I
         yAxZlx9vJb6zJddgFyrF8IvT7N0kZpITNyiaGHpQhJgEMGNsoSN0sOLjp4I4j+XAJn
         nkOaq/WlkvxcY0i943774IsWnfcekPb3F8hf7liarMsgJgVqtY7B7n5DdxIKsPfm0l
         IrUL3/m2zK7GC0aLTx14XQWKMw3IuKzwBjGF7r6ATAcDe92c4jc08CVMgt3GcBg1iR
         w/WYHPEzjaxGnr5xH+VFZEjmk5d0nW3PZOsKIYpg5fkkAk4R5dX6MiUOio6JbMIppr
         qsPrGn8ICFXeKz0A2Kggp+dNpp7WvrrMm49DLKgw+qYsRLpItVYDLBJj3tq374mMsj
         zy28AoD7KXvKDjyb/tqJ7sKKtz9QUH/zMtHg5q6Y1zK0QpVfar7XhJ4fNiC6XqHeEI
         707WGpSZhv4cY3bugKe+OE+U=
Date:   Fri, 2 Sep 2022 15:07:16 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v2 4/4] ioctl_console.2: document all extant TIOCLINUX
 subcodes as of 6.0 (2.6.17)
Message-ID: <2c202ac5ba2df3cd94bcbb9b11f1476924d44b83.1662123938.git.nabijaczleweli@nabijaczleweli.xyz>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="46ycztt2db2enice"
Content-Disposition: inline
In-Reply-To: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
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


--46ycztt2db2enice
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
v2: with corrections from Jakub

 man2/ioctl_console.2 | 43 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index 0c25edf67..145e98081 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -787,8 +787,49 @@ blank_timer times out, then you choose this option.
 Powering down frequently will damage the monitor.)
 (Since Linux 1.1.76.)
 .RE
+.TP
+.BR TIOCLINUX ", " subcode =3D TIOCL_SETKMSGREDIRECT
+Change target of kernel messages ("console"):
+by default, and if this is set to
+.BR 0 ,
+messages are written to the currently active VT.
+The VT to write to is a single byte following
+.BR subcode .
+(Since Linux 2.5.36.)
+.TP
+.BR TIOCLINUX ", " subcode =3D TIOCL_GETFGCONSOLE
+Returns the number of VT currently in foreground.
+(Since Linux 2.5.36.)
+.TP
+.BR TIOCLINUX ", " subcode =3D TIOCL_SCROLLCONSOLE
+Scroll the foreground VT by the specified amount of
+.I lines
+down,
+or half the screen if
+.BR 0 .
+.I lines
+is *(((int32_t *)&subcode) + 1).
+(Since Linux 2.5.67.)
+.TP
+.BR TIOCLINUX ", " subcode =3D TIOCL_BLANKSCREEN
+Blank the foreground VT, ignoring "pokes" (typing):
+can only be unblanked explicitly (by switching VTs, to text mode, etc.).
+(Since Linux 2.5.71.)
+.TP
+.BR TIOCLINUX ", " subcode =3D TIOCL_BLANKEDSCREEN
+Returns the number of VT currently blanked,
+.B 0
+if none.
+(Since Linux 2.5.71.)
+.TP
+.BR TIOCLINUX ", " subcode =3D 16
+Never used.
+.TP
+.BR TIOCLINUX ", " subcode =3D TIOCL_GETKMSGREDIRECT
+Returns target of kernel messages.
+(Since Linux 2.6.17.)
 .SH RETURN VALUE
-On success, 0 is returned.
+On success, 0 is returned (except where indicated).
 On failure, \-1 is returned, and
 .I errno
 is set to indicate the error.
--=20
2.30.2

--46ycztt2db2enice
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMSAAQACgkQvP0LAY0m
WPHgHhAAsf4VLdItzXeTwiav23WocgJvFBTFVKPy/pRIvLDuhpV5/WqfIi24l4aj
JSdcjHL3WgFMP10vZ/8v19GI4OTfwZX7ZRDuBE4h5k2Q7LBGB7UX8Td2uE8ocqRs
OFoB2nSKdvXKbd3s8d+YmO702298t5RE4zq2jIf8V6/EpXAe710OwqLM/LdAGoHh
NjDUbIp/yiCSfexY9VMxKel46TErPAaGBHWg+GfsmCjxVQTc3vHWi8GRmD7p7gg9
WBE+V4wBln5j7KlcbN1JoBoKg9lU9WEa23o8SRcfiuo5d3Wg4WqIBl52gByBu3Xi
sA1BDxSO6r3UdJkB93iKmqMS8hPIQbKaaVB0nbgIo8kKOht1kbInUyDdHi/hEOlu
S7P8j9IYZK8w24bsQi8ZsKHAVVtb4NyuzUoL2kf6oS/KqfQ4wNkacTxypL4/rrBI
NrU0qp+yOJ6PlhTjDr00sKu+7Qt4BDGtUdNn4d7A3NLGwwe9FrIx1zTnVVlIl7t1
QGL5qPmAfO4TosEhS8MZhLG/GioMcJVwjrVnyjYSfihWT/ENOm26WptC2Vzd5T95
5P4k9Hpoi5ZoDFQvfdKvk3c8T8ZpDgJR8d1Nv8SYcD9WRrEvSNBsOU+3G9AmRjDI
0uu3640arxs3EPmiR5p0NuzeEApup+qrrhlOpM6hq3K0FyOCBaM=
=dxbR
-----END PGP SIGNATURE-----

--46ycztt2db2enice--
