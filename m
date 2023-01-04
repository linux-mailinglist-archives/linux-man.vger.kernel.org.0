Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56B2265CDB8
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:39:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231241AbjADHj0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:39:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233315AbjADHjY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:39:24 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 092C919C00
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:39:22 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id e17-20020a9d7311000000b00678202573f1so20359307otk.8
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8mpmYWJZD61tiOncMAa3/+YRKr1+tzelAw8xRXqcbLI=;
        b=QATYtLt0UUzZH0yqhzlnfcM4ISrzg66gqqzQedyl6x6yVK+xfO1JICkk9OJGTQNgYE
         1hUl5wyMv/S6emBm3fL47xHHwc6P7dJVIV2K653WQCbaRJ4uvZdmNpQKNn+vIXWH6bjx
         V2E+3eeTUCzl6P4or46LL/y9rp3EoCdb+y5Ng/2LgVAjytvtqoOAVhRcp9+M1n0dpweM
         QuAYTAbgwwTLMHYvbq1QTx//Fg+6GuLHBwMFsKnL4JrFNispbm4JBsoihgxxUGYH3UFM
         x5DggaoLubwCAN6+4MFSAgdD0/L9ip46ezHGkbu/VtSd6O8DZ1A0TrvBHMssXa2A5EHw
         YQhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8mpmYWJZD61tiOncMAa3/+YRKr1+tzelAw8xRXqcbLI=;
        b=kRx0r3iF9mk5YqDzkJe47B/APvKvgusyT1d9WREhL6/s0RsYa6EhW08SA6YToR5Rmx
         rNbvMINLwhXLadIFE1ZjkBPYWuNFiBoEJt6DFCGvNFIorKw9D8VMOgZKmTznroEkAgil
         x5yrPBHgLonCGXHdGDwmr1Esf5lYcIG44zdv08DtUkN99cvUYYwOCKKLmSa5cu9Vq5fO
         Z10G8k6/qAZ7fFYi4AmPvnzwH2ONPVIrAW32jv/ZUFl+Kpx9gNDMGZyZY8Agy3wca12l
         1h234CF/t2Gf5JdS3n+Gqv/hcBoR9JzfHEBjE6BjUatFQDksW6Dq9bSIiaInMd2Rd9Jz
         yoOQ==
X-Gm-Message-State: AFqh2kq0hcfWIF16W7KOQWjwhFYjhNmWoJW+4gpKTGwO9xWtIXVOjFYk
        Th67CvsecrrejaWVRPGMoEiTfdhVW6U=
X-Google-Smtp-Source: AMrXdXt3S1qt3LUWffC5XY5g841GIFrTBjRKpSCQYiCkQh9npC5SbhJ/HKKmNCGV/bF5dtVjUYIiiQ==
X-Received: by 2002:a05:6830:2015:b0:661:dfeb:f88d with SMTP id e21-20020a056830201500b00661dfebf88dmr21721951otp.20.1672817962590;
        Tue, 03 Jan 2023 23:39:22 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e21-20020a9d0195000000b00670523bf1cfsm16127387ote.47.2023.01.03.23.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:39:22 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:39:13 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 4/9] libc.7: Fix markup nits
Message-ID: <20230104073913.alfpnxq5apwnfr6c@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tdhbd4hwjfj4uab3"
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


--tdhbd4hwjfj4uab3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Use typographer's quotation marks instead of '"' for quotation.
* Hyperlink the text "GNU C Library" to its website.
* Add hyphenless break points to URLs.
* Break input lines after commas.
* Set multi-word parentheticals on their own input lines.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/libc.7 | 47 ++++++++++++++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 17 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index 12c79dc11..7b7d376e7 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -7,15 +7,18 @@
 .SH NAME
 libc \- overview of standard C libraries on Linux
 .SH DESCRIPTION
