Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 502ED6EAB03
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:55:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232135AbjDUMzl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:55:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232065AbjDUMzk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 08:55:40 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0E186902A
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:55:31 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id F2E5562E6;
        Fri, 21 Apr 2023 14:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682081730;
        bh=A5isI5cvFDpWx9x/RhiNtkPdFrf1A4uZN1AULEs5qjA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CY8yRaYpgjEh0J5rHVlq1X62BC3yt8uGG5cpafzl5Z76QuN2vigSqjD1WcIfhb+5k
         Zsdjzk6QqgLYYmof4/y+a7MNIRgpqWGQDm7BqobBznOULox/OyBksk5jBj9H1gbH+o
         YxDwGRtzVJwTMUYwk+Zd5I4ty1au4b2IrOv3ZCchO/a5PnQeWqObZUwQH6JCHBW//o
         O1YGHT9RH5UNwGjP3o9rk1Mhkj1feUwYI3yfgoatgJF190BsJGq2wmmCql9gL/vzc4
         o+1HHZvx14XiXdj7g7KAIbZRiQyp6odtNN09fzBhfddXaBW0ImYSdtJ8xk23daHRPt
         YUjBlgvOX/Vbg==
Date:   Fri, 21 Apr 2023 14:55:28 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v9] regex.3: Destandardeseify Match offsets
Message-ID: <udzii4h7tjcbrum7rmfewz2h5gkmfrbruh4hbkgj4wg6je7qxh@hzf64s3dpnph>
References: <3522d12e-de7d-11c4-c5b4-80667e3b2b0f@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kjgwpudgszf2mmhd"
Content-Disposition: inline
In-Reply-To: <3522d12e-de7d-11c4-c5b4-80667e3b2b0f@gmail.com>
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


--kjgwpudgszf2mmhd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This section reads like it were (and pretty much is) lifted from POSIX.
That's hard to read, because POSIX is horrendously verbose, as usual.

Instead, synopsise it into something less formal but more reasonable,
and describe the resulting range with a range instead of a paragraph.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
This is the last one.

Range-diff against v8:
1:  4479e1572 < -:  --------- regex.3: Desoupify regerror() description
2:  bad307847 < -:  --------- regex.3, regex_t.3type, regmatch_t.3type, reg=
off_t.3type: Move & link regex_t.3type into regex.3
3:  edefa8a5e < -:  --------- regex.3: Finalise move of reg*.3type
4:  500070a5e ! 1:  9af6c6b7f regex.3: Destandardeseify Match offsets
    @@ man3/regex.3: .SS Matching
     +Each returned valid
     +.RB (non- \-1 )
     +match corresponds to the range
    -+.RI [ string " + " rm_so ", " string " + " rm_eo ).
    ++.RI [ "string + rm_so" , " string + rm_eo" ).
      .PP
      .I regoff_t
      is a signed integer type

 man3/regex.3 | 53 +++++++++++++++++++++++++---------------------------
 1 file changed, 25 insertions(+), 28 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 30f2ef318..aae31c1e9 100644
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
+.RI [ "string + rm_so" , " string + rm_eo" ).
 .PP
 .I regoff_t
 is a signed integer type
--=20
2.30.2

--kjgwpudgszf2mmhd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRCh8AACgkQvP0LAY0m
WPHoShAAoJpS1zAMJeNSilHmyLq9FAeETziYtqMPf5vS/OUu5wuusji8X7fMVKAg
H3m9MAbb1w9Kwn7eyBSroPaxzgcScvE7OCqTfHw76pcLb9RXnxzXib7yhUBeMM/l
pWZ4GpxHXC78q1LT7G8rN/SrYum2djFaNp3ecfqRPfCE0XY6gIB7XiitvXdaqcHi
uZdmVTjosPxjE57qygx/j0Jmh/ZoDqqejvmqLsLxilM6gEAXWHl+JafXErvp1sEE
xJRsRPcwPq20mPp0qXy7gnPPNMLv85eWHYSgQICtjHqjiBnYrxMMRjg7hcwemlQ2
/3OMSdecd+LvQTFxA679OkjOXMOq8phIlZfndUyR/0UMMHEFDRJk1LduxMJF5Sfn
MPF5SoqIBehovWsPz3ugdsRfA6FL2/zpY+lWBjDxwyYwH9grwgwTjEubfUfJ4pOy
64u71tfa/Gk4j+JUcMLRvg/8Iji6WW5x1ifCTMr4Y818JX9RgLaUqhYJGtln0Q0g
SY5iZ+uVjL8IeSGpUvMpGGKgvZuqfdVtFfe7KBi2SoVTi7W+KJ0EH4VVB9kQHFHF
akNHmx+E0BK4aoxkDjGBEO0ovwFDgjG2c888pw3rwa0afhUO/kyT5+zL8w+HC/Q4
UhFdNeYq7QEegpBOByNVVbj0eCyaI5yA8rkZubr6e19JTyC9/i8=
=+py+
-----END PGP SIGNATURE-----

--kjgwpudgszf2mmhd--
