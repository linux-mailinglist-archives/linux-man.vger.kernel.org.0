Return-Path: <linux-man+bounces-1731-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A0296606C
	for <lists+linux-man@lfdr.de>; Fri, 30 Aug 2024 13:17:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F11CB2A494
	for <lists+linux-man@lfdr.de>; Fri, 30 Aug 2024 11:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D20D192D77;
	Fri, 30 Aug 2024 11:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZjKLJNu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0599179652
	for <linux-man@vger.kernel.org>; Fri, 30 Aug 2024 11:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725016160; cv=none; b=d8CpGafkmRJFD7IsTpBmqNqodLPUpb11Ib9eidzzaExP9U/p5CqYTy6sZomeIeflvpsW1abNdULjyAzJK2Nq0lKeE26HgoB+TTlnjG7xnkuQmKilKNWCwA7GFzODiiAIm0lL/I3Ui15cZ7LsH/9m8K49qarRiQjnIjxf9Oo9REk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725016160; c=relaxed/simple;
	bh=vYPQ7cZsQuO9JbL2+9yykw3iXSCKfMofzf483IwxaF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g7EF9P3NPzIfgv/fHWK2BzZ6zga+lOqHQgiTioqZjcyQJP/xx3NhkgHBQqLX4leHRt/bGU7m6Srk5w19+lx4TuQKs9O5ovtBxMxPjcK+MJwcAB3D5F/N9NHz4rXCOKAC0EsYbNoCb2sEC0Lv8HFPs6k2F0n7ltVMhAiyBkfjeEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZjKLJNu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65F45C4CEC2;
	Fri, 30 Aug 2024 11:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725016159;
	bh=vYPQ7cZsQuO9JbL2+9yykw3iXSCKfMofzf483IwxaF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jZjKLJNuK5y+33DhswfVgaOpAsX+R0uybyWH/kX5g++ekVRY1ilz3ucWMoLP79RPU
	 YBTuwQBl3V+qUNPyhgvkdgcuEKoQd/r03micIKr5nYsMF1QrN1fZhaY5V5Tm+2JBm+
	 gf2J9zn7Jxk3A1Rrc/985es5RCe0KCsAUwwGK9maVCSvAaNOt+9HfKjNRIzJRGJ/79
	 QnNkJMww0gILH32eXJ/1oaw/ENgXX8L10N/N/T+uOEwkvPvuTejnGpltSiWmDc5Rbv
	 X99cDAulp7hX6yk/gJWZ1fj6MOg9FdZcnVbyVdvRmt9Ae+UTR/Rycc2by85jWXl1np
	 JuYBmYlZ/YN4w==
Date: Fri, 30 Aug 2024 13:09:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, DJ Delorie <dj@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v6] ctime.3: EXAMPLES: Document how to detect invalid or
 ambiguous times
Message-ID: <631714d92bd74133d2a41e07d665aab339d56cb8.1725016001.git.alx@kernel.org>
X-Mailer: git-send-email 2.45.2
References: <20240824084614.4149-1-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kdm5rj47g4ooxmpq"
Content-Disposition: inline
In-Reply-To: <20240824084614.4149-1-alx@kernel.org>


--kdm5rj47g4ooxmpq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, DJ Delorie <dj@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v6] ctime.3: EXAMPLES: Document how to detect invalid or
 ambiguous times
References: <20240824084614.4149-1-alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240824084614.4149-1-alx@kernel.org>

This example documents how to detect some corner cases of mktime(3),
such as DST transitions and other jumps in the calendar.

Link: <https://www.redhat.com/en/blog/brief-history-mktime>
Cc: DJ Delorie <dj@redhat.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi DJ, Paul,

v6:

-  Rebase after DJ's patch, which I've merged already.  Now this one
   only adds code to EXAMPLES, since CAVEATS already documents the
   problems with invalid and ambiguous times.
-  Report these errors as my_mktime errors, no mktime ones.

Below is a range-diff against v5.

