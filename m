Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E4EF65F717
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:53:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235327AbjAEWxb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:53:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235834AbjAEWxY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:53:24 -0500
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60768631AB
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:53:22 -0800 (PST)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-150b06cb1aeso15062934fac.11
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L71H0vu/TqaCEul7kySlPdWgKV9R90uPkdQ4axDQvKc=;
        b=QbwsJMn3Ostrl0J8U4kBlKcijUwphvbHe4wSc/fl1NRKckcOk8M/Yz5mZGIsLaswut
         jEKdCMIo5fEXoeLNaY0Y7QBiwfDs6KdAmzvR9oC2nOhaMkuTHe3uxsOzzCrlwC3XhMZb
         EShbTA6Y9BV3+Rt+neSnRSoVLAPpHwp9mBM9eoO+XmslriUJoG2Lo90arxgYGdg1+yWZ
         g0FJcV1rmnp4ybJRPbdLKvjxIybBYNK9JludkvO3jMcBCab3Qj/VsTYUQiDmzPCZaLMO
         yHJqO0WCwg4McOQXutcEL45uc4ou2MOXGW064MH0QTHefYQU+r/46JOcH60Tch4v05I5
         slGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L71H0vu/TqaCEul7kySlPdWgKV9R90uPkdQ4axDQvKc=;
        b=q+kADNo0WsRpJJwZp75/UZpm3UpxosU9sgYnY3/HxuNu7EHE2a1qjsgx8DCLrz+6XN
         aOeropNSJJBPQqd3lYn4qcrBAOecm354Uy+AElEI4YDTjuji69UO8Tf79IWPF6QwkBvA
         pbSBpSuvuS1MZZzGkKmUc7EOy+j9I8hz0TP3X5uTJ2lEQXOXD6Ox3N/VU5/zp0znAoPY
         WRdyL27E2mTKx+V+NMtoK66V1UGi/l4b1PPa0ginyXSzhiXm0HNVbu9QRc+vMIeLXyEh
         USaF6+LSZsyl4cICGHxnD7lZGaQbC5ly82U9gq4J6Eu7HRq9CAkN/fdS+RwkYQLJnr7P
         2hNg==
X-Gm-Message-State: AFqh2krM1XFPOTiYgpxJ6luwpqaK54C46LCusF1fBxGcDMiJ/Y+eiJo3
        lDar/rXwIxeDqyxQaWC6ioD+D/hzjT4=
X-Google-Smtp-Source: AMrXdXt8EKgN5lGPJx4SeJwUYx5DoGi+e8siqybnLTGd+nXPIpKDyLEhkddhznO4WB1ZUv460Llo0g==
X-Received: by 2002:a05:6870:4b4f:b0:14b:b6e2:c203 with SMTP id ls15-20020a0568704b4f00b0014bb6e2c203mr28235171oab.15.1672959201737;
        Thu, 05 Jan 2023 14:53:21 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g13-20020a056870c38d00b0014185b2b3d5sm17439855oao.18.2023.01.05.14.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:53:21 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:53:20 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 09/13] libc.7: Revise content
Message-ID: <20230105225320.p2k5ypvy5fnizal7@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="64h5ncf6jky5gzkw"
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


--64h5ncf6jky5gzkw
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


--64h5ncf6jky5gzkw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VN8ACgkQ0Z6cfXEm
bc6wRA/+P3TYSeZ05Nnh/0GQeHVujhnRU9SfGumRwY4gOyz4ue0phEKUeQfsi+RA
+Ws/h6stKF7G5g5oFiCpgfqD6+TfCJjB6jhM56BmAudSenERMXNHDidw5N/BNRBW
itD9ufqL3+hgcJQVzoP5aBylAkznrUtNVakmcNcYJTYTsZ7+q3aniGkheyVpBfLO
riMm6VPdyKmuCQ2KFScb5gPrHwTiiZBnMsbR5ftedQvCMuHIlfyn7EfjYErdX1Vr
L/xtESa0y6kMymXmIBlUrRU3kOvpRYwhDE1pHZ7GhVpWO9JwVqAcyd1g+jLddM73
cs4LSZ+hZIs8eBxIj14VZPw7D5aIp4M3O6lHmWY/AGJaR0Xh6aUld5funI+u8pcG
Qi0Q7L+tBTfURrurhqFU4MY8+bkfbXe8IXijegwSJ4lkjQS5aG/JBvt9pulzrVvz
oGQrouwLdVoc1LaFRL0e3MVnxxMV5TFhRTbnCvRJJfxUrl4EY7ryZvO9eoU91LQT
Qp5VyXFH6+7CXoUxA8B9j4fMK9B5YQI98/IJ2UUrMkJ9ILc4xzOFOoFzDLpglXdq
1UHR+NbKma71a+9EBA09OqGG4Jj8GWw6rT9/1TMC0jj0+WmleKadjwiBhj/ISzgv
aBmJF4WiaTpB+++RArSuKFfMHoYQEVbvY10bTxzMDvDaqBZR2BQ=
=Umky
-----END PGP SIGNATURE-----

--64h5ncf6jky5gzkw--
