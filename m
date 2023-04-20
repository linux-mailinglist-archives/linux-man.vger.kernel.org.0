Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 070276E986B
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:36:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231656AbjDTPgN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:36:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbjDTPgM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:36:12 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4E24A49C6
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:36:11 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A086A606A;
        Thu, 20 Apr 2023 17:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682004970;
        bh=nptkGAdRfGAvisB2D11Fi9Pxwmt7hVVEIQf+2CrvWUY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LBiBdUdKHfRdtqbFl8iK8sMH8ocOLzDgLrINrzIc5IoT6eLHP5+Dx2aMHrU5ZsDEo
         O8dzPhbBHOzxNAWyXGiUhi+wk4l6MV/z+I6J/TJnVlGhqoVRIjjhJZY+kcwqvtuPQr
         9kD1VXV/DATQUVPxOkYA/GkPmASntUrZOYn0LwbKc6wB18zFpTxdURTRsWhBJO6ELb
         lm5Sxq+nd1k7b1Q29utJnRnPpEpEREJOtP3ATxSREeTO20aY/HFj+r0763/b+cMRi0
         EiP4cZGOjCdTUqmKdDJ2f4nyxW/M5HW/IT4M8lY7KWggkuE8y2NTAfbgCoF+x8PiDa
         d3QQCIgZntDGQ==
Date:   Thu, 20 Apr 2023 17:36:09 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 7/8] regex.3: Destandardeseify Match offsets
Message-ID: <59b8294c8e2d03953eb472380267bfbf125bd4bc.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ylvewnz6d3b3ikfw"
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


--ylvewnz6d3b3ikfw
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
index 75c810c41..ca0ab83df 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -188,37 +188,34 @@ .SS Matching
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


--ylvewnz6d3b3ikfw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBW+kACgkQvP0LAY0m
WPFqdg//eUduNlKbalFuKInOfWWkxvKfYoFBvfU1kKS1s8nJETodmB6+OlNH4GZe
DWyfZgZ1pBs7IUChWtQWljXQg/+0V+gZCoBlLFLuHZZAfShvcecDpL4PM29HWzmB
oeoU5AjsD7/bHKYEDlPdW+TpTrnNF1gPi051toTu2h15A1449muSVv0c5tWF6WqO
lSKYcFM+t2ldj2eppHwjWKVUF0ClH/covjSQvOyVmHQAZHxQe7DuYQgneJEye4vk
g3E8M3/rTtWQ107+P/lv0QooMTbmm/RwNNSNNycIaXwtJczdPWlFd+BXSAQOC/gd
+BHvoaRDA/nujg7dnmuRY/zmP/QVBdYEPuUhK2W0M7+EuhcQdpWuPgBX+hAZK3GB
Vie0p9QK91i2RNbmreSx62MUxzI75FT/FeWmVpMJ8rAVhaVaJC4GUFAD902TupJz
akXWjj6n7DizMQ+vsv7MID40BLu7U7TTvsnoyE2duEKd7W5jQ7Cf+QLELb5bstet
5kxERc/rrOCAolgXc5lymd0rWEr5e3r/YanzZxZR85sxVlVn7p4RVNxCk6Nv++5J
BiIovgtmlF1VBuyyw02ZscCUgnctnGhDXkUl1uG0NWAApNeZXuLLvRxOkan4T1CR
v2gB8yWGWn+Q17Isuc+IjAOrJTMkFUMPYS3pYYK4bhudj5SKFok=
=ZKN6
-----END PGP SIGNATURE-----

--ylvewnz6d3b3ikfw--
