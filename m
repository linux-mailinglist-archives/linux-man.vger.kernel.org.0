Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8241865F719
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:53:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235689AbjAEWxj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:53:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235834AbjAEWxi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:53:38 -0500
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC9AD5C1EB
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:53:37 -0800 (PST)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1322d768ba7so44631907fac.5
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4flQzfHm4i6QjvLt8jeRUvuWTkopHmcmKNh6deRMRAE=;
        b=htkTXl3OnBocEntcznZ6eMwnXhI59dT1XCYwqNYvjoqHqt8+WWreu9fmi/7mL30Rgp
         LDD/j1zPROr4iO1VtejtXug54Us9L5Cm8QlVbixt+XWx2PA40S24IKbYcdJU9Mm/ZSPW
         iUB+slHRhRUzM+DzuxSQlz3Z3d3UwsrC2F9sP3/Q7BG6VLq+EjTmv6bzJpZE4E/N3r0t
         6TZcc5HYP4F8CJ70ApSzW2Oua1jdOY9fs0wiSjLIyCsQY63wD2D8kHAp7azyHxqt7E31
         wDnqYpr+IfdMt/vuiZGWrbWVagCG4FyzXmpQ8ZaBE+5zyHKDm2MNH9QS9I4gcwf5fAfY
         wk9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4flQzfHm4i6QjvLt8jeRUvuWTkopHmcmKNh6deRMRAE=;
        b=kAAxO/30VztqIKeXDYEZSPqISx4jkqqEa8cARyNne4VwcvUpwz/BxMTyep4ghk7cpd
         T6hNqX2uqk42YlG7ISK95AKCtKdiFpuH+I4M566jQ6/Nq51nVCb91NL1wSx23sNANtR9
         gL+wzuH3r0r4Ok6lbF1UpNm/g/cljUFlpbtNSwQJ3KpWbYU7a6/LntVSI8Kz8i214zRC
         0sZiG/b2qSrCOhNbF8RW67wrzuz2w6QeRmS0zqaUrvM2JNb9sDBF5rpPjP1id3NGNwzq
         JvRCVPCx4l+F4aULwjqRX99LuqNcw6GuxWQEs9SC2QAP7lFfuYDkbhXWhCWeFWIym3jr
         XtOQ==
X-Gm-Message-State: AFqh2kokT++3cfj5OGbgPtsVVyRknSEBYFPMGmU/NPpTCZ6PTNP6wTV+
        a0JaxUasv/YIZrg06KAiRY4otTbDEfM=
X-Google-Smtp-Source: AMrXdXvNpXvzHhQe6fQ3zKLY4z9lisTGcOcbKQsNkmD/x9MmXXuD0ZDFW31I/9Ob39NxXPV9DBXeGA==
X-Received: by 2002:a05:6870:1b88:b0:150:fa28:387f with SMTP id hm8-20020a0568701b8800b00150fa28387fmr2942938oab.31.1672959217242;
        Thu, 05 Jan 2023 14:53:37 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l1-20020a05687014c100b0013b92b3ac64sm17506438oab.3.2023.01.05.14.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:53:36 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:53:35 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 11/13] intro.3: ffix
Message-ID: <20230105225335.n6n5pcwf7awrc4jm@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lnsu3keb6azrc7wp"
Content-Disposition: inline
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lnsu3keb6azrc7wp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Set "feature test macros" in italics when introducing it as a technical
term.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/intro.3 b/man3/intro.3
index 3bf5035cf..df911e749 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -36,7 +36,9 @@ the programmer must define a feature test macro in order =
to obtain
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
--=20
2.30.2


--lnsu3keb6azrc7wp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VO8ACgkQ0Z6cfXEm
bc4mfQ//TqVr3WpxZB/h8mw2uCglLDhgaJ7PDeQravNmr4t+TSPP+wa5WNkz5IUV
5gigcg04U9l5tMHIXS3uRF4wz2DUtqHfxilQkSTw2gZydl2X3qX7nK/7ZoNeV3HE
/vGYvKOrsKd4dAZ1YqyKcqD6PiQswSg2XtTXdKOaXbCWEvkZVpypV6U0XtXItcOp
I0zL6xH723Y9avgGrEuqkFdIWwH3bhz86mrswHZuqRyTiSMlQfCCZ8cA1Rdo5/c5
DYZo2sH7cD9ZfoClpDpvVhMrhiANcV7usoowIcjOadd8j/fkM+C+pylMTYxBW5VL
bftT01w1YCoXeWivaayLkDBBnJcDBsaSZ16K++dimvUCpBS/UCvNfhyghIYRrtjc
YuK06SS97mKiRNfIwx2Q67nn6oGfvTxrN3cGdxbEjsbjyomTcVnY+FEt73Gf+HLd
RQIx5ty4XAHA9bkCOnx8vyYUfUv5qwj462UYzqbH4N/zd+Sy+6IO6x0BDhXe0ucf
zOjo3UMkLpTMXd5DbiRQvYNUKMsJvoTMBiwBliHHIHMU9hbFTgG0MN1SqETR2Vea
V5evSLnA67oVVOIzHDncxqyjwyms/3gSmw682VUjTYkmpTEB6+i/tK36i2q9iLKS
Xz7mk9eQ7BHy24QdztSk69vgFACx3/Cv+ml4zEco4YP1eGvWutw=
=MYAg
-----END PGP SIGNATURE-----

--lnsu3keb6azrc7wp--
