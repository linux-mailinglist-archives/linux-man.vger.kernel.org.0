Return-Path: <linux-man+bounces-1675-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA39795D024
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 16:38:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49E1F1F22C55
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 14:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3D56185E7B;
	Fri, 23 Aug 2024 14:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNGa0Sd2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6365214A4EF
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 14:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724423878; cv=none; b=IYSOIitzd/8XIJdWtktM2P2oCvux6jgI7bbX5IYbpy0Qds+2hMMCXcnyrtYPJbZqw3oa3Az9Ck8HQjFFnIKi7hXLbMURcmWTAZXIfMn2RMKEaUyFEVHy6GlgQm+YCYcd5DR0Q/MH02hLbN5GIN4O7FEKZqfHEvQxRZZGdmqcdMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724423878; c=relaxed/simple;
	bh=woRr0nYF9VkBv1Z++ziMEb/XhCyJ0gN2jBLlE4UCYIU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=kNJDhoAlhOCXDm5gyHmS+kE8Tp0zZWxcCjawxPdKb0MgdX3GDE+om2WFlEroY05y9uLo1jIHhNNHRuE4qyy3NAPCNKTDrqFQEVGuwOTm38UjXRx6j6BRbh8EUltauCrneNuccHTe8Hv4kaSul7mORC3gMIEr4k1joY5FsGxolgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNGa0Sd2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C037EC32786;
	Fri, 23 Aug 2024 14:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724423877;
	bh=woRr0nYF9VkBv1Z++ziMEb/XhCyJ0gN2jBLlE4UCYIU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=hNGa0Sd2T3uIReD81OY9Sank81N4mdo4++JFyXS5E3SHl58hJNlhS8SLPQpwaUySP
	 RNsbFBdGl9BG1mA9jy50wPRdIluhgr36rye3AQWG4ybnEjaL/SICftVI8/GLW4imQ4
	 GfCr3N++sL4I+DjVjYNDc6SQSlIoon98m/8Tv3TRfuwm26XAlFzXmnQIH4NthmSgbN
	 JQKMM3Loar/I1fxVZa908TA8mNd0hiwXtnqd0Dn+Kj08swgMknNFSitFd/LfqnyzSj
	 C3ut+H5Dggqho/telqCyZywADpHegFgvL7pSFCJpXNC4MEGfqUgPzxxL5c8ygJiAWm
	 nlVAmLmGwoogw==
Date: Fri, 23 Aug 2024 16:37:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>, 
	Vincent Lefevre <vincent@vinc17.net>, DJ Delorie <dj@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Xi Ruoyao <xry111@xry111.site>, Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, 
	"Robert C. Seacord" <rcseacord@gmail.com>, Jens Gustedt <jens.gustedt@inria.fr>, 
	GNU C Library <libc-alpha@sourceware.org>
Subject: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
Message-ID: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dssyzfw6ruzmfcb3"
Content-Disposition: inline
In-Reply-To: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>


--dssyzfw6ruzmfcb3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>, 
	Vincent Lefevre <vincent@vinc17.net>, DJ Delorie <dj@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Xi Ruoyao <xry111@xry111.site>, Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, 
	"Robert C. Seacord" <rcseacord@gmail.com>, Jens Gustedt <jens.gustedt@inria.fr>, 
	GNU C Library <libc-alpha@sourceware.org>
Subject: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
MIME-Version: 1.0
In-Reply-To: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>

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

This is guaranteed since ISO C23 and POSIX.1-2024.  Prior to those
standards, there was no standard way to check for errors.  However,
there are no known implementations that do not conform to this,
according to WG14 (which themselves refer to the Austin Group for having
researched that).

Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.txt>
Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3148.doc>
Link: <https://austingroupbugs.net/view.php?id=3D1614>
Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#subsubsec=
tion.7.29.2.3>
Reported-by: Paul Eggert <eggert@cs.ucla.edu>
Cc: Vincent Lefevre <vincent@vinc17.net>
Cc: DJ Delorie <dj@redhat.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Xi Ruoyao <xry111@xry111.site>
Cc: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
Cc: "Robert C. Seacord" <rcseacord@gmail.com>
Cc: Jens Gustedt <jens.gustedt@inria.fr>
Cc: GNU C Library <libc-alpha@sourceware.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

This v2 changes the use of INT_MIN to just -1, which is simpler, and is
blessed by POSIX.

Cheers,
Alex

