Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EBB965F71B
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:54:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235430AbjAEWyC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:54:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236347AbjAEWxy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:53:54 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17C02671B3
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:53:54 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id i127so33317255oif.8
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5QVpKta61uyWb0kh6eli3mU1l6Hn59W+vzu/O+NMMjw=;
        b=i53oknsqgkmvEI8FMoqqflNI/ZKI5bcGlV/3JFggyC7I/xReGVA/Srqvrt39p2HZle
         G5b2HXZFHCfFmTv1Wit80RSWaMtcoIIObJhVH2SriOI75Vws56WBEanhI7uwIxWnDwS7
         baOdEenQMGbn01GclbB2uNvDrXyUa8+QBtk67p6GTIV6wp1XzepI1A7x7Pvty5chAETe
         zzLWgCcnYdzO/xCvwTneSf88ZatiP66L2iBdLi1xGTWDAnkVTScPBCuV1n+IHMbpKQgv
         duGaWnfIOeiAlrjqWbIYvnKpOnTpKjZyA6BlX/JiCX8/z/2qfFkxdBDUyuW64c6WkC8d
         5TGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5QVpKta61uyWb0kh6eli3mU1l6Hn59W+vzu/O+NMMjw=;
        b=syMP14Oz3hUKLS8GL9zdcbGrUxxRuzLiQIP8vmqFVW8/9E8U3bvzunx9kLfxPohiql
         wiXD7P7MJ6VPDzdPaUUx4R9D84lM/HQPqqcXptzdIOf0fDHc4J9rUlD/pxg2CSRHpH11
         HsInwMQs9WFWXO3PSiGZ1i4mPYYO98qyrsrpPT0ntOwPuut6N5YKMDooN/Xm0BLiSsnS
         g8x023w3tb82zkoAKR8YJE/IgxmEW7VW8TL7UGe9lNO22/V/UK4pjUWDJp7eBWLqYygs
         9uitbHmR1sQHJ05bIJxcnZehkBbMhDn7GqB1ynhBWjK8K815KK1xXMbdej2c3hocQUxe
         m96g==
X-Gm-Message-State: AFqh2kpojQ9/rHlgspDn/UHfFcku1Y5dvZBwIGWzyh5gmVrqOB5b3bvN
        toFPBS8NTYCOyFKhYaS/KIdGncxK3QE=
X-Google-Smtp-Source: AMrXdXvni90iQ5g18CkKSY/S9UpTGtKlno1Yhq2z17xkx35SwLkL3XJ782WGPu1S+a/WpJAHP4S7uA==
X-Received: by 2002:aca:bbc6:0:b0:360:d8c5:1eef with SMTP id l189-20020acabbc6000000b00360d8c51eefmr21918879oif.53.1672959233390;
        Thu, 05 Jan 2023 14:53:53 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bh28-20020a056808181c00b00359a9663053sm16074295oib.4.2023.01.05.14.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:53:53 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:53:51 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 13/13] intro.3: Revise discussion
Message-ID: <20230105225351.33zc6a6uvqrfpv2n@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="k7jummn3l56dasjd"
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


--k7jummn3l56dasjd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Recast introduction to discuss the purpose of section 3 as a whole
  instead of focussing solely on the standard C library.
* Explain basic principles of usage of any C library to the novice.
  (This page _is_ called "intro".)
* Drop material about organization of glibc, now moved to libc(7).
* Make crystal clear what Alex's new subsections are for.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 67 +++++++++++++++++++++++++++-------------------------
 1 file changed, 35 insertions(+), 32 deletions(-)

diff --git a/man3/intro.3 b/man3/intro.3
index d2c8c132e..d28dee4cc 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -7,34 +7,34 @@
 .SH NAME
 intro \- introduction to library functions
 .SH DESCRIPTION
-Section 3 of the manual describes all library functions
-excluding the library functions
-(system call wrappers)
-described in Section 2,
-which implement system calls.
-.PP
-Many of the functions described in the section are part of the
-Standard C Library
-.RI ( libc ).
-Some functions are part of other libraries
-(e.g.,
-the math library,
-.IR libm ,
-or the real-time library,
-.IR librt )
-in which case the manual page will indicate
-the linker option needed to link against the required library
-(e.g.,
-.I \-lm
+Section 3 of the manual describes library functions
+generally useful to programmers,
+excluding the system calls described in section 2.
+Use of a C\~language library entails two requirements:
+its symbol names must be exposed to the compiler
+through the inclusion of a
+.IR "header file" ,
+presented at the beginning of a man page's \(lqSynopsis\(rq section;
 and
-.IR \-lrt ,
-respectively,
-for the aforementioned libraries).
+(with one exception)
+to the linker through the specification of an
+.I \-l
+flag,
+documented in the page's \(lqLibrary\(rq section.
+.PP
+Many of the functions described are part of the Standard C Library
+(see
+.BR libc (7)).
+C\~linkers link with
+.I libc
+implicitly by default;
+an
+.I \-lc
+option is redundant.
 .PP
-In some cases,
-the programmer must define a feature test macro in order to obtain
-the declaration of a function from the header file specified
-in the man page SYNOPSIS section.
+Sometimes,
+the programmer must define a C\~preprocessor macro
+to access the declaration of a symbol from a header file.
 (Where required,
 these
 .I feature test macros
@@ -86,12 +86,15 @@ difficult history frequently makes it a poor example to=
 follow
 in design,
 implementation,
 and presentation.
-.IP \(bu 3
-3const
-.IP \(bu
-3head
-.IP \(bu
-3type
+.TP 10n
+.B 3const
+Constants.
+.TP
+.B 3head
+Header files.
+.TP
+.B 3type
+Data types.
 .PP
 Ideally,
 a library for the C language
--=20
2.30.2

--k7jummn3l56dasjd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VP8ACgkQ0Z6cfXEm
bc76tBAAoJRAbHU0erX723JhDnppsNbSI6EJ0+y1PDRK1c5+8BwSycpxNSV1gfFV
UspiYCK2hyck1WwmKlSQ9n74ip6IXLSZtZjzhhxpYf8rFQO2AP0jAoT6NGjEnvCv
atPnErpN+o5Y/2zEiuxPoNKSnL7piVg6tMeHC6n+QV7NpyWeuhfF3cJioX5bb1yj
a5H2VNnF2YU5DY1QIR2RUljO7BYXwXXuzOF0Ctkycs/QlJLj/bwa7tAoqTXR+T5j
2o0TMsqvSyjlf3gHC020OWOiq5R9exIX8ZHFemTWt3GI3uoqafP7P9GcUeQPH0aK
iknAjv7LzRfxeMnA4gqeYYFFMQl4YzTaOv1JWDM171Me3HFvyWYYS7hS2v7WOjMX
lT7JiX/WB9T1BLjxZhlmoeZKoYSq/zwd7YYn32wOP50MXrHsZXvzT4v490yHHfwW
s8IzrWZqYQRXcpWiI7XMiYCyhHfXTiWCfLw93uaEu79g1Z1Ote/OO1MojmjvUupl
dQo2XaSGjyZlusoX2oUxtqMRNKsPevRtIssCGtdqBaGxycznHMoM/K9NpHQOvh1t
rvRb0u6BE3kwKZVXIhv5pqwgodpHxJDf6CdwCTvnI0+8XDVKkqN75IG+T9Urk7MK
mPObRVbKB0yKVmq4BrMIOPnTGmUDMr00xkj121xEdXF4WjZpKYQ=
=df5D
-----END PGP SIGNATURE-----

--k7jummn3l56dasjd--
