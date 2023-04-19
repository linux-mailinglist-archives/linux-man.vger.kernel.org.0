Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0222D6E809E
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 19:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233298AbjDSRsZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 13:48:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230043AbjDSRsQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 13:48:16 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3C7917EE4
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 10:47:56 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 698D8659E;
        Wed, 19 Apr 2023 19:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681926472;
        bh=Sw8IkAH8QePosk+atWnCYaDN+tgjpX2cB5HT62N47eQ=;
        h=Date:From:To:Cc:Subject:From;
        b=U0Q7U0WT/WzpxQ3rIZXTn02TWjLKqZK7hQ1YH6gqaV3PslH11Stl1lTMEIAZQad7j
         RaMT/qWI5KqIg7bC7w0pZU7Z9chn9HOBXi7R1IFpFQFg03Ii/CFbYJua7oCQBwlJo+
         N6vl34LTEyMeyy3TikV/b0aQgFZ3oZ13YWk1wnuv5AG9EtKbLNV6I2d19LXUSNr2Bz
         HIr4rDivb0JxTSzuQx+i4RYJJJZyuCQFnZBPvO2DxCuIQRdnmwnkW8EjuIZTh1GvoV
         N3M9doQLVdW3egLjRDM2BnjwfXlAF97mtd7zLFHOHmo5K3XddkVme/2O91gF2qLmsB
         0jiKsNYgOHJJw==
Date:   Wed, 19 Apr 2023 19:47:51 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] regex.3: note that pmatch is still used if REG_NOSUB if
 REG_STARTEND
Message-ID: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5r5woaqwugrk5fah"
Content-Disposition: inline
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


--5r5woaqwugrk5fah
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Also note that in
       int regexec(const regex_t *restrict preg, const char *restrict strin=
g,
                   size_t nmatch, regmatch_t pmatch[restrict .nmatch],
                   int eflags);
pmatch is [1] if nmatch is 0 if eflags&REG_STARTEND.
Or, more succinctly,
  regmatch_t pmatch[restrict !!(.eflags & &REG_STARTEND) ?: .nmatch],

Doesn't really matter, and that's a much worse signature than what's
currently there, but.

 man3/regex.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/regex.3 b/man3/regex.3
index e8fed5147..d54d6024c 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -82,7 +82,9 @@ and
 .I pmatch
 arguments to
 .BR regexec ()
-are ignored if the pattern buffer supplied was compiled with this flag set.
+are only used for
+.B REG_STARTEND
+if the pattern buffer supplied was compiled with this flag set.
 .TP
 .B REG_NEWLINE
 Match-any-character operators don't match a newline.
--=20
2.30.2


--5r5woaqwugrk5fah
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAKUYACgkQvP0LAY0m
WPFQkg//YrClrT2VSlWOnuRip4hBlcLJCL61zv/BhiOwO6e8qw9JVMtX/hPHPKuR
QB00/ndbpp78diWncjMTlcTmFMQTNrtAn058Kx8rCnypLOWLDl4qGCQpM/r7ZTaL
OMvxO7Y5ipeAxwIdx6fJeeaP9Un8/ei5VWxYKBuUb/RUESy9au+iDQGYnCMk6GVD
BDWY0vIHgeR1YokklXIAwl6XMNKdN/vTiXcz9iTCRzfa2RWfcYI9Pt4iR/MaZxt4
AyL0+xpPRXE6zEy6W5yvnwklWBbcXLErZdsifQBFV5a/uOXwgCO8VIESzeFouian
7x2kFCozcdapJVeUeTDGLJI1iEj4HR0V63kdzQkPLzqtOrnQSjrCq6xO2uA1B7cy
GersSCZCZlRTYCCdmSBfMcOvXY55KdZ+iShV8n4r3mAIJA8oDBb1w+/1YvXdfEqy
Z7GLxUJdMNMlSeETlxjhvZf7RVzK3QyejSDJ6cnVMr+WqSpXRWtiGjcoVhOE5fHh
2sETcEWcHZJOfX3kX5TAix8rjEF0LQrlcET4Q6YBXwaNufiJoUZ2ed8n2NxfJb6E
/+L0mWM5GIJyOFDuSC6dH2T5tnBxu0Fp7f3y8djHdULr26XZqGEDeg3VbVV4bwf5
4Xw4vONM1HOU6+6YYfwFoKRXUghCO9tBfb5nw0wxaiV2fm9QBqM=
=mgVR
-----END PGP SIGNATURE-----

--5r5woaqwugrk5fah--
