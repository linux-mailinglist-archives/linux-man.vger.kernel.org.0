Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C45F65CDBF
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:41:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233467AbjADHl2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:41:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230251AbjADHlX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:41:23 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D3AF6462
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:41:20 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id s187so28891162oie.10
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MY4103SWzAgnlk8cJdW4R5uLyTgocLru76bFQrr9wvI=;
        b=EhohaWkrJGwXWhrS/x824krji+3Sur8A7UQ2w1JYqexOeciTsZEh/uWG8lBVkOpLgG
         S+vvMvqHkHe2s2vy0Ta0llrwjTSDx1vmw+7EchVC+OkNOCo3TvUmwIt2trmosSgHZOpf
         xBVZLaHjwleaalbWSkiGyeeisTcf2OcUr6rVXD5DHDRrkd9LSE8CHq7I44vdC/byQA2H
         Z9QjoAP+TvGQVkfd28VAA38x9gh5RxRGlGmZbbo5ajFDpas6P6icGQ3ydvGP2ycxSuni
         9mbZ8x50tEMuz/EeCxDyMgqx4uXloAKNJQlBpx3hHhkR/tslNWHNF4UVvV5YUvALBpa8
         u2mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MY4103SWzAgnlk8cJdW4R5uLyTgocLru76bFQrr9wvI=;
        b=PrbkeInW9VZDwWRIWIVI37Z0wDhfeaLhbvAyc7Ra2mhETI0SY2zG2BhuIppJtbIAAW
         nn1yuI6cumpzncf3MjZHuNHJasy6xWmxMx7v4lYE3mpZSE2jpmNSfH7NLAojqwzmtpRR
         1DCCaylh9WvbqUVfZpzScDoVVKwZa52JN7UDdLx7DHEJ2aCONUAqAssYxjEWdQclyyRL
         u0mmNxjfjIHCH98LkTF+5S4Eyp7javbGH7P1qr9n2YPnEwYU8xrCnKxIY0g/gP0/sdx5
         YTOvhWzAMuA6fSoGdm6H4zMWqHW9cxzUWqqEooEOlheznAz6ecWooLE/buo3NGJyzpFb
         wgCA==
X-Gm-Message-State: AFqh2kqFcjOzgNQ51xG0oVON6ETH+5H7nkZcROYdd9RWb1PnLDjwWvMy
        vBR7w03YpibKxnzPLqx704JiMM5qtv8=
X-Google-Smtp-Source: AMrXdXsI6s5Dp5IaaxVsZG5svUOSgaNWO1Bw1CazR+PZOeyQkYnzzH1TrGj9Ksiuc5XNcyoPnSFh5A==
X-Received: by 2002:a05:6808:279a:b0:35e:506e:4b3e with SMTP id es26-20020a056808279a00b0035e506e4b3emr20753368oib.37.1672818079363;
        Tue, 03 Jan 2023 23:41:19 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r70-20020acaa849000000b00354932bae03sm13866588oie.10.2023.01.03.23.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:41:18 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:41:10 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 7/9] intro.3: Fix markup nits
Message-ID: <20230104074110.5eqmodu4zl2pqhvy@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="awutu2iutjxvying"
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


--awutu2iutjxvying
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Break input lines at phrase boundaries more often.
* Break input lines after commas.
* Set multi-word parentheticals on their own input lines.
* Protect man page cross reference from hyphenation.  (This will not be
  necessary upon migration to groff 1.23's `MR` macro.)

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 44 ++++++++++++++++++++++++++++----------------
 1 file changed, 28 insertions(+), 16 deletions(-)

diff --git a/man3/intro.3 b/man3/intro.3
index e85c0677a..3bf5035cf 100644
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
-.BR feature_test_macros (7).
+In such cases,
+the required macro is described in the man page.
+For further information on feature test macros,
+see
+.BR \%feature_test_macros (7).
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


--awutu2iutjxvying
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LZYACgkQ0Z6cfXEm
bc7orRAAjosRMJf5IFV12L9PLfVGAye602SZrFT0nFNhZjo0rVTvitx4tp1TQ6vz
EsmvVengb6I8DDINCwhPEQE0KxRu4w7+mhmU+L9a/9aec+ebuex36tQzZfaG9OO0
ObQcqxdM4qCuoxKmQdZoEpM3h0ecBQAPwP6M7/OW/EakuwRiW5Mp+qTwUpHe4M1z
r5NPxn+02YrHQRRA/++bwTrMvLKGuZjcqcChNsyIkVCgS6/R8DqqCBU6szOOnwC7
3mS4+UV7OegGY+PsxBODeCos5gTlJ0S5rJZbBQmJtJHVPmoyGlwg+x9YbkVdFxJt
pG/VEUN+i+wvj2MCIixue4ldGXy4pmKQlfAOdxcyDlRrog92EtAZCFU/wDjSKD5Q
gMKiEzCrVHyaZ3SG5l8OgNVW8sVoJukJ24urQhZZ44y76fENyyUJpxuFWimnejZB
owAXUV5OL3fVjsI0OLDxB2IrOZZeGsSe+zXtLXhY4JlubzG4xtDH4S/gbnsQkyuP
AYa4QMacMC3eMbu6RF3Q2GSJTnudtxu7MVB31ZhUR0c8egmow/WxUJgktbM39+w8
BZkC2MM1DN+dI4Eh0qkHk2lwB0rLHjpuBZKNe+bdONktrp2LoufqDHpf4Fu/PX7o
D+3UZNqGGDDxi/tzjDfx8YTCpQQNsnR5FuAH+w8kB5aCUWPkF6c=
=/AcV
-----END PGP SIGNATURE-----

--awutu2iutjxvying--
