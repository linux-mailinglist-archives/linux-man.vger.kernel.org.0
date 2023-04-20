Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C590C6E9C88
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:37:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232050AbjDTThV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:37:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDTThU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:37:20 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1B7C230D4
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:37:19 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6BA5F65BA;
        Thu, 20 Apr 2023 21:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019438;
        bh=6yT171liFZypPiJv49RnWA8gslgCIgJI7253FG6BqM0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Hckfb3ZBQMHc2rXoeq0mxZugTWlmz+fP6qtTAzQzrWaGpb0zuQGU2gcmqJKDDOyR6
         LmhX/GIp6ZO3HG5X+r/5vx3OpVtrdH7o4ng3HcSjA2+HSgglCpDE52d47RQhhDrc9q
         dQUsxoRuUIlMxY1cLB2ONT9eVX3rslybGIFm9v/2W5h3YkPCDlIuOK0Ncpyl8/z5p6
         ESZ1pKaY1nPH/i3yPE0KR8WTaBgd4q6lDdYk/XVHmkL/tfYiDB8Z0eRjlAm/OYx2Sx
         /YZ4GGR7iPahQTpj8l/8lzuhxgCrwJ9CgvGGKXwIfeM6jzXk5Twt5MGqo58nLGZHat
         zsolVMM3PtGFw==
Date:   Thu, 20 Apr 2023 21:37:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v6 7/8] regex.3: Destandardeseify Match offsets
Message-ID: <3313546db9902e516f05ccfe20f420e97987626e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="schalwyql36r4ws5"
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


--schalwyql36r4ws5
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
index 2e9bb13ff..7b91f5b30 100644
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


--schalwyql36r4ws5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBlGwACgkQvP0LAY0m
WPH4kxAAmAnypJeTVvYu9ydaSO8aEilvOYSYhAGyqDSUzzPYV0IMOeXFzTNGuaBo
pukORk0fzCf1kHoDW/zsfpPff1xZuPIS2o8BHsTgwcafwm1RRTfjBB5773aEbG66
56XXIUMEgodDFFouRvbe56vLMv+0TZY+WnSiXxUnLrMjBtpggmts7CdUXBa0eSaN
Sj653KkLD541d7Z3mLKMasZpK+rLrpHC9TzpVdw82NbwharH5lTl69WqxBV/EFWA
DLgaY5cM5XqUz+n1vGHLOyi6ByAl0k3sclCVhMa6inx/GgifZSfHIRHJjn8X8xSR
rX6NbcNp1ZELKDopT7DdHzQyZxsnLoAZBc4EdUe5GaU2kjnhgg4NfhcwaFUlauTc
npEwfCitDyhLny8sLadEgFRWViKlofxObI5ehfzKszs/UcD4MlAZlZ8G8xce9Vi1
CF9gIR/O2lDqOEKM4Pfd49glfxYBQXVXQG1+kqECwqiF7V+B+pEfu/bV9aCPPk5U
HPM4EaZb0rPxmXurqk/xuzObyIplkA517y/0RVQiyPB5PbjwpLZSbG4nYei1VuX9
qvT2SMp5gWVuAvGS6bk/EjW83yZ+YoYRpRhDwazeaBukXobvqPLRozkPGyyrbZmJ
HlBYOuzYqfI8oHW48gn9VXb2X8YCy0byxs1pKKk8RU4YEHj8Dwk=
=J4cK
-----END PGP SIGNATURE-----

--schalwyql36r4ws5--