-The term "libc" is commonly used as a shorthand for
-the "standard C library",
+The term \(lqlibc\(rq is commonly used as a shorthand for
+the \(lqstandard C library\(rq
 a library of standard functions that can be used by all C programs
 (and sometimes by programs in other languages).
-Because of some history (see below), use of the term "libc"
+Because of some history
+(see below),
+use of the term \(lqlibc\(rq
 to refer to the standard C library is somewhat ambiguous on Linux.
 .SS glibc
-By far the most widely used C library on Linux is the GNU C Library
+By far the most widely used C library on Linux is the
 .UR http://www.gnu.org\:/software\:/libc/
+GNU C Library
 .UE ,
 often referred to as
 .IR glibc .
@@ -24,26 +27,31 @@ major Linux distributions.
 It is also the C library whose details are documented
 in the relevant pages of the
 .I man-pages
-project (primarily in Section 3 of the manual).
+project
+(primarily in Section 3 of the manual).
 Documentation of glibc is also available in the glibc manual,
 available via the command
 .IR "info libc" .
 Release 1.0 of glibc was made in September 1992.
 (There were earlier 0.x releases.)
-The next major release of glibc was 2.0, at the beginning of 1997.
+The next major release of glibc was 2.0,
+at the beginning of 1997.
 .PP
 The pathname
 .I /lib/libc.so.6
-(or something similar) is normally a symbolic link that
+(or something similar)
+is normally a symbolic link that
 points to the location of the glibc library,
 and executing this pathname will cause glibc to display
 various information about the version installed on your system.
 .SS Linux libc
-In the early to mid 1990s, there was for a while
+In the early to mid 1990s,
+there was for a while
 .IR "Linux libc" ,
 a fork of glibc 1.x created by Linux developers who felt that glibc
 development at the time was not sufficing for the needs of Linux.
-Often, this library was referred to (ambiguously) as just "libc".
+Often,
+this library was referred to (ambiguously) as just \(lqlibc\(rq.
 Linux libc released major versions 2, 3, 4, and 5,
 as well as many minor versions of those releases.
 Linux libc4 was the last version to use the a.out binary format,
@@ -54,8 +62,10 @@ this version used the shared library soname
 For a while,
 Linux libc was the standard C library in many Linux distributions.
 .PP
-However, notwithstanding the original motivations of the Linux libc effort,
-by the time glibc 2.0 was released (in 1997),
+However,
+notwithstanding the original motivations of the Linux libc effort,
+by the time glibc 2.0 was released
+(in 1997),
 it was clearly superior to Linux libc,
 and all major Linux distributions that had been using Linux libc
 soon switched back to glibc.
@@ -66,9 +76,11 @@ glibc 2.0 and later used the shared library soname
 Since the switch from Linux libc to glibc 2.0 occurred long ago,
 .I man-pages
 no longer takes care to document Linux libc details.
-Nevertheless, the history is visible in vestiges of information
+Nevertheless,
+the history is visible in vestiges of information
 about Linux libc that remain in a few manual pages,
-in particular, references to
+in particular,
+references to
 .I libc4
 and
 .IR libc5 .
@@ -79,19 +91,20 @@ both in terms of features and memory footprint,
 and often intended for building small binaries,
 perhaps targeted at development for embedded Linux systems.
 Among such libraries are
-.UR http://www.uclibc.org/
+.UR http://www\:.uclibc\:.org/
 .I uClibc
 .UE ,
-.UR http://www.fefe.de/dietlibc/
+.UR http://www\:.fefe\:.de/\:dietlibc/
 .I dietlibc
 .UE ,
 and
-.UR http://www.musl\-libc.org/
+.UR http://www\:.musl\-libc\:.org/
 .I "musl libc"
 .UE .
 Details of these libraries are covered by the
 .I man-pages
-project, where they are known.
+project,
+where they are known.
 .SH SEE ALSO
 .BR syscalls (2),
 .BR getauxval (3),
--=20
2.30.2


--tdhbd4hwjfj4uab3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LSEACgkQ0Z6cfXEm
bc6/Og/+IdVSWPBVrW+TFJTih7XNFR67110nvTgN104dXAqpzSdXXjfPnTrJWL2e
wzSBc2j1B43WxM0KPl/d01APalhaIyJnF7BuXZEG1/wleo/rp9ZkCZ4j9SMp8pxt
j6TcyxokQTphS07rR8uHjldjrtU6IfkYMZTJmuDouUy3Q1BPS6Qf7CsEMRTi/sRx
4dXOW2Y+H0ytJUrJeiLoIxvs7dnbJ8Sl8Y8+t7kYg8BpXJnE56yp4wn2sObcGIlk
eVlJuoAKsBfdlj6MOq4NOu1P1FrD2DxShjnTp9t/rrgRcPNULF4qT4OXY+e2YS9K
FLv4HduPsg0RN+mYNXQAlH9TIjrClTm2DaMfUIExjJQf/hxw7e9dXqcPkYkEwNQw
CzVI+EZtzCXoslgW5uIWps2RFMi3+pCCuiSX8+ol3Ier5zHi7KiSUK/W8YevXeUH
i1DGggKs1Omw611SqdrF72r8r5AhmPHeBSOYaytOkAVwAgBFxKZGp2peoPFEzhkC
9B6Os+Ztld+ErNSPxhjccZUWJuLoISszVPBY1R4mkxCt+lOvkvbVJjK7VSGWfklU
I2QBJ1HSgDgslJDy3v/RbiFlIZFaXVi9zBXvzQe/v4BEJCyDOvA6cyx4uj9CI0OW
j4kiW3ZVQdGTOh+b6BtEqjNM2GA/7lSLQLVHIMzgaiq0U4BIJWs=
=RIon
-----END PGP SIGNATURE-----

--tdhbd4hwjfj4uab3--
