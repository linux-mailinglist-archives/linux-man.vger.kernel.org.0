Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC76E660D99
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 10:59:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237349AbjAGJ6u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:58:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237023AbjAGJ5U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:57:20 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 227368D5F6
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:55:21 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id m6-20020a9d7e86000000b0066ec505ae93so2288963otp.9
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/tH/Juk6+5kOA0KJXRdgdHxNz8KFtup2+NtgVl7XqW4=;
        b=LRR7hkLrRRkEHiSbDlii9vfP62fUAVgezOigzwh01H6Nby3uQupqGhX20sMLmHGpLI
         i6YGeuVjUBIAHZRKWeirbX0ivRsK1HUINJ93p8LaPTxUTRygy8OALxg4OE6CHQkkH5dL
         +0p6CL5q4q8zWz149gtHf8RDDDjW9aHslNsovOm1B5k+9TLTY1mFWyRAy7CYBvMv7wzx
         ekq/WUdapBU6QU1DdBpKsHBGcxvJPvdphVVYrs3gfsmcx77bYOUu3D4TS7pe3FWbdrDG
         XAWnzCML4yYzQ8FZB0iIQCn0Pn8yfBwBong77jOEkAdKPWQjMd5926yke7+SkmJm28GI
         GOTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/tH/Juk6+5kOA0KJXRdgdHxNz8KFtup2+NtgVl7XqW4=;
        b=BmAt1203987FzeEdY+k9iBZLkWjPaawgmun0k6OiOilFt6yIQwVAtv6lX8v74ZTloV
         rgKKzJpidyM+TmM5yOuUKtZUYSJVp/7kw5uN7a3mtEl4QxqrOQzNb3CyZJNpWIFBbnkW
         v2oEnAgx54FMb9WG7ov9gYhczShtiT0Lm1w5kh3qr/vOSgdUhpR7HLc1csSNvr4tmX7+
         XBlgMHMGafqCOI0ARnL6X8M9CNzlpzYuQti7m8CycdiHSDaTKiMiX3dO5fvSOzYFs50/
         IUfiloD0zJZsf5Coyle8TiG02RnXlUnhqM+DLVaIS2ja1hQfHfRRUnqIITWtw1pbiexc
         P2pw==
X-Gm-Message-State: AFqh2kpOjqXtcJyBTi3J2tO/SvLygrm1DNCYFHoebg0+BadGoNxbOcVN
        OSXiI21VLgv6v5Y+Cg+joNexJw6wmbc=
X-Google-Smtp-Source: AMrXdXsUQMvwOEzbT/Rgd0K/aBfUPlfX/ltVogfaR+zv0fv947m01mJVmuCzIC5E3gHqp8aW/zo2ww==
X-Received: by 2002:a05:6830:14c9:b0:66d:334d:b8a7 with SMTP id t9-20020a05683014c900b0066d334db8a7mr26229115otq.17.1673085320443;
        Sat, 07 Jan 2023 01:55:20 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id cb2-20020a056830618200b0068460566f4bsm1665174otb.30.2023.01.07.01.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:55:19 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:55:18 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 08/10] intro.3: wfix
Message-ID: <20230107095518.3ix6hfbgig43tmkw@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="xgwyxeev2kwvl2wa"
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


--xgwyxeev2kwvl2wa
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


--xgwyxeev2kwvl2wa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QYYACgkQ0Z6cfXEm
bc79+w/8D0c0sJ8cvrbfEex8x0/44sk3TjVp+wdQEcaLbwBiahyN6wngKjZZaKbX
Mc7S7wCES5VT7YnztsZTiR5PfEDQOD7x5ZPOLEPSo1pqmqniBKHXZDzXkbwY9pFw
JJleKxzS5heXV7EqOaffaALVYF+qDYv3vJsswlWg7mqCaUofNIJtpcCRT4Dc7l9K
IowicgOsr5OIKRLFX8oL7ZJ9A5UesUXXr/BJs6sIc2pXpblUVJXH3YBuEDgXK7f9
xrDaog6tS6FEPCQxlZDyaEbRew0QdSk/urXWXfOVvZFU7Zv1J75wYhCHuztIvEQY
sLl0gK0Nd1r0laFyGTJ4v+FKap0mvHWcj6TVg0UoqMK5epKv8p2J04x/MMPBvPMY
A8e9EAKPXQwn/YKz3zENz2ekrzTrM6DXYtmD7iGseCFQZocBZvTddSFQyDZx7UKB
NmA+IzjeTwPsiud4pe1EMJA6zSVNqDbvp5/5qNQVUscQWfMBBR6I5ehzhZqUU18x
vTgrQMTEtwICG8kLe0JoBotGhTvERB6hL4zDjs5dgOkTObCECYNIU9Yi+ntTcJYV
1HNvQQVvtCCorSKhypxnTHhXg9JOoXfZUlXygsMLRGn51jKbZ70rnprHxNyHrZhS
dW2pc9LwYGMHtooCuSRyceA06lVxxdbooeJM7Y2XDkDRqDKMaQk=
=fQO5
-----END PGP SIGNATURE-----

--xgwyxeev2kwvl2wa--
