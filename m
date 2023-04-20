Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 274966E9C89
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232054AbjDTThZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:37:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDTThY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:37:24 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0396C40CD
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:37:23 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5A6BB60F6;
        Thu, 20 Apr 2023 21:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019442;
        bh=i50Thd+GWH/M0KIrkGokxOknYVhNBRqA6+lw8m7wMxg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Vvil993tAJZMUMOi/djAkKCEvTUAHE3qCHEWiPYZFI22FLdTSlwonmqtcwRuUka+N
         OPGcEov/sW5s5fkGoRYlUrdwM84Kaz9tiPXhYBlqTPXzurphoioYowR7TZhMZ544nO
         bpvhlYjBiFlc1N+HyF/7ngnishBZ5X78EKwiTv2fsPEplYuQft+WoAhYErtcmMFgCM
         FAUacd0Jr9CyK7FhRDRS/CEjVXbzSQPUJp+Sw967YvETHLfaIDjrbcMSvOavCKj3Xb
         s3x+UiP5GtGZltvTr043vTDzCiNObB+CBxXLWQnaF2FYBjUMxA0VcLvpSPkVA1u86P
         /aRDnu0oNU0Lg==
Date:   Thu, 20 Apr 2023 21:37:21 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6 8/8] regex.3: Further clarify the sole purpose of REG_NOSUB
Message-ID: <7fa6694812bf929574dff3248d2fa6a54e1340ca.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="peksy4zb4reyqh24"
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


--peksy4zb4reyqh24
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 7b91f5b30..4c450bd7f 100644
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
+Report only overall success.
 .BR regexec ()
-arguments will be ignored for this purpose (but
+will use only
 .I pmatch
-may still be used for
-.BR REG_STARTEND ).
+for
+.BR REG_STARTEND ,
+ignoring
+.IR nmatch .
 .TP
 .B REG_NEWLINE
 Match-any-character operators don't match a newline.
--=20
2.30.2

--peksy4zb4reyqh24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBlHAACgkQvP0LAY0m
WPEWzw/9G/A5FNxr2YgQNlWWTc1S9RVibGS74DjLXh9GMKLGTo4qPndAycpq4E3u
zIlsI3Z3dj5yoYs8rUcNyCGhgwB1ctk4dWP3WQAC8cGC4PK1hcZu3/CxjoOfS7QP
c9hbQwrBzMWFF/N9WuaIephrdyuvkN3SVCrIsMFaUcNr4RyZEQR1A9jBM5CPkWrC
ti12OCntoKPbtvFikggMxWIJk23YdvzIUNT5S3AS4YHmByksE2O1U5KFqi0C2/Q7
Kl8ahTMdl/rZTrZ+ZEZo0O8ppPfLySoTsGZGDoOM8vqIvxi0cWDmS0das3Xd095I
u2yB4lPgjVEz4TVhDR1h0qDG+jVuRzSPWJPxLf+eKqU1TBmJt7iLfHDsl/0mudEm
yvFv8ee+47TJHA5QXj28fpBuNJ/X194J1yKgo/rHojwa4p8kR9/uHfusci67wn+S
mOy9f1ZhDcB6nYzDL6hW28KM+nyzb5mui6Pr0PwKXR0CRTMbSFvyelD9katFDVr9
3eUSwWeIg9nYK6j/M+zFT+aSzAMeiz6UONVAXPTT8TQiAl4mXLyiYW0XlkjQtUm6
dTCLZ5akivos5l2pIplJWZvDEFaQo79blDOcFTj5Pyrj6/oMjgJGVghZ9aXTProy
sXaciMf/J6+ZOh7oQBEhABuHBZx9uFMHpokAyAKPZeGvzm5A3Yo=
=1KpK
-----END PGP SIGNATURE-----

--peksy4zb4reyqh24--
