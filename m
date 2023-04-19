Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E76B46E85E3
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 01:25:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbjDSXZy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 19:25:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229700AbjDSXZx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 19:25:53 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A09A3E4D
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 16:25:52 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 01F9562C4;
        Thu, 20 Apr 2023 01:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681946752;
        bh=Mbz4A7X+tP6ex/Omhk/6cLTSyi4MUAqrv4/4RtShWn8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QBjg21Po+0rhHDlCvLsnuPt42kIny69jH40YW7YuVDLBulSsvJNIe0yshE1e/t8Wc
         LGxg/tmCP16x/uggQIK6tdOII6srCcVFOXEnLco0f9O/xDdpbdqUQNYHxPK1WBFap/
         pdcoFw3yFtudDjF3jeOxjorr+5+dD7RAFDFCqq/wSTzsLiAiNkr0isCw6XJSKDluWr
         QFpslDy4mSDebHf9mr7bDxwLIB0v5qSjxneG2gzAkT6yIsBaT6YyHBp+Hd39IAXKt8
         nvp9jMfwr4Frmr302VkvYliV/V97fvZhublBklVVelIwsyp2V9apBwzGaPFIKd9xkE
         Z5FbHzZqMbPWw==
Date:   Thu, 20 Apr 2023 01:25:50 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 7/9] regex.3: destandardeseify Byte offsets
Message-ID: <74e4b0c767be9c4cb185af5ac0b51902293ad0e9.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zlg6v2v4vbd6u4w6"
Content-Disposition: inline
In-Reply-To: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
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


--zlg6v2v4vbd6u4w6
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
index b95b3c3b0..9f262f985 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -198,37 +198,34 @@ This flag is a BSD extension, not present in POSIX.
 .SS Byte offsets
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


--zlg6v2v4vbd6u4w6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAeH4ACgkQvP0LAY0m
WPGziQ/5AdvBjmUJ3ASOl2J3u3bDaFu/7muAUH5TPfpuZAjcIsHv7I+VkNR02aej
/cfoyXi7Z7gOUvF3U5NrVuZ6y6B2fnn2GBtLdulY+uN4Fk9fCMJhbefat8TdzlZn
8t77W9i67po57TmA8vVEvRBQuqp/zJb7efcRkkCpGDsjFoZq4Kv2oa/wN0xokl0+
S/vl9uyf+a6rZPu7km0XH1bdYzunybb4iIhXC6gkken04PZgkyHfs9OA9rW1H4D+
VGM0vL3EbG/Oqho55lZyImGAQrf0lxhS3QwxlHj55EIS2AeDcK/E+UE+HFjfsvYw
An/1tc7YrQZFbQTiF9eZz1aNU7NwjhUfvg8iFcYnpNrC7q7Fhbs6hKaYxdt0rYoh
ZCT+NFIgCXcSz1mz769QKYO5255P2LlQNojCWJR2QhwWZSPz5E6YKWHsDozlMrLN
XUyUXzqTjly7tfvV8h42TeSHeVboEblBVNS2pkfE56yWFoSz9A8nsbTXZnzZxTPU
Ev2haPLxItvGlvi5swOUeHT3T17IatOE0ZWBmIi5+RodZumVp04nK0rtDtb+HVFm
kX1aNfi7TnG77zvsL2Ja3nvAg0wimiGJyOtMrodgInZ6ozA0QGQVKaQ0qQjTkL01
DApdJNwCL30g1B9UfYSG9kGQfslxgMGxoq3zg3bN2QpxpR5zqGM=
=MbfI
-----END PGP SIGNATURE-----

--zlg6v2v4vbd6u4w6--
