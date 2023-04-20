Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFBC56E9C82
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231290AbjDTThA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:37:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDTTg7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:36:59 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E15AD40D9
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:36:58 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 3FC1C698E;
        Thu, 20 Apr 2023 21:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019418;
        bh=SyADKChaJf5kTQbsY8SNgaO3dX1qx98GLR/IWT7wX+s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iHl/PPwG3Tsz0BJrNGQn81NvPA9N0AVwL55knmpygF8wR7EOeNNzxuQFsW2XAtgi4
         BDnVsbQj0V//echbQuh3jAgvWBS9ShNYQEYqHO5xf7ms9O3zXQMTDlwxhdXLJDsthS
         ExSkmxzqDl+S6+4h489xCCAyd6u1HzCRJ05XWXvXDwZFD2enNNLU2YwPJi5BoOktF5
         EQ7oO1G3DTA/Zk7kzsDA+xIYedXFEVsNlgK49ZvnB2cFajW3vw5lbUW33e2v2nBmL9
         6Ve3UmbOLBwesflgY5espvKiBqk5Ky2AGOc0ZdwBaJEr4nj16LtfolACup6y166+xp
         fw6Eq1hqr1gHQ==
Date:   Thu, 20 Apr 2023 21:36:57 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6 2/8] regex.3: Desoupify regerror() description
Message-ID: <6c4d26f8988fd41f6b823d829717b824f3e0d58e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="c3jrhibjxeq32oyu"
Content-Disposition: inline
In-Reply-To: <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
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


--c3jrhibjxeq32oyu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 47fe661d2..3f1529583 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -207,27 +207,23 @@ .SS Error reporting
 .BR regexec ()
 into error message strings.
 .PP
-.BR regerror ()
-is passed the error code,
-.IR errcode ,
-the pattern buffer,
-.IR preg ,
-a pointer to a character string buffer,
-.IR errbuf ,
-and the size of the string buffer,
-.IR errbuf_size .
-It returns the size of the
-.I errbuf
-required to contain the null-terminated error message string.
-If both
-.I errbuf
-and
+If
+.I preg
+isn't a null pointer,
+.I errcode
+must be the latest error returned from an operation on
+.IR preg .
+.PP
+If
+.I errbuf_size
+is
+.BR 0 ,
+the size of the required buffer is returned.
+Otherwise, up to
 .I errbuf_size
-are nonzero,
-.I errbuf
-is filled in with the first
-.I "errbuf_size \- 1"
-characters of the error message and a terminating null byte (\[aq]\e0\[aq]=
).
+bytes are copied to
+.IR errbuf ;
+the error string is always null-terminated, and truncated to fit.
 .SS Freeing
 Supplying
 .BR regfree ()
--=20
2.30.2


--c3jrhibjxeq32oyu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBlFgACgkQvP0LAY0m
WPFq8g/9FYbcvvxvlgf4Ro8iv7hZx7LrS+hvUdehp9w/HZiE9bOgntC/5u+zFhkY
cOulddhneUqpaOxFsdq1qGXxdJbUxqs8OUR7VD5A5O5n2s/v7D/AJxFoMM65GrGJ
wnj4ScC+doo16sw3r3jth+LTaiyfS9JoWgBgEHFKSLCePopa9LkiFgFIIn/4hQtm
KFRXq1GzBHDANnt3BDW469igsU3rqiOiI9t2noZtqoSMoZM+75hVFgwxC2RxXSJK
kmL8fzrJpfnWvD7HEBBV2LbnYOTokX7V/LeXIh670+EHjmm9nxG1FDlfKuhQrIRN
IRPpw6OHhpjbKaiHEhEqGluQELqnpVrYCR4K2BR/VXyV81thWpFEAecKIQTd1jId
EfQ/Vq75ggQADxC7xHBuRGBeT8REnMTThnL/MHFe9gVDjqTjSdf4J/gbKh0k6DBA
oSwszmkRIVouQ7cjcVgbeAUXqNjKz3qYIbr1HIUeSapp6xzqdDoUvAA4ibbqxoEj
+LRB00DUUQ6IIVv6OdFC/6r+r6K5FvliI8O9IFgFEmlPFIyQ1Ke6spIuUAVs5q4v
u8kOufOTkVsGIqZ05duFA0R6pxew+Nt5toQwwcqFheUbQuw2z8Di4c5VEhReA5Iz
cpaR0kxBo3MPEWYZzmUbqnU34XPQio16Yq5ISlQq4544jTXEdx4=
=1XgC
-----END PGP SIGNATURE-----

--c3jrhibjxeq32oyu--
