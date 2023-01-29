Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 449FC68003D
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 17:31:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232771AbjA2Qbs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 11:31:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232278AbjA2Qbs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 11:31:48 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1D2D01F4B1
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 08:31:47 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 569619C4;
        Sun, 29 Jan 2023 17:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1675009906;
        bh=gtOCXhKFVkEHQQIYJHZSgwRB4A9ztpmEjvzmIMoo6Ac=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PMtdQr/yaKc9liiWVV4MHY0xaQFLKPUD5AeN0sJNtQ0ypHnTZPhV4+YcSBMoMAh+g
         6gefglIU7rYXemtulewM6ontNCsHl2tOBnm90L4y4xRB87uLXrsrJRGkgnpIEbanfz
         63Z2efiC0iV39rQnlS1T2GCsyiez33m0k4ZRpEl+GRcSqZsQaQnffqYJfJICS1b0oX
         3HDfPwbq1p6s1HfMTNfEb4nkGNgM4esyD0x9Il6tOaAQVsGX8jbCgUf2OzdNvLsCnJ
         AaExpuPp16TW3Wqai+ZVLIMKx0YLaL5xgf/h0nUGBdZ30bhjWGCUPpbLm8pMsUHceR
         +Z0SIdW1PSCJQ==
Date:   Sun, 29 Jan 2023 17:31:45 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/3] clock_getres.2, clock_getcpuclockid.3,
 pthread_getcpuclockid.3: fix tv_nsec formatting
Message-ID: <2e36e6f0a1b3e3c2188ebb7b7417c8183649b368.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>
References: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="yp6v3gsnzfl2kgvw"
Content-Disposition: inline
In-Reply-To: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
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


--yp6v3gsnzfl2kgvw
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


--yp6v3gsnzfl2kgvw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPWn3AACgkQvP0LAY0m
WPHKrxAAsJXST7O1v5jqxpGX/wifvKfdEabiJ/Gchk0fVI2Q+rFUDjvX6TZUsxn1
2vGaTiLzK07gwRUef0nK3G4EF6uSZ5qSW9GA2Gh777+cMNfozDYihjz/MsB4r3nn
k+oQ3ZHq+kmGBwThTrIl39nspiFOonoFCX3t/i5B8eBwQBSrc2bAS507jyMTXIVY
uv01OCDrsjLijHhLSV13emnlrC58PHnjLbH4yurLgQHhEvrhYiTEeXRviQkpmh0x
z53e0qkBIxjaZJj+jjsYMOXvPy2W773Yb13hQE5F+w/tzsIsj43PIpTBpFozX/Eu
3zOuPgNZUymFZVxa5L/sHCxYbYoXIEyc4sxGLLLnLo0U6Zxis85ztiwLqMZUByRr
MTCM31fZVHeOebw/+Jtn96j7aW2n+IRQv36eBMvhgGQLZs+LKHXr1oev/JB34aLD
qWOyVHBgLlcLb86UCY7fbYpEQNIXh9k7nmSpy2EAVh0QVxKCNGgjo0cfuOzYdXFG
ha8ZD787nb1e+FnmzXDggX+nYscVbkMA2IvOE9Qoqy9oQo2viwZwwTJu16qgMduf
WgZ5uDKq9cUvi81XIN6TnAchedkQEHFvSNlMCGGCEqvRnfTbskBIsU5SzY0gjNWt
jnaKb6iF+AAPoIWnWUUcy+S5AVHNmqDWK29bV2EoACB7Sx9YK1c=
=eUEq
-----END PGP SIGNATURE-----

--yp6v3gsnzfl2kgvw--
