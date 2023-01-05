Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B78165F716
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:53:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235920AbjAEWxP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:53:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236314AbjAEWxO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:53:14 -0500
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66B095C1EB
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:53:13 -0800 (PST)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-1433ef3b61fso44595357fac.10
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4snurNONDRbE5LwMINmXfHCS07b7jnO4vPUjKEna3As=;
        b=bva9+Vbvt88PHi2txoefO/xjUbsRyGF6HkpRefp4LeTkKK8tXKPD1CQRVHUtzH02vR
         SxsGBOLNH2DW4hDyxltLn8bKYRIvITMv+VujOvMb8ouEV67if0E1JnjghcqDRgd4uOs/
         h5Hk1MzWg8h1ChEpyiFcoDsoYKgwOTJXozCO/OZNdVG8RN/ooyAckGBFFSDa6dg2mHAR
         QSWGi1k87iyDWDlP6gkF+vJfiDxCFJ0xvJfMMr7ur0nk56pyX7ls9U+rX5+hVRhan+f4
         KBdELPVjqKRUqmozEBFlFmZiG1BQFVHbqs//+wDQo+C1iIa7jPEsE43FWGPQLllUGINp
         Bw9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4snurNONDRbE5LwMINmXfHCS07b7jnO4vPUjKEna3As=;
        b=r1ymp37uvCTR/C63Izbrj75UsSjPqaoaleS7kcX6Oi/7UKgafiq8cNSW56342kzw9m
         5gl/SoBX+gDwNMC4HHV290GqUm0CI8YME95azozAal4Qe6Oy5SlQSjOO0rEo7t0ovAWh
         qJWp0cUaEWl3Ai40p3HBM95xV6hq522n3CwHl1N6NFy/bGBXDL4SgkegBgE5ITaQWu14
         qtPRMuMMxqT9obToVGATJj/E7iLqJYvMg1/t7msKa7jpMEi8KU2DhkaI7ScxQE5UcAeR
         x7RVlYQeUuymoml5Pk5E4naXYw02Civ2xyt0+uWnYAEzqGkxzXYYWBIt5n1mUXJ7l1XG
         b8Rw==
X-Gm-Message-State: AFqh2kp4YtkPgSBXtPZUV5ABZElBdqcSh8mhjuuyOdECVmpmxuMs3yir
        Zr4IPwjuYSsru8bUFNgtcEBy1vZotYI=
X-Google-Smtp-Source: AMrXdXtdib/Oz9HSGEIT33bSncA/CGpba0GFuOiqh2imot/47wn2FE9eYclrI9Klw952C3orXP247A==
X-Received: by 2002:a05:6870:9e8c:b0:151:490d:aa4f with SMTP id pu12-20020a0568709e8c00b00151490daa4fmr3247667oab.27.1672959192712;
        Thu, 05 Jan 2023 14:53:12 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y15-20020a056870418f00b00144e18d8525sm17498026oac.25.2023.01.05.14.53.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:53:12 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:53:10 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 08/13] libc.7: wfix
