Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E46F865B34D
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 15:24:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235955AbjABOYJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 09:24:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232572AbjABOYI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 09:24:08 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 922016591
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 06:24:07 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id r130so25080983oih.2
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 06:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5SHaygsJMS+nqLkYIy9v4HpppdDvT3jmbd99WGueHg4=;
        b=H96WrW8WvaxNLYWjibCTi9is7Yx/fwMPWq5mbDFDrooimAqIzxGOXjV2pgvYOIfFtM
         AYvfWKjWvJgDPosSciL5FN3cnaFwPcop9G90ZKStbrdNMJdwV5APedeoyIj4aGuJ+vng
         6bFYVkzsF+Z9CPW8bCsv2tlS3nbiN0auwjCI0l0prK/tvZ5i1WPbICt1RDnhfBjtS3oZ
         pdWHWs8R+Jtn/ar8cTpnlMFW8xIoYHHGt60vHoWdTPT1ccLdkIZMPuYW6C6o/EoWWuGv
         /y3R3Q6TvrL1WcMZWw7hOjy5tKe67oqlmQtkyp/zOFGzC28xCtwo63TlFuHtzjo7uaa5
         gtug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5SHaygsJMS+nqLkYIy9v4HpppdDvT3jmbd99WGueHg4=;
        b=xVIdzUVNNHFTEiGtEHH+3Lcjo6dDdjO60fPAjJUVRpiSUSBcXU7mIY90rmNgPWLHpp
         UHV3fPFIH09KUbHV7wZVSvDO/r+2uKDYaOtrbV91jTfnZhM5UorYut5ZSQi5lLKlV0oH
         hMhgM+r9d8EM2LA5n9uhaHzoJHcO6pCmgFVaaCF4iYvqpjvzJzs+y0NmckKB3lQh9WL9
         XZtyGCGt8Vu47un31sWwFHIu3MF38ojn27CuGMvyqgMvxKHyi4+rF55XpDrNuKB68T7+
         JY15AtqsxMcl1mws2nNkLLnjfFR63LGomGEidWehbdQeOGKlZNEmmEwC4w2A95XHi+jy
         Xsjg==
X-Gm-Message-State: AFqh2krPWZVdDe7DO+Uj7aFMM5dTRC8ek39VCngvDd/7braK5ViYPsBv
        zHerCbijHHw741btiaBrsas6fHAw5YEhPQ==
X-Google-Smtp-Source: AMrXdXsbN3i4VWzkQKM1csdgqB45XYuxxwcJ3k1Qxa4kTgC1KN5x5z0OayyanDupJaNdycN7R4iImg==
X-Received: by 2002:aca:5d82:0:b0:35e:ae7c:2edf with SMTP id r124-20020aca5d82000000b0035eae7c2edfmr19441597oib.34.1672669446838;
        Mon, 02 Jan 2023 06:24:06 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r70-20020acaa849000000b00354932bae03sm11984633oie.10.2023.01.02.06.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 06:24:06 -0800 (PST)
Date:   Mon, 2 Jan 2023 08:24:04 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 4/4] intro.3: Revise.
Message-ID: <20230102142404.zf5tqq2cqm47sqej@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gsnjvpvbawbpz63m"
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


--gsnjvpvbawbpz63m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Content:
* Recast introduction to discuss the purpose of section 3 as a whole
  instead of focussing solely on the standard C library.
* Explain basic principles of usage of any C library to the novice.
  (This page _is_ called "intro".)
* Drop material about organization of glibc, now moved to libc(7).
* Make crystal clear what Alex's new subsections are for.

Style:
* Tighten cross reference.  It wastes words to tell people to look
  elsewhere "for more information".  Why else would they look there?
* Set introduction of a defined term in italics.
* Use passive voice less.

Markup:
* Use `P` instead of `PP` paragraphing macro.
---
 man3/intro.3 | 92 ++++++++++++++++++++++++++++++----------------------
 1 file changed, 53 insertions(+), 39 deletions(-)

diff --git a/man3/intro.3 b/man3/intro.3
index e85c0677a..3daabc2b6 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -7,37 +7,44 @@
 .SH NAME
 intro \- introduction to library functions
 .SH DESCRIPTION
