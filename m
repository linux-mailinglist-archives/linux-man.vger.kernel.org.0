Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F0D168003C
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 17:31:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234449AbjA2Qbo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 11:31:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232771AbjA2Qbn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 11:31:43 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 384F41F4B0
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 08:31:42 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6AB279C2;
        Sun, 29 Jan 2023 17:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1675009901;
        bh=mY4SIr60ZdK4EAgGfhaq5dM29OtBYA8BibbwdtB2d0k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NpCP2aTfNq5rYVdyLxrePG78EFYDYoRvPUfkB2pJ+cTqdK1quhRbX3caivPe5eZae
         14DsF6xCaqRsS5pIAGIom2d74BISpWZm/lwEwZ6sFPinACscmCidLmM3bH7pS5pp5H
         e5ZKak/mpKQ/Cg6V6Fh7fRDoaWV512lmBKP5Zq/IItcQssldNubtp8bHhrlXiyq9Jl
         jwpebINvTxgU3qjQmTYfgNgBX+QzPe0qY7mRleqLKufm2eCimYVRFCrPXtVGGi9WNz
         96ojZBAKCk8CWZvzZB4BbK/O+GpWrlQ5Lde/RrU/nczVxzn0hYKkabWuUdZiLajxb4
         Lts80O7azMqAQ==
Date:   Sun, 29 Jan 2023 17:31:40 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
Message-ID: <dd82d5ab07d5a0aafee6a1166a757a22c39f52af.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>
References: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hefufcynlsexprnt"
Content-Disposition: inline
In-Reply-To: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
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


--hefufcynlsexprnt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

n3091 accepts n3066, making it part of the next working draft and C23:
  https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3091.doc

Update timespec.3type appropriately, largely mirroring my paper.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3type/timespec.3type | 47 +++++++++++++----------------------------
 1 file changed, 15 insertions(+), 32 deletions(-)

diff --git a/man3type/timespec.3type b/man3type/timespec.3type
index 7cd80ce86..37dc2da61 100644
--- a/man3type/timespec.3type
+++ b/man3type/timespec.3type
@@ -16,14 +16,28 @@ Standard C library
 .PP
 .B struct timespec {
 .BR "    time_t  tv_sec;" "   /* Seconds */"
-.BR "    long    tv_nsec;" "  /* Nanoseconds [" 0 ", " 999999999 "] */"
+.BR "    /*\(da*/   tv_nsec;" "  /* Nanoseconds [" 0 ", " 999\(aq999\(aq99=
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


--hefufcynlsexprnt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPWn2sACgkQvP0LAY0m
WPHzbg//V7bP474rjHOsltu3phK+/IgrmA7fy9bfcI1s/AW9z4oGiNUUrXttAbDU
9UButz5C5AOtEARZloUn5H90Mnc2hQa1NsGPbCCAG1K6Q+Nrtf9gjOWh7N3ZASWw
msH4QphJOje72euNMVqiSS+rdvKzzSe6/GVrpIw+RMPsHKgRfhzl8yxMPFcl0PkP
33aVzBDFr2K0I9stI+Iborq8M5MkTD759HeSsrgB9RV92fUyd66Xm806B7PRCe/I
bA6GVJ9gG3FzvY8xY43c33y310Zn1lvOLyLPPIOtn7c6fwaXXzYcWEJ3OhkrXxw/
3jKWvm5Wk2g3LSkAEPBOtosnU26pQUxi074wxy7JJ/4YE5UHPzPGovH7oN5T6oSB
Kv5SEHJIlTzYzO0uJs/hc2pdh0cGIa+P6CZckRweHY25h4ALPoVM51R+XCOoMtWf
ymA+e0gzTaj2q2kh5dbUINd/4TWTL4pQGl+COIcEzLfE1joAMULPumQpzgkcFBrd
fTB1y69Jf5t/htvhETfKQg8LupmkUW2TMG7Ev3p79vYcChJXjPskp8elzLf8z2rI
hKLEkw5cbhVfGB038GbbT7j5K2XtnSjW4suAf+d1qoGlNt3E3f+Xa6b/99et/HsT
CbKT0EyCDRspqh5HfE+Y6BEkurHig27Cbyrii2+1CrUyYgzbqPw=
=9liO
-----END PGP SIGNATURE-----

--hefufcynlsexprnt--
