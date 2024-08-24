Return-Path: <linux-man+bounces-1694-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EAB95DD07
	for <lists+linux-man@lfdr.de>; Sat, 24 Aug 2024 10:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 537BE1C21038
	for <lists+linux-man@lfdr.de>; Sat, 24 Aug 2024 08:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1923438FA1;
	Sat, 24 Aug 2024 08:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2hB1n0M"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE934EEB5
	for <linux-man@vger.kernel.org>; Sat, 24 Aug 2024 08:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724489180; cv=none; b=uCaxpidHWD2mSedv2zlVdEg5JVjVncDxTdnFjwtIqGGi0IOvos/oW7TawerTZqBf1kbj1cM6V/6V7YNwbk0OXiiddylXo5epF+u2CEpipuwrFiDZogbBruoMDvP/iIUdHry+we92FVVWPqaONLewVtHdOj8GQGJhF0TcT8Wzlps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724489180; c=relaxed/simple;
	bh=mtFIk90p9hVsX2MNRnCzmpJsa88Bqk7z7M2Wq1MBYBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ipkgx3OKXlTskPLQdUmS1UJ8w16L05h/rPDO6ZQvxZAHf3YK1ob8zCdLa3PH2i1BE4PNjKU1CJdv1EOZ018Wk0v/a4lTfX0hlIi1wiorGNwfZRpWQR1SNOfDuZ5rMctUCD1oHqd+1xfRSFQMAObmdz0QdkJaQ47S9GbeWIt9QdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2hB1n0M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 479C8C32781;
	Sat, 24 Aug 2024 08:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724489180;
	bh=mtFIk90p9hVsX2MNRnCzmpJsa88Bqk7z7M2Wq1MBYBs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H2hB1n0Ma0JXcVxIGt0v+WXDP7Bhtfi7Cye3ky+muXmEdFHEYF+ajMSik16lt99FZ
	 Yexef8sB145yt6QoiSIVYFyWvDGdXzOYzVy1O9x5cVAsUnQDEto4ql+ns2JpoKWJI2
	 MjdSs0pt8jr6tj03d6g3OW1s/aMU2Yfsj/GP1eDkmgVJqXQsOJ244NmWAyx9ciKh0z
	 I7F8yeAvGE96OxOp39/MQdkDYeneGcxVgyKqn+JayqvZHt06qxmH39w3xRgr9HhPvW
	 G/bCOjzWJcu1Pit/D3nYGqgmGJ1rwAu60KSzF7oMpPrc/QyPlWYydA0Pv/vn98UNR5
	 pb2r4GL6/zr5w==
Date: Sat, 24 Aug 2024 10:46:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, DJ Delorie <dj@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v5] ctime.3: Document how to detect invalid or ambiguous times
Message-ID: <20240824084614.4149-1-alx@kernel.org>
X-Mailer: git-send-email 2.45.2
References: <b7ed55965303389e698d29f8546a3bd2a049e2a5.1724454567.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nvajjd5z7ni3gkx6"
Content-Disposition: inline
In-Reply-To: <xned6jlywd.fsf@greed.delorie.com>


--nvajjd5z7ni3gkx6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, DJ Delorie <dj@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v5] ctime.3: Document how to detect invalid or ambiguous times
References: <b7ed55965303389e698d29f8546a3bd2a049e2a5.1724454567.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <xned6jlywd.fsf@greed.delorie.com>

This example documents the corner cases of mktime(3), such as what
happens during DST transitions, and other jumps in the calendar.

Link: <https://www.redhat.com/en/blog/brief-history-mktime>
Reported-by: DJ Delorie <dj@redhat.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi DJ, Paul,

This is just a resend of v4.  Forget v4.

I forgot to send it in reply to the previous versions, and forgot to
paste the rendered output.

Here's how this looks:

CAVEATS
     ...

   mktime()
     ...

     Passing an invalid time to mktime()  or  an  invalid  tm=E2=80=90>tm_i=
sdst
     value yields an unspecified result.  Also, passing the value -1 in
     tm=E2=80=90>tm_isdst  will  result  in  an  ambiguous time during some=
 DST
     transitions, which will also yield an unspecified result.  See the
     example program in EXAMPLES.

