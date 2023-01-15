Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59FB666AF81
	for <lists+linux-man@lfdr.de>; Sun, 15 Jan 2023 06:43:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbjAOFns (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Jan 2023 00:43:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230453AbjAOFnq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Jan 2023 00:43:46 -0500
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D3FEE3BF
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:43:46 -0800 (PST)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-15eeec85280so5226156fac.11
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=APMH4XKCBNcrxbUgYQdgkPBLEYTMXTq8h18EpZPwtP0=;
        b=E1VWpprExdSwl4XHl2z7utUTfo4KIj687YhsNYP5QN/N8dEXeMA51c5SVdZDXz7XlV
         1P74+KNqx0EXZW9JKdrDLNF3UQuPufMqAbM9DkqTzWS2mBvibtXHRRgNo8LIVUbAkCvR
         M1QkNR0HRwwtwpcPY2aO93fGQLsdVv3MNg4i0+v/r/H5t7PWOW0PzR/uTaw6frI8/xab
         EhGuyIVre5SjIp0Rb1RenZQ04HltG0QQr5cn/Z6KR1cc4zDoeNm3VXeQ80AIF8rNE1bD
         qfz4ijqlcQL6hwpSirjOQ33LmckH58HoTUXQ0hKi1fggtUu1dfVUreMCcsKNQfvPd9GE
         6ABA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=APMH4XKCBNcrxbUgYQdgkPBLEYTMXTq8h18EpZPwtP0=;
        b=PFCVRhOgt8qWQ5fz+xJ/H2X5biNp+cQpZO8uCKxQ5RF21DxM1Y7dK44O1SjbH9fwwy
         Sf166StD/wW2k//rl8dOJ/12avOPIw0XlRwv1hCChLYKs27QXYJliY6EDmuWrRfN5jek
         f6UB35txSpdMZRRt7itKtdlSYTO2aeszisd4xiL3UVesDO5MAwNpQ/tSKZXxITIRqmRH
         CLvwxG4LCYqxNucm3ljnNM1Jnn/Bw26zDrMlVKxAUvqiygtaeF6XfFse7LcBLXOjBnIe
         jRFru10gkuv9CUbZBSLQR82Zn9PbBTaYpLb80+qBS7dxnQeUNepC+iKUvMoG0g2AIXFX
         1rXg==
X-Gm-Message-State: AFqh2krcObtqNmNmJMz5y2fwCglAGAnmPim/HGWPU1466ZmYc9Ppaxxh
        tzX+Px8/48C14BKnxe9tGfQqdtvuCMg=
X-Google-Smtp-Source: AMrXdXsZaDxSM/h7hKpepc5GBwfiD9Ph09y6sqmFeKNDoejpeP0COG6nmz6ayPARM7/3erudzKcKDQ==
X-Received: by 2002:a05:6870:7c16:b0:150:1a6f:c526 with SMTP id je22-20020a0568707c1600b001501a6fc526mr8479203oab.24.1673761425424;
        Sat, 14 Jan 2023 21:43:45 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id p22-20020a056870831600b0014813cc4a51sm12835202oae.29.2023.01.14.21.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jan 2023 21:43:45 -0800 (PST)
Date:   Sat, 14 Jan 2023 23:43:43 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 3/6] libc.7: Revise content
Message-ID: <20230115054343.we7tmhl3offylz24@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rtaxq3bvbwgmyr3g"
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


--rtaxq3bvbwgmyr3g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Define the term "standard C library".
* Say who's responsible for standardizing it.
* Practically all C _libraries_ use libc, too.
* Move material describing structure glibc from intro(3) to here and
  recast in more detail.
* Update example filespec for libc.so.6.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/libc.7 | 34 ++++++++++++++++++++++++++--------
 1 file changed, 26 insertions(+), 8 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index c6180075c..09d21e7f5 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -8,13 +8,18 @@
 libc \- overview of standard C libraries on Linux
 .SH DESCRIPTION
 The term \(lqlibc\(rq is commonly used as a shorthand for
-the \(lqstandard C library\(rq
-a library of standard functions that can be used by all C programs
-(and sometimes by programs in other languages).
-Because of some history
-(see below),
-use of the term \(lqlibc\(rq
-to refer to the standard C library is somewhat ambiguous on Linux.
+the
+.IR "standard C library" ,
+a collection of functions,
+data types,
+constants,
+and global variables \" like errno
+defined by ISO/IEC JTC1/\:SC22/\:WG14 and POSIX.1
+(the Austin Group)
+and used by practically all programs and libraries written in C.
+.I libc
+refers to any library that implements a significant portion of the
+published standard interface.
 .SS glibc
 The standard libc most popularly used with the Linux kernel is
 .UR http://www.gnu.org\:/software\:/libc/
@@ -33,13 +38,26 @@ primarily in section 3 of the manual.
 glibc also offers a manual of its own in Texinfo format,
 browsable at the command line with
 .RI \(lq "info libc" \(rq.
+.PP
+glibc is organized into three
+.I dynamic shared objects
+(DSOs):
+.I libc
+itself,
+.I libm
+for mathematical functions,
+and
+.I librt
+for real-time extensions
+(historically POSIX.1b).
 Version 1.0 of glibc was released in September 1992.
 (There were earlier 0.x releases.)
 The next major release of glibc was 2.0
 at the beginning of 1997.
 .PP
 The file
-.I /lib/libc.so.6
+.IR /lib/libc.so.6 ,
+.IR /lib/x86_64\-linux\-gnu/libc.so.6 ,
 or similar
 is normally a symbolic link to the glibc library.
 Execute it to display information about the version installed on your
--=20
2.30.2


--rtaxq3bvbwgmyr3g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPDko8ACgkQ0Z6cfXEm
bc4KUw//SgyEL04IvQafXH/LhNjHeB1PC85wT2p0krMGbO28wzHKaYTLMaxBtwrd
av4XW2AIzziEWfsS1qRhfC5L99YsDBpddzoRA2IRURhwberwZjNKzJ/ChCPh6VBe
f7DwsF+UtsP6xjPlOyconyr2trwasCEhXtrpKuuM9dwmMBMmgzATEkrZD9UZ9BG1
z6yNgn3YGMCx0dEV8pmXrZq9oU67lfRIDpsZMlPA1pz4qT+SdVaCd5ej1G+c8xlV
97Qy7SOLBsaEp3V0DeSDtODhFhXmDii8hdvjQE4f+1gqN4VmTyMsCBNg7vANCiAJ
TFcFR0vPrPCti5FhkHv/TFJPxWkw1UbDZMQXC0JSkbqJb3Ek6yRvAQ9vGh6oA4LC
FI5xrBQMyEeWj2HoUJElSA2oexS6ZH/05l9hrBGzMBnO1F1tVgcMUosx+Bs4fPc0
aBJf6sRmleITx4WvqVG6JxwFrXXmoSb/10WbgtO37iOA423GCjz5cX9fdlDGZ0XI
FlqHZgEP0lV5155+Dr0hzcaw4Vpx53vDmy3i2grdAac6ev5LHIMVlUIpBrqosXro
nDVOpn4kMg2xc4xIMYaJ/j2qDnKzT4qs4kNsmWSgZYHfO+uaBzjXFpnppLmllu2x
KuKadVAb+WeEw/Rr2qPxYPzUt3dBNZ0y88aYUFH+2d/X6bIq2NE=
=gnk5
-----END PGP SIGNATURE-----

--rtaxq3bvbwgmyr3g--