Message-ID: <20230105225310.wrfzp2lc36yzrjxe@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dsenh5qd2n2kbfmk"
Content-Disposition: inline
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dsenh5qd2n2kbfmk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Say "GNU/Linux distributions" instead of "Linux distributions".
* Clarify claim about popularity of glibc.
* Tighten wording.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/libc.7 | 103 ++++++++++++++++++++++++++++------------------------
 1 file changed, 55 insertions(+), 48 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index 43ec0269f..c6180075c 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -16,80 +16,88 @@ Because of some history
 use of the term \(lqlibc\(rq
 to refer to the standard C library is somewhat ambiguous on Linux.
 .SS glibc
-By far the most widely used C library on Linux is the
+The standard libc most popularly used with the Linux kernel is
 .UR http://www.gnu.org\:/software\:/libc/
 GNU C Library
 .UE ,
-often referred to as
+widely called
 .IR glibc .
-This is the C library that is nowadays used in all
-major Linux distributions.
-It is also the C library whose details are documented
+This implementation is nowadays used
+in all major GNU/Linux distributions.
+Its details are documented
 in the relevant pages of the
+Linux
 .I man-pages
-project
-(primarily in Section 3 of the manual).
-Documentation of glibc is also available in the glibc manual,
-available via the command
-.IR "info libc" .
-Release 1.0 of glibc was made in September 1992.
+project,
+primarily in section 3 of the manual.
+glibc also offers a manual of its own in Texinfo format,
+browsable at the command line with
+.RI \(lq "info libc" \(rq.
+Version 1.0 of glibc was released in September 1992.
 (There were earlier 0.x releases.)
-The next major release of glibc was 2.0,
+The next major release of glibc was 2.0
 at the beginning of 1997.
 .PP
-The pathname
+The file
 .I /lib/libc.so.6
-(or something similar)
-is normally a symbolic link that
-points to the location of the glibc library,
-and executing this pathname will cause glibc to display
-various information about the version installed on your system.
+or similar
+is normally a symbolic link to the glibc library.
+Execute it to display information about the version installed on your
+system.
 .SS Linux libc
-In the early to mid 1990s,
-there was for a while
+In the early to mid-1990s,
 .IR "Linux libc" ,
-a fork of glibc 1.x created by Linux developers who felt that glibc
-development at the time was not sufficing for the needs of Linux.
+a fork of glibc\~1,
+was maintained by Linux developers
+who felt that glibc development at the time
+did not meet the Linux user community's needs.
 Often,
-this library was referred to (ambiguously) as just \(lqlibc\(rq.
+this library was referred to,
+simply and ambiguously,
+as \(lqlibc\(rq.
 Linux libc released major versions 2, 3, 4, and 5,
-as well as many minor versions of those releases.
-Linux libc4 was the last version to use the a.out binary format,
-and the first version to provide (primitive) shared library support.
-Linux libc 5 was the first version to support the ELF binary format;
-this version used the shared library soname
+along with many minor updates.
+Linux libc\~4 was the last to use the
+object file format called \(lqa.out\(rq,
+and the first on Linux to provide (primitive) shared library support.
+Linux libc\~5 was the first on Linux to support ELF object code;
+it employed the
+.I soname
+(shared object name)
 .IR libc.so.5 .
 For a while,
-Linux libc was the standard C library in many Linux distributions.
+Linux libc was the standard C library in many GNU/Linux distributions.
 .PP
-However,
-notwithstanding the original motivations of the Linux libc effort,
-by the time glibc 2.0 was released
-(in 1997),
+Notwithstanding the original motivations of the Linux libc effort,
+by the time glibc 2.0 was released,
 it was clearly superior to Linux libc,
-and all major Linux distributions that had been using Linux libc
-soon switched back to glibc.
-To avoid any confusion with Linux libc versions,
-glibc 2.0 and later used the shared library soname
-.IR libc.so.6 .
+and all major GNU/Linux distributions that had been using Linux libc
+soon switched (back) to glibc.
+To avoid confusion with Linux libc versioning,
+glibc 2.0 and later use the soname
+.I libc.so.6
+on Linux systems to indicate their status as successors
+to Linux libc\~5.
 .PP
 Since the switch from Linux libc to glibc 2.0 occurred long ago,
 .I man-pages
 no longer takes care to document Linux libc details.
 Nevertheless,
-the history is visible in vestiges of information
-about Linux libc that remain in a few manual pages,
+vestiges of this history linger in comments
+about Linux libc in a few manual pages\(em\
 in particular,
 references to
 .I libc4
 and
 .IR libc5 .
 .SS Other C libraries
-There are various other less widely used C libraries for Linux.
-These libraries are generally smaller than glibc,
-both in terms of features and memory footprint,
-and often intended for building small binaries,
-perhaps targeted at development for embedded Linux systems.
+Other,
+less widely used,
+C libraries for Linux exist.
+They are generally smaller than glibc
+in terms of features and memory footprint,
+and are often intended for building small binaries,
+such as those targetting embedded systems.
 Among such libraries are
 .UR http://www\:.uclibc\:.org/
 .I uClibc
@@ -101,10 +109,9 @@ and
 .UR http://www\:.musl\-libc\:.org/
 .I "musl libc"
 .UE .
-Details of these libraries are covered by the
+Details of these are offered by Linux
 .I man-pages
-project,
-where they are known.
+where known.
 .SH SEE ALSO
 .BR syscalls (2),
 .BR getauxval (3),
--=20
2.30.2


--dsenh5qd2n2kbfmk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VNYACgkQ0Z6cfXEm
bc5jBg//Ud4UWX6YqYidn7mEFxIEBAemX9yiljEs0xSRH3oz0l16WIxB7+WErn8q
c10bNOiqeX7uT3zKEE2gl1Ybxel5x10/Kw2ekhpwFgYHkn+64Bxom/KfUsjahspD
BAhIS2+tdzEDL0XyFn8vkA9wXjOc9Xu/nnBXeIJSD/ObLbrvmtc44gh9WAykxUEb
OvOoleJZNTPRy7upb7e0qZ8/na7FUjqY3b04pzUP8RVImvyHlc7oVky8Cw4iK4tu
qAPesskjIjA1dJtHNguDBGEPtBLhmcuR+FYe6KAgGPG1aGzD+W7qrgA7raGpBgt2
CtU2nIELSl4Ps5+oGNs/rmKBaCNSbY3C/Qiqf/t0lJhpWR5ZUKR1X7lJwQxmQhvG
Ab1y8j5jZUt6gFFO13dFvO8w1YDccyIX5Lv1v7ebJjgWnkwYHXDisHFPhTDV7AhN
q0eh9Tx6tVafjxs9+ATsWOX3nQi2q1ajwi9BIijpNoyu1kqCmgHg7eppsbVFspG3
pOE7Z+8mGq1X/90Gi2j6wXcSKQ2OaOYgd87sEpZE5yOQiO1WDtkaBS9kq0H9KokU
JUc9sWT9IkWQvBAH1LpgoyUxktw7Xyv8j0EP/6UCKkUmdrtyPhcDcRbq5F5xs0uJ
CXgardeMc67YLe1pJdCuuBJNFDJxNlI1OKns2POOVgZh5NF73ZY=
=bKps
-----END PGP SIGNATURE-----

--dsenh5qd2n2kbfmk--
