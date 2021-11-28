Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 639004608F7
	for <lists+linux-man@lfdr.de>; Sun, 28 Nov 2021 19:28:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233568AbhK1Sbg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Nov 2021 13:31:36 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:45406 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S234739AbhK1S3f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Nov 2021 13:29:35 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B6F84162E;
        Sun, 28 Nov 2021 19:17:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638123447;
        bh=bQGYgiHXnUqVcpLexuAoiCiugYMYczJokwJiIVlaots=;
        h=Date:From:To:Cc:Subject:From;
        b=I9e0SzfHWajP8YcQUNkfvABq+ep0jmzzvtGrwp+9g11pU7COveORd091qPwOVkz+D
         rqbQauq9U0gOiGYj8YRL34nkHAvYEVMiSbyo2eSrxYh4Z2UUORCWeBQgGzuCNKv+zB
         bAtqa6l20wkv6G+1SnuKX5/avqUJS1uo4QgpVPkKXkl+AjjQS8Tg/bXghtFo25I4mh
         oS+R/q+WB1L07d6ANpQueo7qbj+ywzPoU7xfuGtrutY/2U0B9KO9CF7EtkU69Kmvff
         xH9zIhlEEclxY30BTDLrghVNYRivzmoXcr1I4IhnT2grIpHwxzJ5ay764/sh73cH+k
         VaRyVgjvI54Bg==
Date:   Sun, 28 Nov 2021 19:17:26 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/4] clock_getres.2, clock_nanosleep.2, io_getevents.2,
 nanosleep.2, poll.2, sched_rr_get_interval.2, select.2, sigwaitinfo.2,
 timer_settime.2, timerfd_create.2, utimensat.2, mq_receive.3, mq_send.3,
 pthread_tryjoin_np.3, sem_wait.3, system_data_types.7: standardise on struct
 timespec fields comments to ucase w/tv_nsec range