-Section 3 of the manual describes all library functions excluding the libr=
ary
-functions (system call wrappers) described in Section 2,
-which implement system calls.
-.PP
-Many of the functions described in the section are part of the
-Standard C Library
-.RI ( libc ).
-Some functions are part of other libraries (e.g.,
-the math library,
-.IR libm ,
-or the real-time library,
-.IR librt )
-in which case the manual page will indicate the linker
-option needed to link against the required library
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
-.PP
+(with one exception)
+to the linker through the specification of an
+.I \-l
+flag,
+documented in the page's \(lqLibrary\(rq section.
+.P
+Many of the functions described are part of the Standard C Library
+(see
+.BR libc (7)).
+C\~linkers link with
+.I libc
+implicitly by default;
+an
+.I \-lc
+option is redundant.
+.P
 In some cases,
-the programmer must define a feature test macro in order to obtain
-the declaration of a function from the header file specified
-in the man page SYNOPSIS section.
-(Where required, these feature test macros must be defined before including
+the programmer must define a C\~preprocessor macro
+to access the declaration of a symbol from a header file.
+(Where required,
+these
+.I feature test macros
+must be defined before including
 .I any
 header files.)
-In such cases, the required macro is described in the man page.
-For further information on feature test macros, see
-.BR feature_test_macros (7).
+In such cases,
+the required macro is described in the applicable man page.
+See
+.BR \%feature_test_macros (7).
 .\"
 .\" There
 .\" are various function groups which can be identified by a letter which
@@ -65,19 +72,26 @@ For further information on feature test macros, see
 .\" Various special libraries.  The manual pages documenting their functio=
ns
 .\" specify the library names.
 .SS Subsections
-Section 3 of this manual is organized into subsections
+The Linux
+.I man-pages
+organize section 3 into subsections
 that reflect the complex structure of the standard C library
-and its many implementations:
-.IP \(bu 3
-3const
-.IP \(bu
-3head
-.IP \(bu
-3type
-.PP
-This difficult history frequently makes it a poor example to follow
-in design, implementation, and presentation.
-.PP
+and its many implementations.
+.IR libc 's
+difficult history frequently makes it a poor example to follow
+in design,
+implementation,
+and presentation.
+.TP 10n
+.B 3const
+Constants.
+.TP
+.B 3head
+Header files.
+.TP
+.B 3type
+Data types.
+.P
 Ideally,
 a library for the C language
 is designed such that each header file
--=20
2.30.2

--gsnjvpvbawbpz63m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOy6QQACgkQ0Z6cfXEm
bc6MZw//eEqu/cH1rFCr11ebWLguuUECNz+vsmqjCBdEdhA/AswOIIUnJs4yNpmI
keIUHsO7nDiiw4iqkuECzF4uZ1zbRbtkQi56+MpmlkFc+w5b/gwxwlIf2CsOb3A3
hyH77LCZDKgRrKXlT3DY4ftTN+EOPqHjeNMHCaB58tA3RnYj8pkQKRDclnnLqE9U
3ZuKhDBq4iSDt4CjGzt02HSkt+qpZMkwOEX6EAGiZlf5kmkLvX14ZG+Vp35UCQwZ
c7Taae7NmCPJQXLH10jN2SwkH/JE0zGPRGJ6/KFIQez9PKlPOWom1OeMR/yngeOa
gLBmGqcZ2piEQgjfDnP7Fl2GFY7RAaibfvDtDIVdC32bV4wIxUYiJN/9ONi3n5uz
3C/pkN0RsqXmpB/UuIv3y8Wy89DnL4+jl27FmcWpD+HxWBOrv9/bFrDYMr/Lp9rr
k8C9OyihaOqPUdZSeev3YmBCbN82dFrWMIdIvmSGS2w72w4TwLVqX3jtT9YomqBJ
+S4hv4AxqE4nxc02njVwjVZG+JJiCO3DmffU+NUgobGMNDRIMTOXrlwvu236r2+8
p7AFgsXo9cWzeWLih0y9bKifjYMKWBQ4u3aPMyw/GvSMW7jbzEor/zJBQLSCdOWx
uxw+q4hvm/Jma4fYW8CFN7Q9BUR5mt0vtfLmNAPpG42QzoL3DLo=
=jyh/
-----END PGP SIGNATURE-----

--gsnjvpvbawbpz63m--
