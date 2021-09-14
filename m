Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC4BC40AE00
	for <lists+linux-man@lfdr.de>; Tue, 14 Sep 2021 14:40:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232571AbhINMmL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Sep 2021 08:42:11 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:48844 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232524AbhINMmK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Sep 2021 08:42:10 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 83E52360ECC;
        Tue, 14 Sep 2021 14:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1631623247;
        bh=it9q6cIFmgfC3DY5cK9aR/26lXQ4TJsz+XFsVmn7BnQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Q06yhVNQBzV6mzMVtF+8rV9Rej4Hbv/oRT+s1qTqlhGfSRU/0tvXDgoL25rUGD3ho
         sfpD9j4MBSJoXk3FNqT21T7Dfz0wby0itxm/pL42PRd2F/2XKIN3jL+WkFhHW5nBzd
         VCQ0SDBW/sfoefUnIjNJl6oiSg7+JtxdqexxzBfhsDvIYdWBf+veu5L/iDGNvLSJee
         jAPx9Hv682NFiV0FY3GEqLB3mriypEepO4qxGp++AJrSoB2rR47SERhb5QGN9plAUa
         5+u260MrTaQLGcxvBo006/rpODZxCmHyo0WvtgaQ5xtstwfBX2jvvIMU17XMrhvHyf
         KfHyzw4UQh4Ow==
Date:   Tue, 14 Sep 2021 14:40:46 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2 0/5] alloca(3) commentary re-write
Message-ID: <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ghht64iownyck64v"
Content-Disposition: inline
In-Reply-To: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ghht64iownyck64v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

This again, I think I cracked it into sensible chunks (see below)
and addressed most-all reviews (reviewers CC:d).

I also reduced the overly-verbose flag list (which was already missing
-std=3Dc18) to "standards conformance (-ansi, -std=3Dc*)", added a VLA
paragraph, and elucidated on the commit messages (#1 even has references
and everything).

=D0=BD=D0=B0=D0=B1 (5):
  strdup.3: drop mention of "the GNU GCC suite"
  alloca.3: clarify origins in CONFORMING TO
  alloca.3: clarify reasoning for no error return in BUGS
  alloca.3: remove GCC faffling from NOTES
  alloca.3: simplfy malloc(3) suite comparison, note VLAs

 man3/alloca.3 | 76 +++++++++++++++++++--------------------------------
 man3/strdup.3 |  3 --
 2 files changed, 28 insertions(+), 51 deletions(-)

Interdiff against v1:
diff --git a/man3/alloca.3 b/man3/alloca.3
index 133ca6ab3..736182a7d 100644
--- a/man3/alloca.3
+++ b/man3/alloca.3
@@ -90,7 +90,7 @@ originates from PWB and 32V, and appears in all their der=
ivatives.
 The
 .BR alloca ()
 function is machine- and compiler-dependent.
-Because it allocates from the stack, it's always faster than
+Because it allocates from the stack, it's faster than
 .BR malloc (3)/ free (3).
 In certain cases,
 it can also simplify memory deallocation in applications that use
@@ -124,28 +124,32 @@ By necessity,
 .BR alloca ()
 is a compiler built-in, also known as
 .BR __builtin_alloca ().
-By default, modern compilers automatically translate plain
+By default, modern compilers automatically translate all uses of
 .BR alloca ()
-calls, but this is forbidden if
-.IR "\-ansi" ,
-.IR "\-std=3Dc89" ,
-.IR "\-std=3Dc99" ,
-or
-.IR "\-std=3Dc11"
-are specified, in which case
+into the built-in, but this is forbidden if standards conformance is reque=
sted
+.RI ( "\-ansi" ,
+.IR "\-std=3Dc*" ),
+in which case
 .I <alloca.h>
-is required, lest an actual symbol dependency is emitted.
+is required, lest a symbol dependency be emitted.
 .PP
 The fact that
 .BR alloca ()
 is a built-in means it is impossible to take its address
 or to change its behavior by linking with a different library.
+.PP
+Variable length arrays (VLAs) are part of the C99 standard,
+optional since C11, and can be used for a similar purpose.
+However, they do not port to standard C++, and, being variables,
+live in their block scope and don't have an allocator-like interface,
+making them unfit for implementing functionality like
+.BR strdupa (3).
 .SH BUGS
-As it's untestable, there is no error indication if the allocation
-would overflow the space available for the stack.
+Due to the nature of the stack, it is impossible to check if the allocation
+would overflow the space available, and, hence, neither is indicating an e=
rror.
 (However, the program is likely to receive a
 .B SIGSEGV
-signal if it attempts to access that space.)
+signal if it attempts to access unavailable space.)
 .PP
 On many systems
 .BR alloca ()
--=20
2.20.1

--ghht64iownyck64v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFAmEsACgkQvP0LAY0m
WPE+Cg/9FBHQsPJX2DfhqtyxGLlwbXDLN2lH04dt2unkAbBVnlfCv0IpFLAZlVGC
fmVtalHRN3Gg9JSLk4SPTwGWmbsQmmqKLJAszwFLhIUS/JbyxcOZJDKpzLJ3nF0u
d9Y1F0NsD6GRpDk98jsY1/9J2n/cLmNJwvRWjNIoqS84RrK3DMdsExeWd9HUkdnN
dmaVkXKgPmAZgd1jab7k1ahVZCHxwbwPwOLZ8AhKQQp2mlJLo9voxrWmI+xyzlYc
VRkqxnDtD4VqtYePv6s2NU12nu7xXDbeNehT2Ttp6Z2y/pgBLt0aFERX50CeXCkw
rAV1BEN0T5TXH2fAtaZElxYS3q4e8n5tCF05WSmHvLSS+cDBTGpdER4ybkSz3ARk
yNDSKWmHJQbgeLqmLSnb6XH8O1L6HbIhj2cbZyk49OK0mZdYCxwTk2s2c+am5iWf
ozFaS/85acJzNnir3/Z6QFtK3EQfLWKXP103YBvU80Yr1GoS0qNOPwco6LrUkkda
CElmtIsTsF2CCKTdIqX0So4u6fp+zAHJkxLRoxrYUN8UxkDD/6Y1/4eQ0TCFSHc7
n4gFs8i7IeJFrEeP6TKTcahW1MnE5pP5OFKt6gOX0z61DExT/JxRvPWCY7OStlYH
/M6pFknBQW8oQ/aCNEJI5BNwDV36DhWI8TzHjM0o+bAUK6oYLL8=
=wuEh
-----END PGP SIGNATURE-----

--ghht64iownyck64v--
