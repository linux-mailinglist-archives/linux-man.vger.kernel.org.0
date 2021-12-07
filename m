Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA3FA46AFEE
	for <lists+linux-man@lfdr.de>; Tue,  7 Dec 2021 02:41:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbhLGBor (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 20:44:47 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:47492 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232734AbhLGBoq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 20:44:46 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 56B452102;
        Tue,  7 Dec 2021 02:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638841275;
        bh=2Q/G2WMaRsVlvRUuWD+GcgMdTW15JQC+0naxovszqoI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XiQiHZcxK2Ix2pSMRUWvJOPeewnniasa4LLAjFFP/cBGDSvePzvEG6b8i2005O3oR
         15PGTDO3SwU0lX2D+vCm6/AONPk7YzXe9FZR4jFCMaXUZlpBuvH/M269Uw8iMdARVG
         GPeRYSWXo6OQSk311EHjpE6d7Yp4aNlWRLZ/dgN8YwWrjvPl1WPYKXYher1AAeVks0
         nWvif09WwqbfV7Cef5NvLk+dTl+aTG0X5Vw0JLEyLcqrJgyh3rM80wiYvxrEwxQOrm
         0U44DAG/FHIeT0xrJafiKrQH9uTQUE9W5ZgoCJp5zNu3VX4hvPp9j0FlTuGTIp9RJI
         RNLfDIQonQdBA==
Date:   Tue, 7 Dec 2021 02:41:14 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Zack Weinberg <zack@owlfolio.org>, libc-alpha@sourceware.org,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct
 timespec::tv_nsec type for x32 and portability
Message-ID: <20211207014114.2ctce657cnnq4frv@tarta.nabijaczleweli.xyz>
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
 <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
 <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
 <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
 <a55c07d0-960f-4dfe-90bf-4fee33976198@www.fastmail.com>
 <7c29781b-1030-44f9-b078-f5b09a14e321@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dbkydbxdzhykajhf"
Content-Disposition: inline
In-Reply-To: <7c29781b-1030-44f9-b078-f5b09a14e321@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dbkydbxdzhykajhf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 07, 2021 at 01:52:52AM +0100, Alejandro Colomar (man-pages) wro=
te:
> On 12/7/21 01:18, Zack Weinberg wrote:
> > Depending on the kernel, the architecture, the ABI, and the state of _T=
IME_BITS, the format of `struct timespec` as expected by system calls may b=
e any of
> >=20
> > struct timespec { int32_t tv_sec; int32_t tv_nsec; };
> > struct timespec { int64_t tv_sec; int64_t tv_nsec; };
> > struct timespec { int64_t tv_sec; int32_t __padding; int32_t tv_nsec; }
> > struct timespec { int64_t tv_sec; int32_t tv_nsec; int32_t __padding; }
> >=20
> > These may be incompatible with using bare `long` for tv_nsec in the use=
r space headers.  The problem cases are when the kernel expects option 2 bu=
t user space's `long` is only 32 bits wide, or if the kernel expects option=
 3 or 4 when `long` is 64 bits wide and the endianness of `long` doesn't ag=
ree with the position of the padding.  I don't remember which ABIs actually=
 manifest an incompatibility, but I remember this being discussed repeatedl=
y during the project to make 64-bit time_t available to ILP32 ABIs.
> >=20
> > The C library CANNOT paper over the incompatibility by converting forma=
ts in the syscall wrappers, because `struct timespec` objects get embedded =
in an unbounded set of `ioctl` parameter blocks, `sendmsg` ancillary data s=
tructures, etc. etc. etc.  We can't even make a list.
This I forgot to take into account, mea culpa!

> > Personally I consider the situation a defect in POSIX and C11; the defi=
nition of `struct timespec` should always have been
> >=20
> > struct timespec { time_t tv_sec; nsec_t tv_nsec; };
> >=20
> > where nsec_t is an integer type that can represent the range [0, 10**9)=
=2E  Last time this came up, Joseph didn't think there was any chance of pe=
rsuading either the Austin Group or WG14 to make this change, unfortunately.
Sadly, agree on both fronts.

Looking through "timespec" on Aardvark for prior art reveals nothing,
except for a likely resolution to any proposal of this sort:
> Although we agree that it would have been better if these functions had
> been designed this way to begin with, we believe that making the change
> now will break existing, conforming code with no real benefit.=20

Considering this is, as outlined above, a real ABI-meets-standard moment
that affects all users of the Linux syscall ABI, I rolled back to Notes,
replaced glibc references with a "this is unfortunate but unfixable"
stanza, and a link to this post in the libc-alpha archive in the comment.

Regrettably, I think this is the best we can do,
save for committing a plan9. Scissor-patch below.

Cheers,
=D0=BD=D0=B0=D0=B1

-- >8 --
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
 man7/system_data_types.7 | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 1e6a3f74c..46fcf013d 100644
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
+In reality, the field ends up being defined as:
+.PP
+.in +4
+.EX
+#if __x86_64__ && __ILP32__  /* =3D=3D x32 */
+    long long tv_nsec;
+#else
+    long      tv_nsec;
+#endif
+.EE
+.in
+.PP
+This is one of the many unfortunate side-effects of the intersection of
+.I tv_nsec
+being defined as
+.IR long ,
+and cannot be addressed while preserving backward compatibility.
+.\" https://sourceware.org/pipermail/libc-alpha/2021-December/133702.html
+However, as even a 32-bit
+.I long
+can hold the entire
+.I tv_nsec
+range, it's always safe to forcibly down-cast it to the standard type.
+.PP
 .IR "See also" :
 .BR clock_gettime (2),
 .BR clock_nanosleep (2),
--=20
2.30.2


--dbkydbxdzhykajhf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGuu7kACgkQvP0LAY0m
WPGbrBAAg2Dp/+r/VUwPziAYN8VuPN5daZc9kcaYYyscKo7SEt3fUGje/So/sDyM
llU6Uy/ecWtOY/b/m8+7nBHKvnwdRp2k33xDIwVVRVttXriZHeIa1s63vEp8Apvn
vRv1IxMZdpEOZSXYpbSzdMunAa3GnxUuIODivD2X1BRdgKc9exdXpN0sffUczBfC
bovoRSpeJ+UBbqASP2Sj0Kz0uCK8vAUlHEPRryt2bqnTZtgRij7sbW08yCBC9+A2
6A0MeD7OKvlsOjyG6krW2ml6V1uvpWzW2qekKZJ7p2qyTEkobigZ6nQd3FK8hudk
HSQFjjckuGBCB0jX+MlOkkIvI7NWsRDuGBAd9kbvQuudUDp/U2mGsoRAjNN4ugvc
sqU7YRdTPwOzZiDXqkAawBZF4TwSHfmxLiSt941+45/V8s0hjq/2V010ShfG8oz9
iJbvZ+gnvF2qbSDQ6S/Qo4IsEnN3H1X7JMi6IpsPfmtrpxJsA5PLaTD3XrFRopf7
j2A7QUhZOcTmZ0G/i5CEWQfEoVXI8t1bwfnXvq3EptaAej6FL47edA/zk6TE7SKh
eRYEmIdUpcUu8EzcGZi3ywHxr1GutATbaBtX9Uksf04Nm8KM76PBts1+QWMP+tTj
pDW1e/ujYMmqB8+RTJ712l5ctkmVl5QTuT+ymY/NcMWeGvQpNKk=
=o2Y4
-----END PGP SIGNATURE-----

--dbkydbxdzhykajhf--
