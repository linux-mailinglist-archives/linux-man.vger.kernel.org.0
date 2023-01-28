Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CC3667F88D
	for <lists+linux-man@lfdr.de>; Sat, 28 Jan 2023 15:17:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230336AbjA1OR2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Jan 2023 09:17:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231566AbjA1OR2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Jan 2023 09:17:28 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 815BA2331B
        for <linux-man@vger.kernel.org>; Sat, 28 Jan 2023 06:17:27 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id C45F9A22;
        Sat, 28 Jan 2023 15:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1674915446;
        bh=A3fHTjJcoPKMEtH2nGM5ia4P40WFKeRx/oCLeTzAOg8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=T/FeawhmW7qWBqzGfAEOyjibw861bwfneyJ0Gl1iz+u4JcJJV+CD8wEnRR40Xqw7t
         IkOePerIskdKuFpX8OXIxsJIQuSRiigyu2zxJckNgLZi3NE6jsJHpOPP3GYS50vk3T
         YHm9DuH9KyyiHa8F0zJ7Mm30Uyw902KQS6fbhABn/ZtOZJ3PmSvk5mcYsEb7DXOs0U
         OJHqmxLT0Wvt7Ptnc2S7tn91dwBiah3wecfQoD4oXo3SEpxrT4OpBwK3aOOgn7IeQk
         k+WIyvPUfT0FxPtpsova11jmczMDdc2hXtJcrDEexe8nREqRaSuPBKHhm9erIfbi1F
         qKQ4IMNotC+Xg==
Date:   Sat, 28 Jan 2023 15:17:25 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/3] clock_getres.2, clock_getcpuclockid.3,
 pthread_getcpuclockid.3: fix tv_nsec formatting
Message-ID: <900b24547fd5487d6d71a4e218e9cb38df1d23b9.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wpfmxnppab63zp3o"
Content-Disposition: inline
In-Reply-To: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,
        T_PDS_OTHER_BAD_TLD autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wpfmxnppab63zp3o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/clock_getres.2          | 8 ++++----
 man3/clock_getcpuclockid.3   | 4 ++--
 man3/pthread_getcpuclockid.3 | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 501c878ca..a02bea852 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -467,8 +467,8 @@ displayClock(clockid_t clock, const char *name, bool sh=
owRes)
         exit(EXIT_FAILURE);
     }
=20
-    printf("%\-15s: %10jd.%03ld (", name,
-           (intmax_t) ts.tv_sec, ts.tv_nsec / 1000000);
+    printf("%\-15s: %10jd.%03d (", name,
+           (intmax_t) ts.tv_sec, (int) ts.tv_nsec / 1000000);
=20
     days =3D ts.tv_sec / SECS_IN_DAY;
     if (days > 0)
@@ -486,8 +486,8 @@ displayClock(clockid_t clock, const char *name, bool sh=
owRes)
     }
=20
     if (showRes)
-        printf("     resolution: %10jd.%09ld\en",
-               (intmax_t) ts.tv_sec, ts.tv_nsec);
+        printf("     resolution: %10jd.%09d\en",
+               (intmax_t) ts.tv_sec, (int) ts.tv_nsec);
 }
=20
 int
diff --git a/man3/clock_getcpuclockid.3 b/man3/clock_getcpuclockid.3
index bcc2d981e..b2f2e356f 100644
--- a/man3/clock_getcpuclockid.3
+++ b/man3/clock_getcpuclockid.3
@@ -146,8 +146,8 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
=20
-    printf("CPU\-time clock for PID %s is %jd.%09ld seconds\en",
-           argv[1], (intmax_t) ts.tv_sec, ts.tv_nsec);
+    printf("CPU\-time clock for PID %s is %jd.%09d seconds\en",
+           argv[1], (intmax_t) ts.tv_sec, (int) ts.tv_nsec);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man3/pthread_getcpuclockid.3 b/man3/pthread_getcpuclockid.3
index 31dd6a6ef..f481522b3 100644
--- a/man3/pthread_getcpuclockid.3
+++ b/man3/pthread_getcpuclockid.3
@@ -132,7 +132,7 @@ pclock(char *msg, clockid_t cid)
     printf("%s", msg);
     if (clock_gettime(cid, &ts) =3D=3D \-1)
         handle_error("clock_gettime");
-    printf("%4jd.%03ld\en", (intmax_t) ts.tv_sec, ts.tv_nsec / 1000000);
+    printf("%4jd.%03d\en", (intmax_t) ts.tv_sec, (int) ts.tv_nsec / 100000=
0);
 }
=20
 int
--=20
2.30.2


--wpfmxnppab63zp3o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPVLnUACgkQvP0LAY0m
WPHg+A/+JwniTTC14PLf5tM7SAhB2rKYC89xJ1oVjMp3UBQyUjUr9sh/kXAuApL5
WT9uSykikdUZ8zgzuDWPGJN/5mwqQ6kr2L6byznjXWCCvQf3SIQFBYsCQVMJXAsF
VAayLMMoxKo4Go/Et0r7FF67ZybKTIet/ng7jNXxk+OjFNI+M0SPRwPXPpZfqdMO
urWrn7ON7VcJ6C6wLokFpRku9zZKkZhrTH6Pr4Q4uH0iaXlBx0Xm0UJh4JLeLRjZ
evX23DSwLCxQWhubPL4pVVyJ4eyC39FonFt+UEDVWHorMb9YUSMrHOcYxYWl02KE
c/JdCyP31eYR6zCOMPhMoSxlYuD2GVhLnHllmK7ZJwIgMZbDTujeyehqFXwTqXKr
PYpYXDVZqntxDkvqCwTW9+6sbgqwQEj2jWsEOba1ww68rGss/F4Lag3M/hAu1/nO
Z+V2VR+yQTrtE3bnufmUkgrBNVCpLihwbch+ZlXSjC16SvLt6s2avARNYadewc4n
IXSLUX/5epOR6pEHZSp8CrkTvmmPrdIz0IVzE7TtKRR9ViUDr9V9n5CoLTcG/t2r
Vdvfy/CCIkd5cIJs1KCyYGudJdtlx4AfBYGHKrha36Q/3zyGPcEGuarMdy+7WuDv
EovpPA+nRQNACfNox/mqucVykV/GH46FljdMdnXTTYncmGvVT8k=
=ggsQ
-----END PGP SIGNATURE-----

--wpfmxnppab63zp3o--
