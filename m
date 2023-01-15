Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EC8566AF83
	for <lists+linux-man@lfdr.de>; Sun, 15 Jan 2023 06:44:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230507AbjAOFoT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Jan 2023 00:44:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230453AbjAOFoS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Jan 2023 00:44:18 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A279C13E0
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:44:17 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id r2-20020a9d7cc2000000b006718a7f7fbaso14486332otn.2
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6vWq3fNNAIqd9vGSk2Q7c1zOo7VkKgs4liYsEX/PMnQ=;
        b=i+vBBFIBqapArSp2tED89ggZF9jHRItJVatES3yDuVTEjLtaayNxD9c0HII5M6EYID
         ljHw6QXtgErLn6fd54GNtvAPXhlrX6pYQkxnO+hZ6qzjI+KvQFAuH11ZgacsdpiUXANH
         bnQ1RdqT60CbyKLnb+Dyg2sISENqw2byj/aK8/znsTX5Z/nfIeCw1V0pa4kWBTju27UE
         we7GQJelrcsXlf/nvZAdpZyt5vecvYdU+PeX0Yh4c3LUJMGEJ9mlYgJ2SZCpmEwJELlo
         evJatHVXZFNKOFqriqCtoagZ8ZgsNmUfZpCByt9Lak0HKd/jRtrtYslH6wf+cDuTF82J
         Wa/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6vWq3fNNAIqd9vGSk2Q7c1zOo7VkKgs4liYsEX/PMnQ=;
        b=So7zFlaHAovkTTWEEXuoWSAri4cNhxZX4Wjk0Yox2oDrAP0XI+7kZVDqXpA8l9Db8m
         fNRnqmJZcWRnVNOltEBRWWYrAUf0Q63JLKDeTMPpcKPTBkDAmR86QJ1VXXXFyuAInDsn
         eO8eO5Lb0/gcEYkGqTtFAUseKCkptYsahBX2i2j4rEuQW2OCEJoaOjFU1rPdJfOX9aLC
         KRXcXyanvHcAq39ggiO6Lt18eJBYgOP/S9V7jHrZOIAZJyuYt/bBksvRZzIhoKGN0Df7
         zV0a39WZy/n9qSSK21GR6m6PYggIrWrZRHVfX6Q9x0Qu1nLA/Lwu86uVn865TeFYwVmd
         rfvg==
X-Gm-Message-State: AFqh2kq0BIZOngn5tLdL/hZczHjQBzNUsCT41yyTz0/rQYjH+hyEijdv
        aHT7o1oM2pjpGHcVYp2nOtcBh0vqrhI=
X-Google-Smtp-Source: AMrXdXs+A1/AB9t9+zM7GXTofEEL2XBtjq6ZYu/TYan5PbbTR5ZzYIHcBHeVlb2xtzHLZ9ehrd11fA==
X-Received: by 2002:a9d:4c09:0:b0:684:ecb4:84c8 with SMTP id l9-20020a9d4c09000000b00684ecb484c8mr97795otf.5.1673761456540;
        Sat, 14 Jan 2023 21:44:16 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x89-20020a9d37e2000000b00684e79759d7sm637529otb.65.2023.01.14.21.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jan 2023 21:44:16 -0800 (PST)
Date:   Sat, 14 Jan 2023 23:44:14 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 5/6] intro.3: Revise discussion
Message-ID: <20230115054414.b7furlu6higgqt2a@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kqe2sa5gftew4m3l"
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


--kqe2sa5gftew4m3l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Recast introduction to discuss the purpose of section 3 as a whole
  instead of focussing solely on the standard C library.
* Provide historical context for usage of subsections in section 3.
  Resurrect information from comments, in rewritten form, of section 3
  subsections, so as to contrast them with the current approach
  developed by Alex.  Be even more emphatic that those documenting other
  C libraries should not mess with subsections.
* Explain basic principles of usage of any C library to the novice.
  (This page _is_ called "intro".)
* Drop material about organization of glibc, now moved to libc(7).

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 122 +++++++++++++++++++++++++--------------------------
 1 file changed, 59 insertions(+), 63 deletions(-)

diff --git a/man3/intro.3 b/man3/intro.3
index bbaef525e..f5a47b566 100644
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
@@ -45,54 +45,50 @@ In such cases,
 the relevant function's man page describes the required macro.
 See
 .BR feature_test_macros (7).