Message-ID: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ocvdsnw6mmdhrpjn"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ocvdsnw6mmdhrpjn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/clock_getres.2          | 4 ++--
 man2/clock_nanosleep.2       | 4 ++--
 man2/io_getevents.2          | 4 ++--
 man2/nanosleep.2             | 4 ++--
 man2/poll.2                  | 4 ++--
 man2/sched_rr_get_interval.2 | 4 ++--
 man2/select.2                | 6 +++---
 man2/sigwaitinfo.2           | 4 ++--
 man2/timer_settime.2         | 2 +-
 man2/timerfd_create.2        | 2 +-
 man2/utimensat.2             | 4 ++--
 man3/mq_receive.3            | 4 ++--
 man3/mq_send.3               | 4 ++--
 man3/pthread_tryjoin_np.3    | 4 ++--
 man7/system_data_types.7     | 2 +-
 15 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index c2bb492b9..f94b69d3c 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -93,8 +93,8 @@ structures, as specified in
 .in +4n
 .EX
 struct timespec {
-    time_t   tv_sec;        /* seconds */
-    long     tv_nsec;       /* nanoseconds */
+    time_t   tv_sec;        /* Seconds */
+    long     tv_nsec;       /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
index b8c4afc2c..e6386e6a5 100644
--- a/man2/clock_nanosleep.2
+++ b/man2/clock_nanosleep.2
@@ -64,8 +64,8 @@ structures, defined as follows:
 .in +4n
 .EX
 struct timespec {
-    time_t tv_sec;        /* seconds */
-    long   tv_nsec;       /* nanoseconds [0 .. 999999999] */
+    time_t tv_sec;        /* Seconds */
+    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
index 7c7e625bf..08738e413 100644
--- a/man2/io_getevents.2
+++ b/man2/io_getevents.2
@@ -46,8 +46,8 @@ and is specified as a relative timeout in a structure of =
the following form:
 .in +4n
 .EX
 struct timespec {
-    time_t tv_sec;      /* seconds */
-    long   tv_nsec;     /* nanoseconds [0 .. 999999999] */
+    time_t tv_sec;      /* Seconds */
+    long   tv_nsec;     /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
index 89d8577db..993007e92 100644
--- a/man2/nanosleep.2
+++ b/man2/nanosleep.2
@@ -84,8 +84,8 @@ It is defined as follows:
 .in +4n
 .EX
 struct timespec {
-    time_t tv_sec;        /* seconds */
-    long   tv_nsec;       /* nanoseconds */
+    time_t tv_sec;        /* Seconds */
+    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man2/poll.2 b/man2/poll.2
index 205468f3e..620528ec7 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -329,8 +329,8 @@ This argument is a pointer to a structure of the follow=
ing form:
 .in +4n
 .EX
 struct timespec {
-    long    tv_sec;         /* seconds */
-    long    tv_nsec;        /* nanoseconds */
+    long    tv_sec;         /* Seconds */
+    long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man2/sched_rr_get_interval.2 b/man2/sched_rr_get_interval.2
index 93db938df..1f249572b 100644
--- a/man2/sched_rr_get_interval.2
+++ b/man2/sched_rr_get_interval.2
@@ -54,8 +54,8 @@ structure has the following form:
 .in +4n
 .EX
 struct timespec {
-    time_t tv_sec;    /* seconds */
-    long   tv_nsec;   /* nanoseconds */
+    time_t tv_sec;    /* Seconds */
+    long   tv_nsec;   /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man2/select.2 b/man2/select.2
index aee25c52c..fd9a994eb 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -345,7 +345,7 @@ is a structure of the following type:
 .in +4n
 .EX
 struct timeval {
-    time_t      tv_sec;         /* seconds */
+    time_t      tv_sec;         /* Seconds */
     suseconds_t tv_usec;        /* microseconds */
 };
 .EE
@@ -358,8 +358,8 @@ has the following type:
 .in +4n
 .EX
 struct timespec {
-    time_t      tv_sec;         /* seconds */
-    long        tv_nsec;        /* nanoseconds */
+    time_t      tv_sec;         /* Seconds */
+    long        tv_nsec;        /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
index 00bc50485..716661479 100644
--- a/man2/sigwaitinfo.2
+++ b/man2/sigwaitinfo.2
@@ -93,8 +93,8 @@ This argument is of the following type:
 .in +4n
 .EX
 struct timespec {
-    long    tv_sec;         /* seconds */
-    long    tv_nsec;        /* nanoseconds */
+    long    tv_sec;         /* Seconds */
+    long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
 }
 .EE
 .in
diff --git a/man2/timer_settime.2 b/man2/timer_settime.2
index 10687b211..1c8d7fa17 100644
--- a/man2/timer_settime.2
+++ b/man2/timer_settime.2
@@ -67,7 +67,7 @@ structure is defined as follows:
 .EX
 struct timespec {
     time_t tv_sec;                /* Seconds */
-    long   tv_nsec;               /* Nanoseconds */
+    long   tv_nsec;               /* Nanoseconds [0 .. 999999999] */
 };
=20
 struct itimerspec {
diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 65fdfcc45..832ec4b68 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -159,7 +159,7 @@ each of which is in turn a structure of type
 .EX
 struct timespec {
     time_t tv_sec;                /* Seconds */
-    long   tv_nsec;               /* Nanoseconds */
+    long   tv_nsec;               /* Nanoseconds [0 .. 999999999] */
 };
=20
 struct itimerspec {
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index cb5f6b693..19fa8c677 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -93,8 +93,8 @@ This information is conveyed in a structure of the follow=
ing form:
 .in +4n
 .EX
 struct timespec {
-    time_t tv_sec;        /* seconds */
-    long   tv_nsec;       /* nanoseconds */
+    time_t tv_sec;        /* Seconds */
+    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man3/mq_receive.3 b/man3/mq_receive.3
index df463297d..4dac43643 100644
--- a/man3/mq_receive.3
+++ b/man3/mq_receive.3
@@ -97,8 +97,8 @@ specified in the following structure:
 .in +4n
 .EX
 struct timespec {
-    time_t tv_sec;        /* seconds */
-    long   tv_nsec;       /* nanoseconds */
+    time_t tv_sec;        /* Seconds */
+    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man3/mq_send.3 b/man3/mq_send.3
index 54999f440..6b3fbe98a 100644
--- a/man3/mq_send.3
+++ b/man3/mq_send.3
@@ -106,8 +106,8 @@ specified in the following structure:
 .in +4n
 .EX
 struct timespec {
-    time_t tv_sec;        /* seconds */
-    long   tv_nsec;       /* nanoseconds */
+    time_t tv_sec;        /* Seconds */
+    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man3/pthread_tryjoin_np.3 b/man3/pthread_tryjoin_np.3
index e912f8e3b..10b498c80 100644
--- a/man3/pthread_tryjoin_np.3
+++ b/man3/pthread_tryjoin_np.3
@@ -79,8 +79,8 @@ specifying an absolute time measured since the Epoch (see
 .in +4n
 .EX
 struct timespec {
-    time_t tv_sec;     /* seconds */
-    long   tv_nsec;    /* nanoseconds */
+    time_t tv_sec;     /* Seconds */
+    long   tv_nsec;    /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .in
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index d117b1d2b..1e6a3f74c 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1544,7 +1544,7 @@ or
 .EX
 struct timespec {
     time_t  tv_sec;  /* Seconds */
-    long    tv_nsec; /* Nanoseconds */
+    long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
 };
 .EE
 .PP
--=20
2.30.2


--ocvdsnw6mmdhrpjn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGjx7YACgkQvP0LAY0m
WPGhGw//brnVmo1pxmUT7eTAtrDYgGs0/OmvZMdhJgILTfdGIxgZ3FKpSi50WE68
f6TBBj8/F9ke9I2c6ScEXajzcpqRkdIMIs9zd1uvNPC7M7gkMU2HAvRN08jNq8p9
HleffsMHjUo5deTa+Pl54oLZ46cwGN/YYioe2MrKJwmtc5nQaPY63blzDTqweQxk
H2HWVBhqbXsva7FUl5SEO6khEvcwXVYoTL+SF2zeB1cqxHuAcmPHaL41gFfV2eJc
lPrXNlZoqt3I8AU4QKXCPOI1b+xQ8TbxSM5Pt9GTKaYz4DJrBsTKWCeE0ZSjKM1Y
r6S1O64r8eOxtF5pzs1dUc8dhLjoEkefQTU8mqfUpRG3mxMvi4CXM0qRsJZxve+O
yczWSIYGi45IDpey+w/LmbWOnOgKr1clNQCUvQj8PTfSxrT8l8eSuA2vucNU9TSA
qx9AWI7tgkg4Ryu3kQ4pa+W251NDnPFgAivF9yQjlVCgb8p/7FE++s7cZGrQtirY
UZQ3HNBVbdDs8KrN2un70Wfg6Os9pzlwvvy/IIlAPwYtHNd8Bx/lW5n5i2uGtpNZ
Ah5moFcIBN57n+465iJWlP/kafa4WXWbLhIvlPJfwR6pxg6X0dLw6j79EFem4qJh
LmJxrVIWDDz5hTYfAiIvHF/jjpcHEDjB3khwPwsZQQqesnLc0OA=
=JZyJ
-----END PGP SIGNATURE-----

--ocvdsnw6mmdhrpjn--
