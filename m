Return-Path: <linux-man+bounces-1658-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD3595C198
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 01:49:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA20B1C221ED
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 23:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D5B186E5D;
	Thu, 22 Aug 2024 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sf9jeHw+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C61D183CC8
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 23:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724370593; cv=none; b=dk/u7FRpbWL1PVBmeh8gcvIBo/3y6yOFXC/k98e8DAyRfC1WAgwwT+JWhWxinF2Gk9Uuw/k/N2mY4i3DZ4l0tBWyJsHayVWRgOQdgb0u+E9hIbNQ95W26dSSj97oKE/g86imxcEbnIjPdjDM6ZJOV1aVusyABRZRkWi7RT8USWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724370593; c=relaxed/simple;
	bh=T4JvnyraaKof3CIbv1mF/+r/o1D68I4jM9cZcaViYQg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xau16rqfP4bHMD3QrLSUwgSSFXe3yW3387RgxZ2MVmYBVVWmZ7ECHRr8kKpqwJ4QfsiG2VJ5hoJdZ3X5+7cpxokfBeG6ADJDugaoesGDV+SEkGwnOF2WIKF0oTrwHbZX9JR+yRGE1MCdWnqTViafQKnEqezwEp3YjIvJh5rOS54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sf9jeHw+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76BBBC32782;
	Thu, 22 Aug 2024 23:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724370592;
	bh=T4JvnyraaKof3CIbv1mF/+r/o1D68I4jM9cZcaViYQg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sf9jeHw+7He5FnTkIXK7cQ0Z3EvKT5BFV8hfkYv3U2pdCXYwNIuqtslzuaAIrT0sL
	 Cmphmd/K1haKSSNOdceCiS6ViUKXuR6+PXUd0HF9ktZYM12iQ6IMm49gHuDVxDiXsa
	 30m+8fmdZ+udq/6+Wi3300BI3LNl8rsKkjAfA2ulmmSZliciq4oMWQnhW/2DvRDgGX
	 p86IjBhJP/AkDBj3YjNneJZ1cbFlxARO/4wsaNas0VG/NtXylKuTLN5evV1C251Bas
	 FdWsTVg41FpV9PZfBMety8aUv4XpLXQtCiTmBlNiVSUyAYpZ5cA1ubRWMlIumI1eT1
	 b95ns/VE6wHPA==
Date: Fri, 23 Aug 2024 01:49:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>, DJ Delorie <dj@redhat.com>, 
	Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, carlos@redhat.com
Subject: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
X-Mailer: git-send-email 2.45.2
References: <xned6jlywd.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mgm6wvyjzp7pek3l"
Content-Disposition: inline
In-Reply-To: <xned6jlywd.fsf@greed.delorie.com>


--mgm6wvyjzp7pek3l
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>, DJ Delorie <dj@redhat.com>, 
	Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, carlos@redhat.com
Subject: [PATCH v3] ctime.3: EXAMPLES: Add example program
References: <xned6jlywd.fsf@greed.delorie.com>
MIME-Version: 1.0
In-Reply-To: <xned6jlywd.fsf@greed.delorie.com>

This example documents the corner cases of mktime(3), such as what
happens during DST transitions, and other jumps in the calendar.

Link: <https://www.redhat.com/en/blog/brief-history-mktime>
Reported-by: DJ Delorie <dj@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi DJ, Paul!

Below is the rendered text.  I've tested this program with several
"weird" times, and it all makes sense.  Please review.

I call it v3, since it supersedes DJ's patches.

Have a lovely night!
Alex

EXAMPLES
     Passing an invalid time to mktime()  or  an  invalid  tm=E2=80=90>tm_i=
