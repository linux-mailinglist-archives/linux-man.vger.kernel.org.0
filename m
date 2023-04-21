Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 936E06EABA7
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 15:29:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229830AbjDUN3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 09:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229712AbjDUN3s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 09:29:48 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F0FA6F2
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 06:29:46 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B72FA69AE;
        Fri, 21 Apr 2023 15:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682083784;
        bh=PhZDB1ve0NwjkbALmo3xUxEpPp77gZGUXGUzpYio7uQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=A+NlKCne+w68A6s5uXE6TlQHj+stC8gVP5M05N4QWtM78pHkHSoieJdVs5p/Y9p2u
         AH82jq1nB0LoU4mAUOdkbFSTdP1Lhb9+oNq55eZ05XfYJKT03Exsn0f5iYbBsXLFba
         L86GyCxNlRm6AbkM33QMBC2TnUKhqgTN+6idhsmVDn8cZM1nlLE6Fh6B9fykKir0Om
         dv20rvAf/k9luoyjkbWUz3cG67LWDv810L56pA+YTCGADftR3/k3YcXcp6/iTGDZV9
         4+Z/gQ8qbYAy191KHPYMtwtki7PNnygMw5NAI4qDwuS0Pu7wnU2Md4GNQb0Xo53J+E
         qbURsKq7UknlQ==
Date:   Fri, 21 Apr 2023 15:29:43 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v9a] regex.3: Destandardeseify Match offsets
Message-ID: <5kvfpud4gwcd77wx4nlr65ewh5sih5uykhcz3gujmy47zptn7p@cmue22kbcrrs>
References: <5a9b0a27-03b0-112f-73c3-0a09417d1875@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="z66pblr6z7q2imhj"
Content-Disposition: inline
In-Reply-To: <5a9b0a27-03b0-112f-73c3-0a09417d1875@gmail.com>
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


--z66pblr6z7q2imhj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This section reads like it were (and pretty much is) lifted from POSIX.
That's hard to read, because POSIX is horrendously verbose, as usual.

Instead, synopsise it into something less formal but more reasonable,
and describe the resulting range with a range instead of a paragraph.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Range-diff against v9:
4:  80d247ebc ! 1:  c3e45d60e regex.3: Destandardeseify Match offsets
    @@ man3/regex.3: .SS Matching
     +.I pmatch[0]
     +corresponds to the entire match,
     +.I pmatch[1]
    -+to the first expression, etc.
    ++to the first subexpression, etc.
     +If there were more matches than
     +.IR nmatch ,
     +they are discarded;

 man3/regex.3 | 53 +++++++++++++++++++++++++---------------------------
 1 file changed, 25 insertions(+), 28 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 30f2ef318..8efd21d72 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -179,37 +179,34 @@ .SS Matching
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
+to the first subexpression, etc.
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
+.RI [ "string + rm_so" , " string + rm_eo" ).
 .PP
 .I regoff_t
 is a signed integer type
--=20
2.30.2

--z66pblr6z7q2imhj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRCj8cACgkQvP0LAY0m
WPGnOA/9G65DvkP/nyCxH0MQSXsF5EGBgBrisGRegkI/QhG7JITb1KilBiubJr2b
0/1ci8z5DJI82+WWZyOCaIYJIB8raIiyl+ecpFPoqndAvHzhK/G9CNT/8z+ljBPq
zLUWIGz5+3psQxnSp3wEymqubub3p8B92hB2BWyBOOzh/INp9BMUNHLWprn7bbu7
QNv1xOxIfhddUxzNx34aer3Ex55LBm7j12wfcItrU8cnrB/lmWdsyf4paO9DYd3R
EOuX1PK8SH/eEZi4gIMePL3vBa7dkgXwkFWWiTamMvlPufhwYoW+IcwTGAIq9irn
hi0m4OFxiF+MJF+tGCrrNasNOrskrElGnLzKOseUyTKOahvkucz80v3ZchXnrhgb
G8J3lBtcpsgqLPTKbb3Jz2Sz04MULIBhGYQB+sHwLIrUpJkDuKA4J35m34pVY868
rWOpZoTG0Qk5diMjnCNdPQDHQJ/S1DJll3tf1B14ztFfe1Fpmxa5r0WF2CVc28FD
hJNgLFWIanIFTlDSIFfSauzQVFAGvfbDxpCJYxeC/pk/RExvGarMNF2LaPtpOPg6
YiIVZ8NkWjN5LI1dd5agjvhAZ1ZZ782bL10Nc7JRL5HLa+8xCglsUAirQ4YCQvEu
qzpr4tEiwCNiDiLtl8vAJEGDDFTlPDzx8Fa+8/creuydbC+aky8=
=dMhT
-----END PGP SIGNATURE-----

--z66pblr6z7q2imhj--
