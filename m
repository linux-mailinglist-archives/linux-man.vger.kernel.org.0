Return-Path: <linux-man+bounces-1690-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC7395D846
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 22:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DF5A1C2373F
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 20:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A887D1C7B8D;
	Fri, 23 Aug 2024 20:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKXCyKNv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0721C6F74
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 20:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724446600; cv=none; b=Wv0tnVBNSR+mHYzBH5Mq36hik0JicGr8Mg6H4eMVu9JGomsw9qHuFAUzwCMQfy0NAeNF8CFhsZhyXNCBHgfvhIuUgcZ53igT4QjQmglio8nv7gWJtniFj0L+Rl1W/pAP8zI6XyYGD2ZGorBj8quI2SZ2ArKoHmhtrgJKQAfOyjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724446600; c=relaxed/simple;
	bh=rQ+NDlVKNvx4ZC9VJ6Ijqp/lb1nSAmfjFPPaCgBnLJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RCnnHKV8+yNmNRLlUBrCYkM3N2N2bWi4nzlQbCMztONDPXCLffp0LrR0BMIZjK0gr1vRgy50ZPzIPG/ckLw/2qSMG/5wVl9bS1GhdVJjvYsCeGmYNKPDVz6V735wuUreAd6IU0u7Ze3QZQClAF3EycM1oi+fqHkWdMQHQJlzMcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKXCyKNv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FD5DC32786;
	Fri, 23 Aug 2024 20:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724446600;
	bh=rQ+NDlVKNvx4ZC9VJ6Ijqp/lb1nSAmfjFPPaCgBnLJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LKXCyKNvVKYtaSiKT0l5uhlH9jE5rEHpZui+iktR+NgdGBIRHlR7Wgir2TQNxQjPx
	 6dh+/vemLw7mP4klK9kwchr5A2TBPwmpTTChg2uPjtnd+NFYRTdJ6c2F/b5Xige9xT
	 scsjQogQT2gPtKQgBNrKwwpsfhl1xLrBuL0BN/0QzU7UHArvuISMyaoQpWg7z0jw9W
	 YvbuEkIfY3tuRATwNgKDlFJWePm7e9lO4/blqLCmejjOk2eoqc1OlYreEtJk+AcA4D
	 pMS2L8iOJzDUO9JHr4/rBcHjgX9qiIuwmBXRy5ES67/wTQ5a3iAoGR0WMPbr5G+vqW
	 NKXETmARTCXAw==
Date: Fri, 23 Aug 2024 22:56:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>, 
	Vincent Lefevre <vincent@vinc17.net>, DJ Delorie <dj@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Xi Ruoyao <xry111@xry111.site>, Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, 
	"Robert C. Seacord" <rcseacord@gmail.com>, Jens Gustedt <jens.gustedt@inria.fr>, 
	Robert Elz <kre@munnari.oz.au>, Andrew Josey <ajosey@opengroup.org>, 
	Geoff Clare <gwc@opengroup.org>, GNU C Library <libc-alpha@sourceware.org>, 
	Austin Group <austin-group-l@opengroup.org>, Hans =?utf-8?B?w4ViZXJn?= <haberg-1@telia.com>
Subject: [PATCH v3] ctime.3: Document how to check errors from mktime(3)
Message-ID: <795308497fb950b9f8602a2eedf4fc749ff6e50e.1724446443.git.alx@kernel.org>
X-Mailer: git-send-email 2.45.2
References: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6igxdgrc66hw6pqk"
Content-Disposition: inline
In-Reply-To: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>


--6igxdgrc66hw6pqk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>, 
	Vincent Lefevre <vincent@vinc17.net>, DJ Delorie <dj@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Xi Ruoyao <xry111@xry111.site>, Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, 
	"Robert C. Seacord" <rcseacord@gmail.com>, Jens Gustedt <jens.gustedt@inria.fr>, 
	Robert Elz <kre@munnari.oz.au>, Andrew Josey <ajosey@opengroup.org>, 
	Geoff Clare <gwc@opengroup.org>, GNU C Library <libc-alpha@sourceware.org>, 
	Austin Group <austin-group-l@opengroup.org>, Hans =?utf-8?B?w4ViZXJn?= <haberg-1@telia.com>