EXAMPLES
     The program below defines a wrapper that allows detecting  invalid
     and ambiguous times, with EINVAL and ENOTUNIQ, respectively.

     The following shell session shows sample runs of the program:

         $ TZ=3DUTC ./a.out 1969 12 31 23 59 59 0;
         -1
         $
         $ export TZ=3DEurope/Madrid;
         $
         $ ./a.out 2147483647 2147483647 00 00 00 00 =E2=80=901;
         a.out: mktime: Value too large for defined data type
         $
         $ ./a.out 2024 08 23 00 17 53 -1;
         1724365073
         $ ./a.out 2024 08 23 00 17 53 0;
         a.out: mktime: Invalid argument
         1724368673
         $ ./a.out 2024 08 23 00 17 53 1;
         1724365073
         $
         $ ./a.out 2024 02 23 00 17 53 -1;
         1708643873
         $ ./a.out 2024 02 23 00 17 53 0;
         1708643873
         $ ./a.out 2024 02 23 00 17 53 1;
         a.out: mktime: Invalid argument
         1708640273
         $
         $ ./a.out 2023 03 26 02 17 53 -1;
         a.out: mktime: Invalid argument
         1679793473
         $
         $ ./a.out 2023 10 29 02 17 53 -1;
         a.out: mktime: Name not unique on network
         1698542273
         $ ./a.out 2023 10 29 02 17 53 0;
         1698542273
         $ ./a.out 2023 10 29 02 17 53 1;
         1698538673
         $
         $ ./a.out 2023 02 29 12 00 00 -1;
         a.out: mktime: Invalid argument
         1677668400

   Program source: mktime.c

     #include <err.h>
     #include <errno.h>
     #include <stdint.h>
     #include <stdio.h>
     #include <stdlib.h>
     #include <string.h>
     #include <time.h>

     #define is_signed(T)  ((T) -1 < 1)

     time_t my_mktime(struct tm *tp);

     int
     main(int argc, char *argv[])
     {
         char       **p;
         time_t     t;
         struct tm  tm;

         if (argc !=3D 8) {
             fprintf(stderr, "Usage: %s yyyy mm dd HH MM SS isdst\n", argv[=
0]);
             exit(EXIT_FAILURE);
         }

         p =3D &argv[1];
         tm.tm_year  =3D atoi(*p++) - 1900;
         tm.tm_mon   =3D atoi(*p++) - 1;
         tm.tm_mday  =3D atoi(*p++);
         tm.tm_hour  =3D atoi(*p++);
         tm.tm_min   =3D atoi(*p++);
         tm.tm_sec   =3D atoi(*p++);
         tm.tm_isdst =3D atoi(*p++);

         errno =3D 0;
         tm.tm_wday =3D -1;
         t =3D my_mktime(&tm);
         if (tm.tm_wday =3D=3D -1)
             err(EXIT_FAILURE, "mktime");
         if (errno =3D=3D EINVAL || errno =3D=3D ENOTUNIQ)
             warn("mktime");

         if (is_signed(time_t))
             printf("%jd\n", (intmax_t) t);
         else
             printf("%ju\n", (uintmax_t) t);

         exit(EXIT_SUCCESS);
     }

     time_t
     my_mktime(struct tm *tp)
     {
         int            e, isdst;
         time_t         t;
         struct tm      tm;
         unsigned char  wday[sizeof(tp->tm_wday)];

         e =3D errno;

         tm =3D *tp;
         isdst =3D tp->tm_isdst;

         memcpy(wday, &tp->tm_wday, sizeof(wday));
         tp->tm_wday =3D -1;
         t =3D mktime(tp);
         if (tp->tm_wday =3D=3D -1) {
             memcpy(&tp->tm_wday, wday, sizeof(wday));
             return -1;
         }

         if (isdst =3D=3D -1)
             tm.tm_isdst =3D tp->tm_isdst;

         if (   tm.tm_sec   !=3D tp->tm_sec
             || tm.tm_min   !=3D tp->tm_min
             || tm.tm_hour  !=3D tp->tm_hour
             || tm.tm_mday  !=3D tp->tm_mday
             || tm.tm_mon   !=3D tp->tm_mon
             || tm.tm_year  !=3D tp->tm_year
             || tm.tm_isdst !=3D tp->tm_isdst)
         {
             errno =3D EINVAL;
             return t;
         }

         if (isdst !=3D -1)
             goto out;

         tm =3D *tp;
         tm.tm_isdst =3D !tm.tm_isdst;

         tm.tm_wday =3D -1;
         mktime(&tm);
         if (tm.tm_wday =3D=3D -1)
             goto out;

         if (tm.tm_isdst !=3D tp->tm_isdst) {
             errno =3D ENOTUNIQ;
             return t;
         }
     out:
         errno =3D e;
         return t;
     }