sdst
     value  yields  unspecified results.  Also, passing the value -1 in
     tm=E2=80=90>tm_isdst will result in an  ambiguous  time  during  some =
 DST
     transitions, which will also yield an unspecified result.

     The program below uses a wrapper that allows detecting invalid and
     ambiguous times, with EINVAL and ENOTUNIQ, respectively.

     The following shell session shows sample runs of the program:

         $ export TZ=3DEurope/Madrid;
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
         $ ./a.out 2024 03 26 02 17 53 -1;
         a.out: mktime: Invalid argument
         1679793473
         $
         $ ./a.out 2024 10 29 02 17 53 -1;
         a.out: mktime: Name not unique on network
         1698542273
         $ ./a.out 2024 10 29 02 17 53 0;
         1698542273
         $ ./a.out 2024 10 29 02 17 53 1;
         1698538673
         $
         $ ./a.out 2024 02 29 12 00 00 -1;
         a.out: mktime: Invalid argument
         1677668400

   Program source: mktime.c

     #include <err.h>
     #include <errno.h>
     #include <stdint.h>
     #include <stdio.h>
     #include <stdlib.h>
     #include <time.h>

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
         t =3D my_mktime(&tm);
         if (errno =3D=3D EOVERFLOW)
             err(EXIT_FAILURE, "mktime");
         if (errno =3D=3D EINVAL || errno =3D=3D ENOTUNIQ)
             warn("mktime");

         printf("%ju\n", (uintmax_t) t);
         exit(EXIT_SUCCESS);
     }

     time_t
     my_mktime(struct tm *tp)
     {
         int        e, isdst;
         time_t     t;
         struct tm  tm;

         e =3D errno;
         errno =3D 0;

         tm =3D *tp;
         isdst =3D tp->tm_isdst;

         t =3D mktime(tp);
         if (t =3D=3D -1 && errno =3D=3D EOVERFLOW)
             return -1;

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

         if (mktime(&tm) =3D=3D -1 && errno =3D=3D EOVERFLOW)
             goto out;

         if (tm.tm_isdst !=3D tp->tm_isdst) {
             errno =3D ENOTUNIQ;
             return t;
         }
     out:
         errno =3D e;
         return t;
     }


 man/man3/ctime.3 | 157 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 157 insertions(+)

diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index 5aec51b79..5ab881978 100644
--- a/man/man3/ctime.3
+++ b/man/man3/ctime.3
@@ -412,6 +412,163 @@ .SH NOTES
 object types may overwrite the information in any object of the same type
 pointed to by the value returned from any previous call to any of them."
 This can occur in the glibc implementation.
