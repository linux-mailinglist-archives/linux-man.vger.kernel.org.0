Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 018C4660D81
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 10:55:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230114AbjAGJz2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:55:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236842AbjAGJzE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:55:04 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14C9F8792A
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:55:03 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id k44-20020a9d19af000000b00683e176ab01so2277735otk.13
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hTbKQoa5Po3nz6SkVdFHB+lnFJkv4yDtzSK1CvKrbuw=;
        b=nn/e5n17ioymYMy7Sh37ciysZ0eO6m20jAzTWRn42D50HHGVFigGDsbnT/AGcM+ghI
         9mJ47wjGo7KPbM45EnfIWT1Hx5CUdtkfwL5sjQo2+WJVNq8CJk0IJp3nKtHOz7xVE9/x
         CSHCAtQifMWpt9X2RKtwkhSEgv5UGTisASV8snnli1YegbuuM2DQ1tMZ7Uz0C00L6MfM
         BaoHT+DpKE8eY8iMaB2bL+aIdyTxdTcHHxvceSIRKDFH//EC6vSPPssLOohBJgBIZJXG
         ARjCFpmgfZSb4Ae4hwGqQu9b3Awc85utZB7oAwjc6kk93VLToLGKJCUQf3nrF3chhHIi
         /pcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hTbKQoa5Po3nz6SkVdFHB+lnFJkv4yDtzSK1CvKrbuw=;
        b=Hrg/yz9tMeuvP1uaesMAQmRLJKuGgyDOuqK+04GCYgMAVNIGAt6aZsg8OA9wqsaAP8
         yq2hDM7n01t2zcIt0LcXBUUCtuavg/ZPBJu/A+TKrdRadfG6tFUEicq+Mo2zLZ7kJ3Yh
         +KiIcaTf9kP6sfR7sndvqonWN1EMNXrGpnzZX5zEOKYYQuRxVNEn34+ZxuuPU1DBy9FI
         u2bQeV4mGsEZglOtHyWb+Uku4K1sBD0uh0a4uEgsJW5rMGI8NqgUqFJgGeNkR+RVWUpP
         wA+wIaF1S84fyovHcUrp4e9/iqAeKAnrVADbSN7b7cbF96XyS4Mkvcehep4O/kp5aCN3
         WKGQ==
X-Gm-Message-State: AFqh2kqeb6bG8EsPgcLsN0ESjxko7/4966BXHIVkh7OvET3QQamSm0oX
        SotIs1tXqNRTMp+bRN955YlmuOZ1lkQ=
X-Google-Smtp-Source: AMrXdXuqKbBtvcfWxDzdMGiZmTjU1sEIqBNwkHk97jsnqFFvgx0hsfHvWkBI4lP/3UGsZdaojZIzsw==
X-Received: by 2002:a05:6830:1e2f:b0:67a:1598:de18 with SMTP id t15-20020a0568301e2f00b0067a1598de18mr27445528otr.6.1673085302403;
        Sat, 07 Jan 2023 01:55:02 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r7-20020a056830418700b006706e4f6863sm1629179otu.75.2023.01.07.01.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:55:01 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:55:00 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 06/10] intro.3: srcfix
Message-ID: <20230107095500.t5peub3cayf2e4x6@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="sq4oxza6lgm2rysy"
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


--sq4oxza6lgm2rysy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Break input lines at phrase boundaries more often.
* Break input lines after commas.
* Set multi-word parentheticals on their own input lines.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 42 +++++++++++++++++++++++++++---------------
 1 file changed, 27 insertions(+), 15 deletions(-)

diff --git a/man3/intro.3 b/man3/intro.3
index e85c0677a..1758ccaf8 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -7,20 +7,23 @@
 .SH NAME
 intro \- introduction to library functions
 .SH DESCRIPTION
-Section 3 of the manual describes all library functions excluding the libr=
ary
-functions (system call wrappers) described in Section 2,
+Section 3 of the manual describes all library functions
+excluding the library functions
+(system call wrappers)
+described in Section 2,
 which implement system calls.
 .PP
 Many of the functions described in the section are part of the
 Standard C Library
 .RI ( libc ).
