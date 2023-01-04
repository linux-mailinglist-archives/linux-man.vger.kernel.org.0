Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48A5265CDC3
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:42:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231355AbjADHm2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:42:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230251AbjADHm1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:42:27 -0500
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBDD9193D1
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:42:25 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id i26-20020a9d68da000000b00672301a1664so20367679oto.6
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k2bUbgfskMt19ItrWr+8XPp1g3s3F6j1TlEX4kDLKY4=;
        b=Qhjj2A+eQHtPzB9tDLQ/YdnZ5qkKJm7E3v+BPWn+sqmuu6TcogoRsUhDd2IFpdMTtQ
         243tfraZL8nH3Bom0013sPdF4HPlCq+fJh8P02ESnmbhfzGooVuPQOA0I0WCuoRVgPrq
         zZGaXgzDGNB/i18VQTtAuQrY0FnsHMKInESQBjlPOHxFJqS/ZTOOdY+U9ojtSy87N8op
         +G9JSSKugUr/ojZVyB3V8Ro/4YKcjo9wZ+voCyvjA18P63U5bVrdPACAV5V/Zp2RnB8K
         owtqKPR2RzTK4MqWx/NJjV/sgGCMrjLWdml3ChgLMKj2u1bw5ZcErCUlpn1TXYnPs9kf
         iO6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k2bUbgfskMt19ItrWr+8XPp1g3s3F6j1TlEX4kDLKY4=;
        b=xDws2trivo/vAG1YxOZmREiqiups+ovS6s4pzyn6xap2XfO/IP3WYNyVxmUDnA8gew
         6DGWgYXq0qqgJ0WLwZmBHaoBNDzLkSiyrgJWHzi8YXUo4VvnoTzQJYEGH8vhG7q3ANwU
         vmwuikmyENb6OR9EFKIN+oUvsaTvvMFLkx64otknTebVaBnTABGKkwFbnfZ2350wOZLh
         fN232oz2fbWri558fPfNXfEso8NawHEbtLAGnMp69KaqGfbhjkhzVmnR3bAsNtE+qqda
         GIZjNxrqy9dWgLQbNz2CuXBTZrPkZ8EL7FbufeXJPLj6iVKvgpCOMKPBo0oPohYhDM6N
         zEYA==
X-Gm-Message-State: AFqh2ko4iS9ph/rZIKRpaxYjoCJt/YxIfxqRfB+Cn29aJ1cq+t0869J1
        Y7S0UonOGfrxdtaM9t58VAJEMHdrPJU=
X-Google-Smtp-Source: AMrXdXsFBavx2md4lWOCGbSs5dHL7MZmwT9b9NxWZxouq7f6UDkRjDYO3dm4ychr4lL6Rqz43L9EoA==
X-Received: by 2002:a05:6830:1652:b0:670:6328:f4bb with SMTP id h18-20020a056830165200b006706328f4bbmr23598320otr.24.1672818145175;
        Tue, 03 Jan 2023 23:42:25 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g31-20020a9d12a2000000b00661ad8741b4sm15899355otg.24.2023.01.03.23.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:42:24 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:42:18 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 9/9] intro.3: Revise discussion
Message-ID: <20230104074218.lvxtj7que3o4oeip@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="un4t63ebvdro7iqw"
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


--un4t63ebvdro7iqw
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

--un4t63ebvdro7iqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LdkACgkQ0Z6cfXEm
bc6rog/+IJJlnC2OpmzM8BfumdPo6nbEvxP43ToJsS6JzyV/5TIUW0juRpBu2dW+
x/Ut64MVGCYLieptI6RZ60bdcyW/6St+7ZpK/oWJWer1SzMIPEcn8iVXoXIBMN6p
NB2B09Y4UrF/NzxKg+c8pBqRem05sfLFnspOq6eZEo5O+9rrBELBSTgJaeAHgZn8
kOCUt0YDXVpsOJhSUXnBSmJWseQsieYyx46m9Pd5fbip+SPEHIPk0AdrtpbauGBS
e47fy/zVKWikBm9yjxxXW5ZQGDd+U9u+Pe80ksqyk4hHgmHVLDQDZdiTpbUbvGoF
PxUmpYJq4ZrvTAOF/bCIyr7OljEfMx+VEADIPiIc/MoEh3gFDZ5SDA0vkC42bTAR
dZLJqQmfNb+WekYyyY+vJv4acKUcTNdrptvbq5BheqIFTNfLSJs6GQtQHBTNuvAU
kTaCnMl6vjDmQ7yeh6rfe2tRmdHvTbnhQVTS6zAg/bLNCfpFudyaj+mpYCqXCrHu
80qIfxI6mF7EmYrXPZ5UGnCE1gGBQwjShWgEPlyEvbho04i4CnAud5JqQcN6ZAZj
+ZFfgNr0RMgnZnxCgZ+XRn+SWkrBQiNbilFCl9JBMzjWsKSAxgU8zdPPxSMbak2K
h7egI3YbCaPx6EAmJ1TXgmWEz7Isjgj2CuIaVZN0dQyjer4hPKo=
=H4+P
-----END PGP SIGNATURE-----

--un4t63ebvdro7iqw--