Cheers,
Alex


Range-diff against v3:
1:  e9e31a505 < -:  --------- ctime.3: EXAMPLES: Add example program
-:  --------- > 1:  b7ed55965 ctime.3: Document how to detect invalid or am=
biguous times

 man/man3/ctime.3 | 93 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 92 insertions(+), 1 deletion(-)

diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index 0ad2b530f..934da149e 100644
--- a/man/man3/ctime.3
+++ b/man/man3/ctime.3
@@ -427,7 +427,30 @@ .SS mktime()
 .I tm->tm_wday
 field.
 See the example program in EXAMPLES.
+.P
+Passing an invalid time to
+.BR mktime ()
+or an invalid
+.I tm->tm_isdst
+value
+yields an unspecified result.
+Also,
+passing the value
+.I \-1
+in
+.I tm->tm_isdst
+will result in an ambiguous time during some DST transitions,
+which will also yield an unspecified result.
+See the example program in EXAMPLES.
 .SH EXAMPLES
+The program below defines a wrapper that
+allows detecting invalid and ambiguous times,
+with
+.B EINVAL
+and
+.BR ENOTUNIQ ,
+respectively.
+.P
 The following shell session shows sample runs of the program:
 .P
 .in +4n
@@ -443,6 +466,7 @@ .SH EXAMPLES
 .RB $\~ "./a.out 2024 08 23 00 17 53 \-1" ;
 1724365073
 .RB $\~ "./a.out 2024 08 23 00 17 53 0" ;
+a.out: mktime: Invalid argument
 1724368673
 .RB $\~ "./a.out 2024 08 23 00 17 53 1" ;
 1724365073
@@ -452,12 +476,15 @@ .SH EXAMPLES
 .RB $\~ "./a.out 2024 02 23 00 17 53 0" ;
 1708643873
 .RB $\~ "./a.out 2024 02 23 00 17 53 1" ;
+a.out: mktime: Invalid argument
 1708640273
 $
 .RB $\~ "./a.out 2023 03 26 02 17 53 \-1" ;
+a.out: mktime: Invalid argument
 1679793473
 $
 .RB $\~ "./a.out 2023 10 29 02 17 53 \-1" ;
+a.out: mktime: Name not unique on network
 1698542273
 .RB $\~ "./a.out 2023 10 29 02 17 53 0" ;
 1698542273
@@ -465,6 +492,7 @@ .SH EXAMPLES
 1698538673
 $
 .RB $\~ "./a.out 2023 02 29 12 00 00 \-1" ;
+a.out: mktime: Invalid argument
 1677668400
 .EE
 .SS Program source: mktime.c
@@ -472,13 +500,17 @@ .SS Program source: mktime.c
 .\" SRC BEGIN (mktime.c)
 .EX
 #include <err.h>
+#include <errno.h>
 #include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
+#include <string.h>
 #include <time.h>
 \&
 #define is_signed(T)  ((T) \-1 < 1)
 \&
+time_t my_mktime(struct tm *tp);
+\&
 int
 main(int argc, char *argv[])
 {
@@ -500,10 +532,13 @@ .SS Program source: mktime.c
     tm.tm_sec   =3D atoi(*p++);
     tm.tm_isdst =3D atoi(*p++);
 \&
+    errno =3D 0;
     tm.tm_wday =3D \-1;
-    t =3D mktime(&tm);
+    t =3D my_mktime(&tm);
     if (tm.tm_wday =3D=3D \-1)
         err(EXIT_FAILURE, "mktime");
+    if (errno =3D=3D EINVAL || errno =3D=3D ENOTUNIQ)
+        warn("mktime");
 \&
     if (is_signed(time_t))
         printf("%jd\[rs]n", (intmax_t) t);
@@ -512,6 +547,62 @@ .SS Program source: mktime.c
 \&
     exit(EXIT_SUCCESS);
 }
