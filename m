Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1B4C529056
	for <lists+linux-man@lfdr.de>; Mon, 16 May 2022 22:44:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbiEPUIT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 May 2022 16:08:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348906AbiEPT7D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 May 2022 15:59:03 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 64984DF11
        for <linux-man@vger.kernel.org>; Mon, 16 May 2022 12:51:48 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B4089248;
        Mon, 16 May 2022 21:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1652730704;
        bh=5s3HN5OjAD5cCSxhpQFKMPPtGKK9LyxRE1aCc1JctaU=;
        h=Date:From:To:Cc:Subject:From;
        b=PoQJ26rqn5zlsFFM14D4ekvFt5NvAwVZ/ZyLmZ9Rnmgd/i8DDtL/at3CKQp+hn5As
         5kzY41l5pmLusCl8yo4YePtxNKcI78cuklOQvaAA+f3Ffx52NBzWBM/VcGXoQzzkZ7
         zFbIFpC5L8FGWgIEyiBFWjNzX3NnZu6V5bDQhizgOOB8Ivhu3ZJu2XVduqXvwjcQW5
         mYaUjNb8pl18wDcyp2Ta773wLQH02yTbJ/ObiT5wheM7tg+VppRmZwGSyZlh2fXA9f
         ji/VqajuoIkfZHklsPHrNmezCmOPMmS5cGZf6nC3uqwYveM5jJ8itcshxot4OE44x7
         I8Ga6KbWx/Wog==
Date:   Mon, 16 May 2022 21:51:43 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] fseek.3: mention seek-past-the-end semantics, defer to
 lseek(2)
Message-ID: <20220516195143.kry7o63pmjyiyhpk@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ynefui55jbiidjrc"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ynefui55jbiidjrc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

If the user is unfamiliar with seeking semantics, they may sensibly
assume that seeking past the end is invalid

Reported-in: https://twitter.com/eatijr/status/1526264195808911361
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fseek.3 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man3/fseek.3 b/man3/fseek.3
index 01bd34c5b..c19303421 100644
--- a/man3/fseek.3
+++ b/man3/fseek.3
@@ -118,6 +118,14 @@ On some non-UNIX systems, an
 .I fpos_t
 object may be a complex object and these routines may be the only way to
 portably reposition a text stream.
+.PP
+If the stream refers to a regular file
+and the resulting stream offset is beyond the size of the file,
+subsequent writes will extend the file with a hole, up to the offset,
+before committing any data.
+See
+.BR lseek (2)
+for details on file seeking semantics.
 .SH RETURN VALUE
 The
 .BR rewind ()
--=20
2.30.2

--ynefui55jbiidjrc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKCq08ACgkQvP0LAY0m
WPGyqA//VLytEVtqFOybl6Q/5oQidwav2/ZEePARRW/t+Lpuqlah+94+oNlHG4rC
5dtQ3PY2I8d4bcvCwmO67VuPpPRXQJ79u5ZeZWr4xuH7iOvR/SPs2SteT4EqZDWg
/IA1mk8cB7LoixwLVHNBnnToZq/NXLYeJWJEXxUGfPgyQzlyTABW2Wg6lp4LP0Zj
qpeeH+loK1p4YnCanjvB8TCHnJxPNCf6rC7K4QTiQVre7VwnTNOumOn/TLUT8rHh
G+KTxSCjCb8+ULCVq0RXo5wknA4+eUsHTRwMrlpfQyHJFkCQDD7JcmKrLZvpstOk
BuIqM1DeMdi23D4dClX+Lyi7E6qAdo65n7z/lPCng4EjaqJ1UmcIBzuKtcHkFyYx
CSSFs9+v5c9wwcSVHRHyuzNwKZGJ/Fq46bEVUeQSamcaaNnUitIQ+XrTS1gd5cCG
dftPwTU5NIAiUcihx9H8t3Qti8CNbryFxyFnSkd6T9uQrAP6OjPJ5HUw6QVl1g0g
4L7WpNl2mTjfWY1dZ5yIzjomo+rZkQepuCiIhCgn9DcwgxRdnGYUoJgn+vQfxFqc
lqhk206L6Xt8CE9tM7iSVbYeYN6C+QEkodVtzUa8ymQK9Kbwm6JBbjDtmiQD5ABB
McpJcL94IvVBDUWXSbsfJZpJerfao8uiTcAifXsPz3CWuCzbw0M=
=6KMG
-----END PGP SIGNATURE-----

--ynefui55jbiidjrc--