-.\"
-.\" There
-.\" are various function groups which can be identified by a letter which
-.\" is appended to the chapter number:
-.\" .IP (3C)
-.\" These functions,
-.\" the functions from chapter 2 and from chapter 3S are
-.\" contained in the C standard library libc,
-.\" which will be used by
-.\" .BR cc (1)
-.\" by default.
-.\" .IP (3S)
-.\" These functions are parts of the
-.\" .BR stdio (3)
-.\" library.  They are contained in the standard C library libc.
-.\" .IP (3M)
-.\" These functions are contained in the arithmetic library libm.  They are
-.\" used by the
-.\" .BR f77 (1)
-.\" FORTRAN compiler by default,
-.\" but not by the
-.\" .BR cc (1)
-.\" C compiler,
-.\" which needs the option \fI\-lm\fP.
 .\" .IP (3F)
 .\" These functions are part of the FORTRAN library libF77.  There are no
 .\" special compiler flags needed to use these functions.
-.\" .IP (3X)
-.\" Various special libraries.  The manual pages documenting their functio=
ns
-.\" specify the library names.
 .SS Subsections
+In Unix systems circa 1980,
+section 3 of the programmer's manual documented
+.I libc
+functions in subsections;
+.\" V7 (1979-01) used an unsuffixed "3"; System III (1980-06) used 3C.
+.\" BSD at first ignored this shift; it is not seen in 3BSD (late 1979)
+.\" or 4BSD (1980-11), but both conventions are documented in 4.1cBSD's
+.\" intro(3) (1983-04).
+\(lq3C\(rq was used for most,
+with
+\(lq3M\(rq for those from the math library,
+and
+\(lq3S\(rq for the standard I/O package.
+\(lq3X\(rq was reserved for \(lqvarious specialized libraries\(rq.
+.PP
 The Linux
 .I man-pages
-organize section 3 into subsections
-that reflect the complex structure of the standard C library
-and its many implementations.
+project prefers to employ subsections differently,
+recognizing that the many constants,
+data types,
+and header file names
+defined by
+.I libc
+are as important as the names of its functions.
+.TP 10n
+.B 3const
+Constants.
+.TP
+.B 3head
+Header files.
+.TP
+.B 3type
+Data types.
+.PP
+We discourage use of these subsections to document any other library.
 .IR libc 's
 difficult history frequently makes it a poor example to follow
 in design,
 implementation,
 and presentation.
-.IP \(bu 3
-3const
-.IP \(bu
-3head
-.IP \(bu
-3type
-.PP
 Ideally,
 a library for the C language
 is designed such that each header file
--=20
2.30.2


--kqe2sa5gftew4m3l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPDkq4ACgkQ0Z6cfXEm
bc5Stw//UYqauXdQsz7v16ZPHib1sPz4ihSJbG8WaLACaJYRKmQOZh5ooYj0Ae5b
ApuVzOfnlcBdIUMejNdLFYcIK3OsLf2I/iM1rksC30q76LelfjkyIG5A3Tl8W0WB
0r0LANAbMhA4ViUTd2OvHndqZmTkRr4PW1FCiNb4QbEyHEzdQn75mgLOE4azC7HX
YrrBXJvDqr+67aREJJhJUh1WefJBpr5RuKiP6dqGCAyNlrLDRblWgsVSc9zwZ1Yn
k3CztYzavi2McQ0dwWmS96cwvML8khh88t62dm5/76oU3LnT6K5LxNhuf3aUCgrv
ZfMhsl3TN0KpIm3+rHZx8PQxOAZSaMr9ixFafjHc/z5qJ8Cim4E0bosL3Pe0a7V8
W8AvxL0zhmL+6DwfX6hs/wce9+rhs6ZMkcZgIDa8oylwbKgGVKTx54BMft2M2Dcc
UJjQ5mzFgm+djmSTQamp1dDcMT+sBW9wtdn9LEncWEBtSBrjBkx51W3c1/4al3Kt
/rdeTGqkVhnNgBXxEXLJ8jDccQ0O3KX/BA1oId4QmY7QZRK4Y8qDzsbRUtGOivdg
T4QU9RmcW3Fa2EiMxdtP2AdVAiBTAleWy+XMyCYAU7EWwzbxVIZ/ZT+BMw0I2qru
XM4clRC4ZsyK2nKrUabLMZJ/6oBo9OY/l6V11Jb9pBURmT6XA7U=
=fR1p
-----END PGP SIGNATURE-----

--kqe2sa5gftew4m3l--
