Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A24A06E954E
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:02:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231250AbjDTNCl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:02:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231166AbjDTNCj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:02:39 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9510865A9
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:02:31 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 916DB6624;
        Thu, 20 Apr 2023 15:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681995748;
        bh=hwD0GXC9iTNnNdRyYLGIEHSYtNtxGsN6fferQmwi3vE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lqGrai57iSS9us1J5DfM6gJ/B/N+dC0cplBG9blUg/DdKYKMhtFdHlCMfYX+zYhEv
         HPdAQ/SM9PTtfqeZjD0CznutygUmCGGbpBYL6ZQbXz0iJejRpgbdcy4AxpY71fXdVc
         xJN+QJlKw5ittbM5NJxocd6++AO5UeSWeYsDsJqiLDpulkqeGx6WovAnDt/w8MflIL
         uwjPT5rK4Tr5fHXXFaDNia1vd1//rb1WvJrH0le7+30Fz13L0YCRPIg4Zs9idiKq1S
         GguBQI7doj2U7ZpW8naHxb3sxdUN39ipz5SAgyznjLIPbgCyuqb91Wt3bjFTvJA3wI
         w0ShL2h2lWiEw==
Date:   Thu, 20 Apr 2023 15:02:27 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 6/6] regex.3: Destandardeseify Match offsets
Message-ID: <9b1790334c6f1367f7ea63c8e2ce04d2ae0f9eb7.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zhavyfk7ybplllmv"
Content-Disposition: inline
In-Reply-To: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
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


--zhavyfk7ybplllmv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This section reads like it were (and pretty much is) lifted from POSIX.
That's hard to read, because POSIX is horrendously verbose, as usual.

Instead, synopsise it into something less formal but more reasonable,
and describe the resulting range with a range instead of a paragraph.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/regex.3 | 53 +++++++++++++++++++++++++---------------------------
 1 file changed, 25 insertions(+), 28 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 6d203fa22..552763940 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -188,37 +188,34 @@ This flag is a BSD extension, not present in POSIX.
 .SS Match offsets
 Unless
 .B REG_NOSUB
-was set for the compilation of the pattern buffer, it is possible to
-obtain match addressing information.
-.I pmatch
-must be dimensioned to have at least
-.I nmatch
-elements.
-These are filled in by
+was passed to
+.BR regcomp (),
+it is possible to
+obtain the locations of matches within
+.IR string :
 .BR regexec ()
-with substring match addresses.
-The offsets of the subexpression starting at the
-.IR i th
-open parenthesis are stored in
-.IR pmatch[i] .
-The entire regular expression's match addresses are stored in
-.IR pmatch[0] .
-(Note that to return the offsets of
-.I N
-subexpression matches,
+fills
 .I nmatch
-must be at least
-.IR N+1 .)
-Any unused structure elements will contain the value \-1.
+elements of
+.I pmatch
+with results:
+.I pmatch[0]
+corresponds to the entire match,
+.I pmatch[1]
+to the first expression, etc.
+If there were more matches than
+.IR nmatch ,
+they are discarded;
+if fewer,
+unused elements of
+.I pmatch
+are filled with
+.BR \-1 s.
 .PP
-Each
-.I rm_so
-element that is not \-1 indicates the start offset of the next largest
-substring match within the string.
-The relative
-.I rm_eo
-element indicates the end offset of the match,
-which is the offset of the first character after the matching text.
+Each returned valid
+.RB (non- \-1 )
+match corresponds to the range
+.RI [ string " + " rm_so ", " string " + " rm_eo ).
 .PP
 .I regoff_t
 is a signed integer type
--=20
2.30.2

--zhavyfk7ybplllmv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBN+MACgkQvP0LAY0m
WPG1Yg//QmDzSxpje3tqFxkv9vjmnsfQAjeAYgmlYotSjnIII/Igi6j0v6aIpPlb
/Cz0sQF9eaJCG7d6JtRokvpQQzzhozc/BBPC1CYPQcsvx2eqN/wiGJzV0qv59olM
ovOOaYbe6Dlau0gGGllY+SG+P7GY0d7eK3xOgtnukpKE9yJ1SdN96YgvogatLdpq
JlCmIy64FwzeCKPFSPF75pjgnILkOVCYEsDaa3uD6U8Jwf/NHv1sdOipPHUlMGnk
ReCJSSDpUKbwvJjW5MiEYguLGhPTbEqHRRD7ONcmfvlkhqLCR9ZKc3NEuiqUSVkh
yD6ht1lR43txN0c/xxFUxjbTnCmx/a5oS5LbGSqnyxzs4UaKVVhR/mO0avAJCWz3
mKwKGriBAfFBEEXbXTw5DBlR/FY/uCROtjRGOIA8qoQ/QQWBL2Gz1MD7c7pYMecG
CCifw0cbYYQAMhLjimnEWccKlH8az7Tbf5Gh6XtZgCB2z1RHiwiJ6F+CbIKUJvjK
s8V0Osp3znxlt3x6dgAfOvarGZ3nU+dkarlSl7grINqwOap1Yja+nSNI/kQWxVbC
V4v1Ycat206DMIuYR1ZoBQBJeXydpmoFEMBlqp1aQhSha5oR9MtpwUNH6C/TlORD
oCg4cnDsqXWjhf15hVTPmG3HiBuuIqvuBbySw/VqMbtAuGkgaIE=
=Mfg9
-----END PGP SIGNATURE-----

--zhavyfk7ybplllmv--
