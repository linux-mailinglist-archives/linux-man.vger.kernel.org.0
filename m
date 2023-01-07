Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 449DB660D9A
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 11:00:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236987AbjAGJ7P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:59:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237107AbjAGJ5i (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:57:38 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D301791509
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:55:30 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-150b06cb1aeso4002767fac.11
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6717DsKMzMvqzyWDejU/ehHSveiqvoH2OAUU1lzLM8o=;
        b=aBTlYdjw5oSK0/5Adh+P86DAJ2t23LydRMFxcQ0TrNSa3mXXBhUodHDQUrViStL6Ln
         lL5dbno0HIwjIyE9H9nwMmdYXW2tYHlSMy2ssBIy3gXmJmRrmBFR3gaF+66C/FLUWP8j
         2HCKPpBrMQW/PIFpSU9rjjw6jAyCjq+2OsuutgGr6VDnWFD6iAETFbEVhWEMOXeQCJz0
         egUgejYsBxF9M9d++PsPouMImpSUjZMqVYaICnIu1UCCLl2nRYWDkrIOgWGiZdhTZTeG
         9wJvy/pMxjn22cghHu0IZoJs0+zqBCiy/DPwW8HBTqPNyyLUDux8dE6J0jWhJqUnoIMh
         HpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6717DsKMzMvqzyWDejU/ehHSveiqvoH2OAUU1lzLM8o=;
        b=2gY7py1lLvJe+ASJXTmluqh4JmznyVfURZur95hDWhJRzmoFy34KB3N5zzQHv4Nm8f
         EBb/fnNXIU2OIOqPLAx9QM/OAw5YOMi2Xtdbe14MVH/NzHFnffjmVPoLX1/CIJ0kxsOJ
         lTyYl1XEkhjGtBpSOKXYf65CVA4f7x+5qJpBb2t2YdV/odwzcHGSu5z+fGKcYT375NL/
         mLtC6XleXuN8xmqpbT4cW7UGkZpU20ePCPpijWqsQzhUvOaTAEpEoLH20aU0maaV2lAC
         MyWu/OrZmGLalTJdF/LlyAqafoc6G24MyQV/UndIjsFStAM//4y7U0/cFOcmSJzARPvl
         fZyw==
X-Gm-Message-State: AFqh2kq7wZsoXP1LMMEaLeAK3WYOh1YlxvmmDjgyF3HnJSzkzZui8BpZ
        SvKbBHaatS2mpFWMIIZDIxPf73REDaU=
X-Google-Smtp-Source: AMrXdXvMJPVUKogvTaUfxgSyh10BbPKIrhZihp7KRY6uMB2Rzk3itDoZqmCIPTBuFBYhgpZzt19pyQ==
X-Received: by 2002:a05:6871:4691:b0:144:e56a:1a3a with SMTP id ni17-20020a056871469100b00144e56a1a3amr28217950oab.4.1673085329852;
        Sat, 07 Jan 2023 01:55:29 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x4-20020a056870a78400b00143824af059sm1569686oao.7.2023.01.07.01.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:55:29 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:55:27 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 09/10] intro.3: Revise discussion
Message-ID: <20230107095527.d4rmlenlaiy6vad5@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4i6otungt3c6ilty"
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


--4i6otungt3c6ilty
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
index bbaef525e..c8b5b9ab3 100644
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


--4i6otungt3c6ilty
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QY8ACgkQ0Z6cfXEm
bc79VQ//Qu4iuNzzwLHZjgRIwPim9vSztzXxUG8M6LOFfvylWk5kfRk3cgMQ1RIR
lPJ/Z3Lj9mUH9ZSpl2sCZL7fNHdbA74uTW9sBnUA4vFwHjtmAoOo5u3kB6A4Jnc9
Nl8cCwdwN27bByEvnFrHiHrfHLH63CcnBqEOFmWpw8zAwvV1+EOKjBKci4pPRK1d
03kITGelZ7i+p59O8ABUqONlhmMtA0bFEWfkWMeS0239BG6ryY2YtWRYBt9UwB2j
CNUk/CpYki8t/0Hg4/qC92NoNf/BXJo/4eyKbNIkKJ/hJU3zuYs+z2rEqFJVk5w2
qldbO1ui1KEp+6KYEUtpxJSZfSqKqzJ4Ns1Z3c/N7EAClmt6RVQs9ssaaVV9L0ys
xTpsqtxxz9j+PCPJ4XIq0a9jUR9gL15LTeyfFOafMoUu03WGD661adCq+DOspwvS
b3C3F8jc7H6lYMWjBhUUAi/vAm2NQBaMZ8gP+xoKl/8V/R16rahBnaZk98LwkgRO
Wmc3FGaWnYpk3asNmb0nvYbMOZx+eqLjB04JETxm4tALSewiJyCJ/5NEb9zMBKrq
TrIwHYvt6njd63RXn6wJXtTXLUu2cVJdZaNLtB+9Oc1QQK8l4AXfX2l0VP7uKRqw
Znov/0usFRXE2ORfPqFR2LaOjFiWXApTbMQ6LjxGuv0icAEu6fQ=
=bs/F
-----END PGP SIGNATURE-----

--4i6otungt3c6ilty--