Range-diff against v1:
1:  433eddc3e ! 1:  664cd54a8 ctime.3: Document how to check errors from mk=
time(3)
    @@ Commit message
         doesn't check for errors after mktime(3), or checks them incorrect=
ly, so
         this documentation should help fix those.
    =20
    +    This is guaranteed since ISO C23 and POSIX.1-2024.  Prior to those
    +    standards, there was no standard way to check for errors.  However,
    +    there are no known implementations that do not conform to this,
    +    according to WG14 (which themselves refer to the Austin Group for =
having
    +    researched that).
    +
    +    Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.txt>
    +    Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3148.doc>
    +    Link: <https://austingroupbugs.net/view.php?id=3D1614>
    +    Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#=
subsubsection.7.29.2.3>
         Reported-by: Paul Eggert <eggert@cs.ucla.edu>
    +    Cc: Vincent Lefevre <vincent@vinc17.net>
         Cc: DJ Delorie <dj@redhat.com>
         Cc: Carlos O'Donell <carlos@redhat.com>
         Cc: Xi Ruoyao <xry111@xry111.site>
    -    Cc: Vincent Lefevre <vincent@vinc17.net>
    +    Cc: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
         Cc: GNU C Library <libc-alpha@sourceware.org>
         Signed-off-by: Alejandro Colomar <alx@kernel.org>
    =20
    @@ man/man3/ctime.3: .SH NOTES
     +.EX
     +#include <err.h>
     +#include <errno.h>
    -+#include <limits.h>
     +#include <stdint.h>
     +#include <stdio.h>
     +#include <stdlib.h>
    @@ man/man3/ctime.3: .SH NOTES
     +    tm.tm_sec   =3D atoi(*p++);
     +    tm.tm_isdst =3D atoi(*p++);
     +\&
    -+    tm.tm_wday =3D INT_MIN;
    ++    tm.tm_wday =3D \-1;
     +    t =3D mktime(&tm);
    -+    if (tm.tm_wday =3D=3D INT_MIN)
    ++    if (tm.tm_wday =3D=3D \-1)
     +        err(EXIT_FAILURE, "mktime");
     +\&
     +    printf("%jd\[rs]n", (intmax_t) t);

 man/man3/ctime.3 | 99 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 98 insertions(+), 1 deletion(-)

diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index 5aec51b79..68f9277b1 100644
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
@@ -412,6 +415,100 @@ .SH NOTES
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
+    tm.tm_wday =3D \-1;
+    t =3D mktime(&tm);
+    if (tm.tm_wday =3D=3D \-1)
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


--dssyzfw6ruzmfcb3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbInsEACgkQnowa+77/
2zJBtQ//bRfRrzAgqpbKeetgUoNCEh9TUDI3Bv/X3bTKHW45tMTqz8/UwF6/VX4+
xAjrOdMplq7uXJ3z+R4lv6ZqEKxL99JYpXj+OZRtFTwU0ErsbBTn3mumu5xda1/d
uTvd0FAOKC8gucDkyRMUzDcdYuRM638gGzRmd904shk9kaH8GnWJc0rXNgd6g2I2
XpRwbVjScFBCbmHd9azjLBgA3bZMnSJEoEYUTZeaKui74l+O3sHBI5d6SyeC/lwY
Aca6WIwav8LcN2Kn4NWkYEUDVB091UKiMiVQg78EW+bRhqy4kx9FAM+iqB+ISacH
AYRvvWTSimDiDP29F9SA3DcAqHnH6WO1eAGp9XQ+WeCq9JXVHo1Yoqul5PLb4gjc
PnsrbJXrKxBE9bBCvz+kOCS5T2p4jsgwFtHQtd83ziLD/2F8IUebj/KI5Qe+XVN6
TcWnJ5Xf/DiH+VEQMQU+2ktqKfPmzgOZ322tkFcKZfDz8c5MzJ/G3an7NOMqhTSJ
B0vpTp9tCWWHGLkn7IEx2W2s5h+nIKwKwYYDeRGy6Pgrx2MeYIt3cRTmPmeVbgBI
mgI1OraekMa+agdBsVeoZhc02gPdQ9TaxLeNn2uuUUZMjRYe/7Ak4/p9n6vU1KlA
eRR2dXvkqedqKrZcmI2oJAU7ZDeJm5iNyOa1FerOOV/FsHgRR8g=
=V84h
-----END PGP SIGNATURE-----

--dssyzfw6ruzmfcb3--

