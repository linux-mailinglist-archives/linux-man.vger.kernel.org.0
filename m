Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C01740AE07
	for <lists+linux-man@lfdr.de>; Tue, 14 Sep 2021 14:41:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232804AbhINMmn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Sep 2021 08:42:43 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:48872 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232836AbhINMml (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Sep 2021 08:42:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 827FA360ECC;
        Tue, 14 Sep 2021 14:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1631623283;
        bh=qV/wmSPOL/voWcYiwQhXMlJj5Oi/5H/ETKB2GOWDFQM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iltpiLD/0r9Pg4OJnw9nz8d5IRiEhKKfQZdgadpIxr5mebTrLJJblCUrUZDg3x5cT
         5eMbHAHsr7zQ/NcfWaDzHR6+4VXILMf4x/fB0OURXHzSMVS+nv91Ya6N66rRe343SD
         gRC4c3EW3slhrKDSJ5czbKdQnOB5jMiNmA7rfZt4BQK6aO4gkckc6kIysl2WTLob4D
         5+/4G5UDiwBeO8Dwf9nMtKzyMeO2VhswDekvwh0Xs7UOT9bNTqLRaeTprLA4Tz3zXS
         VgstOTsyYR83DU2R4i3Shvsvj+3Uj41w4cafhvtJY5cmNW3xtisTw5Lh55nroc2oXd
         ffwErxCJHmu0w==
Date:   Tue, 14 Sep 2021 14:41:22 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2 4/5] alloca.3: remove GCC faffling from NOTES
Message-ID: <fadbb957726f6d70ec87ca7f27fdf41c3042533e.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wj4feb7mymudctyh"
Content-Disposition: inline
In-Reply-To: <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wj4feb7mymudctyh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Chunks of glibc headers have no place in documenting an interface,
and (__builtin_)alloca() is an intrinsic, not code; those days are,
thankfully, long gone

Also, clarify standards behaviour (and remove the (outdated!)
list of cc(1) switches) regarding when alloca() is allowed to not be
ODR-usable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/alloca.3 | 52 +++++++++++++++------------------------------------
 1 file changed, 15 insertions(+), 37 deletions(-)

diff --git a/man3/alloca.3 b/man3/alloca.3
index 20761b079..936a15954 100644
--- a/man3/alloca.3
+++ b/man3/alloca.3
@@ -122,46 +122,24 @@ Do not attempt to
 .BR free (3)
 space allocated by
 .BR alloca ()!
-.SS Notes on the GNU version
-Normally,
-.BR gcc (1)
-translates calls to
+.PP
+By necessity,
 .BR alloca ()
-with inlined code.
-This is not done when either the
-.IR "\-ansi" ,
-.IR "\-std=3Dc89" ,
-.IR "\-std=3Dc99" ,
-or the
-.IR "\-std=3Dc11"
-option is given
-.BR and
-the header
-.I <alloca.h>
-is not included.
-Otherwise, (without an \-ansi or \-std=3Dc* option) the glibc version of
-.I <stdlib.h>
-includes
+is a compiler built-in, also known as
+.BR __builtin_alloca ().
+By default, modern compilers automatically translate all uses of
+.BR alloca ()
+into the built-in, but this is forbidden if standards conformance is reque=
sted
+.RI ( "\-ansi" ,
+.IR "\-std=3Dc*" ),
+in which case
 .I <alloca.h>
-and that contains the lines:
-.PP
-.in +4n
-.EX
-#ifdef  __GNUC__
-#define alloca(size)   __builtin_alloca (size)
-#endif
-.EE
-.in
+is required, lest a symbol dependency be emitted.
 .PP
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
 Due to the nature of the stack, it is impossible to check if the allocation
 would overflow the space available, and, hence, neither is indicating an e=
rror.
--=20
2.20.1


--wj4feb7mymudctyh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFAmHIACgkQvP0LAY0m
WPG24xAAgWbOW0BXiBajPgwJFftIAawhv1UNbOKWJL3iIXiK4jEhdPUCHmm81XWb
LGlAVekmly6ZPxCuSmw2l0G2/WivFj+m+n9ZhzZ9Avlxa7BgLsHWsXTZMNhGUsmD
4HaaiFsCpCIO5AD1Sv9zwpbV0kvKUeoUQ2nCBueil7PgtVnAuZ/wfWemdJCqwFS0
xgMk3VCHBaZul9cEdvOLmL7RJV1VPH3GUZR95kZ8Zl3LZ8mR7eJJkd+p3bBKsvax
82l49MqVEovaua4+NZWFWBnT6mJIuFJZWe4MFxVSKMcGrKcRpFZRhjAw2AScBfPZ
UgqBGc4Q/MuMRu5z8V5YY7VcmBZJGc34Er/N/Gi2eQ68DNsZcWK6O0z5AbF0Xw3U
SOI3tHBPWEnxOo+miqhE8MvNEhFg24ayZ3e0VGMO1GrsZTnIVTpNsiNDKyEmP7iL
JQjvEsHEDRa4E6TNgcPpPCwfJPjCXAQSkKcolYO/5ZF/6QePiiOS3PpUVGZvKY5I
kgSlH/3cqcR1PGQWOqKsFaA9t7dx61QV5lBkf1rIu8NDtmkcU8hrx2OJRPfo6XRW
C9kY2clW7bVmSlkmBcDAbAPSJkNovyFBOXDvqmq40CuspngdxoIU8abUaNoUnaqc
/I5qcDv4AsJMo0d47liZwGsTf2IFVmKfXyLuit5T7jNzIlOsqQk=
=Yu1r
-----END PGP SIGNATURE-----

--wj4feb7mymudctyh--
