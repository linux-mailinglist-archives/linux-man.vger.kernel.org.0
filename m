Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BB1B65F71A
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:53:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236318AbjAEWxs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:53:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236296AbjAEWxq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:53:46 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B154631AB
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:53:44 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id k44-20020a9d19af000000b00683e176ab01so18518541otk.13
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2EKmdyIBtVVi9WQnVbFsf06EhO4qhmDgqOieC+pXGDU=;
        b=MN0pJ7Hlkri716QF9rh/wWlMJxYPtqjpId7KbiTu4jPyWcBf3DQKHvdfkOF97brt29
         ZFuWPphf3Gw7IGROF66BsSBvNNqFQEweQhkZy2+DUngQq60gyOD/SakdtEh5IG0BtD/m
         Rl/6sAYf8onuCiREwBOxAvVG0L0fCaculaGwhuqjNHQSF4QRJ6VE7FFWraCemGV5BPm+
         u21RT6wKbmjmulg/P1zT5fM2IyhtWAayuav9UxpgSzHkf3OLwbvUMepE76cjkeOMvFd3
         t/lYdGCz50UGxhZixGlu7qvyJRrtTgQSFT1McU5q2zlyLfaoVVy1C/XJTqw4edZtPuLz
         YdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2EKmdyIBtVVi9WQnVbFsf06EhO4qhmDgqOieC+pXGDU=;
        b=00bI2IVYx7o7WUW27bQuGWXaVvk2vPKwByHNITNG7weTUsr/Bpe4gKieg4ViUc4YMf
         k8L8GfeCYunBOtGRfo5VCBmcwXfPWJVWbkPypH2vm5f3Z4e43LFvS0BMo5J09190fJE0
         HpH2mUXYgBM7JgDwjrW4JsGP3HgsbDJ4t9DmAjEU9XU7MXFXG3aIbGY7+DRxzsJQMQAw
         2a+7IQ7kzR/tn/vVq9WZFQBDbkPd3UTVEIBfSffinJ24g0KmWmRMUs9uDSP1B3aKJ8v4
         eeErlWq/OwL0gsMAn2Ys8O6pFh/qIzn2v5cgwihqPxWzMyk4NP/MxF66W7vMf5adbzvZ
         SEOw==
X-Gm-Message-State: AFqh2kpBFeMLpND4iLbAY85jj2B4KxWA3/81dqt36b0ZwjK6lRHsvU+F
        vYiwcDCZvJQOEopH04HQNYCGAcYM/mw=
X-Google-Smtp-Source: AMrXdXu6m6QvdCzfzcoHaWtOsZ3svICZplcKPhnmxnwaiUox4Fq5V+6dVj1lGm1rkBtt9hOtaJGrgQ==
X-Received: by 2002:a05:6830:134a:b0:66e:2a04:f6fc with SMTP id r10-20020a056830134a00b0066e2a04f6fcmr29184462otq.29.1672959223905;
        Thu, 05 Jan 2023 14:53:43 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x11-20020a056830114b00b00677714a440fsm17950682otq.81.2023.01.05.14.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:53:43 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:53:42 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 12/13] intro.3: wfix
Message-ID: <20230105225342.wsak7vlbsdld377g@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4kvgwhslpesv35r6"
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


--4kvgwhslpesv35r6
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
index df911e749..d2c8c132e 100644
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
 .BR \%feature_test_macros (7).
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


--4kvgwhslpesv35r6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VPYACgkQ0Z6cfXEm
bc5BfRAAq3U9qOgfzxKUC7Z4XgjnZFFUyTZk7evZX6zGK9uYp/2yLOys6XMsY75p
HVcko2Sfe1/XrOlxXxZig8s/6I6GNd1IMiXcSC6vdil5hf/TonLgQOa0g+rbZH7Y
0xJXeMBSXOi9jQcu8Z6ChChBJITxdeKMwkW2IwkJC5OzAUPGPBV1Jadei/k0fvlT
sBrt2/NmFLiFy2aD67sYEpjXDsBcszJ7JQKQiyq1WKdjxJd6RWPf+6Dh7Rj92VeF
HwNnJfYDP/kt9oGrOv5eMV+chrLA6CIvMqyacTdMGUFLQuJUp8djtqYdc2cdMt9u
f16n2mnTopbU8uCPvSfg0YgocstSYnYCb6WnM17mr4cmV+adbPNmnl0OgLPFGeN1
7TbGDm/1RNbpz5TziibBh7JWgtKZwFw12R5Ot9Sg58Vql/xResdlNU/6uakkc4/A
krtGE1j0Dz3PRDZ6Y8zFibpIjbyhkMehC5vG4X2b8MLZoRNq+OB0jijaIhgNHvNI
eaiYJbUrTwwTZRcyVNyJq36cSbueNwip2BmaCShKHgE/U7jVMGIwntUuJf+VXsms
HDIhzYauxEyJ5XkknkCYTYG11e8twZjIE0zr5rZvJmAun8XKs5YXig9MSxZc3C1s
wHTjSoZqu1JifO7podh5l6PSlGJCNt6X7gJTyfK0lWzcpd4Yw/c=
=e4PX
-----END PGP SIGNATURE-----

--4kvgwhslpesv35r6--
