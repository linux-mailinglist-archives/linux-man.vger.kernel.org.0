Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1926354CED9
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 18:39:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356867AbiFOQjP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 12:39:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345124AbiFOQjO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 12:39:14 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E05D24BBB4
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:39:11 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id F238924F2;
        Wed, 15 Jun 2022 18:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655311151;
        bh=AAjNj32DCCW0mK0vp8U80ehy0vA7tTKgbOFVldJ4ytk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=o9QCPlAT58vXYTv+XoTdjr6J1+ZyVKO/3PqpJdLtJFusthvGV323o5vgUNzMb5Lbn
         KmTxnukPXlE3mn9lWYZEU6Sg56GxPxa7eE1ZEJFGAqhHUTHxa/honQcRFTjSsor2YX
         aCzBvy0vp535Kg/fbSxIU2YYR8H6zR1GgYfcztCxrd4gEQnB8F69SuTPtrhGYjeCSa
         DRj277RJWVpxEKzuHM+mCO1A/MJYEmdGm1o5NnOeq4TyrJhqKWj7TAh8JeYDzDPR6M
         tkgD0WOHWWsis5Pd3dJoeQ//Iob5qVe43ZS6VJhkqJSCfqFy1Ahfqh8ufas3b4bBjS
         yBqrXU8uP3CQQSDH0K105yYiPmwkrU3na0QN8jAzFl8BSVyKVw72fP8rbrsrC2LjKC
         x2rWG/KWQpW41x53MgiBSxQUlyW6TE0i3u0dO7bGPA4U18AsMsDOtd/deMLPh/3cSA
         +UVyFnihfGTfIhqXeOhkH4SSK8r+1H9mnn2+Kw1eZKdlNE0FO8kVMkygXKvXeMLUvn
         lTu6i8IG4d+B9vJXTHbdnV6JdTsKaZ9K87GNHnbbI8XA/Wg25+vnT5lPhu1xr+WS4u
         IIziCHB5YbU+SfOUSr2ee6NGgTHXoFj0zz7HdqjtAUHJojTrz5B4tscc50lxOQTT3u
         4UuksrnsHXyNwc+YvJ10SaqY=
Date:   Wed, 15 Jun 2022 18:39:09 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] uname.2: fix standard reference wording
Message-ID: <0029b9581303882ab762b33100cc0ab801417f96.1655311141.git.nabijaczleweli@nabijaczleweli.xyz>
References: <b0a8b39b-f05f-7809-c8a4-f4f84821770d@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kxyqxytzsohls3pj"
Content-Disposition: inline
In-Reply-To: <b0a8b39b-f05f-7809-c8a4-f4f84821770d@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kxyqxytzsohls3pj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Issue 6:
    IEEE Std 1003.1-2001/Cor 2-2004, item XBD/TC2/D6/27 is applied,
changing the description of nodename within the utsname structure from
``an implementation-defined communications network'' to
``the communications network to which this node is attached, if any''.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/uname.2 | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/man2/uname.2 b/man2/uname.2
index 94c9c951a..fa991edfc 100644
--- a/man2/uname.2
+++ b/man2/uname.2
@@ -29,8 +29,8 @@ struct is defined in
 .EX
 struct utsname {
     char sysname[];    /* Operating system name (e.g., "Linux") */
-    char nodename[];   /* Name within "some implementation\-defined
-                          network" */
+    char nodename[];   /* Name within communications network
+                          to which the node is attached, if any */
     char release[];    /* Operating system release
                           (e.g., "2.6.28") */
     char version[];    /* Operating system version */
@@ -73,9 +73,10 @@ So, four of the fields of the struct are meaningful.
 On the other hand, the field
 .I nodename
 is meaningless:
-it gives the name of the present machine in some undefined
-network, but typically machines are in more than one network
-and have several names.
+it gives the name of the present machine in some network
+to which it's attached,
+but typically machines are in more than one network
+and have several names by which they're reachable.
 Moreover, the kernel has no way of knowing
 about such things, so it has to be told what to answer here.
 The same holds for the additional
--=20
2.30.2


--kxyqxytzsohls3pj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKqCy0ACgkQvP0LAY0m
WPF9gQ/+Nwj1Oliejmloh1ZeECe+lm+hAb3LLEqXT/VJq3W3J9ul4SA3n68Y7BQz
6Ysb4t+k1VLwo22xZEhRLV2BrxSMZ3A3MTlj344WuvzQRpTPLaYFabNLzIGVg4Pj
+DaRiZ/S3qLtBVxA+8EqlkzsHP7angKZvnH5t59aNtjYwYr+pZ+pnfpbFIlBnh2B
UVAGeUFDascRvL/6Wecl5rADFi+O4Izmng6H+Xa5CmrLI5c44Ot1acKNUOQdMYNV
mHbvQoK71TQpD1MS9/44s03blMEl280tXQWAXczeyKfyRLeISDKGmjXskQ6t+pTP
ArkdiU/PDZ+Ai+jDTWxSh/VGLQt7KupXFqy/GmNtj4q2Uuwzgp4PmOOax7UBhvcL
OIRm7U100hoW7UVDFn2UVyiVmCmXheP1/ZHjCzLR43L02YQ52WsjBnG0uHd3VIud
fU9WsRr+2uN9MbN+iW/PQFBgpRyc6MZqBlCzgFC5aSMU1lZBAn3twu5fsRlAXQSx
eHLoENnTG07pXU8EglJF1a3Yj4J1AnUYxfaP4DBDzxjNIYuVPHQTleIIBVzDNIOG
3pJqdkNb8q8lOkxLpJJikYUn5Twh/5Q30Eot0KxM0e5rMGBiUPvZdSdqUKScSAOS
q4tvYEJjud3OOKL57f3xj5eFms35Ntdi5qGFOQeiAzSxG5qP1Iw=
=1vGR
-----END PGP SIGNATURE-----

--kxyqxytzsohls3pj--
