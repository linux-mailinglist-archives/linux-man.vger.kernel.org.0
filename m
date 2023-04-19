Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 918676E85D7
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 01:23:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231401AbjDSXXL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 19:23:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232409AbjDSXXK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 19:23:10 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9524C2121
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 16:23:07 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2B326605C;
        Thu, 20 Apr 2023 01:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681946585;
        bh=rsC4GYHqCI+nvyz4b1tofTQCuNB492QrOrUhRbYoG2g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XZmdlmx1zmpcgAh2weknXyqf+lwFjNezb3lN8iKwhjBmkDa9gxNbCUIAx1eSRdp0v
         EcdQMK0p7YZPh7VlXP+Rg23P9RShICNCxfd3og+1jfmeYmxwZmAg1yMeaiE5eGNeoQ
         7M2DjS2f1WnxH7wheXsDcWWogBrMIv9SLW2QAPtRsd6S/wm0H1lH4/UvifMnk6JndQ
         iHePYUqHDrsqKEU2jmK6IAPa0pQ52ihnUWd5nCC9MBQ9qLfdlNqeiaDwtjQ5yuQEh7
         jY0sLSTXxhRJ3bUb2TWjgkKHvT4XG9S62FENmX2+SK3eyoYPQIjoj4V8gLA4Klcsnz
         12eO/NVcq+hbg==
Date:   Thu, 20 Apr 2023 01:23:04 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/9] regex.3: note that pmatch is still used if REG_NOSUB
 if REG_STARTEND
Message-ID: <3f514fc8ae3b38c20f693752d47c46e4fa3236f1.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vbnnvbsbzl7vrbkp"
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


--vbnnvbsbzl7vrbkp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

In the regexec() signature
  regmatch_t pmatch[restrict .nmatch],
is a simplification. It's actually
  regmatch_t pmatch[restrict
    ((.preg->flags & REG_NOSUB) ? 0 : .nmatch) ?:
     !!(.eflags & REG_STARTEND)],

But speccing that would be insane.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
By the end, I think I get to a regex(3) that I don't dread opening
(and that has all the info I'd want. who knew there was re_nsub?)!

The main issues here are (a) it's full of standardese, entire paragraphs
lifted from POSIX, or very close to that, and the POSIX dialect is
hostile to human life^W^Wbeing effectively used and (b) what reads like
30 years of people adding stuff without having read any other part of
the document. Almost everything repeats at least once.

Funny moments outlined as they come in the messages.

 man3/regex.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index e8fed5147..d77aac2e7 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -80,9 +80,11 @@ The
 .I nmatch
 and
 .I pmatch
-arguments to
 .BR regexec ()
-are ignored if the pattern buffer supplied was compiled with this flag set.
+arguments will be ignored for this purpose (but
+.I pmatch
+may still be used for
+.BR REG_STARTEND ).
 .TP
 .B REG_NEWLINE
 Match-any-character operators don't match a newline.
--=20
2.30.2


--vbnnvbsbzl7vrbkp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAd9cACgkQvP0LAY0m
WPHscRAAg/V4QhsVwnBXL3kEUy7aIZ5Dy+T85AGSiKdUoH9ovAiw/WoI2EPWWWHN
jIH5YCF5amOFSs+3So0UPXJERuNzKQOehO9t5F7TKikL8vKsl0+rz/2gXERN6lof
DCUEyKV6bK5zaCNjV5KgKZUflqVh9hBpVhI6dX6TQ6+Tao0GK5HZlHBtDr4E5I4L
DWPoj5pFfs3iqzXBJ3vLcw5Y3UwDS5D9SC8v0hy4inM4aT14TwSYFqrFKq3U1PzK
HlgeE9sgALJ9v92asRHPSf0+c7Xl4D1N7F7RNH2+0g/LM7RxmgMPImStD2Tn31Dp
qvLA2Et+2co3p6cfvQNbgm41lZA2jud/hyHz0kLWTtYEvYmJ8zO/huq/dadd9XOX
mIMwls/EgY148nhKrJN/Pau5wZXN2sXC8/czRiiKHdvahLdAtcNLM8VXKbs1bIlS
v3NrvR4hSME7PzJpOdq+xbmcy1ny3CBaI8tl2Y7/mhc/XDz6iLfIc0fRTDhoobHd
jeARfIp9mDAC41/RAih6FpSWCRfe143sWaBCBH8HDHgqNqgWrWDOvcVN4kgq+dRK
mTnsvp8Wbey7oYKASz4V9e3eL3RYJoaBO2pn8/MUhcSs6bUaa/M54mOtOsjro7wC
KCoL7mgPfG7z+MkQQcNAKtcBBF+ke2bzO6FwrK+k1/4+es7Qq9c=
=9oK9
-----END PGP SIGNATURE-----

--vbnnvbsbzl7vrbkp--
