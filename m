Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73A874608F8
	for <lists+linux-man@lfdr.de>; Sun, 28 Nov 2021 19:28:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234458AbhK1Sbg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Nov 2021 13:31:36 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:45402 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232102AbhK1S3f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Nov 2021 13:29:35 -0500
X-Greylist: delayed 526 seconds by postgrey-1.27 at vger.kernel.org; Sun, 28 Nov 2021 13:29:35 EST
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9F6D5EF4;
        Sun, 28 Nov 2021 19:17:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638123461;
        bh=ZDTuLLAXw9rJGEGORoJFCWqbYZ69J5HXdVpt25T0JAU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZByzwZpvDxs+x9VT51OkFTJg+H0zfCcXkFS5eo5xOgxxsDdXHmh3HSax/wtdgdrY9
         enq/CyY/8obp7XOfUneepyJYCt+YM/OuaJUp8w1Diufm5Gqb5IrKk8+qGvdZyqB7kP
         iHASXfU9w57L89TzP/kklj5PCq6LZlAVcCpR+2SA7wmCK7xAaw5CaVKILgraqc4Z6A
         gUjbQQO5CyTZjA6lTx4Lr+TQ6BtB4r+hb4TK/cYLexBlpXMMeHyGO81OqdnotfMKwb
         yd90t8z7JYVrUzby4Ih2F2VrdVylQ4QwYdA3hk+/NOBuX8L08plDjTm2l11oFH7vRd
         k+zI6EQkSHKMQ==
Date:   Sun, 28 Nov 2021 19:17:40 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/4] clock_getres.2, clock_nanosleep.2, io_getevents.2,
 nanosleep.2, poll.2, sched_rr_get_interval.2, select.2, sigwaitinfo.2,
 timer_settime.2, timerfd_create.2, utimensat.2, mq_receive.3, mq_send.3,
 pthread_tryjoin_np.3, system_data_types.7: correct struct timespec::tv_nsec
 type for x32
Message-ID: <de0b63287590038675ef723e052ec1d765f7c59b.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="oq5tffhqwj5npzy4"
Content-Disposition: inline
In-Reply-To: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oq5tffhqwj5npzy4
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
       if using ILP64 syscalls on an LP32 system, i.e. on x32.

This means, that the simplified
  struct timespec {
      time_t  tv_sec;  /* Seconds */
      long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
  };
declaration is *invalid* for x32,
where struct timespec::tv_nsec is an int64_t (long long).

Transformation snippet:
  sed -i -e '/Nanoseconds \[0/i#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 =
