Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D45F668197E
	for <lists+linux-man@lfdr.de>; Mon, 30 Jan 2023 19:39:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237384AbjA3Sjk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Jan 2023 13:39:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235689AbjA3SjY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Jan 2023 13:39:24 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1DBC945F70
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 10:38:40 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id DCE418E2;
        Mon, 30 Jan 2023 19:38:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1675103916;
        bh=eVUFDK4VzFwEtMi7AEWLnuP+Kxn11AvIQ8DvIvzXZRE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=r0/eFc16vj5ZSJDylhXmhcG69Akr0nejay+qWNCeXN3YwuGSRU90oTWAYOeRH63y4
         B3Te+3PMpfNLhqtWBaKSimLGSw8zFv+wz7f/fTp3FVD6vgLrNJRK3LxH3mw2tIwbV3
         D75g6geMKmk435qCsadC+MU8SYoSsEocUFMsnegoSYNQiL0aVgAd5xDmCJ7IJ1YM7m
         a28GttDP6B+9F12vMITuT9GEmdnjOWR8VevlWw4ffT4lnDy72swWIN/aoS3JqsN1ax
         2fFoxyRHAYDMO+Q7/zJvf8cVKwCSwK/GTr1etYNPCc4Sut2QW63umKWDWYkTtqjmXI
         CcjLNfolL18pQ==
Date:   Mon, 30 Jan 2023 19:38:35 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Subject: [PATCH v3 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
Message-ID: <20230130183835.majak2kl4acc7djn@tarta.nabijaczleweli.xyz>
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
 <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="c42xozngo346zsmx"
Content-Disposition: inline
In-Reply-To: <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,
        T_PDS_OTHER_BAD_TLD autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--c42xozngo346zsmx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Jan 30, 2023 at 02:15:50PM +0100, Alejandro Colomar wrote:
> > Please make it
> >=20
> >  =C2=A0 /* see below */ tv_nsec
> >=20
> > or maybe
> >=20
> >  =C2=A0 long /* but see below */ tv_nsec
> >=20
> > (given that C23 is not a thing yet).
> The reason why I seriously considered /*=E2=86=93*/ is that it is a bit s=
hocking to
> the reader, which will prompt it to read the rest of the page to see what
> the hell that is.
>=20
> I'm worried that if we make it `long` plus a comment to see below, many w=
ill
> ignore it.
>=20
> /* see below */ with no mentions to `long` might be a reasonable
> alternative. Maybe I'd use /* ... */
>=20
> What do y'all think about it?
Yeah, ellipsis instead of the arrow is editorial IMO,
and I agree with the consequences of making it type /* comment */;
I didn't want to go full see below on it because there's three sentences
on the page, and it'd inflate the type width in the SYNOPSIS considerably.

We already use /* ... */ for "concrete unspecified type" elsewhere;
v3 of 1/3 below.

Best,
-- >8 --
n3091 accepts n3066, making it part of the next working draft and C23:
  https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3091.doc

Update timespec.3type appropriately, largely mirroring my paper.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3type/timespec.3type | 49 ++++++++++++++---------------------------
 1 file changed, 16 insertions(+), 33 deletions(-)

diff --git a/man3type/timespec.3type b/man3type/timespec.3type
index 7cd80ce86..9b9e083bb 100644
--- a/man3type/timespec.3type
+++ b/man3type/timespec.3type
@@ -15,15 +15,29 @@ Standard C library
 .B #include <time.h>
 .PP
 .B struct timespec {
-.BR "    time_t  tv_sec;" "   /* Seconds */"
-.BR "    long    tv_nsec;" "  /* Nanoseconds [" 0 ", " 999999999 "] */"
+.BR "    time_t     tv_sec;" "   /* Seconds */"
+.BR "    /* ... */  tv_nsec;" "  /* Nanoseconds [" 0 ", " 999\(aq999\(aq99=
9 "] */"
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
+It can be safely down-cast to any concrete 32-bit integer type for process=
ing.
 .SH STANDARDS
 C11 and later;
 POSIX.1-2001 and later.
+.SH VERSIONS
+Prior to C23,
+.I tv_nsec
+was
+.IR long .
 .SH NOTES
 The following headers also provide this type:
 .IR <aio.h> ,
@@ -33,37 +47,6 @@ The following headers also provide this type:
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

--c42xozngo346zsmx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPYDqsACgkQvP0LAY0m
WPEeAQ/8DLY+KBvTESCVQmrQA1whfnXtw+XcYP+pu5aKuP/ULh4T9wZutBrm0GOM
atJoo4gn3RVRKoltGF2Y72Iq3NiT7y35KMq2vrrLw8Z1hsMJ99eN+IVAO8blRQ7+
/eCTionKT+u8MjknRhCcEprrAVzkP4TegzuuDAea3U40wqnuLLErLn91UyaDfwku
klnU0B7X529XCizatRL1uWi1NcxyCm21Kz4ryQ/IPTjToF+bO435zSA+b0O9tFYy
WgkMOn+q9CXHxxyq8RWG/6dGOGYIc9gZ6/U6TIK7sE4n4Y2dEf0p6xU7WKaxpAjx
OD+13Y9DZ4LHzSLtm+rF3+7Pcu2ct2KAzB5B/Xi23js00EFPyE9bs4UwXlFlR4M0
jEA/nAf4ZEQ2qBUrCSAV0jZ6BSkD1n/GVdM4eNBSRkf152Oe+kkLnE/NDV5V1Q6r
E8iMv7osY61KEMbkTzgaTHh9ejsTe4MozBq/HC3jvPUh8U5zQkpkcThqHUdO8aIX
p6djmaWVkCM6zoQT27ql5lXo3W+AJ/fCoFVw28oMr0bm9Ir1ibdHc6pNE5NBOLe8
Zpf2wj3+VuHGAQAXSDZh5dON656x9Jj+EIWZuddVTN/yOScig+IipJd3d+m0lcBz
EMda9QL/oMvoEdqbgxN0+qhhm8Njj6s5Qu+nE+lnFsG6OfopnG0=
=89Oz
-----END PGP SIGNATURE-----

--c42xozngo346zsmx--
