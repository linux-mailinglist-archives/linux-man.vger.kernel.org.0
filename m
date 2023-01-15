Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A52F66AF80
	for <lists+linux-man@lfdr.de>; Sun, 15 Jan 2023 06:43:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbjAOFnl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Jan 2023 00:43:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230447AbjAOFni (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Jan 2023 00:43:38 -0500
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9F1BE3B5
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:43:37 -0800 (PST)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-15027746720so26316748fac.13
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d4UutkzKoW8veNfp7dtkfX5SvY2+7fFzkk3sTIWrq8E=;
        b=HoDKoLnPIf8kaSpi6/Pf5UhkJ8ezuzkU4vI4/s1hNOClmeOdQXjJreo56+f6VSHPY1
         Zcmo4MPfb2TgpCRJ1q0qTFEUMVa3h2XUYiUFFFc2zyEzd2pharo+H02qeLAO4gKKP0lX
         LP6TbadUKBZ/us3a0KYobXGsfXPcnlBKuXXFOyxeWI54rJqhvau2xYN713cglkO/vPX7
         m61cSpiiUFPctlW1cI8aSwfnTpIpd2YLTi2kTEBSAj9tffQtDWmuHVvtky7t+Hl0ZYmr
         ooLNZOaGbNgxq+ITE+RaSbvSIyLRNMflY2B/HxesTPvF2lg0IJIWRFCmsZMWVWk06at9
         t64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d4UutkzKoW8veNfp7dtkfX5SvY2+7fFzkk3sTIWrq8E=;
        b=YzBkjUje0IUEaA0rrV21/IHORtZuWG2XmxunIzzGpZ/p/kDT2ScUVsWM2hqa/PGogL
         RIp59RydpQDBuS4whnDgL1qrPOClvb6pwg2h57LOcJKIwgvRIgnsEx5uLBBLAALewsEM
         0vv88Wtlra+s0fCKumyImEtGDbvvqcjjAx4ffxZoIFpE7ehqxg5Hh/YxZc4e1Fq2Zwzq
         y+obC11oakbcVFhFzbtDQ8i1Ty1eXnoyZeWpUL1qGsqQSvDBoKGoGK3WXQ9r/iRv0LNZ
         xIyRxskQBD07WZt2eK2UOZ74eZXb3lIrg4Vkz4OvZc4BjoStXgjrmJNyLrkVEy2fZ2KN
         OdlA==
X-Gm-Message-State: AFqh2koHBUeXeeFdEPAQdZ4zIY+KpTXStmICnUt9hikWYXvWAy4+Dz02
        2YQXyisMkeUt/2ArzQssTcU=
X-Google-Smtp-Source: AMrXdXsl3GPJALFg/rKak4Kua/GRgB9Dl0fmOnN4PWZh7UEZ5WOikL6btuZXCS0m7MVtT7W2yV/6wg==
X-Received: by 2002:a05:6870:6086:b0:152:8714:532b with SMTP id t6-20020a056870608600b001528714532bmr19063260oae.47.1673761417099;
        Sat, 14 Jan 2023 21:43:37 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id n7-20020a9d4d07000000b00661a16f14a1sm12670113otf.15.2023.01.14.21.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jan 2023 21:43:36 -0800 (PST)
Date:   Sat, 14 Jan 2023 23:43:35 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 2/6] libc.7: wfix
Message-ID: <20230115054335.h6n2tz376dknv6an@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ks3oo5foqjvfl6hw"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ks3oo5foqjvfl6hw
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


--ks3oo5foqjvfl6hw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPDkocACgkQ0Z6cfXEm
bc4ftw//ZDCs0cP9njaogAvryILJyOHt5RoPEXemyyB8km+41J5EHc8TX3X6Gj5W
sRD6sR74n1EogzWZ1stsA+2oM6UE9DxRLdmN4lyJyxFlGapM+KSf0+5rod+ALtJK
g+6pPJUrJ+tLyfPLI4cWrBrQLcan2WXtotCHv1aPLKN8S2i9PWzjcSLGqNpuZbDE
+kc4hzzokhFzG/JJlqjaYPZkY3QVxD/TxUrV6hjnmFmPxJfpIFuEuQCvF2KYMway
fBOq/mTQ8rLqf53Yymfx8rxSEd4yw9e6UDstFHgF9q9zhzf1/rrwWPl2J9z5QSfh
ZI5EthehwXK1jRZz9dYIMFkg2hUR2aBIt2SaxbILt+KnNZDggvanteTQjOjvyMYi
EPNTW7ZvWN+j71vG0HmFVYGBVEa5anFZpIFoL2lY5W6lY1tdf1Eus0X1xwkrytd8
F10o2kVZpcfDDUgdiVUwXDN3TFUMEooqVdgA8PNG5P5Qd3T7bC9OAUrbWnC5gS4G
xiRQwJyZs6VVBm7vg0m+5kG8fBILTYx3F1xoc0xI/NLxuaXjt98ehauQ9WL0mflm
730OWjPKvBN/fYuy/9kJOhCl/pso/ZOf4TjNdzPGRHuNiJpuHFBuZ677Ps2eDiEt
TwdwnN4QbTaVOBXbDxfamy1+frscr19ZB9EVuDbpMHUc4RtM1Bc=
=b8bY
-----END PGP SIGNATURE-----

--ks3oo5foqjvfl6hw--
