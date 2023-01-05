Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFB7665F714
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:53:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235947AbjAEWxA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:53:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236318AbjAEWw7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:52:59 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD0B758823
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:52:57 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id v70so33310986oie.3
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YIO+2BCrIQhZPciZ84H+rWN5/Jy0Bb7zBsjBFvJKULQ=;
        b=aq4XKXVIL6yX+3QDXFx64a73gpMrdCxyKxSRS6D8H1JJKIHeBCJHw7m+YJJqCDPzMm
         a++ncykDX6D543RMQPdSJjpCU7lsxYqyekXYAbMEwuYdlMnJIAippOLmbWZNiznuzn/E
         9Q4Y4Th2vEGPd5Y0/yE5tf4nEt8prNPhhyS7uXPmK8B3M8CBXyo4PpHKncUwKQv8BdW/
         y+IMi0zbo7PD1hCRvFK1qEzRDdZhR8vNdQmAx6XtzMmQ+N9UrmbABEfBoxb8omC/dnWa
         91VdU5ysR65IZDomUW9JzgZgPVSH8WhVeanZUmhjkTpLbBk4WpRAHJeZHGlR4HgVbVjT
         70EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YIO+2BCrIQhZPciZ84H+rWN5/Jy0Bb7zBsjBFvJKULQ=;
        b=B5QYQc1ff3Ug8DWsVkabcisIoMCdStZXIvlXMGoWVN6dhutKT3LUBRQsdFdNb2U0JG
         5OGwILRHN/EDEpEJNurvtEnKIkq3FY/gwa98QafAxThQG0h3jfkmJjY2qNoDbcOo5nvC
         mjEuIQB9wmCdnPuU77xsSlpo6tfgAgf04HgfMOJbN6tBz5DJfxozbNFgAtWygcPrpru4
         9AIg4lPDygKbXn3pru3eYJ8uKDNlTNMKHATrYDmVqJalnEGyFbNpZLI4XSWJmGSBaKsH
         pQigxZ2KZEUgZKWy+nRvtxRlm3b3gqJt4ySXL0njWcx/G5O/KCo+ZNGcebYJeUWsD8Zy
         b6fQ==
X-Gm-Message-State: AFqh2kr4K7kUpUw4gVf1VNbz5oLnGd1FCWawm/+8ErMIl6DXoVkfd+UR
        qnX9LCfjHPyjDf9Q0ySPrQlaTPfDSzc=
X-Google-Smtp-Source: AMrXdXs0vAIA70pJ/GD5PRBvm3EM+L7Ll0n8gY6ZmVNmL+mSVjPDDu3B1meQ/oNtUb8rGJQvFXhdLQ==
X-Received: by 2002:a05:6808:114c:b0:363:995:eb69 with SMTP id u12-20020a056808114c00b003630995eb69mr31658940oiu.0.1672959176924;
        Thu, 05 Jan 2023 14:52:56 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l1-20020a05687014c100b0013b92b3ac64sm17505886oab.3.2023.01.05.14.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:52:56 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:52:55 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 06/13] libc.7: srcfix
Message-ID: <20230105225255.kisdrhrxzd4aikv2@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yh5ej2fsgha3vb3d"
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


--yh5ej2fsgha3vb3d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Set multi-word parentheticals on their own input lines.
* Break input lines after commas.
* Add hyphenless break points to URLs.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/libc.7 | 40 ++++++++++++++++++++++++++--------------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index 12c79dc11..5deba0a8e 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -11,7 +11,9 @@ The term "libc" is commonly used as a shorthand for
 the "standard C library",
 a library of standard functions that can be used by all C programs
 (and sometimes by programs in other languages).
-Because of some history (see below), use of the term "libc"
+Because of some history
+(see below),
+use of the term "libc"
 to refer to the standard C library is somewhat ambiguous on Linux.
 .SS glibc
 By far the most widely used C library on Linux is the GNU C Library
@@ -24,26 +26,31 @@ major Linux distributions.
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
+this library was referred to (ambiguously) as just "libc".
 Linux libc released major versions 2, 3, 4, and 5,
 as well as many minor versions of those releases.
 Linux libc4 was the last version to use the a.out binary format,
@@ -54,8 +61,10 @@ this version used the shared library soname
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
@@ -66,9 +75,11 @@ glibc 2.0 and later used the shared library soname
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
@@ -79,19 +90,20 @@ both in terms of features and memory footprint,
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


--yh5ej2fsgha3vb3d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VMcACgkQ0Z6cfXEm
bc5k9A/+PlRHMjzk+d988P9JGog/X3zJ0WhTtLmBy7pkJTYku8omkxRFI4EcX2yW
DYmB1z9CfttVxe/l7iwTA5spXQ6HkoA5tvt+77xHZZv3RR1RKAOlo+Z7w0bPH8qk
W1EoEaq7nP0CZRMdar5ydnIcqoljc+I56v4iWcU/sJZi96ZEDd0TA1+5N3qd929W
/5V20xCeVw/Dlx/TTI7CYo3OGjkFONGNO+BXBRUE+VuVgSfllOqiGfWQmbIxUpi2
pI5/2Y9dT547Go/Rs487vmPDIslEAHBhSMefzPWXkaOo6w9Stqi0Gn2Q2AGxTFzs
56ydx3JCXm6EfXpsRBkOaEbybQMh0sz8DdWwPkC5Yq6604udIIfoVsim06nRHLth
6dJQ9DhV0qKcZ3xE75xabLcsqT5T/HIOLzI6m2C++Xn1Nud2/VGqfk1NzlH3Q/qN
ccCa35b5y97ivX1+zufxQc318+fXl8nvP6vkSZO5WOyfDTLQ7slp7eh0l2pDoSr4
6hLG8v/9GvpUYlkigipC0ypUP90ZpPYd5MJ+JQVtYLITa0puoIMowyLPJvywWRua
rwDYykxCKZJ/sEzql8mlnKuJkeMpFZpvEohHTHAms9reC4d7xguBHO7hlGN6B6c+
qF65/EnsH4y9H5iItIY3rIB+mZP6nIvz3vDt8+75NUlACm2vF0c=
=Tajn
-----END PGP SIGNATURE-----

--yh5ej2fsgha3vb3d--
