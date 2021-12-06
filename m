Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C66C046AB2D
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 23:04:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353033AbhLFWH1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 17:07:27 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:45348 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232710AbhLFWH1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 17:07:27 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 71DEE1E4A;
        Mon,  6 Dec 2021 23:03:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638828232;
        bh=OBqo1veQqXbXJb5QD+GLEJVmlTRfUG42Waxh33SVLrE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EZJkkOeZAyFUEnfLofG9PGfLTmCMSURpSOsixniR/UjBtysr0B9/piUyG1zAKwCy/
         KSGPR+Kx/kgNynCjIups5dc+bbZyL3dCRhXmsAoT6P5mCSNAw4ESuqPCo8XqzWiFwY
         m7N6STiLD7FlXc/z31TanBKdL//0OkGv+T8odZRletJ2Equ5aFI/sIJYLYusKMwnlb
         pnObUHKm5iE7tcsdywUK+k1kWPfxQuascHbvw2pRonXE8RKm944tpLfKdqsdK2tqwT
         Q6qIeTa+TrGQZ19F5NMMQshykht0J45lz8vVpfjAGUo0hoF2M/xyluQq/QdsZomHiU
         31OeRCQE01aag==
Date:   Mon, 6 Dec 2021 23:03:51 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: [PATCH v3 3/3] system_data_types.7: note struct timespec::tv_nsec
 type for x32 and portability
Message-ID: <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="a7bzfz3a5acs4xlf"
Content-Disposition: inline
In-Reply-To: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--a7bzfz3a5acs4xlf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There are three files that govern userspace struct timespec on glibc:
1. bits/wordsize.h, defining:
   (a) __WORDSIZE to 32 on ILP32 and 64 on LP64
   (b) on x32: __SYSCALL_WORDSIZE to 64
2. bits/timesize.h, defining
   (a) __TIMESIZE to __WORDSIZE, except on x32 where it's 64
3. bits/types/struct_timespec.h, declaring struct timespec as:
     struct timespec
     {
      __time_t tv_sec;      /* Seconds.  */
     #if __WORDSIZE =3D=3D 64 \
      || (defined __SYSCALL_WORDSIZE && __SYSCALL_WORDSIZE =3D=3D 64) \
      || __TIMESIZE =3D=3D 32
      __syscall_slong_t tv_nsec;    /* Nanoseconds.  */
     #else
     # if __BYTE_ORDER =3D=3D __BIG_ENDIAN
      int: 32;           /* Padding.  */
      long int tv_nsec;  /* Nanoseconds.  */
     # else
      long int tv_nsec;  /* Nanoseconds.  */
      int: 32;           /* Padding.  */
     # endif
     #endif
     };
   this has two side-effects: struct timespec
   (a) is always sizeof=3D=3Dtime_t+8, and
   (b) has tv_nsec as __syscall_slong_t
       *and* !is_same<__syscall_slong_t, long>
       if using LP64 syscalls on an ILP32 system, i.e. on x32.

This means, that the simplified
  struct timespec {
      time_t  tv_sec;  /* Seconds */
      long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
  };
declaration is *invalid* for x32,
where struct timespec::tv_nsec is an int64_t (long long).

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
The reasoning is explained in the commit message,
but I elucidated it in a more approachable way in the Notes,
which also include the link from Jakub Wilk upthread.

Nevertheless, log2(10^(3*3) - 1) <=3D 31 is a good point!
I also added this as a slight portability guide toward the end.

This replaces 3/4 and 4/4.

 man7/system_data_types.7 | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 1e6a3f74c..cce17fc3e 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1553,6 +1553,36 @@ Describes times in seconds and nanoseconds.
 .IR "Conforming to" :
 C11 and later; POSIX.1-2001 and later.
 .PP
+.IR Notes :
+.I tv_nsec
+is the
+.I syscall
+long, though this affects only fringe architectures like X32,
+which is ILP32, but uses the LP64 AMD64 syscall ABI.
+.br
+In reality, the field ends up being defined as:
+.EX
+.in +4
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
+    long      tv_nsec;
+#else
+    long long tv_nsec;
+#endif
+.in
+.EE
+.PP
+This is a long-standing and long-enshrined
+.UR https://sourceware.org/bugzilla/show_bug.cgi?id=3D16437
+glibc bug
+.I #16437
+.UE ,
+an incompatible extension to the standards;
+however, as even a 32-bit
+.I long
+can hold the entire
+.I tv_nsec
+range, it's safe to forcibly down-cast it to the standard type.
+.PP
 .IR "See also" :
 .BR clock_gettime (2),
 .BR clock_nanosleep (2),
--=20
2.30.2

--a7bzfz3a5acs4xlf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGuiMYACgkQvP0LAY0m
WPFIphAAnfn6YDu6pf1nePCgGW9BG+9alrH8Qkh3CG3//d36o8TtrxpI6GfiYIrH
4yco7wS7X0ec5sTG2aJlbDoKS8MBYz37vocV5t52x0JtrExHLyanTU6ze25nHddY
q86C9V5t0vOtKQcDni3uRBl0nbR87gweE8MdjjQ6N1FJCZ89CXz5qNCEXSRZsc/U
+R0c58Bdqrt//rFlNlbNqqEy71NaTOpM7qQH3DHTo7chtt+MU0CTfwCNIS+g5d05
9lnW2OD17LwdCsoCbPCsFoliYo1F+Qw8km80WmN/A9XePKI7QuHV0LN2R8yP9BPP
SM7atlyEkTOw5Rda0/+Q+xdghyo8kaGDi8xMTrOGUIAA9P/0NladlltY4auk1CtX
x9e3zvEKrHAnmkF5xZWMwpnFC4jTSw6EmDtIGyymc4ShBe5iVM/Ty3jTUpYRQhn7
1JmCq022Qrh2Zgr2iGP5ZcVuxGfW/grOUISP9bkw0FvM4giYZvLbk7kDxKPBwzki
Gy44kzDD9PmRwZJlaK+collBQIevvstFjKEeS5D24G5t/dI72/YMXtfKyi7rapUY
TpwvHwWvHoKLKdjNa+U3P2hbGL5biKONDjEgzsU54HZYlAhT4NvPWOwtw93IiXyj
AHAVD65C0JCJcNPEZhusZL06+IajYHCqToTslgvX1oYApyDnrIo=
=vG4q
-----END PGP SIGNATURE-----

--a7bzfz3a5acs4xlf--
