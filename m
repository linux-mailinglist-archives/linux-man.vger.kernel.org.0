Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92F8365CDBC
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:40:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230487AbjADHkz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:40:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231201AbjADHky (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:40:54 -0500
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A6F2B1F
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:40:53 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-12c8312131fso39222346fac.4
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2cxi40HT1PFT6sPmkDuojsZryRhX+gBQmJbRyrLq8oM=;
        b=qU7XrhjH2vMS2ZrB3AxFBmMTQylCpqB2pG680HqjWmcYkA+enEYzrmHSe+m1yTaUbF
         CR+en6dQtCgo5tqXS86ncLcViNIURUTneKp9BLfSf2bNNrSHXoQNnYP185CxJbtDhHMv
         Pwjncub/8QcxEW0wazYAk27fcCyFgEzMMm3rvu/35HV8FJXLNkm4qJCw76Q8Z5OeYelg
         TSzm042JpsIggmK76ZbVGeBzTXINrMHnE+qP3+CVvHgV4+H9zjv32OYtMx7sf3KRid/z
         Z+5swaoPbpnEq3EunViHjU8CDNIgq2BsyEBgDCYuiZX6bVeJxQd+7yb7NuqY9EJ5oXrP
         M71w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2cxi40HT1PFT6sPmkDuojsZryRhX+gBQmJbRyrLq8oM=;
        b=ChSuiw1q8g5Ak/bmSO5ddCUfTQiOxeMClFk6gZ3uHVAABy2gtcZC3l23hDU9GNu+NQ
         BmSOcJSuwNCdQrxzFCq2dLpRbLP3NuAA5NXFPU3+Y243jwaFMbFy4nrvdMYrooh1AndO
         BeBXsCJkZcwQgNC0yt0V6h4sfV30ZIpXsS+D7vGgVwXpRq6MpdqjT5DprCVM7/QB1WNK
         HJuQXuujSFwyVYdAq6HQEWbIFDFgZLmg+gWgpb3nqi1ehvBauTcIHfoMA5fn640SLeQI
         nCmEo0RbH31XJgjwmcZ2x4gTDDE3SFmINhN8DM5JcqztkgfNAey7daLA9meeDrPhhcWT
         KIpA==
X-Gm-Message-State: AFqh2kplq1ppfM997ip5ig/PoKXrwlqFfls/eGz96dRF0bb+nPjOW7b9
        /TxhaOUg5e36v7Aj7yFyT4gQBwVPIb8=
X-Google-Smtp-Source: AMrXdXuFWTJK1lSY7/fc5A0mtcqV9owLRuTMR896ekIm6y0aa6TATFSl+5+x+klv+iYLrKZc4l7kcg==
X-Received: by 2002:a05:6870:171d:b0:151:33f6:feed with SMTP id h29-20020a056870171d00b0015133f6feedmr25264oae.19.1672818052086;
        Tue, 03 Jan 2023 23:40:52 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m21-20020a4ac695000000b004d8c6815287sm8963004ooq.17.2023.01.03.23.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:40:51 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:40:44 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 5/9] libc.7: Fix style nits
Message-ID: <20230104074044.4ld4ndi3qins7ytg@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5cs6mf4rxzyxgdrb"
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


--5cs6mf4rxzyxgdrb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Set `TH` page title in lowercase, since the migration is underway.
* Say "GNU/Linux distributions" instead of "Linux distributions".
* Clarify claim about popularity of glibc.
* Tighten wording.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/libc.7 | 105 ++++++++++++++++++++++++++++------------------------
 1 file changed, 56 insertions(+), 49 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index 7b7d376e7..c6180075c 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -3,7 +3,7 @@
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
-.TH LIBC 7 (date) "Linux man-pages (unreleased)"
+.TH libc 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 libc \- overview of standard C libraries on Linux
 .SH DESCRIPTION
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


--5cs6mf4rxzyxgdrb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LXwACgkQ0Z6cfXEm
bc6ZBw/+M5/jtwszRU5ZJE2seqnJaOBb2i8Y92HN+Tw1FnaLFuIp+3YuuWgnRDtI
JtlZBLXLJafYT0ZdIucOzhiNCjv56HzlUyVpLkvK06alM7wi48u6szTXgFSgL4eV
W0+4Ew82my3AjL/nah+aIS2tW1f0k6TEk4Rv6+YZDW4OpplzyICYxr9lSDgKp3Up
AgJGYx3TGBZ3V/jPJFPL8TaWLN0dcrL4ayfcPpPE7jeULigqSdXfNupI16MW0omi
6iV48uGbcD+G1XTxI6Hd44Z4/v0j8t7JsNoj54YZ/Yiv6BCd+TJYRuDazohZwaMX
4zFx2dJ1CFfz39Rj0v3oj4FpqQG8T4eVE964aJ6n00kMhGjbWV7ZJOA0nxHbMFYp
GntjpHQU0/zdFsSBI9jgvs3LPd+tcPbk3P/wYCSvrbkqI6X6db7dg39Nn4xZxFD5
ALjwkLonF7pYtP0gg+TBGGQGPFs2YvD5NV+vALZp0Y3KSQVr/uCwokdisawf4Gpg
mymyFFmdXwrdbtk++MKEHe0GAVd3dj5yGDhMS8C9e2dZOHzJcbfLr/xpvfKeRauF
mnG7u+ij3aI+cK9gqqXJ4Pwrmbpa9NTW4GPRopKq0JyrBsuVKByB9HEYzUyRFui2
pODisbjAII6B3RRvgKQ/G6dAppOKbgaeolDzwBR/YBziJAz3gqE=
=FYAs
-----END PGP SIGNATURE-----

--5cs6mf4rxzyxgdrb--