+\&
+time_t
+my_mktime(struct tm *tp)
+{
+    int            e, isdst;
+    time_t         t;
+    struct tm      tm;
+    unsigned char  wday[sizeof(tp\->tm_wday)];
+\&
+    e =3D errno;
+\&
+    tm =3D *tp;
+    isdst =3D tp\->tm_isdst;
+\&
+    memcpy(wday, &tp\->tm_wday, sizeof(wday));
+    tp\->tm_wday =3D \-1;
+    t =3D mktime(tp);
+    if (tp\->tm_wday =3D=3D \-1) {
+        memcpy(&tp\->tm_wday, wday, sizeof(wday));
+        return \-1;
+    }
+\&
+    if (isdst =3D=3D \-1)
+        tm.tm_isdst =3D tp\->tm_isdst;
+\&
+    if (   tm.tm_sec   !=3D tp\->tm_sec
+        || tm.tm_min   !=3D tp\->tm_min
+        || tm.tm_hour  !=3D tp\->tm_hour
+        || tm.tm_mday  !=3D tp\->tm_mday
+        || tm.tm_mon   !=3D tp\->tm_mon
+        || tm.tm_year  !=3D tp\->tm_year
+        || tm.tm_isdst !=3D tp\->tm_isdst)
+    {
+        errno =3D EINVAL;
+        return t;
+    }
+\&
+    if (isdst !=3D \-1)
+        goto out;
+\&
+    tm =3D *tp;
+    tm.tm_isdst =3D !tm.tm_isdst;
+\&
+    tm.tm_wday =3D \-1;
+    mktime(&tm);
+    if (tm.tm_wday =3D=3D \-1)
+        goto out;
+\&
+    if (tm.tm_isdst !=3D tp\->tm_isdst) {
+        errno =3D ENOTUNIQ;
+        return t;
+    }
+out:
+    errno =3D e;
+    return t;
+}
 .EE
 .\" SRC END
 .SH SEE ALSO

base-commit: 6a7f1461b0e5474d50ef1920558dec103c0c058f
--=20
2.45.2


--nvajjd5z7ni3gkx6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbJndkACgkQnowa+77/
2zLBow//cYwG61MW0QwkyQDW5bJ8WLpjKJTKNqWT87rUXq81YDHSAEkelWQIWvYx
mu+1bvU10qc3A1NYpD8YzK+VE+qypM94p3rLhdUAeHYy72yV18YKObcawr9xfzG5
67ShEe+m5Q3aB0l4caqLTuzC5HYGURfC/nOExh7mQ3ol4dH8LUjzGfw2LzY+6fg3
321z25X7Me6nfNhpNxJDGlsnC1qqY+mhnMvqsRZqMBq5KAfATeLV69orYVnpt0Ft
WyGtLmxgqEH7eVuAdWBBul6HuJ809wGyCCyfJC1JWL/pvfDQDHfq/Jx3PslqD99h
MzZdUK04gGmAPOjU+jkU2deXxwX6a9+ly7Xtn/4vj7iOpdEGaDIdjvwRTDTusjPv
ieQxAGsHxk5utlaZluEyFJytLhkME7ru8Nu6K5tQtU7y3bTXwoPmE26ZRjlUJu2Y
hCtqClezuBBqcDXeqwkx4jLXGJAtV6Oh4R8diOaXPiyWzpsiedqQEU42do/eFfHU
s4DKryKrY5A4wEw8e6LM1sY8Pvt7dB3g9w8d0zq7Y8p5/AJGyToo031CbsVSf0z0
GLN5BgJaxvLJUzTKq9l+WI61S9HbUwRITVAyNBKcaGZvqNN3ng1zFSSeMmzl7vYZ
T7wdB27yZOB5UNSqAwrqQZIP3atWWy1gKg/dniZdZuenYwdZgDY=
=5KFp
-----END PGP SIGNATURE-----

--nvajjd5z7ni3gkx6--

