Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6203A767418
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 19:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234248AbjG1R7D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 13:59:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234290AbjG1R7A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 13:59:00 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB6163C1D
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 10:58:58 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-1bbdddd3c94so1434601fac.0
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 10:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690567138; x=1691171938;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VUxFJ4rHiWP9vmzhycwgFEPA9P5UKaAJ1dmCkipgn8Y=;
        b=SXFjPASy8xaYP9YOnUnqj67ohEuG0wHZRFClkqk5zeECgsF5rEtHozVXYNgwvIcO23
         5f8qAUy33oStIc6NlP9KuedmKVp0TkYiWgLI64ewucurXjXIKsbQvoVtG9Vm8LLUFyAy
         pPuCWGEuWbkRxOPSqEAwQNaSISt29hMa64S+e1dJD41ml7QbcxO+FJY333AIw1uuW4YP
         JwrznX0ORYQvUAQuyT5wHuvr7h3VkBerFeFXanEr3j8VXpupmcNJg/zM0VPV+FlS5LX3
         gkCu/km4VPfPU3UaSMtztk0WxSYkNqP+9/xWREueo+GKJ0TO6taYIWm5DIKZP5W/5yw0
         O4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690567138; x=1691171938;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VUxFJ4rHiWP9vmzhycwgFEPA9P5UKaAJ1dmCkipgn8Y=;
        b=mIDqa+WR1CUq7Tf5SSJc8gkJjZXj/OKvKVbSJML80zPgaXxT9inj6vf41zw7Dw+Qv/
         IJ/MIyhLaRbQW3u2Fa4mQ1YIMxtCK426BQaU7/XtShPgkEu0uT2pK3HXGHes7o2jApic
         4/4u6rL1l1WpNs2MESkDRl1geqbZzQdBQfNm0VTRwzS+PZwSFk67T7AX7CY18I82Vn6W
         yh8cm+eP+t7MMek5GeYzbZy1u/OaZIMAzMCalEFz6jVCC6m2j/OBazHPmmimuWauDCGk
         VYZaEyHxUYTl0/57bKr5rcaqnhgIc5a73KIqG0ntsSV8gzAHxg/moMLJBBqh/McJDpfj
         sdvw==
X-Gm-Message-State: ABy/qLa/j1U6amU03Gk4QRGzx05qkULCv1DiQj0uU1klwXPLnfTqz3Nu
        SK2W3Yn2N+skgBNRdQTW1fKxymRCcGQ=
X-Google-Smtp-Source: APBJJlGvy8IDbwvRaF0pdSzKRdFZvm9L9r1/PVX9jITgqGxnjTlYInuA0fMStEtUJb5tEdlNvcltTQ==
X-Received: by 2002:a05:6870:b4a7:b0:1bb:81a1:f453 with SMTP id y39-20020a056870b4a700b001bb81a1f453mr4129205oap.48.1690567137798;
        Fri, 28 Jul 2023 10:58:57 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id du44-20020a0568703a2c00b001a663e49523sm1955219oab.36.2023.07.28.10.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 10:58:57 -0700 (PDT)
Date:   Fri, 28 Jul 2023 12:58:55 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH 2/6] vfork.2: ffix
Message-ID: <20230728175855.bcm427agldvrivcd@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="weajmc5vxpxmeixy"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--weajmc5vxpxmeixy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

=46rom 0421c8301f29c2c7aeb2ebe82a72fc716617ea19 Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Fri, 28 Jul 2023 11:52:34 -0500
Subject: [PATCH 2/6] vfork.2: ffix

* Use typographer's quotation marks.
* Quote the 4.2BSD vfork(2) page _exactly_, including font styling.

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.2BSD/usr/man/man2/vfork.2

This is to remove a false positive in preparation for a sed(1)-driven
update of man page cross references to use the groff 1.23.0 `MR` macro.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/vfork.2 | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/man2/vfork.2 b/man2/vfork.2
index 3a65010ca..d5ea876e3 100644
--- a/man2/vfork.2
+++ b/man2/vfork.2
@@ -149,13 +149,12 @@ .SH VERSIONS
 Some consider the semantics of
 .BR vfork ()
 to be an architectural blemish, and the 4.2BSD man page stated:
-"This system call will be eliminated when proper system sharing mechanisms
-are implemented.
+\[lq]This system call will be eliminated when proper system sharing
+mechanisms are implemented.
 Users should not depend on the memory sharing semantics of
-.BR vfork ()
+.I vfork
 as it will, in that case, be made synonymous to
-.BR fork (2).\c
-"
+.IR fork .\[rq]
 However, even though modern memory management hardware
 has decreased the performance difference between
 .BR fork (2)
--=20
2.30.2


--weajmc5vxpxmeixy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTEAd8ACgkQ0Z6cfXEm
bc5STg//SZ7qNhzN9ADyCjvT7oWjtu+qaatSZtmGekuXReBw47unFGTBhEhH/SAa
LqGXv+VJd1JFpOm8O4TcIfiezb9wglYPJSVv0+Sxla0nVD5XLSo2gPeg5GoH5ptp
o8kuyPRP7LuXM5ym7RScwZIiszEajBDwhJ/N2F3YTLnsZRjYDlQTDCCgiLjJQB6K
igoSazZHVY6NgbEprATqkyOuU7z63j3/mWBghbYZv2vJKnRJ1EB5d1dADVY4+uiy
3vTCJpMpsx+kPdqWZiwJsm6dpkBG503cPQNMozsnlZ3r5SDLtgY8ajUWPCdS5d2G
XwAkh6al6J44KdSYGRD9+4nqq6l7m5LbzH8RRqRniJ8bx9hmc8ubSKA92GUpEXf0
GXuzWU7uGTBTBOsgqmLaEbI4IFL0PZ0xooRfpCFXH1ilnfxPqpHBUfm49ILruxub
RvE0UV6ZlixV/cwjCV+yherulvB95Kh14rc30inaSvobSSKJdfEqf67ODdTVUlYm
b9WRQUhNz9nUkjt5qrIm4iAekAKRuVOfwHg8tMWoNciPPu+Bdn5VlBORXn1ZpgsP
Q8NHbhSqCDhi7kcpICOPxAu+NhWA6zbuzhNoA94SrNawK8HBB7Fz12rpnGa6cV9P
jqcKsT6kmzmSPufzx3vvRlv7Rfwajs6VHEWdbfsYBXe/TDBu2Jw=
=jivK
-----END PGP SIGNATURE-----

--weajmc5vxpxmeixy--
