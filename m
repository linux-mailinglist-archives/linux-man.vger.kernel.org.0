Return-Path: <linux-man+bounces-1668-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC03295CD10
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 14:58:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CE8E1C214FA
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 12:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF2C5185B65;
	Fri, 23 Aug 2024 12:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZ00ionw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F38218594D
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 12:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724417923; cv=none; b=nZXTzbY1za0hFQq3QG65YtYTi1c1O04RncDp3bzm6QQ7rz7k7AacQ3TXB+fhywxuUui+5vuGvd1PNi8E0YEy8ZRyJH+KLmQanbMRaQiGvz6TmdPPfnjg3hhpsL0sBE754O7b+CaG2kT0HaYNF6tHsmY6NrAmhPUgXtq6g+0FhhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724417923; c=relaxed/simple;
	bh=RTq+2qMclTBbax3uIBOpkE92oWCr2bOk3XhwlEV6LmU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kYb1uDGgK7RRfDrWS04Nshr8J9zu/E8Kfa7fC0bW5HyDpw1E7vrP13/SWN5KNygfXmAtg7dDh0WkkXpZBpDNTgoVb+mRyZUDcPIb4RX6JOLcmuF46Fe1rGP587QVxJkpMuqlpSQDBcmix54Ek+Uxo2vInmA4Afwr/xczo0SDMeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZ00ionw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6972BC32786;
	Fri, 23 Aug 2024 12:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724417923;
	bh=RTq+2qMclTBbax3uIBOpkE92oWCr2bOk3XhwlEV6LmU=;
	h=Date:From:To:Cc:Subject:From;
	b=oZ00ionwNC6IHtl1SG4zRp4ZiFwO4D4P8akkmOmQgZOQtg4U4wp21/c2KWq+DD5kg
	 vqFtvpldSI59SlGTpbAD2ef1pB2tJlpLc3c+4tro1gLwLvdV38qUhP6/ajCxB5F+zv
	 CesP4wM0HjeAs9aKX67Px/aJXlbe/baigwDd2jcMpNFaRVNpkFfD7YqnQ0fV9KN9si
	 L3cCiigk2Rll4XQgnRjYXEo+GWE/Y4jePo6lfHZuK6VGxrLVVsrp1qocpRBwMPjb5c
	 UjqO+/er2qQ9b5a/xCeN6nAaIwFeqK1P2f57kjyLWbFSeAGPQ4wFFFckN93OVWlyIM
	 3RgopJIMuNIUg==
Date: Fri, 23 Aug 2024 14:58:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>, 
	DJ Delorie <dj@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Xi Ruoyao <xry111@xry111.site>, Vincent Lefevre <vincent@vinc17.net>, 
	GNU C Library <libc-alpha@sourceware.org>
Subject: [PATCH] ctime.3: Document how to check errors from mktime(3)
Message-ID: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hxid4u57riag7bzd"
Content-Disposition: inline


--hxid4u57riag7bzd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>, 
	DJ Delorie <dj@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Xi Ruoyao <xry111@xry111.site>, Vincent Lefevre <vincent@vinc17.net>, 
	GNU C Library <libc-alpha@sourceware.org>
Subject: [PATCH] ctime.3: Document how to check errors from mktime(3)
MIME-Version: 1.0

-1 is a valid successful time_t, for one second before the Epoch.  And
mktime(3) is allowed (like most libc calls) to set errno on success.
This makes it impossible to determine errors from the return value or
errno.

ISO C specifies that tp->tm_wday is unmodified after a failed call, and
puts an example where this is used to determine errors.  It is indeed
the only way to check for errors from this call.

Document this detail in the RETURN VALUE section, add a CAVEATS section
that warns about this, and write an example program that shows how to
properly call this function.

All the code I've been able to find in several search engines either
doesn't check for errors after mktime(3), or checks them incorrectly, so
this documentation should help fix those.

Reported-by: Paul Eggert <eggert@cs.ucla.edu>
Cc: DJ Delorie <dj@redhat.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Xi Ruoyao <xry111@xry111.site>
Cc: Vincent Lefevre <vincent@vinc17.net>
Cc: GNU C Library <libc-alpha@sourceware.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

This patch only documents how to check for errors after mktime(3).
It does not cover the corner cases reported by DJ.  This patch should be
uncontroversial.  I'll rebase the other one after this.

Cheers,
Alex

 man/man3/ctime.3 | 100 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 99 insertions(+), 1 deletion(-)

diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index 5aec51b79..777e7d5b2 100644
--- a/man/man3/ctime.3
+++ b/man/man3/ctime.3
@@ -241,7 +241,10 @@ .SH RETURN VALUE
 On error,
 .BR mktime ()
 returns the value
