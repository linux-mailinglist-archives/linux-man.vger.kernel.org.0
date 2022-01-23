Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67E57496F3D
	for <lists+linux-man@lfdr.de>; Sun, 23 Jan 2022 01:21:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbiAWAVY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Jan 2022 19:21:24 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:39646 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S229477AbiAWAVY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Jan 2022 19:21:24 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D310B2DE8;
        Sun, 23 Jan 2022 01:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1642897282;
        bh=i2URFAs4991Kv75ij18owIdAC9VY+8Xs2XX9tn5Ju6o=;
        h=Date:From:To:Cc:Subject:From;
        b=BnJVejeRZgz0BOtN03KrRXC76WLYYm80tN2L/tRVoqd9hheNntxtaLMJWw9gfdHn6
         jP/HfKUhm4KxggnPpZ8MIfq/Mud6lR3zJ9OptKCPg98iJlF3xme0JqbxOB6PJbXoQx
         MpXXwjFAPXWcdAFu5ZorTcf9kw6K1O+B7ftGT0hjIpEX0X6Rdok27mBQPlT0vdh581
         YhtnSKe4sfPvsJwfGPfW74fr/M5YLYeEbdgHEuFCA/dkjb7G9bGlryk52O+n+oySvg
         N8JMHJBkvYo43CrM0TE5WQFAO77agayHzsxfvtdFilLuSNM5Ka+EZi6x/DyiKh9+s9
         AoLNjh+HgWz6w==
Date:   Sun, 23 Jan 2022 01:21:21 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strsep.3: port strtok(3) example
Message-ID: <20220123002121.r6lldjw55n6zvcxi@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="f7h7ptt2g3y3o4ba"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--f7h7ptt2g3y3o4ba
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Each time I use strsep I want something like this;
this serves to snappily highlight the programming model,
esp. in contrast to strtok_r =E2=80=92 I elided the long
(and, frankly, gratuitous, even there) argv explanation
=E2=80=92 if you need it, you can read the original
(or the usage string, or the seven-line main)

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Program builds clean on clang 14 trunk with -Wall -Wextra,
\t -> \et fix included

 man3/strsep.3 | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/man3/strsep.3 b/man3/strsep.3
index fb5f7fd1a..b86cd1a54 100644
--- a/man3/strsep.3
+++ b/man3/strsep.3
@@ -118,6 +118,56 @@ This function modifies its first argument.
 This function cannot be used on constant strings.
 .IP *
 The identity of the delimiting character is lost.
+.SH EXAMPLES
+The program below is a port of the one found in
+.BR strtok (3),
+which, however, doesn't discard multiple delimiters empty tokens:
+.PP
+.in +4n
+.EX
+.RB "$" " ./a.out \(aqa/bbb///cc;xxx:yyy:\(aq \(aq:;\(aq \(aq/\(aq"
+1: a/bbb///cc
+         \-\-> a
+         \-\-> bbb
+         \-\->
+         \-\->
+         \-\-> cc
+2: xxx
+         \-\-> xxx
+3: yyy
+         \-\-> yyy
+4:
+         \-\->
+.EE
+.in
+.SS Program source
+\&
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+
+int
+main(int argc, char *argv[])
+{
+    char *token, *subtoken;
+
+    if (argc !=3D 4) {
+        fprintf(stderr, "Usage: %s string delim subdelim\en",
+                argv[0]);
+        exit(EXIT_FAILURE);
+    }
+
+    for (int j =3D 1; (token =3D strsep(&argv[1], argv[2])); j++) {
+        printf("%d: %s\en", j, token);
+
+        while ((subtoken =3D strsep(&token, argv[3])))
+            printf("\et \-\-> %s\en", subtoken);
+    }
+
+    exit(EXIT_SUCCESS);
+}
+.EE
 .SH SEE ALSO
 .BR index (3),
 .BR memchr (3),
--=20
2.30.2

--f7h7ptt2g3y3o4ba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHsn4EACgkQvP0LAY0m
WPGGdw//aUsC2jADwQVp7KHQQcvFQsBOD74ap82XwQrxBA/6dFxqXo95xsWpCnGu
I79LhvcxGs67DCGzqcq5AzwumVSFYUJRKQ3G5lYvqGtsnpM5fcfyOf0NjDj1v/YM
Fz5ka6GbL6RE/ebHTzFxAiTi1ETsZAZxpRTonKfdoAqt82n5aSeUZlaikiu/9R07
9CXELQb7Bhh8ukEGhXLQ9ug8iX1gvCTOG9EBuIF/iNavbbzqSsxQ69aRj890snWK
E/OPmzsrCiKh8SqrbfBhqptA5LAC4Xr/FUbzQzM2MFbJxs3RBGVEnk8V4f8Xyx29
CzLpjdRNdOXhxKT8nnbw3M3dRGnzjQrwnM431zaWa81mEZvQDWiIkevR0qSQYnY+
vHm4oz2bDFOCfvLeJGFVkDTOZ7nhM/Ag9yc9Kz+EmJB6PWj7WNSY7IMsbNjLmGzt
c6Gkdmk71leGLaWOf33aT8UwAR6+VeBQ9nlAX4i88RRi405PbKujaJigq5SMtHUO
d13k5qjCoBqyRuQt4jNz82/l78j6yBvuhsTvy6HbpGPkD8Gr2jIKPhob3QoBrFV2
8bx/STJwYaNAOOlFc1mxDe+WARgNtUdbINacUuqjVn7Lj6o5wFwFYbJgSNwbWFyd
Gwwkl6ImYWd3oMrWmTkeWHwXDu9rgDtqDAtwOnpjKm/d2+ok0DQ=
=xhpC
-----END PGP SIGNATURE-----

--f7h7ptt2g3y3o4ba--
