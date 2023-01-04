Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB90F65CDC2
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:42:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230262AbjADHmF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:42:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230251AbjADHmE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:42:04 -0500
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05BCF13FA2
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:42:03 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id k7-20020a056830168700b0067832816190so20381344otr.1
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uNvlvfD3GKNkEiJOj0tADmLiCAuEbId7P2yZompuDGg=;
        b=EvgVOW2FzWhGa43P5RAPP3YbD2p2BrvjaHm18Ku0bSXghUk6a9iagtrg0VgP2ORZv7
         bvBla7bQ6voMqeOU6imaCRHS9LDjz7wsW+dDKwDEEJ9rBL96/HwnBmRFDC5YJs7c0/Lc
         exx+c1nrfodsr1MuVSTJJuIUZS1+gQAgH9XiAOzdSVprgmwmvb+t7fOaYb30GnkqPo0B
         HlOm2xONtiziG3xLynGCxRdOOQq7qDxc+uK19gRxR4tjnaKGSKVk4n3AnKpUJIw0kleb
         tx+VkYt7lcKz0Lyu2e8dX4xxtOGfLYCXiogo9NOKYe+dnnZZyUpbisfimgeIOG+iEeEB
         uL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uNvlvfD3GKNkEiJOj0tADmLiCAuEbId7P2yZompuDGg=;
        b=0boKmcsuCGQz91bcEWDMIG7dzGHMlSgOfljkEz5MtD2RpeZguGyIhnPEk0TMFIJykv
         50BP1eQ1YnZdpWdxyw4EulEjsoR7QQlZRtdUAAA5cPCdkgcgiA6cD9XOq3kH12WSjIVo
         LFwO/OwPUF90PHxVhumD9kR6x+cglgYhrR4qxxfargIWp6ymTyWPgtDZ1wruEDugx3mE
         5da+fjUzItpn7maLtwGv6cUsKiPyQMLnAgM85wmXZe341/gEFXEO/ZTBvDpH7xUs2EGc
         6F6s0JveQNKrsPUuN8AHl5OaMmhx1dhxGbj2BkMlUQUXvGY2WIt8RZMuKdehovjRRF8D
         kHYA==
X-Gm-Message-State: AFqh2kpEJCOAWJfumk1KtJYizE1ar/LtrL4r7nKhlkYZL6IeTYHQk2F+
        LN+Elb0PSW+G14V+IrH/tjZnVHkVhM4=
X-Google-Smtp-Source: AMrXdXvFF1eLJkk+Fnsed3dyVIex1w57Pf2V7sRLBN1xl46wCcPbg+cpK/Gppx9MBYOyA6XkI6fZtA==
X-Received: by 2002:a05:6830:16d7:b0:670:6e0c:d483 with SMTP id l23-20020a05683016d700b006706e0cd483mr23276006otr.6.1672818122300;
        Tue, 03 Jan 2023 23:42:02 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bt24-20020a05683039d800b0067781a9292asm15627903otb.2.2023.01.03.23.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:42:01 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:41:27 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 8/9] intro.3: Fix style nits
Message-ID: <20230104074127.k3o6nyzdgkfmyhxe@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5xjp3ffsqpe43rhb"
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


--5xjp3ffsqpe43rhb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Set "feature test macros" in italics when introducing it as a
  technical term.
* Tighten cross reference.  It wastes words to tell people to look
  elsewhere "for further information".  Why else would they look there?
* Use passive voice less.
* Relocate sentence for more coherent discussion.
* wfix: application _programming_ interface

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 27 +++++++++++++++------------
 1 file changed, 15 insertions(+), 12 deletions(-)

diff --git a/man3/intro.3 b/man3/intro.3
index 3bf5035cf..d2c8c132e 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -36,13 +36,14 @@ the programmer must define a feature test macro in orde=
r to obtain
 the declaration of a function from the header file specified
 in the man page SYNOPSIS section.
 (Where required,
-these feature test macros must be defined before including
+these
+.I feature test macros
+must be defined before including
 .I any
 header files.)
 In such cases,
-the required macro is described in the man page.
-For further information on feature test macros,
-see
+the relevant function's man page describes the required macro.
+See
 .BR \%feature_test_macros (7).
 .\"
 .\" There
@@ -75,9 +76,16 @@ see
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
+and its many implementations.
+.IR libc 's
+difficult history frequently makes it a poor example to follow
+in design,
+implementation,
+and presentation.
 .IP \(bu 3
 3const
 .IP \(bu
@@ -85,11 +93,6 @@ and its many implementations:
 .IP \(bu
 3type
 .PP
-This difficult history frequently makes it a poor example to follow
-in design,
-implementation,
-and presentation.
-.PP
 Ideally,
 a library for the C language
 is designed such that each header file
@@ -99,7 +102,7 @@ and exposes only data types and constants that
 are required for use of those functions.
 Together,
 these are termed an API or
-.IR "application program interface" .
+.IR "application programming interface" .
 Types and constants to be shared among multiple APIs
 should be placed in header files that declare no functions.
 This organization permits a C library module
--=20
2.30.2


--5xjp3ffsqpe43rhb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LacACgkQ0Z6cfXEm
bc6kfQ/+OCN8o3YjqCOzb04gt9HjNmXRsyV0WcWWBYmI41fM/5CxZJNBToDnBGYW
W96PIZe/TW45UQPdDK8NaAFp/Tw2lCTKeGHy3GOyhiVcE0ym1Q8bb1jtzEJV0b+3
2C6G6HQBkqTiuq8aSPsJZLErzQulfu7rhF5BOATifNKrulw4NTeqMeA9IP+q2zyf
8qdN90YfkIAidh+J5UNDPc5BSoLwhNUg6/ViUtpI9fgpxtDRNi9t8T8tNeXXKEkj
tdj7MuHQYGDLjFtedNeyXQlLGgxa/q70H1ShRyl4saO7GiIHgfP+gFeTLhNbfUA6
WpPXO7cYiAIjQVB7b5qH3gTSx8M5iuz1dVw8hctSUREcsfFkp3ZcWBVN7WbyEdtI
u7jgTDyOg2JyIYTv9SwEQjpNI2ZTYsE85KR++G+0udoLIxiAqHOc7dByvWjtYlrb
Vpn5CTCQ1Ir9gLM6d+3sa9T0Akk4HVnJceggwo11DF/KLyMlprrknuEoWCaHJ0te
RUMDKasSY25cnkm6YZf3JItInRovXQQ9NvPLeLhYIIoaRIQSwpeRqh4sro7Q121L
pce61jvzu7pSBiTL6phyxKM2YZXQuhCWC4DlJIsz6T3zqBeMI9q/65CNHIOxBdz0
NhRA6xXEwF/x9AZfyyCtLz8n/pqpBNz7MX5mzPGDcRDQV0mPfjs=
=eGxf
-----END PGP SIGNATURE-----

--5xjp3ffsqpe43rhb--
