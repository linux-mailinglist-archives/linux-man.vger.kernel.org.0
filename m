Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 746106E985D
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:35:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbjDTPfo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:35:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbjDTPfn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:35:43 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C0AA91736
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:35:41 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9EF1464B6;
        Thu, 20 Apr 2023 17:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682004939;
        bh=zshHX5dAwmN3aJhwQkW3oNGuf7qs2wHX75FAlcMywo4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sSkG3V9pX1AxXf1/LlnHv0NqfBO1vCure8slMNYcFjVTri30Zn5gmXtZ0mSQUJoU4
         5W9FIoHm7XdgjUI2VdXiP0EmJ3dtHFF4Nux9dpuuNuF08PLG7KdEUAmDuGspF6T16P
         DsBAzVM+s8xhRbEjT3qnLK4HvVXVz9j2YgxCmZLGDSN69etdU86HFgKKVd5yTUKppV
         X+hkzvUU7lIMNtoOAb6F+4U65iHOl+d8IAyEKX4c7VHI5WKwpFtV3yi/VzCKercvOD
         g4VtCANdVqesgqgL7pQ//UbGOQ8MxQyc47Lp38MVuIlrQjVV49I8dql1G1NQn753AD
         QG82KXh25taCA==
Date:   Thu, 20 Apr 2023 17:35:38 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 0/8] regex.3 momento
Message-ID: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dkyehhoz553gsse3"
Content-Disposition: inline
In-Reply-To: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
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


--dkyehhoz553gsse3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The range diff was again soup, I think there's something in the
interdiff tho.

8/8 may be clearer, may be not.

=D0=BD=D0=B0=D0=B1 (8):
  regex.3: Desoupify regcomp() description
  regex.3: Desoupify regexec() description
  regex.3: Desoupify regerror() description
  regex.3: Improve REG_STARTEND
  regex.3, regex_t.3type, regmatch_t.3type, regoff_t.3type: Move & link
    regex_t.3type into regex.3
  regex.3: Finalise move of reg*.3type
  regex.3: Destandardeseify Match offsets
  regex.3: Further clarify the sole purpose of REG_NOSUB

 man3/regex.3              | 250 +++++++++++++++++++++-----------------
 man3type/regex_t.3type    |  64 +---------
 man3type/regmatch_t.3type |   2 +-
 man3type/regoff_t.3type   |   2 +-
 4 files changed, 143 insertions(+), 175 deletions(-)

Interdiff against v4:
diff --git a/man3/regex.3 b/man3/regex.3
index 552763940..66d9c6596 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -52,7 +52,7 @@ .SS Compilation
 .BR regexec ()
 searches.
 .PP
-The pattern buffer at
+On success, the pattern buffer at
 .I *preg
 is initialized.
 .I regex
@@ -96,16 +96,14 @@ .SS Compilation
 searches using this pattern buffer will be case insensitive.
 .TP
 .B REG_NOSUB
-Do not report position of matches.
-The
-.I nmatch
-and
-.I pmatch
+Only report overall success:
 .BR regexec ()
-arguments will be ignored for this purpose (but
+will only use
 .I pmatch
-may still be used for
-.BR REG_STARTEND ).
+for
+.BR REG_STARTEND ,
+and ignore
+.IR nmatch .
 .TP
 .B REG_NEWLINE
 Match-any-character operators don't match a newline.
@@ -161,7 +159,7 @@ .SS Matching
 .TP
 .B REG_STARTEND
 Match
-.RI [ string " + " pmatch->rm_so ", " string " + " pmatch->rm_eo )
+.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].rm_eo )
 instead of
 .RI [ string ", " string " + \fBstrlen\fP(" string )).
 This allows matching embedded NUL bytes
@@ -183,7 +181,7 @@ .SS Matching
 remain relative to
 .IR string
 (not
-.IR string " + " pmatch->rm_so ).
+.IR string " + " pmatch[0].rm_so ).
 This flag is a BSD extension, not present in POSIX.
 .SS Match offsets
 Unless
@@ -349,6 +347,20 @@ .SH HISTORY
 type or a
 .I ssize_t
 type.
+.SH NOTES
+.I re_nsub
+is only required to be initialized if
+.B REG_NOSUB
+wasn't specified, but all known implementations initialize it regardless.
+.\" glibc, musl, 4.4BSD, illumos
+.PP
+Both
+.I regex_t
+and
+.I regmatch_t
+may (and do) have more members, in any order.
+Always reference them by name.
+.\" illumos has two more start/end pairs and the first one is of pointers
 .SH EXAMPLES
 .EX
 #include <stdint.h>
--=20
2.30.2

--dkyehhoz553gsse3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBW8oACgkQvP0LAY0m
WPHmkw/+IYfYDLLnXdAERWN1szQPYVef3tx6KbcA5voPonjalrbxIhIWRMo6DCxr
ryFkZjcUROIDxJaXOD3BmEWxjBLKmpM9Hzmi0I2c3geMk7aqdw7qoY6V3YV7k1qp
8gJ5u5vvhAD4Nu0nKbR3JOS03OUTRv90OEhlUsZBbzzd9yuzZdpc0mjudo2c4EeE
9FFBZd/efC+0rw8iw0feNn3bzuI4xJ+xqeuYXIAtJDAV53Kak9Hdpy4dV0EOGdEm
6u/k+2X2omBpKD23/IAY4BwujszaWxw+IIAQmLknL5q7M7awwlzUcBpxFzsAmw4D
Uf8Jpc12EGRWS9mPcaGwhuRint4mULrpIUAS1GFJUnHFqd7JCjC+Q8ak5dOb85JY
Sp/L04ghzqSHO+Cu7jajjtwzs/uW+1W8f3A8U52KkSme9NPLcSb1hS+5oq/BXSao
hyV8kmQYkLfxQyUoYFQNdSobVhtUMqpPc8lg48ylzs3GkUL7/RO2jxilrnnilT6T
SlrlAk/bWFAPuhCSzkar8vNH5FDrgrmG5J80YIHQDN7VyZtrknt+3H3Nuvp6jzBz
73NRqvx2tLsmY6BgV7Mas3u90+W5cuw4OtK0NYNqP9+giaqqSTbbmD1oslMRDupH
RrS+UHxFMFzI7CsFPhuYft8oT9ObFaQF1AmwrBkcWo6ghPzRzuQ=
=CmCm
-----END PGP SIGNATURE-----

--dkyehhoz553gsse3--
