Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4CAD67F88C
	for <lists+linux-man@lfdr.de>; Sat, 28 Jan 2023 15:17:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233188AbjA1OR2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Jan 2023 09:17:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231566AbjA1OR1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Jan 2023 09:17:27 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4A38522DE8
        for <linux-man@vger.kernel.org>; Sat, 28 Jan 2023 06:17:24 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 01F2EC1A;
        Sat, 28 Jan 2023 15:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1674915442;
        bh=zBB86Hw1g2NASHCU1kZdmR05k+DwqM9nMdBIlcaAiio=;
        h=Date:From:To:Cc:Subject:From;
        b=oKLNy8UwqM7RHX5gfkFhgvrFc60M8QcXSm9uyNVi2l1Ka73Njo69dhf9uIGtVOyvj
         9G/9/OIXQd6FGSTTJWSHwvRM8efh5hAJ4Kt9+S6hblpjQaCgss1fbTWDX33j0cm2fs
         MjsSv+tEp+qKtwchOhpjjZW5cM23tr5/I/FdfDS0iEkIDBCkIjc6LsvSOBiydaK3ps
         kA+7pr0M2sKFw9TMUgiJ2v5yC+Jhb+ZPInoL2SnJSgn9Qo/kWz6d27FyAJSFy2jncn
         HMXvLwnCb2umlELg2DoZ3+x9GJuJp5AiAUYsV5RMWijlUIhAx5tjqMWW3pOEYkOQH/
         0sFq+xJkWe27Q==
Date:   Sat, 28 Jan 2023 15:17:20 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
Message-ID: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gpi4r3qo26xjdqv4"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_PDS_OTHER_BAD_TLD autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gpi4r3qo26xjdqv4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

n3091 accepts n3066, making it part of the next working draft and C23:
  https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3091.doc

Update timespec.3type appropriately, largely mirroring my paper.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
This is in many ways a followup to the patchset that originally added
the BUGS sexion to timespec.3type, root msgid of
  <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@n=
abijaczleweli.xyz>

For ease of reference, n3066:
  https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3066.pdf
and the relevant part of n3091 (screenshot, it's a .doc):
  https://cohost.org/nabijaczleweli/post/922578-pog-pog

2/3 and 3/3 only span the pages that matched git grep -l tv_nsec,
but that should be most of the relevant ones

 man3type/timespec.3type | 46 +++++++++++++----------------------------
 1 file changed, 14 insertions(+), 32 deletions(-)

diff --git a/man3type/timespec.3type b/man3type/timespec.3type
index 7cd80ce86..ca5533814 100644
--- a/man3type/timespec.3type
+++ b/man3type/timespec.3type
@@ -16,14 +16,27 @@ Standard C library
 .PP
 .B struct timespec {
 .BR "    time_t  tv_sec;" "   /* Seconds */"
-.BR "    long    tv_nsec;" "  /* Nanoseconds [" 0 ", " 999999999 "] */"
+.BR "    /*\(da*/   tv_nsec;" "  /* Nanoseconds [" 0 ", " 999999999 "] */"
 .B };
 .EE
 .SH DESCRIPTION
 Describes times in seconds and nanoseconds.
+.PP
+.I tv_nsec
+is of an implementation-defined signed type capable of holding the specifi=
ed range.
+Under glibc, this is usually
+.IR long ,
+and
+.I long long
+on X32.
+It can safely be down-cast to any concrete 32-bit integer type for process=
ing.
 .SH STANDARDS
 C11 and later;
 POSIX.1-2001 and later.
+Prior to C23
+.I tv_nsec
+was
+.IR long .
 .SH NOTES
 The following headers also provide this type:
 .IR <aio.h> ,
@@ -33,37 +46,6 @@ The following headers also provide this type:
 .IR <sys/select.h> ,
 and
 .IR <sys/stat.h> .
-.SH BUGS
-Under glibc,
-.I tv_nsec
-is the
-.I syscall
-long,
-though this affects only fringe architectures like X32,
-which is ILP32, but uses the LP64 AMD64 syscall ABI.
-In reality, the field ends up being defined as:
-.PP
-.in +4n
-.EX
-#if __x86_64__ && __ILP32__  /* =3D=3D x32 */
-    long long  tv_nsec;
-#else
-    long       tv_nsec;
-#endif
-.EE
-.in
-.PP
-This is a long-standing and long-enshrined glibc bug
-.UR https://sourceware.org/bugzilla/show_bug.cgi?id=3D16437
-.I #16437
-.UE ,
-and an incompatible extension to the standards;
-however, as even a 32-bit
-.I long
-can hold the entire
-.I tv_nsec
-range,
-it's always safe to forcibly down-cast it to the standard type.
 .SH SEE ALSO
 .BR clock_gettime (2),
 .BR clock_nanosleep (2),
--=20
2.30.2


--gpi4r3qo26xjdqv4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPVLnAACgkQvP0LAY0m
WPET3BAAuC4XBqAT9/vttcGG5uKbdwxlQNRe58CzWfnUVaA4DPVf3hPvpznp8zGE
Gv05z/5iONENM1h3QFBU594DfFH/JCX+NcGBpZKMKm+boaTrMhIzLhfJ0O6obTKa
Aq8A6knoeeVcj9is06mmfQQ26jS+ZbvuuZXkjDqDNi4VuOojbRCm8Yk/SH+/rBJ2
hxf3EoXpPr6FjYYwfjbHSiQ0LXMxyTq5PB1GRZIAQ3HWXBKybwxyj4VLELr9sJGu
Tz965t7Cgkwq1xG6QXjQ6YN5gk3pxboTPzSzJab466zMN0Mhmk665G+2Tj7NS9M0
qZQeek0JAmDVcyqB//jMysYxwdAZCc8HaF4TVU/QZ83HgQUZYNqWxJHtxUuh2qd1
huHDQubX8kui70YeSEfWYNSZcZY0SD4Mlwm4/xC2/I1KqOmzqP0wKLmshrTvFmeJ
juYNCkEXcZmsF6Ddd7RuGB2XGzrY1//NfOrUfpEf6bN5JMa0XW+1qSBXCh6YJGYl
HfCPStbrU6Z9xAeevZ4t7jJO2KHp2M2OPucRKTvmznRcz+VKz2ujM7Rcg8Wyp138
AT8vCC9yIEGcO/Ohippavih9ddFU0TN7M844p/LK3xJmGdUMocKKAQVQpayHfnNJ
r9R/DiyWQjj1rDbIPlV3yVb65GPVXLabm8AcxEpWdYTQ+7+F4lg=
=2wyg
-----END PGP SIGNATURE-----

--gpi4r3qo26xjdqv4--
