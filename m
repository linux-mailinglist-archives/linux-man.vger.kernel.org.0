Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD04566AF82
	for <lists+linux-man@lfdr.de>; Sun, 15 Jan 2023 06:44:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230512AbjAOFoC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Jan 2023 00:44:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230003AbjAOFoB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Jan 2023 00:44:01 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A811C13D5
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:44:00 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id k44-20020a9d19af000000b00683e176ab01so14462610otk.13
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GWnufZLzqkhPveU2sjXQOG3jGXMUIgBOBP/XXiphvcw=;
        b=o6iZ6pVqXErO6CFBIa2ukbCNayYZKv643VyHDD6Vxbn0Cn5v90NA0LiSlCB3jGDh44
         QEnFkxDZIX3szliy3zR15L2tdjjpCWsc07YfkRZJ/mT/ihVHuF9qQVPzBfcMDOhKE/QF
         CpCZuz+ZeIL4Zq9CNBzGYNHnZTaf1hJ5ujGUf6HvI16r8PC1fCFHU3q28xUg9fDl0KEb
         WyBdLtUluky9ceSsnf18RJEfuUZPhnZiAMdd3LhNdw5rr3Wa3LcuSSJEqcl1a6M7s9vj
         X970Bbx9+4c7ucBMsVsqu9do8BY9HRZzBERYf2igQxmu5hUNSziVBPWwBKt0wSMoUXT0
         dX8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GWnufZLzqkhPveU2sjXQOG3jGXMUIgBOBP/XXiphvcw=;
        b=UNj6vBl3XS6QIJFgpwSxWDRWqt9CjZlm5K0qWtOQzoi/PCqgmuTGcReC8sGyYA/Jae
         lEZ2araBkpn/Nwl/n8sB19bDgYmmJJPQbqINz1CqP0+3D0uB+f7FXLb/fBQ5wMDAqR+x
         IG1u4WlMTe1jWnzpEG63DDkQw5nwQpUFa5VgH15y4pk1HT61HrxJAZH6ynf7M+D5ZAQb
         TGDjGicFRRdpXH03Eg3lCjtOxiYZQpcmO/cAN2XhFuhLB6RMAMguxlp77HbfZO7W9JL0
         9bjMlHEJHEMMVdsivILJ0/IipuyA/muCDzzPoA1DLExq+JRKCuJz5sLToclhSBXRuo7H
         m51Q==
X-Gm-Message-State: AFqh2kqAVHjcS+p5aY5US2MLdir1Iqc8NPUiX6+SUUkSLx3J5r+n/kp/
        lmnd8mCuUdSguhBwjDWaD0xxGuG1d/k=
X-Google-Smtp-Source: AMrXdXv7oDCqbbUIBDDEiAgl0KIbJ3IMHA9zMFg0+pRCunhEeqQAfa1/ADrPTJVwSWoX6Vv7CqYNig==
X-Received: by 2002:a05:6830:1409:b0:670:74f1:3d5e with SMTP id v9-20020a056830140900b0067074f13d5emr42338987otp.15.1673761439769;
        Sat, 14 Jan 2023 21:43:59 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y18-20020a0568302a1200b0066f7e1188f0sm12778219otu.68.2023.01.14.21.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jan 2023 21:43:59 -0800 (PST)
Date:   Sat, 14 Jan 2023 23:43:58 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 4/6] intro.3: wfix
Message-ID: <20230115054358.b3whantkf3wtr6wy@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="sj5xn3zusptl3nm5"
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


--sj5xn3zusptl3nm5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Tighten cross reference.  It wastes words to tell people to look
  elsewhere "for further information".  Why else would they look there?
* Use passive voice less.
* Relocate sentence for more coherent discussion.
* Say "application _programming_ interface".

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/man3/intro.3 b/man3/intro.3
index d6d91f6bd..bbaef525e 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -42,9 +42,8 @@ must be defined before including
 .I any
 header files.)
 In such cases,
-the required macro is described in the man page.
-For further information on feature test macros,
-see
+the relevant function's man page describes the required macro.
+See
 .BR feature_test_macros (7).
 .\"
 .\" There
@@ -77,9 +76,16 @@ see
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
@@ -87,11 +93,6 @@ and its many implementations:
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
@@ -101,7 +102,7 @@ and exposes only data types and constants that
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


--sj5xn3zusptl3nm5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPDkp0ACgkQ0Z6cfXEm
bc6isxAAp2ES+HhihEvZbMZS+eFEsiAXE2fBsojWeeH6/ubIYKcOj8BD0FYFexff
TrTFkie4eQLUYpELLFs9USzsQ/Ed2Re7UbQV6Lr1/GwZr1l4kEVyetnoiH9djnZy
2scVcX+PhcIlCvlDeJTIPRCYktL/pTJoyn4U0B6PWSm06CtonxLjpNhOe3ArY8Y0
MRmWwFPioygnkj4VJcPAJD39NtwT7dMQbYF+VVI3nwU0EH68fFRso/ALdFn857b7
2HBgFaKKPKA1iwGezCNNVWXzXUT9L6ykys28sbo0ofFR3XcLxY+aCWLTT1CcgBUK
FF6GkeXvzYc+eGW3nA3kQSoQ1GOu82PqiYVlTF2J31094LPfNOrxjr12hyCVE+Bb
RE0dgEwXYJ0wII2w2tDI4JXu9Jh12BaT9oUjy6K85Kkq6FwmNNrxSc037A342dA5
vs+BdevE9dMPuOrobQQ9wAQ0mDdCPE7Oxdf79LuJrwR2KMv9ttz9PZAJo99Byp63
kpHSAk9sZZD4TW5KuvjZ0EO/WTdQ1EqsPJ8DdwYM96t7rWknY+xEfZF7v4bhmgUN
CPr0joNXCGSgzyLhVVTdSoxYgToliCWg0nyvCP27ZUnCu1fxm6MX5y2xO1oS80Kk
RL1lfyVSzYrX4l+qVj32F/WnWGSDLt8EAsLVdyqViRQnDk7PxYc=
=TPgF
-----END PGP SIGNATURE-----

--sj5xn3zusptl3nm5--
