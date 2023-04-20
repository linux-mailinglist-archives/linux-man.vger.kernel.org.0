Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5424A6E93E9
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 14:13:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233993AbjDTMNY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 08:13:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234002AbjDTMNX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 08:13:23 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 63F495B98
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 05:12:49 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9ABF1637E;
        Thu, 20 Apr 2023 14:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681992732;
        bh=p3vBwj4QuoYYDJEXKguuR/1zvfDg6/3AToGGa6D5hjA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=q8j+1RIPH6IYSisaf+rnuRTPLK+KlCaX9xKZZrvuHLSrukXfUnAx0i0AmSfuNe9yW
         OfKrj19vPKItbydkQKlo7j61n1RzO5KuTdeT9nibYWWWAZHjHPcQvTY+53cZFoHogy
         qBy1sZly4RU/VfU4ibGDX1q7JPoM2g/tq2HplTXuZahZIcW+n+A+V97iqLiSyVIVnq
         tljLP6LdvrebsuTKh7GwXtIgYsuZ7nry+JZy5xbbxzIqdS/to9GiLOdysmF/PZQlNg
         OVWqIl1TRacD1WV6AM8Gd64h3G2vBE8WpM5KgExezE31Q9Pp6WXWDvqGcbd1I223Ib
         EYoM9VgpfL0Aw==
Date:   Thu, 20 Apr 2023 14:12:11 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2, syscall.2,
 regex.3: ffix, wfix
Message-ID: <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nzmjn4wvjshyq4jj"
Content-Disposition: inline
In-Reply-To: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
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


--nzmjn4wvjshyq4jj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use "bitwise OR" instead of "bitwise-or" (with fonts).
No other pages spell it like this.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Range-diff against v2:
1:  1ccffe37b < -:  --------- regex.3: ffix
-:  --------- > 1:  830173bb5 adjtimex.2, clone.2, mprotect.2, open.2, sysc=
all.2, regex.3: ffix, wfix

idk if this did anything

 man2/adjtimex.2 | 2 +-
 man2/clone.2    | 2 +-
 man2/mprotect.2 | 2 +-
 man2/open.2     | 2 +-
 man2/syscall.2  | 2 +-
 man3/regex.3    | 4 ++--
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
index 523347de2..40b05cb0e 100644
--- a/man2/adjtimex.2
+++ b/man2/adjtimex.2
@@ -90,7 +90,7 @@ the constants used for
 .BR ntp_adjtime ()
 are equivalent but differently named.)
 It is a bit mask containing a
-.RI bitwise- or
+bitwise OR
 combination of zero or more of the following bits:
 .TP
 .B ADJ_OFFSET
diff --git a/man2/clone.2 b/man2/clone.2
index 42ee3fee8..ec43841eb 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -413,7 +413,7 @@ mask in the remainder of this page.
 .PP
 The
 .I flags
-mask is specified as a bitwise-OR of zero or more of
+mask is specified as a bitwise OR of zero or more of
 the constants listed below.
 Except as noted below, these flags are available
 (and have the same effect) in both
diff --git a/man2/mprotect.2 b/man2/mprotect.2
index 52c14da05..5a829dafe 100644
--- a/man2/mprotect.2
+++ b/man2/mprotect.2
@@ -43,7 +43,7 @@ signal for the process.
 .I prot
 is a combination of the following access flags:
 .B PROT_NONE
-or a bitwise-or of the other values in the following list:
+or a bitwise OR of the other values in the following list:
 .TP
 .B PROT_NONE
 The memory cannot be accessed at all.
diff --git a/man2/open.2 b/man2/open.2
index 77c06b55d..b5aff887c 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -123,7 +123,7 @@ respectively.
 .PP
 In addition, zero or more file creation flags and file status flags
 can be
-.RI bitwise- or 'd
+bitwise ORed
 in
 .IR flags .
 The
diff --git a/man2/syscall.2 b/man2/syscall.2
index 3eba62182..55233ac51 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -235,7 +235,7 @@ nuances:
 In order to indicate that a system call is called under the x32 ABI,
 an additional bit,
 .BR __X32_SYSCALL_BIT ,
-is bitwise-ORed with the system call number.
+is bitwise ORed with the system call number.
 The ABI used by a process affects some process behaviors,
 including signal handling or system call restarting.
 .IP \[bu]
diff --git a/man3/regex.3 b/man3/regex.3
index 3b504a4d5..3ee58f61d 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -56,7 +56,7 @@ pattern buffer.
 .PP
 .I cflags
 is the
-.RB bitwise- or
+bitwise OR
 of zero or more of the following:
 .TP
 .B REG_EXTENDED
@@ -121,7 +121,7 @@ and
 are used to provide information regarding the location of any matches.
 .I eflags
 is the
-.RB bitwise- or
+bitwise OR
 of zero or more of the following flags:
 .TP
 .B REG_NOTBOL
--=20
2.30.2

--nzmjn4wvjshyq4jj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBLBsACgkQvP0LAY0m
WPEkLg//bEO1vzp2IHYJS9uA4QAl+JqRZV1hahd8VEJwDn+zIbEbPyvQNZNAFzpg
xyDwCRr/h9Ya3vHbG+xuLjxXK+brZF74PylE3J66zCntGvcsi0g3dnMR1XGU5+Dl
NeomBDDcpLPHbgSLcGnat7UeWWOjBbL4vt079ll/GINTbaiB4r/2mgwDr3JOA+/M
82XVfnk77ybZSvkqZrtUDwWfKJHIZWtnwleaYgMc5k4O8hK+FMiPLJ0G9uXPhuDv
qrXpNLgben2bMlQwJPyr3EmCXHAFfTYH8HakIg5yj22KXNHBtuImmRTWz/BRZ3cD
zMF7Efz+0HK/FVcqBp3qGLaZbAHYtD6AwoeRSIHC8oo18jQpQHeGH9S+b0VMy/YN
jjsTSthzXdMqWBY7mkTjwolwToL0HvYo0IpcGL0ItDx0Bs+DnboWfksRcWR69q3J
/bA95k1r+eVzQbFCwdnl9bANX0rw/Xn58pUHqUBQvg4JdD9geMrsUtPdAZd0Wjol
euUp733r0mHQQvJObapDOopEb/tf3hNKH3ExuIVHxNXVLb047nKjhga0URe25uHs
sWc/I/11GBX6mt3UeEgIYAPnwI5JZvYdUiQUBs3ayKQ98jHnvl2SfF+MzUgAAmH6
KETFlz7L+xxPEPVp1Z4Brfbp0oKhzt0OwdAQ545vuw84q/JdEFE=
=7H9Z
-----END PGP SIGNATURE-----

--nzmjn4wvjshyq4jj--