Subject: [PATCH v3] ctime.3: Document how to check errors from mktime(3)
References: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>
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

Link: <https://lore.kernel.org/linux-man/20240823131024.GD2713@cventin.lip.=
ens-lyon.fr/T/#t>
Link: <https://lore.kernel.org/linux-man/6un6baaq5tez23irtycuvzqtuh7a4sdrf2=
px7tnyb3y6iqoxmq@2ofln4cd27ep/T/#t>
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
Cc: Robert Elz <kre@munnari.oz.au>
Cc: Andrew Josey <ajosey@opengroup.org>
Cc: Geoff Clare <gwc@opengroup.org>
Cc: GNU C Library <libc-alpha@sourceware.org>
Cc: Austin Group <austin-group-l@opengroup.org>
Cc: Hans =C3=85berg <haberg-1@telia.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

v3 changes:

-  Typos in the example runs (s/2024/2023/)
-  s/if/whether/  [Paul]
-  Respect the sign of time_t.  [Paul]
-  Remove unused include.  [IWYU]
-  Add links and CCs.

Cheers,
Alex

Range-diff against v2:
1:  664cd54a8 ! 1:  795308497 ctime.3: Document how to check errors from mk=
time(3)
    @@ Commit message
         according to WG14 (which themselves refer to the Austin Group for =
having
         researched that).
    =20
    +    Link: <https://lore.kernel.org/linux-man/20240823131024.GD2713@cve=
ntin.lip.ens-lyon.fr/T/#t>
    +    Link: <https://lore.kernel.org/linux-man/6un6baaq5tez23irtycuvzqtu=
h7a4sdrf2px7tnyb3y6iqoxmq@2ofln4cd27ep/T/#t>
         Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.txt>
         Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3148.doc>
         Link: <https://austingroupbugs.net/view.php?id=3D1614>
    @@ Commit message
         Cc: Carlos O'Donell <carlos@redhat.com>
         Cc: Xi Ruoyao <xry111@xry111.site>
         Cc: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
    +    Cc: "Robert C. Seacord" <rcseacord@gmail.com>
    +    Cc: Jens Gustedt <jens.gustedt@inria.fr>
    +    Cc: Robert Elz <kre@munnari.oz.au>
    +    Cc: Andrew Josey <ajosey@opengroup.org>
    +    Cc: Geoff Clare <gwc@opengroup.org>
         Cc: GNU C Library <libc-alpha@sourceware.org>
    +    Cc: Austin Group <austin-group-l@opengroup.org>
    +    Cc: Hans =C3=85berg <haberg-1@telia.com>
         Signed-off-by: Alejandro Colomar <alx@kernel.org>
    =20
      ## man/man3/ctime.3 ##
    @@ man/man3/ctime.3: .SH NOTES
     +.I (time_t) \-1
     +can represent a valid time
     +(one second before the Epoch).
    -+To determine if
    ++To determine whether
     +.BR mktime ()
     +failed,
     +one must use the
    @@ man/man3/ctime.3: .SH NOTES
     +.RB $\~ "./a.out 2024 02 23 00 17 53 1" ;
     +1708640273
     +$
    -+.RB $\~ "./a.out 2024 03 26 02 17 53 \-1" ;
    ++.RB $\~ "./a.out 2023 03 26 02 17 53 \-1" ;
     +1679793473
     +$
    -+.RB $\~ "./a.out 2024 10 29 02 17 53 \-1" ;
    ++.RB $\~ "./a.out 2023 10 29 02 17 53 \-1" ;
     +1698542273
    -+.RB $\~ "./a.out 2024 10 29 02 17 53 0" ;
    ++.RB $\~ "./a.out 2023 10 29 02 17 53 0" ;
     +1698542273
    -+.RB $\~ "./a.out 2024 10 29 02 17 53 1" ;
    ++.RB $\~ "./a.out 2023 10 29 02 17 53 1" ;
     +1698538673
     +$
    -+.RB $\~ "./a.out 2024 02 29 12 00 00 \-1" ;
    ++.RB $\~ "./a.out 2023 02 29 12 00 00 \-1" ;
     +1677668400
     +.EE
     +.SS Program source: mktime.c
    @@ man/man3/ctime.3: .SH NOTES
     +.\" SRC BEGIN (mktime.c)
     +.EX
     +#include <err.h>
    -+#include <errno.h>
     +#include <stdint.h>
     +#include <stdio.h>
     +#include <stdlib.h>
     +#include <time.h>
     +\&
    ++#define is_signed(T)  ((T) \-1 < 1)
    ++\&
     +int
     +main(int argc, char *argv[])
     +{
    @@ man/man3/ctime.3: .SH NOTES
     +    if (tm.tm_wday =3D=3D \-1)
     +        err(EXIT_FAILURE, "mktime");
     +\&
    -+    printf("%jd\[rs]n", (intmax_t) t);
    ++    if (is_signed(time_t))
    ++        printf("%jd\[rs]n", (intmax_t) t);
    ++    else
    ++        printf("%ju\[rs]n", (uintmax_t) t);
    ++\&
     +    exit(EXIT_SUCCESS);
     +}
     +.EE

 man/man3/ctime.3 | 104 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 103 insertions(+), 1 deletion(-)

diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index 5aec51b79..84d140c71 100644
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
@@ -412,6 +415,105 @@ .SH NOTES
 object types may overwrite the information in any object of the same type
 pointed to by the value returned from any previous call to any of them."
 This can occur in the glibc implementation.
+.SH CAVEATS
+.SS mktime()
+.I (time_t) \-1
+can represent a valid time
+(one second before the Epoch).
+To determine whether
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
+.RB $\~ "./a.out 2023 03 26 02 17 53 \-1" ;
+1679793473
+$
+.RB $\~ "./a.out 2023 10 29 02 17 53 \-1" ;
+1698542273
+.RB $\~ "./a.out 2023 10 29 02 17 53 0" ;
+1698542273
+.RB $\~ "./a.out 2023 10 29 02 17 53 1" ;
+1698538673
+$
+.RB $\~ "./a.out 2023 02 29 12 00 00 \-1" ;
+1677668400
+.EE
+.SS Program source: mktime.c
+\&
+.\" SRC BEGIN (mktime.c)
+.EX
+#include <err.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <time.h>
+\&
+#define is_signed(T)  ((T) \-1 < 1)
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
+    if (is_signed(time_t))
+        printf("%jd\[rs]n", (intmax_t) t);
+    else
+        printf("%ju\[rs]n", (uintmax_t) t);
+\&
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


--6igxdgrc66hw6pqk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbI94MACgkQnowa+77/
2zLJ5g//dRuM7oJZY4pcbRp1tzi+xyUngHqhFMWBStOVtIl9qvPGEX+qaXm45wdc
V9FrKK4T0H2FfQeLzZWHbo6ptykK2mUleD4dywAp1U/L+1XgElj2fZC0OszP8A/j
T9Wi0k026NdXJxfEoSgmgv0pTbZyUbE6MmZfkAmK/0MGeGvl/ZSxoo6J3Rjuduwm
K+FdG41DOWltOpJBthsXTefeprkxnpUcorG3cjSH4RhkbZDXdlpz5djHTzfbDbsb
8wLLMWluSryDPa41CBfqihwvzoix7RaCMxYhSvyxmxTdjs2u9qHV87qDSF/fqiqk
bnzZ7xUada1qNxMjGKaCFlDmsxJCgQiclWJlZKRrqIpvyD3uoIPRj/s0lNntpBSY
VwGL5dYJDwjvxJRFs2JXvbBd69FCGJUwntKaPiv5nD0eDj6S6ZoTqFjjXPSB7v/k
4TRjL5vp65fkWPEx8nQNbmdht0+0kZEXC3smOBpSDcd26ifGDh4JYsv5UYbq9Wve
1Wb1RbJtmbPWFpguej03d+FbyUl+5p8tbRqHjLLqYzxFglsNiPh6Yd0S26l9XBDG
RVx42OfTUt5by6iC8RnY3vOkoKX3hOHngkv7r+RVTHFVPUTti6yRKVhMnzkIYDon
N3fvRRdCvVQ8UrFLYFMNzJpF5BYiXEbr4yTBe7dwVoD5diQT+AY=
=rnIJ
-----END PGP SIGNATURE-----

--6igxdgrc66hw6pqk--

