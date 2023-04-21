Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B0FE6EA1D4
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 04:49:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbjDUCtH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 22:49:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232643AbjDUCtG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 22:49:06 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DECBD2D5A
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 19:49:05 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 3A20E66B8;
        Fri, 21 Apr 2023 04:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682045345;
        bh=zdKV7sjOUyONoCZkGKJ6sFdQ8CD6xrzIGLPud+7pCFA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=INuHMQIgrmmy/ihsqdTMKBLaO7JFOrjgrQWuMajHaVC1h7mTkERuj1G9zGimPfG6X
         8BhGf9cKVMhxohwYskqzpKdH+oJVRsHeGi39IqFpqzwGLd6k7JqzGUWTVokv/B1LhN
         nm+bVS3eZIdfSEahm/R9+o99HxFd6ZwGsuAjhK1oHQHYLLwIeH1tri/yA1YP1UkPhE
         bgSBHiYbfgEmrnta8pdiZHdaJg1q8pdsYgoPQvLMfA1Y9LllalPDyrFZ+vOJA9JYBr
         XrMkqXFsFtFjX0d7lJMoR7zYTcr6IG3JUvZNghDrEqos058fyDCOD392WTi3FjqTR4
         PYLDj6lzMmXQw==
Date:   Fri, 21 Apr 2023 04:49:04 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v8 4/5] regex.3: Destandardeseify Match offsets
Message-ID: <500070a5e10b4a63771ceb729596cf334aefec9b.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5n7cw7c4jxcqxqzp"
Content-Disposition: inline
In-Reply-To: <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
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


--5n7cw7c4jxcqxqzp
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
index 46fd3adef..55fddd88e 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -184,37 +184,34 @@ .SS Matching
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


--5n7cw7c4jxcqxqzp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB+Z8ACgkQvP0LAY0m
WPHV0A//QGl1tUNyavZ40gOU6apTed9eZB1UVj/sQkoQBGNnqGQQM4UhBwqMgAuT
WtPCUhWi6jJAgPgp5wXI/D0x8L3YIDyvYSGAVI/b4Emx6fY+Ihiv8zhGHZgyHlYH
GMQAA4OeU+yviZjVqDJcXN8NlYStap7dkrUuUqfeI5608sntWV69JctQlvcfj/E9
dmqYKBlXygapCg/ho9lX+lFf5erF+yaTiL3dfiI4NAkYrLZNWq2dJCopnxLBOa4k
VZHTjpfsIFO6ygW2eczRoshVYRtDUwFSBB93I2X8W1RgVzcdtlZlggphDYjnVk2v
4dbKeiz3Pl+LrsIs+nNL9Y3CTEeAe5TwySA/5jSzlkHaxE+R4NYKOD+rzFTBHYYl
w6Ti1MBLgtfaQkxxsFR0tC1gRcEzipwGrS4IvUe6M2xiU+PbWTmVp78qyaRLK3hq
S54Z9/RT7kVXC4PUeSWdiaSAQaFXDr5gTntXV6Q0VP5NX//f9RvknE4UEy5xMJcM
E7Z4Fh09yvHnTLw2dQyAC0b1Mm0xU6+TbnwvDrNRFYVMbTFBemHGdK6rRuzKTZ/K
wAVs4Ebvw2YV+rmViaIsw5SkVf+jI0z8K7MAgrBhYxWe4VBpOEQDEXFCX8QGlJH/
QLDKlEVvOXtUaD+WExVFevs2ftAIEJwa3RSi4te1DTpQKocp53k=
=Fbmz
-----END PGP SIGNATURE-----

--5n7cw7c4jxcqxqzp--
