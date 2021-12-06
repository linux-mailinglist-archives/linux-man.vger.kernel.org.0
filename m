Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D228046A69A
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 21:12:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349293AbhLFUPs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 15:15:48 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:44128 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S236134AbhLFUPs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 15:15:48 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2EDF41C5E;
        Mon,  6 Dec 2021 21:12:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638821536;
        bh=KmRDKlFH2THPvmgRi2IDJQVGVD86DEUAOQclVv02LfE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Q7p+Yr6KuTUVHR7Heo7R67Usbh2ah4e3y1FwMoB0oJZ56WdkNJZkHC7RYDjOLYd8r
         BWxPb3YWxV8/ioSypWQrwO929sON3321yTIdzhEeahjZyT5xhVjd7V2UNfggnF/pTF
         3+UzznDqyzRVKUETA+lep6qN0m9FRxyf/m3WkqAzB0+vk6lK/jpV/mTYg70k7TZc2+
         KmqU7RysY0GH/qfjZmPHWRWb630bTUEbu797tZPUcOqCBB2xdjbZS2z+kNN3hLMO3p
         IpyYvEjDvVYy9Y27TTKCoxNJx9tOvpLl5CpkVVkDDEjoZG+HXHNcSgeQFpfLdGSDHh
         Kiv8UtKKA+Guw==
Date:   Mon, 6 Dec 2021 21:12:15 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: [PATCH v2 3/4] system_data_types.7: correct struct timespec::tv_nsec
 type for x32
Message-ID: <8e968437b301aa7487e84cce21822b56072e9217.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
References: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
 <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="e5fb24xeqwzbwy2q"
Content-Disposition: inline
In-Reply-To: <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--e5fb24xeqwzbwy2q
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
 man7/system_data_types.7 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 1e6a3f74c..80679b180 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1544,7 +1544,11 @@ or
 .EX
 struct timespec {
     time_t  tv_sec;  /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .PP
--=20
2.30.2


--e5fb24xeqwzbwy2q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGubp4ACgkQvP0LAY0m
WPER7Q/+L+zrbdVpNIjZlE3UzyGBEgkL4yaWNM4ZvNQ4wiee/GxpXHvrRyc/sXa6
7nn7DD24GjnZuBpOUk0Ai5pf6XB13NQ9EGEQuKeiEY99/mUXMmllLSJqXatha/Cl
zA4vOVPEpGaWYiGQ67Ar0ga4Ultgdvk//144Sqwyo3M+ZdPxLdKpMqA6CgFjAPhq
R04MRX1gTCPALNhtR29nBnal+IC+GsBaab7MNaVZYr86Ru1hFhyk/QPGpScCBKP/
LqF6bNXtTNMBGeihOBjDzLL1ZD/cHYPH1eo64KnYDjs9AKErMm95EKQXm63ptYpX
PYRCxoSxeUpIYqePQoMJjG2/PTRGaONVGBdoD5GQAYtiZYsXgcZiYZUZBfibrynf
kEeAdfwRi5puIKB07pLEbWISi8jSk5puJKlUDf4UWpsNwY2o0l6U3mx/1xAssqnb
Qk+jKMsaCQXBv57SC0G6hElxdH6YoguUiCnJQWxeZQjWcoC7BNahsCWCPfj9kYqd
s00gGxkLQ+Ddht3h7JJV7FaR0V2kDdHcOtj68KwcqeyH+nmJyChyXHhrLE4k/Q3k
Yspw3KD5MBHix3QkhlPBDVfSEOKtnUuLxOkQnhtKQMUw+KyqDbC2iY+JRQJ4/RKI
KF5rqKY+EYPJ3mzFF7JhIUhklBiBv9OCS6rH6T1Zw8HGIIs+drY=
=jpW8
-----END PGP SIGNATURE-----

--e5fb24xeqwzbwy2q--
