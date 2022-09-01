Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB6375A9928
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 15:40:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233483AbiIANjW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 09:39:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229813AbiIANi6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 09:38:58 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 40DCB10FD
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 06:37:09 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 639FEA06;
        Thu,  1 Sep 2022 15:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1662039428;
        bh=io/pghCU6Ld4E7D0K1gXGAR6pswKD3dJqxvkFKQQLOE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ocp1o2kWac6P5rVAWDxqQUJJLj2JHzvBZHyYI1El2Trc2ULFP2wOXs0IjTVjh+ydo
         Vl8P2o4WWOvIhBCPPAxG8q1nfIPTxcEZey8WusZw57oRcdcn7+Al31mILxo2C3lG90
         PhF10n983MUBU+d2pvgQnjIoIacYh5ukRwm0qltbPzSTyID+hJyilToV7VBxTPrhh6
         fDGaf0KImLq+WNqsEXxsnnMruZwx3y8+ayQz+CPPoxkpGYpNYqFiVEoXjAePYnVcxz
         P+p90Y/UwQ35y4gmzp+DOzehFT4HpQyWs9RDyh2ZPGGpyG6JpSYG1QbZL5LulB3wHl
         jqeaGWuJPZ7jPOStZRltbte7QbM/sBBsHLp9zKUx6eVfZoOO4htRMzSJlxZ8gjFhzA
         oW2pif2nF9Gms3C9OUFhRxRhAXjxc8V2TMelGcZtsS90zH4wi+Kzz+UifWoybojig1
         F7QlTuRAe9V8JPIYBC9bk2aJKTnZALlZvTVAcy9AO/j/Q/C0A9H6Adp6rzib/KXwol
         EZzdY/5wNlttLLb5W/7gQ81oXOTNhCdgT9YJ7KmhJoM7ENqpgNW5mGegH2EJs09wKq
         J5qkAKlOIcN097pDXk60arbA2moht6iufxENnTJQ7ruC1JSitjEver/QLGeOmxEcmS
         INLkFnwOeIThVNAeXZdyq+1g=
Date:   Thu, 1 Sep 2022 15:37:07 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 4/4] ioctl_console.2: document all extant TIOCLINUX subcodes
 as of 6.0 (2.6.17)
Message-ID: <d3c0288e8aafd04f876e43493a31182b46e4d2f9.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="l5s6adn6ycan4p6h"
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


--l5s6adn6ycan4p6h
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
The formatting for
  *(((int32_t *)&subcode) + 1)
probably wants to be slightly different =E2=80=92 I defer to your well-form=
ed
opinions on the topic

 man2/ioctl_console.2 | 43 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index 6532f1069..8317e13a0 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -785,8 +785,49 @@ blank_timer times out, then you choose this option.
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
+can only be unblanked explicitly (by switching VTs, to text mode, &c.).
+(Since Linux 2.5.71.)
+.TP
+.BR TIOCLINUX ", " subcode =3D TIOCL_BLANKEDSCREEN
+Returns the nomber of VT currently blanked,
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

--l5s6adn6ycan4p6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMQtYIACgkQvP0LAY0m
WPGsNhAAq3g/NYh5/FlSCDrLJPUZvK/EUFGLFtXV2hS0ODX3US7kiTVbso028d+8
WWi8OE447xN+Yct5ZZA2TL0Z7Bfv1fUXkH/gNCkACwIKMeVpX6m2+4VHa7XFw1nC
TJ5iY5H0N7sFM1TFO2A/tvxmWg9iR3qFRCt/zgL3eL54rGzmWJmGeKAcSBPUA86g
ag6BzpuvALSL3WjsgNHClfvvhtr/9QrMrODF4eN4sUjoEGXqP4ax7ZUd3SQF7K1z
bsx1VG/GF/CbBmv935x5mCCLjtEGRFRgUzV1em6ZK3f8cOH/PgsTqLhjB7BRN2sI
LeoUXsfANWpEYHGqP2bXV5o1T3WXUWRhp9V4XDZoHkSxGhlHVb/5Y1g6gGgHEP9s
3Jc2N2SoaM3t1lTh7PZIDfnD81mCxen2VOlcZvpS8gXUeLX7g0gpkr/5FAOtNZK5
/VImYN0NJd1y6PaQDWhWGuVJFdLmNjQ3fm5bNHq9fshOLGkIqhgXsmjbaobBemXH
d1IF4vmcnuY716fnKsDUXz8+stnomrasGPmpA2aISgyq0UGreUVQKJJMU5DHR/cX
W7vVNtPZf32kUzSxR1GODq/R8T/qdi8Ff/EoiYW4LXVwEHYd6m+ygVU19+Gx8rMp
7qZlfFsFzIw7AC6NgsKnHv7S2U1zd93h4WA6Lr4kj0HLFD11dpk=
=0fO9
-----END PGP SIGNATURE-----

--l5s6adn6ycan4p6h--
