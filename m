Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76D5965F718
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:53:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235681AbjAEWxc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:53:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236408AbjAEWxb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:53:31 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 867825C1EB
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:53:30 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id r11so33264204oie.13
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nSCKV8XHeWHODEGtUqtNR67ZVJxQrttSk8l6MrAmXfE=;
        b=f/gW/eb07cDKj6oUT58HJJ2qSh8xythDRuvJPh/EWzRkUMWxkWaKkLop/fF0IB0ROk
         LvtLMj22cD5oJOXBC5QZmW5Bk0sl1Yz+yBljN3ePZOBQBheHHZfqj2gC7ongp6CR24LC
         dss5CppjMoLv7v9wkI8yTP3yi/TDY09BkhKPwhgotjtonQMpDiTFue5CLp9NrXGGKbCX
         at05Iv0ogW6plmrFwqGkakVJ2PJyzN5EozEdjyZcCpnEZFqKsQWK72vOqNyqtUE9iiTH
         AVNmijlffdJGDzQ/uwxjXc/3KTdXjYHQowwvUo2M6rctXE219zf+0LWi41wIQgNZ5IpT
         D3GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nSCKV8XHeWHODEGtUqtNR67ZVJxQrttSk8l6MrAmXfE=;
        b=ogj7/Xbo1vv4S5GMG4AfQPi2lp/Agrk0yM3IMCpuAwEvb3vTKxNGTf6QMTRRMkh2Ub
         JRgmHXRYq3RfsiaB10vsg86DG2xXNYK+Rm0+PVUOTMdhGBoIf4DljxF81YnjXGRYRKPl
         Ny+4WOEcqsKMdc0WG3mIILYkfQazapVudWWuu5FBW/OilJNcJFiMfW79bLGDtZajG1Nb
         Ym6TERjL3HIhB9BDaUE4PENFaYYlvb7QunmzFWAUVEGGmwXFoyD8Nv6aCrp3iIYwE7A/
         hvgjmO6tr/+89J7JiQ30Y77cAmgwW0lAHk77lwtUtzZ8JhgfQQuyyBxrmjjezNf8VxBM
         l9rw==
X-Gm-Message-State: AFqh2krc6RNXci+4EpxsKtFoats8q8uIdR5M5gS054DjtB6gDReuUV0e
        OMAnp+pusO4MDqi+StnPpx1UK/EFi30=
X-Google-Smtp-Source: AMrXdXvsD8WUuYnQFgy9E79EHB0xuxjQLxyIFElmnJeqYSrQz1V16h//txyKwHNCSjuonEjKQRp9Gg==
X-Received: by 2002:a05:6808:2384:b0:360:e8d5:bedd with SMTP id bp4-20020a056808238400b00360e8d5beddmr38373693oib.5.1672959209812;
        Thu, 05 Jan 2023 14:53:29 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id c20-20020a544e94000000b00360f68d509csm15832775oiy.49.2023.01.05.14.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:53:29 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:53:28 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 10/13] intro.3: srcfix
Message-ID: <20230105225328.tutvqrvewd6knewc@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="p2xt5khrxa6l63i7"
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


--p2xt5khrxa6l63i7
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


--p2xt5khrxa6l63i7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VOgACgkQ0Z6cfXEm
bc52rA//WqUQ70S5qXMmGTE8GXNHdjM41qZPFYJVoCgvHH7JRNH+LFqjQuuQ0Nqc
IrgbZ5l/9Aw2w+uMox18OPaO6tIuiDe/eriMotYlHwq2v9ygFOUj3D+piNu94js1
TZENVXJ0Dox9Z33EgmTG4qZ6f1tqbhpr0hKuN42ziPHiSfiFoM3eJqYdIP6eGs+l
3C2/LnLXcCc9rLASvUAvYtsV2Zr1Nxd9lZjjA8BnKGr+91JMBMGqGGaZbTOLq0sb
qJEJwa+ttnXBaoW1BX6zNeP2NdsSkbQBxvFuI36UcGjyELWcavUmBnhY0yvao6ZT
5fhpKqe/cyIfxVuXWAxzRgHnMY1kNpnWMkIiyIEZPC6TSy5yuks3ZXaDQ14TNaVC
rG5VFR8pogMLbhIN/Z9lhO3uRABgxE3qcsWmwPXwyYFz+lp1pM8rWEBTfyAqBxcS
dYDonYzEaVqc/uHwCTQg6kwOOBS1SgDr0YGgdvq+fXo8p/eN+zDMZWF8GdMbCJxD
r19KLjb9OexlLSwYuaWKdnMD9WiKL10OJF+wB9fiUBceqo6F8KWzru1ldxRiuZap
EhMWWUIAQhXdZKbswsr4IpBL5zx79wv+NbO1OWpNByh139tlmzoymtIs1RNZ5PQW
PDMHrOUTeNme/Trzol+QPR9kCp0KBTzen3NOckt+PHUdPGGv6ME=
=QhSI
-----END PGP SIGNATURE-----

--p2xt5khrxa6l63i7--