Have a lovely day!
Alex


Range-diff against v5:
1:  b7ed55965 ! 1:  631714d92 ctime.3: Document how to detect invalid or am=
biguous times
    @@ Metadata
     Author: Alejandro Colomar <alx@kernel.org>
    =20
      ## Commit message ##
    -    ctime.3: Document how to detect invalid or ambiguous times
    +    ctime.3: EXAMPLES: Document how to detect invalid or ambiguous tim=
es
    =20
         This example documents the corner cases of mktime(3), such as what
         happens during DST transitions, and other jumps in the calendar.
    =20
         Link: <https://www.redhat.com/en/blog/brief-history-mktime>
    -    Reported-by: DJ Delorie <dj@redhat.com>
    +    Cc: DJ Delorie <dj@redhat.com>
         Cc: Carlos O'Donell <carlos@redhat.com>
         Cc: Paul Eggert <eggert@cs.ucla.edu>
         Signed-off-by: Alejandro Colomar <alx@kernel.org>
    =20
      ## man/man3/ctime.3 ##
     @@ man/man3/ctime.3: .SS mktime()
    - .I tm->tm_wday
    - field.
    - See the example program in EXAMPLES.
    -+.P
    -+Passing an invalid time to
    -+.BR mktime ()
    -+or an invalid
    -+.I tm->tm_isdst
    -+value
    -+yields an unspecified result.
    -+Also,
    -+passing the value
    -+.I \-1
    -+in
    -+.I tm->tm_isdst
    -+will result in an ambiguous time during some DST transitions,
    -+which will also yield an unspecified result.
    -+See the example program in EXAMPLES.
    + may cause a clock time to be repeated or skipped
    + without a corresponding DST change.
      .SH EXAMPLES
     +The program below defines a wrapper that
     +allows detecting invalid and ambiguous times,
    @@ man/man3/ctime.3: .SH EXAMPLES
      .RB $\~ "./a.out 2024 08 23 00 17 53 \-1" ;
      1724365073
      .RB $\~ "./a.out 2024 08 23 00 17 53 0" ;
    -+a.out: mktime: Invalid argument
    ++a.out: my_mktime: Invalid argument
      1724368673
      .RB $\~ "./a.out 2024 08 23 00 17 53 1" ;
      1724365073
    @@ man/man3/ctime.3: .SH EXAMPLES
      .RB $\~ "./a.out 2024 02 23 00 17 53 0" ;
      1708643873
      .RB $\~ "./a.out 2024 02 23 00 17 53 1" ;
    -+a.out: mktime: Invalid argument
    ++a.out: my_mktime: Invalid argument
      1708640273
      $
      .RB $\~ "./a.out 2023 03 26 02 17 53 \-1" ;
    -+a.out: mktime: Invalid argument
    ++a.out: my_mktime: Invalid argument
      1679793473
      $
      .RB $\~ "./a.out 2023 10 29 02 17 53 \-1" ;
    -+a.out: mktime: Name not unique on network
    ++a.out: my_mktime: Name not unique on network
      1698542273
      .RB $\~ "./a.out 2023 10 29 02 17 53 0" ;
      1698542273
    @@ man/man3/ctime.3: .SH EXAMPLES
      1698538673
      $
      .RB $\~ "./a.out 2023 02 29 12 00 00 \-1" ;
    -+a.out: mktime: Invalid argument
    ++a.out: my_mktime: Invalid argument
      1677668400
      .EE
      .SS Program source: mktime.c
    @@ man/man3/ctime.3: .SS Program source: mktime.c
          if (tm.tm_wday =3D=3D \-1)
              err(EXIT_FAILURE, "mktime");
     +    if (errno =3D=3D EINVAL || errno =3D=3D ENOTUNIQ)
    -+        warn("mktime");
    ++        warn("my_mktime");
      \&
          if (is_signed(time_t))
              printf("%jd\[rs]n", (intmax_t) t);

 man/man3/ctime.3 | 78 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 77 insertions(+), 1 deletion(-)

diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index 53abab6d9..acd6f1565 100644
--- a/man/man3/ctime.3
+++ b/man/man3/ctime.3
@@ -467,6 +467,14 @@ .SS mktime()
 may cause a clock time to be repeated or skipped
 without a corresponding DST change.
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
@@ -482,6 +490,7 @@ .SH EXAMPLES
 .RB $\~ "./a.out 2024 08 23 00 17 53 \-1" ;
 1724365073
 .RB $\~ "./a.out 2024 08 23 00 17 53 0" ;
+a.out: my_mktime: Invalid argument
 1724368673
 .RB $\~ "./a.out 2024 08 23 00 17 53 1" ;
 1724365073
@@ -491,12 +500,15 @@ .SH EXAMPLES
 .RB $\~ "./a.out 2024 02 23 00 17 53 0" ;
 1708643873
 .RB $\~ "./a.out 2024 02 23 00 17 53 1" ;
+a.out: my_mktime: Invalid argument
 1708640273
 $
 .RB $\~ "./a.out 2023 03 26 02 17 53 \-1" ;
+a.out: my_mktime: Invalid argument
 1679793473
 $
 .RB $\~ "./a.out 2023 10 29 02 17 53 \-1" ;
+a.out: my_mktime: Name not unique on network
 1698542273
 .RB $\~ "./a.out 2023 10 29 02 17 53 0" ;
 1698542273
@@ -504,6 +516,7 @@ .SH EXAMPLES
 1698538673
 $
 .RB $\~ "./a.out 2023 02 29 12 00 00 \-1" ;
+a.out: my_mktime: Invalid argument
 1677668400
 .EE
 .SS Program source: mktime.c
@@ -511,13 +524,17 @@ .SS Program source: mktime.c
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
@@ -539,10 +556,13 @@ .SS Program source: mktime.c
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
+        warn("my_mktime");
 \&
     if (is_signed(time_t))
         printf("%jd\[rs]n", (intmax_t) t);
@@ -551,6 +571,62 @@ .SS Program source: mktime.c
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
--=20
2.45.2


--kdm5rj47g4ooxmpq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbRqFwACgkQnowa+77/
2zIX5Q/+K8hZLnJZwxP4xV7mKPBigtX3+3qAFm6xUAyKrpFU2zlacIm66uSQzLag
RJGkFlr+jTQ0l/3evMCc/6IzXmmPM4NQMOrM0PxARnbrm/J2ROV+qqLaQZO2joIS
sMqM8ZIhRKT6sYDA86+OOhGKt853duYi/hN3sWqCFa7GQOFEyC+sYMecGN3V2AnC
WJvf/8dNb5jZBVGJneRmJw7FvS2xzZnI5WZo57C74GK63S4SIrUO1PxWAZlzCqko
uyRw32v7aU6GIZW2HeHgG9j2OMUX5EpYHy+3xkjHb0lpwlE86ufx8wkpipS0x5nX
CV84rSNOTMrFLxd4PMUlG3vOAhpqsEoNoITNY0HcoRrBwcCshZQUVzoHE9a3JFSI
MLwBy7WFicrJcdipZOmZD6+4aQt6wi/PLD3uhoxCE6oxXfyJylkGAdwr/bzHP5OQ
2+FYwd1QwMXimcJ/cWfWGVuIOuajz/TCyiHLHG/X1MtFvQK0bkjFn7ienwpTqQX3
HM1lEZblu6yZDJ1AYORrHIHMY5oz5rYOATGGDuvZjEbnB00oWgkr/XZo9ZLfGZv5
u35xSFGCmDNos4eWhuADhxakE6lQB7saatUtDzR7v6uYlfgDtoZ0ist/HLFaBqIY
4cNBmUdR40MBUF9h33M9QYBxO5Bdfo7PdTJvNQ2e/eGJYV/4OSU=
=qiHH
-----END PGP SIGNATURE-----

--kdm5rj47g4ooxmpq--

