Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EC6449A675
	for <lists+linux-man@lfdr.de>; Tue, 25 Jan 2022 03:21:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346170AbiAYCCG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Jan 2022 21:02:06 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:43794 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1837235AbiAXWna (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Jan 2022 17:43:30 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 643A43610;
        Mon, 24 Jan 2022 23:43:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1643064198;
        bh=1nIhas8/xROm2+o1cZkNlaFT8hSHTmd5vCAbuvB92Zg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Pvb5TfIIUMzARBl+HZiY9qm4Dr52/fEN3Au8sXWWBV22GfTjpWH4tzyPO7dbUzvl8
         d8e28rQ60Y1C7/w5MXg/aeVqWZlRWQ30TZyVgb2CFMrqJhiQmwgsgEKtnILsS6Ofie
         jiX1I/D86bS2K6K+asiy3dmooAwpL0nzcf5lK//J0W8SRxtXP+Zo83LEmBBcHYw9uq
         o+dhNeeHS1j7B5yx6beKodvxKb3rP0Vr5J3C7CdsqZKhe7IeqnF3GijG4+F3IcjK2N
         rIDdtSZFRqBAaUCcQ6KSWxmtJv5IIQQXPz8fvtLUozIPbC0PtQ6bjmHlY7D2X/ZiA0
         Tge1S5hnQPyyQ==
Date:   Mon, 24 Jan 2022 23:43:17 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] strsep.3: port strtok(3) example
Message-ID: <2e4b6b15b6533b067aed6df1a2f4bf077c5d5184.1643064165.git.nabijaczleweli@nabijaczleweli.xyz>
References: <20220123002121.r6lldjw55n6zvcxi@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="aymxx7itsdifvvvp"
Content-Disposition: inline
In-Reply-To: <20220123002121.r6lldjw55n6zvcxi@tarta.nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--aymxx7itsdifvvvp
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
v2: I accidentally a word in "multiple delimiters or empty tokens"

 man3/strsep.3 | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/man3/strsep.3 b/man3/strsep.3
index fb5f7fd1a..3ce4fc35d 100644
--- a/man3/strsep.3
+++ b/man3/strsep.3
@@ -118,6 +118,56 @@ This function modifies its first argument.
 This function cannot be used on constant strings.
 .IP *
 The identity of the delimiting character is lost.
+.SH EXAMPLES
+The program below is a port of the one found in
+.BR strtok (3),
+which, however, doesn't discard multiple delimiters or empty tokens:
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

--aymxx7itsdifvvvp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHvK4QACgkQvP0LAY0m
WPE0jBAAtDosiNjN5mJSZBoBYtB4VoieBIZlVbPldkAgDz4tAURGs2Kzlmvujv8s
cgtmBJPnF6g/+cdOARgxOB6X3BZepg2SvJNjQR/Pe7j19T6mojoF1/wTZhqw6J4F
HT+sx9FU+SmS89hcaKVeyxDB7v71ewDyn/6cT2Cxoc7gpsefU+XZrCdHd5QoZGjS
n+3JpsAuXfaxkr1+0fyPaxXywjRhSf2/32duec3OBmvBSSwKv2U4vMbDqTDjs3J0
2GxvV4cK5m4sL7OoJ8z/dB9Dbo2SWHPvRmSBcSTGrleoKaucdo5fo5yhFVDLmSnv
WSymL7mCDZTX8zXPgTK2sPXK0GO7yrhtOzkgJ6zFf7VDDvJLH2By8pinacEXKklv
8CrMp8lPEesHBIXUubIbNqkKS4INNVAMca4WCVpHG7Y6/0gzLnSZ1HFhoaPPYXsv
bqgftuFxQyQ/wmtVa9ZixJMbsN+K26hxyXKmQCOjIjPEwD2qpI0XcZvkY22H8KEJ
slseuMbeaELUpONWlOrljHBVvxASW2DRt8CyjBZd8rvXgz36DJkxh01s59y/qzd/
j78HyryerQMh4nH2wkRpT+zOlAoNaHyhTjB9UfpU3ORef/81zHf6bcsp9UjaJJa7
2YQgULSzPCi7bkDyZXiXzJQWhxVMLx8Do/Yg598WvPc02Bxacgg=
=eUo2
-----END PGP SIGNATURE-----

--aymxx7itsdifvvvp--