*/)' -e '/Nanoseconds \[0/a#else\
      long long tv_nsec;\
  #endif' man2/clock_getres.2 man2/clock_nanosleep.2 man2/io_getevents.2 ma=
n2/nanosleep.2 man2/poll.2 man2/sched_rr_get_interval.2 man2/select.2 man2/=
sigwaitinfo.2 man2/timer_settime.2 man2/timerfd_create.2 man2/utimensat.2 m=
an3/mq_receive.3 man3/mq_send.3 man3/pthread_tryjoin_np.3 man7/system_data_=
types.7

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/clock_getres.2          | 4 ++++
 man2/clock_nanosleep.2       | 4 ++++
 man2/io_getevents.2          | 4 ++++
 man2/nanosleep.2             | 4 ++++
 man2/poll.2                  | 4 ++++
 man2/sched_rr_get_interval.2 | 4 ++++
 man2/select.2                | 4 ++++
 man2/sigwaitinfo.2           | 4 ++++
 man2/timer_settime.2         | 4 ++++
 man2/timerfd_create.2        | 4 ++++
 man2/utimensat.2             | 4 ++++
 man3/mq_receive.3            | 4 ++++
 man3/mq_send.3               | 4 ++++
 man3/pthread_tryjoin_np.3    | 4 ++++
 man7/system_data_types.7     | 4 ++++
 15 files changed, 60 insertions(+)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index f94b69d3c..0d9326b84 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -94,7 +94,11 @@ structures, as specified in
 .EX
 struct timespec {
     time_t   tv_sec;        /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long     tv_nsec;       /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
index e6386e6a5..06ad6acf3 100644
--- a/man2/clock_nanosleep.2
+++ b/man2/clock_nanosleep.2
@@ -65,7 +65,11 @@ structures, defined as follows:
 .EX
 struct timespec {
     time_t tv_sec;        /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
index 08738e413..020cb5882 100644
--- a/man2/io_getevents.2
+++ b/man2/io_getevents.2
@@ -47,7 +47,11 @@ and is specified as a relative timeout in a structure of=
 the following form:
 .EX
 struct timespec {
     time_t tv_sec;      /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;     /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
index 993007e92..81f5d93a5 100644
--- a/man2/nanosleep.2
+++ b/man2/nanosleep.2
@@ -85,7 +85,11 @@ It is defined as follows:
 .EX
 struct timespec {
     time_t tv_sec;        /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man2/poll.2 b/man2/poll.2
index a278efbcc..1bdd06ded 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -330,7 +330,11 @@ This argument is a pointer to a structure of the follo=
wing form:
 .EX
 struct timespec {
     time_t  tv_sec;         /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man2/sched_rr_get_interval.2 b/man2/sched_rr_get_interval.2
index 1f249572b..ee9067c20 100644
--- a/man2/sched_rr_get_interval.2
+++ b/man2/sched_rr_get_interval.2
@@ -55,7 +55,11 @@ structure has the following form:
 .EX
 struct timespec {
     time_t tv_sec;    /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;   /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man2/select.2 b/man2/select.2
index fd9a994eb..dad9e8937 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -359,7 +359,11 @@ has the following type:
 .EX
 struct timespec {
     time_t      tv_sec;         /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long        tv_nsec;        /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
index 226625e4e..e2dcb5eef 100644
--- a/man2/sigwaitinfo.2
+++ b/man2/sigwaitinfo.2
@@ -94,7 +94,11 @@ This argument is of the following type:
 .EX
 struct timespec {
     time_t  tv_sec;         /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 }
 .EE
 .in
diff --git a/man2/timer_settime.2 b/man2/timer_settime.2
index 1c8d7fa17..a76fb9b10 100644
--- a/man2/timer_settime.2
+++ b/man2/timer_settime.2
@@ -67,7 +67,11 @@ structure is defined as follows:
 .EX
 struct timespec {
     time_t tv_sec;                /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;               /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
=20
 struct itimerspec {
diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 832ec4b68..4bf8a3a4b 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -159,7 +159,11 @@ each of which is in turn a structure of type
 .EX
 struct timespec {
     time_t tv_sec;                /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;               /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
=20
 struct itimerspec {
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index 19fa8c677..c806c51a5 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -94,7 +94,11 @@ This information is conveyed in a structure of the follo=
wing form:
 .EX
 struct timespec {
     time_t tv_sec;        /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man3/mq_receive.3 b/man3/mq_receive.3
index 4dac43643..deda2d452 100644
--- a/man3/mq_receive.3
+++ b/man3/mq_receive.3
@@ -98,7 +98,11 @@ specified in the following structure:
 .EX
 struct timespec {
     time_t tv_sec;        /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man3/mq_send.3 b/man3/mq_send.3
index 6b3fbe98a..c0e67df34 100644
--- a/man3/mq_send.3
+++ b/man3/mq_send.3
@@ -107,7 +107,11 @@ specified in the following structure:
 .EX
 struct timespec {
     time_t tv_sec;        /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
diff --git a/man3/pthread_tryjoin_np.3 b/man3/pthread_tryjoin_np.3
index 10b498c80..d68c2bbba 100644
--- a/man3/pthread_tryjoin_np.3
+++ b/man3/pthread_tryjoin_np.3
@@ -80,7 +80,11 @@ specifying an absolute time measured since the Epoch (see
 .EX
 struct timespec {
     time_t tv_sec;     /* Seconds */
+#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
     long   tv_nsec;    /* Nanoseconds [0 .. 999999999] */
+#else
+    long long tv_nsec;
+#endif
 };
 .EE
 .in
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


--oq5tffhqwj5npzy4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGjx8QACgkQvP0LAY0m
WPEWoQ/8DU4rTgiLD1QZiOXFMAjaDMp1BPs+/I8HMGR3XJY/CDtq2ST/7+g+mV6u
F9ZHir2bdpgFnJyozMb5gLcvOaq/q+ouMAi5o5jAM6dvr5wuP7+19ob83hW9U9a4
iHjVw/NSMGjXHhwqDf/ZBye40wJYElovUgJNwZ0td990Zh68MDkgpWm9iKoFHxNo
HwTGbrU14sWXFFTIK6+RJL5gZ9hg6TSpS/bwSat0QGFqYP+vzhkkfhsORKfESUrB
pgoPp/ezO3BhGzTUKt609TbfjERvdAVKs2cgndfkAlq/B2hAsev9skBq7kaaT2Fp
LsZKziHTcdQXYK4Q1K95GW+QFybG1jYnhjtl8Yrnle78BUQOY1fFCMkPpgnU6MI3
nCrATAwtnQZ3UAfNVBf2/NIGFXLm7XDeuMFNw+jfUnCxeQ8lqjccIGRMMXM0ir6/
+/w/nBD/hrSjbFSeVh5TYZZ44mCr8vXWLwFpn/Y4ZgTY85A6OdIn0nVT6+FD3iNQ
1plb0WkXFpC+Mc2/yvTlwoMh6tPMJVYOD1H8+RS50dwo6ZcbE7k5wjCf16ZlP8KZ
fIOQxIlk8IAKX1I+lib3nB9YnJ5rNEXCjkO0ZchfcXwrxZz/yKJOZe/UQ4712luH
QRCCKTFA5erNeMyYeCFd8ThMUz75hF5WiNEaJXvTCcr/dhJvErk=
=kGPn
-----END PGP SIGNATURE-----

--oq5tffhqwj5npzy4--