-.IR "(time_t)\ \-1" .
+.IR "(time_t)\ \-1" ,
+and leaves the
+.I tm->tm_wday
+member unmodified.
 The remaining functions return NULL on error.
 On error,
 .I errno
@@ -412,6 +415,101 @@ .SH NOTES
 object types may overwrite the information in any object of the same type
 pointed to by the value returned from any previous call to any of them."
 This can occur in the glibc implementation.
+.SH CAVEATS
+.SS mktime()
+.I (time_t) \-1
+can represent a valid time
+(one second before the Epoch).
+To determine if
+.BR mktime ()
+failed,
+one must use the
+.I tm->tm_wday
+field.
+See the example program in EXAMPLES.
+.SH EXAMPLES
+The following shell session shows sample runs of the program:
+.P
+.in +4n
+.EX
+.RB $\~ "TZ=3DUTC ./a.out 1969 12 31 23 59 59 0" ;
+\-1
+$
+.RB $\~ "export TZ=3DEurope/Madrid" ;
+$
+.RB $\~ "./a.out 2147483647 2147483647 00 00 00 00 -1" ;
+a.out: mktime: Value too large for defined data type
+$
+.RB $\~ "./a.out 2024 08 23 00 17 53 \-1" ;
+1724365073
+.RB $\~ "./a.out 2024 08 23 00 17 53 0" ;
+1724368673
+.RB $\~ "./a.out 2024 08 23 00 17 53 1" ;
+1724365073
+$
+.RB $\~ "./a.out 2024 02 23 00 17 53 \-1" ;
+1708643873
+.RB $\~ "./a.out 2024 02 23 00 17 53 0" ;
+1708643873
+.RB $\~ "./a.out 2024 02 23 00 17 53 1" ;
+1708640273
+$
+.RB $\~ "./a.out 2024 03 26 02 17 53 \-1" ;
+1679793473
+$
+.RB $\~ "./a.out 2024 10 29 02 17 53 \-1" ;
+1698542273
+.RB $\~ "./a.out 2024 10 29 02 17 53 0" ;
+1698542273
+.RB $\~ "./a.out 2024 10 29 02 17 53 1" ;
+1698538673
+$
+.RB $\~ "./a.out 2024 02 29 12 00 00 \-1" ;
+1677668400
+.EE
+.SS Program source: mktime.c
+\&
+.\" SRC BEGIN (mktime.c)
+.EX
+#include <err.h>
+#include <errno.h>
+#include <limits.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <time.h>
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
+    tm.tm_wday =3D INT_MIN;
+    t =3D mktime(&tm);
+    if (tm.tm_wday =3D=3D INT_MIN)
+        err(EXIT_FAILURE, "mktime");
+\&
+    printf("%jd\[rs]n", (intmax_t) t);
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
 .SH SEE ALSO
 .BR date (1),
 .BR gettimeofday (2),

base-commit: 0813c125d8bf754c40015aa1b31f23e0650584ac
--=20
2.45.2


--hxid4u57riag7bzd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbIh38ACgkQnowa+77/
2zJ7Pg/8CW4MR8zkmvHWFaO7fqOdSx+ZeZwIZObJsYRUDq9AhSrnSVgK/E+l3rah
B/JW6KRRoouxw8RbohSraRZbSKdG+pow1CIj0L+RRD+GUNkfVwt+x7q6zTKXB5Id
MHqww++HR756jfddaOPgb1VBwUrHJnm8Qq4VedabiPWlYizT/O5g80PK8YJVosTD
+m1FKVQYHca5OL5qIgR1VxYz187cw72xgKfKfh/VJ5QyiC++SQHuEqlRL0UH9EUn
IdYAGxvPgYoTqRTsNubPRo8CsDxc6WncTXta5Af6aDNfToMXmm6sjdBetYOd3nOt
c2FhORYIfFFtwxoPT4Moe5Ik4tyre3mRLT/IpMVogl7p8BylHOvBJw6WQWj0CGay
lom8wjXkeAOw/Pq/yZhJ6WiFbmrC1KmiaQzt127Ab0nOXYAQ++2bprsQbG+XkwVk
sUEmyXqI/F1QNtwGhpYBpEOsEoGpfoDMf/IFZkGHwi+pEXnB+l2LUakW1kvgL62K
xOvhDiCFxssBhJVCLrcCEe79GorgxROlJ84cF/MSEECKUUOR5Xc2fBy5khegvBkr
pcwRxfANa2UCrMcvh3YxdvnivcddP19ahXxANVvwO/uF0T3B89uTa4Ys2a4yVlm1
U9nxBUgxtQTH4xZlhm9RaQPXqth9+7hCuHxQKcwsZaKz5xwDPyA=
=kHe7
-----END PGP SIGNATURE-----

--hxid4u57riag7bzd--