-Some functions are part of other libraries (e.g.,
+Some functions are part of other libraries
+(e.g.,
 the math library,
 .IR libm ,
 or the real-time library,
 .IR librt )
-in which case the manual page will indicate the linker
-option needed to link against the required library
+in which case the manual page will indicate
+the linker option needed to link against the required library
 (e.g.,
 .I \-lm
 and
@@ -32,19 +35,24 @@ In some cases,
 the programmer must define a feature test macro in order to obtain
 the declaration of a function from the header file specified
 in the man page SYNOPSIS section.
-(Where required, these feature test macros must be defined before including
+(Where required,
+these feature test macros must be defined before including
 .I any
 header files.)
-In such cases, the required macro is described in the man page.
-For further information on feature test macros, see
+In such cases,
+the required macro is described in the man page.
+For further information on feature test macros,
+see
 .BR feature_test_macros (7).
 .\"
 .\" There
 .\" are various function groups which can be identified by a letter which
 .\" is appended to the chapter number:
 .\" .IP (3C)
-.\" These functions, the functions from chapter 2 and from chapter 3S are
-.\" contained in the C standard library libc, which will be used by
+.\" These functions,
+.\" the functions from chapter 2 and from chapter 3S are
+.\" contained in the C standard library libc,
+.\" which will be used by
 .\" .BR cc (1)
 .\" by default.
 .\" .IP (3S)
@@ -55,9 +63,11 @@ For further information on feature test macros, see
 .\" These functions are contained in the arithmetic library libm.  They are
 .\" used by the
 .\" .BR f77 (1)
-.\" FORTRAN compiler by default, but not by the
+.\" FORTRAN compiler by default,
+.\" but not by the
 .\" .BR cc (1)
-.\" C compiler, which needs the option \fI\-lm\fP.
+.\" C compiler,
+.\" which needs the option \fI\-lm\fP.
 .\" .IP (3F)
 .\" These functions are part of the FORTRAN library libF77.  There are no
 .\" special compiler flags needed to use these functions.
@@ -76,7 +86,9 @@ and its many implementations:
 3type
 .PP
 This difficult history frequently makes it a poor example to follow
-in design, implementation, and presentation.
+in design,
+implementation,
+and presentation.
 .PP
 Ideally,
 a library for the C language
@@ -102,8 +114,8 @@ See
 .BR standards (7).
 .SH NOTES
 .SS Authors and copyright conditions
-Look at the header of the manual page source for the author(s) and copyrig=
ht
-conditions.
+Look at the header of the manual page source
+for the author(s) and copyright conditions.
 Note that these can be different from page to page!
 .SH SEE ALSO
 .BR intro (2),
--=20
2.30.2


--sq4oxza6lgm2rysy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QXQACgkQ0Z6cfXEm
bc699Q//TmVtqjYXkta2HlFR3AbgbyTecXVutxmGBi/1mdm9ZLHtKXrY3O0cfx90
RLDvyERfUJFLPS6k5FLWMoqr500ue0Eh7pFK1Sapu2j7VAcoSC0GeoF5m9O1FlD6
cMce6hvRiqZQv8WKS+UHrcIBQMeyiFv3GOQ52MB8ONn+IF8Rp2sSdYzNXTsjQuIB
r/BjVYC41+3UkuyTHOBkJzguf/N4fUl0jbr4rMLX1/JGcFZtb7FQ+IbDz3W6lljx
UnzHZ6hZVkYnMnrDjhqOZWADPbclIaG+QgVecTcbFgEApvm7BRNgLN+fnNcj4jve
rvUne9HaCiYDVKe0LImAL/s21um/kW8hUFYl4qUdSIyN5rCVA14b27S5haIfDSfe
9mUCwOJg8szyGc9NCxiBaoeMcJGbPqgTGeoTAcGutTp2nTIIWU/4OeAZ4B0tl92E
tZuxlUo97wXwpUmgx2chP7IS8K5fsAuP/KD3NvIoXJY06Nrmbu/7ATQF7QYwwI67
SbTRKf4irDjgVK03XLClmp2xzJ4PsNSmnCkqIrwL9tjAqxyx6aO/UfVk30HlYEKs
dxF4GcICEGAJ3xSBmeCtGQYYdjXrMP0nlq2v6f0RRlOJlOJP5cFR33JVsGnykMpu
4kqhi5gThHRZxo993WX8aqHJr5bq+BaGRIBwIrqwEOvO1R88t8U=
=TqJz
-----END PGP SIGNATURE-----

--sq4oxza6lgm2rysy--
