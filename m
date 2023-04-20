Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59A736E986C
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:36:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229660AbjDTPgS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:36:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232073AbjDTPgR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:36:17 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4AE4B4EDB
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:36:15 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 95BCA6910;
        Thu, 20 Apr 2023 17:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682004974;
        bh=rDbhR3EjQfiw0jpoqmy5V0mvJn82V+qwTbi4IplQ6Ws=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VOKyci7p7fsVaqWbQSl2Oyk+0O3GtZ0iB1okgEMtgg46jl1w58nOIPizqygx1kPaD
         Ef3v9YyIR/qkKAkNvm7fxpv3/P03wZg2dMpenXt/OOB+5I1POr832PgKZG8k87oFMC
         G6vfvHe1JSrbRJDgdIqgtmxu0bYPhqC/qjvuI1IdwCKXApn3H/7yMuHM8xnvKC0HlI
         tSfJrpUjbDqH0nq0GonvyxVvcUuaVFeF8PJnv4QeJNXOnAFbnNBaeZixXnnRLohHMt
         08/cQ3nFvMTMOwYw65UrzjDw2F6T5/xeUaRqAMIKVavUEN5AgMsvBIibGhMC5QHAHP
         TZEOpOU/Momrg==
Date:   Thu, 20 Apr 2023 17:36:13 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 8/8] regex.3: Further clarify the sole purpose of REG_NOSUB
Message-ID: <2e199fc3c4fc4830b32d00ef614dd64fe38eb5e7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="koen7pdpsm5asn6f"
Content-Disposition: inline
In-Reply-To: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--koen7pdpsm5asn6f
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index ca0ab83df..66d9c6596 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -96,16 +96,14 @@ .SS Compilation
 searches using this pattern buffer will be case insensitive.
 .TP
 .B REG_NOSUB
-Do not report position of matches.
-The
-.I nmatch
-and
-.I pmatch
+Only report overall success:
 .BR regexec ()
-arguments will be ignored for this purpose (but
+will only use
 .I pmatch
-may still be used for
-.BR REG_STARTEND ).
+for
+.BR REG_STARTEND ,
+and ignore
+.IR nmatch .
 .TP
 .B REG_NEWLINE
 Match-any-character operators don't match a newline.
--=20
2.30.2

--koen7pdpsm5asn6f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBW+0ACgkQvP0LAY0m
WPFeKQ//QSA6LzUoEKFQdWRhece6gNkKdRygHbG+sHdXtAMx4FEP+OO9wb+Mwcnf
SZBlIgT5KxxtQ1O/A+iNrJDsy8TL9tXj4+BHnm5ENvXRyIP8m/4l+98aLNbFV63H
OBPhV48aXjcuJA6NK4KtBghC1yH8PWyttrieHfq++SRhSXb90pUCQqZvmqJvjlfr
NefactrGFsj/glzn2MrazXpQVIzjB71jxr+qzIsNKJ2Si34ZsxYaeXX8hwisjFPQ
KeuFkfJ94sVBQifG8b1Kpk0c3MU1rKod09p0M63je7IbW5pSzHQmUvySOMIN6U8D
zPaDRTnDCXJSxZj3HKKd86BfjZNqlfC9j5El2JWh+Wy09njpAPupG4m3VlQN4Mcz
3E+c+dKzKDxm+EjOqONokCvaZKoa/RSdFbEsdwhiJa6d41wApWKhOWsYCa/t0Oth
Zsl5tjsyzbdIGKDxNZUvT2aoqNN09DdlU7FV0T0K1gkCfMlIx3E0DYzDcpQ6o0f/
3SqGsuhE1E/VUVOjCac54uQys+iuoH3ayA+1JhdtoH7jAlPFvFb96ur1pjIBL3eI
Wz46HbYXUO1/8hlDpu49TA2f8KctUhoi6BM78edsU15O6uyRSIyb+hhNlR3mcawr
C9FUXt1bR86UQQEAHtsQNLy2FNJYgfZiRM+fGPH48gj1oLCiuwE=
=9ZDk
-----END PGP SIGNATURE-----

--koen7pdpsm5asn6f--