+.SH EXAMPLES
+Passing an invalid time to
+.BR mktime ()
+or an invalid
+.I tm->tm_isdst
+value
+yields unspecified results.
+Also,
+passing the value
+.I \-1
+in
+.I tm->tm_isdst
+will result in an ambiguous time during some DST transitions,
+which will also yield an unspecified result.
+.P
+The program below uses a wrapper that
+allows detecting invalid and ambiguous times,
+with
+.B EINVAL
+and
+.BR ENOTUNIQ ,
+respectively.
+.P
+The following shell session shows sample runs of the program:
+.P
+.in +4n
+.EX
+.RB $\~ "export TZ=3DEurope/Madrid" ;
+$
+.RB $\~ "./a.out 2024 08 23 00 17 53 \-1" ;
+1724365073
+.RB $\~ "./a.out 2024 08 23 00 17 53 0" ;
+a.out: mktime: Invalid argument
+1724368673
+.RB $\~ "./a.out 2024 08 23 00 17 53 1" ;
+1724365073
+$
+.RB $\~ "./a.out 2024 02 23 00 17 53 \-1" ;
+1708643873
+.RB $\~ "./a.out 2024 02 23 00 17 53 0" ;
+1708643873
+.RB $\~ "./a.out 2024 02 23 00 17 53 1" ;
+a.out: mktime: Invalid argument
+1708640273
+$
+.RB $\~ "./a.out 2024 03 26 02 17 53 \-1" ;
+a.out: mktime: Invalid argument
+1679793473
+$
+.RB $\~ "./a.out 2024 10 29 02 17 53 \-1" ;
+a.out: mktime: Name not unique on network
+1698542273
+.RB $\~ "./a.out 2024 10 29 02 17 53 0" ;
+1698542273
+.RB $\~ "./a.out 2024 10 29 02 17 53 1" ;
+1698538673
+$
+.RB $\~ "./a.out 2024 02 29 12 00 00 \-1" ;
+a.out: mktime: Invalid argument
+1677668400
+.EE
+.SS Program source: mktime.c
+\&
+.\" SRC BEGIN (mktime.c)
+.EX
+#include <err.h>
+#include <errno.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <time.h>
+\&
+time_t my_mktime(struct tm *tp);
+\&
+int
+main(int argc, char *argv[])
+{
+    char       **p;
+    time_t     t;
+    struct tm  tm;
+\&
+    if (argc !=3D 8) {
+        fprintf(stderr, "Usage: %s yyyy mm dd HH MM SS isdst\[rs]n", argv[=
0]);
+        exit(EXIT_FAILURE);
+    }
+\&
+    p =3D &argv[1];
+    tm.tm_year  =3D atoi(*p++) \- 1900;
+    tm.tm_mon   =3D atoi(*p++) \- 1;
+    tm.tm_mday  =3D atoi(*p++);
+    tm.tm_hour  =3D atoi(*p++);
+    tm.tm_min   =3D atoi(*p++);
+    tm.tm_sec   =3D atoi(*p++);
+    tm.tm_isdst =3D atoi(*p++);
+\&
+    errno =3D 0;
+    t =3D my_mktime(&tm);
+    if (errno =3D=3D EOVERFLOW)
+        err(EXIT_FAILURE, "mktime");
+    if (errno =3D=3D EINVAL || errno =3D=3D ENOTUNIQ)
+        warn("mktime");
+\&
+    printf("%ju\[rs]n", (uintmax_t) t);
+    exit(EXIT_SUCCESS);
+}
+\&
+time_t
+my_mktime(struct tm *tp)
+{
+    int        e, isdst;
+    time_t     t;
+    struct tm  tm;
+\&
+    e =3D errno;
+    errno =3D 0;
+\&
+    tm =3D *tp;
+    isdst =3D tp\->tm_isdst;
+\&
+    t =3D mktime(tp);
+    if (t =3D=3D \-1 && errno =3D=3D EOVERFLOW)
+        return \-1;
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
+    if (mktime(&tm) =3D=3D \-1 && errno =3D=3D EOVERFLOW)
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
+.EE
+.\" SRC END
 .SH SEE ALSO
 .BR date (1),
 .BR gettimeofday (2),

base-commit: 0813c125d8bf754c40015aa1b31f23e0650584ac
--=20
2.45.2


--mgm6wvyjzp7pek3l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbHzp0ACgkQnowa+77/
2zJ7dg//QmzCs0PgvzOVJAbZL7bu3cCn4h6MMKxAP0dp4Os8s/QVAAzfji2ewQHr
0YPMd64ECniKaCGyLvLrKpj8S6Xge9xkj6DUxWg5godv7tMkVXCWeKVR4Iy/uvf4
ZIw3lkWA0qi9Th713V3ziYWPvLrHrpXhln0CnwL9juq8T5pyyZ6q9oK3mAb7FibE
ojxtnsAujHEOCvNBACNxsh1Mw2qglM9vPEKLPcFc9aFUscDlSXQYXfrrjkdv3GuR
cn0F6kjOs6TJynhpDM48cVfRRWEBjvDby6Q6vs5FIHheTiUcCwjOQJburo1VI24s
sAvQfDthLRBNBuwp4VGHSIbrehYx9J1Q7SIF4HZo1HTpnX7I5ECKldGVdtMnccJO
F/FUUUABlPQKd1/0ccpREwjmTFxQPEE0X5gfXm/oZx04BKpdCppqSB7h/tVzbJft
3rGcX0QhesBAFyYE2ShURmEUujorqfrh+jTg8KgU+xe6LlT+fWb33P80/s3KlQRQ
F2NItout639t7S1ek06GN+l+zpJEj7WlIEpeF1+doGjHhJf0M6Z+8oEKS1KeCND7
HFUIxQru9ZidZN/YTFXY3hHeKNQD95ZnIfboGr6VGTpL+oRtPIaqTBlTk9kdtyaA
+mVB9+scMLiro2qp04KiIdDSsqEFoYG8dt2xS+pTV16NiLD2Npk=
=OzSP
-----END PGP SIGNATURE-----

--mgm6wvyjzp7pek3l--

