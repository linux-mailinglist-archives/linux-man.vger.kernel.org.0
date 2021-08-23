Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04AA43F5289
	for <lists+linux-man@lfdr.de>; Mon, 23 Aug 2021 23:01:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232609AbhHWVB5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Aug 2021 17:01:57 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:53694 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232401AbhHWVBz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Aug 2021 17:01:55 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BCBF8360F14;
        Mon, 23 Aug 2021 23:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1629752471;
        bh=cFWfJQKbPjpZPwKmSlVtafTe3ELtdXUTRQc1jPIquXc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tpfKmbnvlkCb7AZyD0Htm3iQneUUDLV4hRb693h5qQFlG5uDK6HWiZ0w9x+bK5og0
         Dy8/m+XmhPJevFBBa1LIMRXypwGpCP0SNEK320oUPTdr/XKjLVUFoTgywvNJgDu3Tg
         r9PiOB5ORjhBDwK09pPh4uuCKSRtSiKQc7P1BMffn0GxU/ssRmWj9h0aVsxM1tqfhk
         wtW4byUc9j3WYnRdEc8EAKtUHAFrp8bIqBud5GFqhhvERGS0oDg1f65Jr8l4AIZyk3
         phC3Ar3ocetr+B0g4Rn/+xtUlAWrJ+8lciPgga6JfoFwxgsikeQJcBGNouTfnOJt8e
         d4Ki2oIbUusbA==
Date:   Mon, 23 Aug 2021 23:01:10 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] alloca.3: rewrite NOTES
Message-ID: <c08c2bb9ccbbc097166f4815f8dea420e5fe1044.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="pieairdsrjeht3lb"
Content-Disposition: inline
In-Reply-To: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pieairdsrjeht3lb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This demistifies the internals and removes outdated information
and needless glibc guts

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/alloca.3 | 66 ++++++++++++++++-----------------------------------
 1 file changed, 21 insertions(+), 45 deletions(-)

diff --git a/man3/alloca.3 b/man3/alloca.3
index 5bceeabe1..133ca6ab3 100644
--- a/man3/alloca.3
+++ b/man3/alloca.3
@@ -84,20 +84,14 @@ T}	Thread safety	MT-Safe
 .SH CONFORMING TO
 This function is not in POSIX.1.
 .PP
-There is evidence that the
 .BR alloca ()
-function appeared in 32V, PWB, PWB.2, 3BSD, and 4BSD.
-There is a man page for it in 4.3BSD.
-Linux uses the GNU version.
+originates from PWB and 32V, and appears in all their derivatives.
 .SH NOTES
 The
 .BR alloca ()
 function is machine- and compiler-dependent.
-For certain applications,
-its use can improve efficiency compared to the use of
-.BR malloc (3)
-plus
-.BR free (3).
+Because it allocates from the stack, it's always faster than
+.BR malloc (3)/ free (3).
 In certain cases,
 it can also simplify memory deallocation in applications that use
 .BR longjmp (3)
@@ -125,51 +119,33 @@ Do not attempt to
 .BR free (3)
 space allocated by
 .BR alloca ()!
-.SS Notes on the GNU version
-Normally,
-.BR gcc (1)
-translates calls to
+.PP
+By necessity,
+.BR alloca ()
+is a compiler built-in, also known as
+.BR __builtin_alloca ().
+By default, modern compilers automatically translate plain
 .BR alloca ()
-with inlined code.
-This is not done when either the
+calls, but this is forbidden if
 .IR "\-ansi" ,
 .IR "\-std=3Dc89" ,
 .IR "\-std=3Dc99" ,
-or the
+or
 .IR "\-std=3Dc11"
-option is given
-.BR and
-the header
-.I <alloca.h>
-is not included.
-Otherwise, (without an \-ansi or \-std=3Dc* option) the glibc version of
-.I <stdlib.h>
-includes
+are specified, in which case
 .I <alloca.h>
-and that contains the lines:
+is required, lest an actual symbol dependency is emitted.
 .PP
-.in +4n
-.EX
-#ifdef  __GNUC__
-#define alloca(size)   __builtin_alloca (size)
-#endif
-.EE
-.in
-.PP
-with messy consequences if one has a private version of this function.
-.PP
-The fact that the code is inlined means that it is impossible
-to take the address of this function, or to change its behavior
-by linking with a different library.
-.PP
-The inlined code often consists of a single instruction adjusting
-the stack pointer, and does not check for stack overflow.
-Thus, there is no NULL error return.
+The fact that
+.BR alloca ()
+is a built-in means it is impossible to take its address
+or to change its behavior by linking with a different library.
 .SH BUGS
-There is no error indication if the stack frame cannot be extended.
-(However, after a failed allocation, the program is likely to receive a
+As it's untestable, there is no error indication if the allocation
+would overflow the space available for the stack.
+(However, the program is likely to receive a
 .B SIGSEGV
-signal if it attempts to access the unallocated space.)
+signal if it attempts to access that space.)
 .PP
 On many systems
 .BR alloca ()
--=20
2.20.1

--pieairdsrjeht3lb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmEkDJYACgkQvP0LAY0m
WPF2MA//cbnjTWsA9LzZNFWpfij3633JU8uCcWMPLIsS3QyMVGuK/dCIO/jHPaN7
CRUkHSPEnVo3sQAEEQh2pJTBrcfHE+e04ZAE2dQpA4SeXUM7aN0EFlUxb3bjNBHd
LG/HXzafph9BCKut5q8XhRuHZN8XhEjAmAIw71RMELEbTSBPL84YVkZbTDWrJYML
06ZltTXCNQdVj3OPQocVZgjf63aBgIG6bRSMGizfpM9UZuMnrGncD8o7cmXnT9ND
H+RcqSyCI2l5H3ocwQHZi05XSCkey0ic5pXzV+P5afP6JMjyu1AumpO4JWvi2XKN
NayveCS+snotrcKDdKCmUdop66GLur/wP12rBasyWaLBTrVtT/Qn4MXyIRQD0K6i
+slnq5Sj8+hJA2pknpAe4dVMZb8ljCOXCT87Dm6ucaDkDjY+0PDEGNM7SHZIJsOO
Qt8mU0Byw+wk6FPm/9+yc7jhmxCuGTAHAdI2Riu4+JeOipYR7yFBWJYEaVLAcd1w
HcjzXvROwpaTpeeibVqJB84T9wYIisZMXecK16cgPWVX5KrRYFHVxiIvZRheOzq8
QzCrV4bJqFMbgZaQTHqQfZKV5Ytx3C+qql387i5V/xqdXklc+HAyPr/xlcY97wOq
dw/P3E9TvxAezGoIBJS/JOe3icyAWK3KJWC2pY9xvYg+2xftslI=
=BiAj
-----END PGP SIGNATURE-----

--pieairdsrjeht3lb--
