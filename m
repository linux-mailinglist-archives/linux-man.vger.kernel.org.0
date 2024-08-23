Return-Path: <linux-man+bounces-1693-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 702BD95D984
	for <lists+linux-man@lfdr.de>; Sat, 24 Aug 2024 01:11:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 895411C21B52
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 23:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD9E1C8710;
	Fri, 23 Aug 2024 23:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7RxsiY4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE33195
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 23:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724454681; cv=none; b=kyXEffi1CGZ/vk8e3nld5VXRgnf5vDyxT/Vex8FfoyhjkrSDDFTvzrmdjvpr8+p7wwb03RO6kQCleCwIh/wkDJMseIG1niWSYo20Asj+p1cMh6j4qTPvTLsq6oo9Q1cKSMNN0MgZ62J5aONIDT/fc0QKB/42WVxnwjkBCIvM2wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724454681; c=relaxed/simple;
	bh=KG4xjNnGrB6c9Yn39/gbDKjIgh4aZmZf+XC1qkrQHd0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=DiFA7huzXU50pK/sEebUQ89Lcxhec86mZtaYIMNI5siAHPrpEdPNYB7u4L4driHVtnWOsdfwlJ4imBpIVVuKYpTiuBKK0RZ4usrRbFQAk9BnKmbhEjxWxNNCqVKDhM6QwnZ93e+S/2YRS2+ZiF/wQSexYrBibuhqg2n2y2xf4lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7RxsiY4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04605C32786;
	Fri, 23 Aug 2024 23:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724454681;
	bh=KG4xjNnGrB6c9Yn39/gbDKjIgh4aZmZf+XC1qkrQHd0=;
	h=Date:From:To:Cc:Subject:From;
	b=N7RxsiY4l1wiWu+zpTTzt2C3RacJ/kgkMB4vyy1o81mbfzGZmutI1shZyij9oEfyL
	 XGg8sc8QBzUVQ1Wr4bbhXJf8O/wTWSeOrVNhWPU6UB5wXWS20cgwp14ulGOg3r0evh
	 A/h/31vgD0wMxyXdfs24d5ZvaiXJi4Vxb96xVycFoWencVJSg5ahFbLZtMhFB4MTp3
	 /mcpzSU0dvZuEmGLzqPWmBDqiir1f30lFjgTl8ROWKAoH8PSbFVijMXQHB//y4XsOw
	 GlVoiYBl3FYaHMshVYpigtsfAQs62qBcNg6wwqvfwP+N1q7gGb8Kyn/w5GYG3FAvx5
	 mnKO0FDHTg4eA==
Date: Sat, 24 Aug 2024 01:11:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, DJ Delorie <dj@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v4] ctime.3: Document how to detect invalid or ambiguous times
Message-ID: <b7ed55965303389e698d29f8546a3bd2a049e2a5.1724454567.git.alx@kernel.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kaufhuwdtd6alpyv"
Content-Disposition: inline


--kaufhuwdtd6alpyv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, DJ Delorie <dj@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v4] ctime.3: Document how to detect invalid or ambiguous times
MIME-Version: 1.0

This example documents the corner cases of mktime(3), such as what
happens during DST transitions, and other jumps in the calendar.

Link: <https://www.redhat.com/en/blog/brief-history-mktime>
Reported-by: DJ Delorie <dj@redhat.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi DJ, Paul,

I've rebased on top of the patch from today which added an example
which showed how to check for errors after mktime(3).

This example extends it to also detect non-error corner-case conditions
that are not always wanted: invalid times, and ambiguous times.

It also documents lightly in CAVEATS that the result is unspecified in
any such call, without much details (because it's just unspecified).

DJ, I expect that the wrapper my_mktime(), which is itself a conforming
implementation of mktime(3), is what you were looking for.

Have a lovely night!
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


--kaufhuwdtd6alpyv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbJFxYACgkQnowa+77/
2zIb8A//THn4Ov+zB8DbH4dUTQ4nYUNkqxrmek9IboCp4QJ0t2ePhBUTsHR38XYC
K1wHA66GR/4S4rWhHoCFcp4jZHg+Smg0GB5OIEC1EgzI/OSSwbawpXUt9oBEiPE2
p3Z3p+EE02z0tsnTakTF8IRmbAliQmrfv+udFhevJAWtPvN0PHkBAP1T4+bT8JEr
Q1dtwpHqQNZe1Oo9uADI9P5AZ2ZiozNrNpFqaa4HPpz7Bs8azKvO8KOS7u1Nzsl+
VXO3O0Xa1jrm1GE94xJZV6V+BB/W64azQAZtQuQotOcxzA3mB947QiXUijn3QqSk
Sh+5FvkFP5wstqbVnoUk1j7AV/XxXziSxF+egMIXBD8O0vIhGr3IFoFX9B80o/nc
xHBFtoOhEdbRHgCRcGIjSerNZrVAQm9K0E406hftoWPVgi+Xxae4qvaHIT+zndga
dbEQM6rK2BwiFkG4UslCgWAu+dtf1TVMJRLSUQ/oUSXObYliX546RvOv4iT6RBUf
GnQ4LOJlqqLHVDWtQW/KT0OZVKw49Qq32SXhCBJN/jtvhr97qbe7deswBFKClZYp
jKVWIdE8g1dR+OyOfAj6XHGnfiAbx2Vhv1BLVPArBUKo/gdQ4MFBVAgKs8pu6rt1
+urlzfvftXcoaYA7G4lrmUhm/jPRxjjTYjifQ/nvES7B0OSHPWY=
=aoLt
-----END PGP SIGNATURE-----

--kaufhuwdtd6alpyv--

