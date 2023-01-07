Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BED3660D74
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 10:55:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231833AbjAGJy7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:54:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236909AbjAGJyo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:54:44 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C9F584092
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:54:41 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id o66so3041223oia.6
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l/sWDsp3UkeNDifCaMVTVEOnf7cJv3H7TxLAaG/zAro=;
        b=L4jptzWYEM2ojX75xonxjr8hts7SYviYqrF8ro7rMtk5mlSYb+ZP+mNs1aW42IjGmn
         rQK2Y47f6M75aK8Z6DE3CZIUcMa7VF+DKVlSrIaXX6NpWqza6ZGbCJ4yP+wGTdU1+trx
         SFGRHCaIRBS7jF0FWc+h6YwGkUJbuVgpM43F98QTY1V4qCOZb7eVUy7q9UgHRmO7Cgcb
         HB3W9lyK+xIja4NqKc/bY5i6JDBxuPPK5TydBRGXUJ4HJSBw3z5DMLE1iLg7snnP7RRW
         IuKf8m+k2TpjfTEwuu2BBGZj1TaKeegKDfvsVqxI8Mmu4c79dvPd2JIju1fDymu62GNu
         u4oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l/sWDsp3UkeNDifCaMVTVEOnf7cJv3H7TxLAaG/zAro=;
        b=dlj+o7SWtEPWzt8E5V91mQ1+K5jie9ESWtSc6+KzJDj2QASS2MLtKiqEKf6ZcPum3K
         22CF/PWxdbfMeAuwLiBRp/8HheOAuUICaEX3DG6/Hk6OKa2QQ4iOt9JHVYVTy8zXO9NR
         EwMcZjJ/LMd/AOxLePdzh9wpQjAMOewtRZILkkLKCvRCxc9+RklNuLqXVZgy5JyhAbvd
         WD59NARrV7ID2ssvt9H3sIhY6SH0QMXUl6mkgrBgnMbpONfHmzYznRmnG3Yn9F8Jivzw
         NepZXqUfHfCeTajcUErH4/wmi7Vl9k00pcw+i2ZjebsyBWrDgu9SnzP8+jjukDxllQfF
         +x1A==
X-Gm-Message-State: AFqh2kpR2aUpjn5zFDbC+2NFPwPcq0gG7ewCtw1QkFtjXDyruOkMtSMQ
        qjTtrXp/Q3y2B014Y9WpgTkou0wEfoE=
X-Google-Smtp-Source: AMrXdXt6wt6SbAB5hpD2dlAox6AFkFwW47rjhWZNfp4m0eS6Xdw8dV8+yTlaHeojzcQ4hhcB/PWjfg==
X-Received: by 2002:aca:ea41:0:b0:363:ad33:9065 with SMTP id i62-20020acaea41000000b00363ad339065mr9954570oih.53.1673085280339;
        Sat, 07 Jan 2023 01:54:40 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 15-20020aca090f000000b003509cc4ad4esm1329909oij.39.2023.01.07.01.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:54:39 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:54:38 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 04/10] libc.7: wfix
Message-ID: <20230107095438.y4e3jh7nlrlrvagv@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="642lqgc3qsu5ki6f"
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


--642lqgc3qsu5ki6f
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


--642lqgc3qsu5ki6f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QV4ACgkQ0Z6cfXEm
bc4f6w/+KgLZlAlmwHK9sngfmcwdX8yIN75EhSILsPSCKYEVPnbM9QImzw3XAaDb
tfGfVSgJdBdxTgTwRjybDdMGFkR4MTeyjDN/uuJEWZ8a0Xq6mY9cz+vxwN68XZuc
O6T/YsIbP+E7XmYzEIbHWoR0+z5epmf5R8clu9OVbz+o7BhBp6xPdtKklWhzf8W7
hxbw4vOjHUhf4LNOxKU3J2/tpRYGcgaI5YGf8N35k7TVLGZOqnkOV6OqIVAKEzOl
SsnYkTHMxkZM4l7PEL2672RgGYpOozwWlibLPmBsFC9wKImpHpCPQkEkBb23nN+x
GD1JY+j9ktEI/Ip0aDKH0PH9qzfsfhMQMHDZs4xxLwsuRAygygM93CxHb2lCB/hj
sMPrKvs8gM/1hHtv13un/cdzaWV2e02jaJ6jKBOdFI/DdYNZ4G/y3rm2C3t03oD2
U2X3vIQ1ilwJNZMuhPxZ1dIjT65/Q6vvHu8R6342byQHBhiQpNKc4/zCU7xhTxuz
QGZ3BxpBJpvwusSOIugYQP2Wk4SRuoW4B905/tLypt6JSiDuIeac/DBPdD/OtlQW
/EeTYVm2zdKuTY7tQjzCyDJCVkUrCw2QLPhYSeTH7LFd8GTnKfJxcEdSEm/GHaOl
FGE0ARIujncp/UXbHhnjoH9ZeWXkK7L+CSRsrmSm7f9KIKGAYqU=
=9mLJ
-----END PGP SIGNATURE-----

--642lqgc3qsu5ki6f--
