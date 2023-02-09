Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8A3769101C
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:12:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbjBISMj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:12:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229853AbjBISMh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:12:37 -0500
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55CBC6A308
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:12:13 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-142b72a728fso3605568fac.9
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iz0ySRdkjcbZLgY99ux93j/tziKt2M/9SlQOev3uUXM=;
        b=pFQMQwOB2tX6ybmwxziwHCsn1zhni0xko8IlV1Yn+VKqXZBmFWKlfVcwtZ0KPzT3Aq
         3/FGqVQGQltwPiPcVeQXzBowONWS0zt4X6Fy9l/dWnGQOkniSzKtphm2NGGHHUlGVeSB
         6CaecR74Om8eX5/U0zGsFG/KmXYpX+8fJYhASxVEs76gj0vz2O7tAugJ1/JZQKpNb6L+
         lrgURspm31QioSlkVl5osmunyzl7pAWBh0GQ3uO0uo4o5H0ceLd4kPKTahfu+Q5P6BKm
         XDWKckW1WBcJyFUwcpC4pEVleR1eL6W8Jr2litqnTf5BOaFnDU5l668lnXlIbvrszxgR
         1qcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iz0ySRdkjcbZLgY99ux93j/tziKt2M/9SlQOev3uUXM=;
        b=mOuV/oHfx8ALVDzpxgPMFuy+AKeS5nhjehgLRpLFKGFqW7IR2M+XmolE8vH6ysheml
         5y88hqc7fIZXurhvo5+evSqXYkEd9BzPkwAewIpaYKaD41cjTYLnBHw3vzgZH+dX/9++
         6s3uaNaCWnYof34IblcSZ0vnnf65UuYF/1qJLTHk0QoeJ2SLyEmQ0MYZtgWqtY8JkaKD
         ebGcLpDDBrucb9tesPkSXNxxNJCorJe1/xMTKv7CztiH5IIf5FnDcSs7spRe+R5YaBfK
         UnMPKXXYl51Jk1BeVX24Jq/KQIb7RfEHJsPgn588Rcw36HKlJhgM6BO8idecTsIQAoAZ
         KDng==
X-Gm-Message-State: AO0yUKU62ka3aoo0/QOXB5HYUq/BUsfkpOUCZxT0D97buiIS91W6xh47
        ThwGLpD4KOBBsbsJHUb4SoE=
X-Google-Smtp-Source: AK7set9C1MazTGPWeaCaVR5OMskfGt+jStB4iSFj4DifhvbDK7lEqaSA1XcoImBnhisvycGtqMXK+A==
X-Received: by 2002:a05:6870:b486:b0:16a:3f0:7178 with SMTP id y6-20020a056870b48600b0016a03f07178mr2525245oap.0.1675966331860;
        Thu, 09 Feb 2023 10:12:11 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z6-20020a056870e14600b0010d7242b623sm982663oaa.21.2023.02.09.10.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:12:11 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:12:10 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 06/20] units.7: srcfix (\(mc -> \[mc])
Message-ID: <20230209181210.tmbqk2yqvml2xpiu@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bziea7zvpn2uupav"
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


--bziea7zvpn2uupav
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use correct *roff special character for micro sign.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/units.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/units.7 b/man7/units.7
index 4618727ae..e2dd69fe7 100644
--- a/man7/units.7
+++ b/man7/units.7
@@ -23,7 +23,7 @@ a	atto	10\[ha]\-18 =3D 0.000000000000000001
 f	femto	10\[ha]\-15 =3D 0.000000000000001
 p	pico	10\[ha]\-12 =3D 0.000000000001
 n	nano	10\[ha]\-9  =3D 0.000000001
-\(mc	micro	10\[ha]\-6  =3D 0.000001
+\[mc]	micro	10\[ha]\-6  =3D 0.000001
 m	milli	10\[ha]\-3  =3D 0.001
 c	centi	10\[ha]\-2  =3D 0.01
 d	deci	10\[ha]\-1  =3D 0.1
--=20
2.30.2


--bziea7zvpn2uupav
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlN3kACgkQ0Z6cfXEm
bc7xhw/9He/TH3LqDi/OEoC1gXaA7XrYbGv0i+eyNyqBS/lXZ6guz1izgoTKp0ZK
F6GTGYx6VptNo79yCWh+jbwS385lK35jJvQA0RoXfGuuVSB8dxkiPZBEPE9uhqv9
JVuvobXvYVLuaMPMmHgj7gaMurGc3Hyv82x1HrqEBRrSuoX0ZhG09ZtdKX49qAIo
f5/CCwmyB2HVynxRh81ZqEiE44ulBKrihWCazYtnmMpmbI+7XJSJIlyRhwV+x/CA
SQLz9ctCSNYkc0fXiM7xZ+jmkEzrtGzCVJYPWaPhKjYRrEfM1s5wigOIjzVv5lk+
bm2p1BzKFGQfirELt844AMOWzo9oh4sxmHAYx/wMCh03g0bC42khVUVvAc/f9cn8
4RyjfSHi+kqDeuLx9yQyJ3zJ5uiuUCVFI4PKeeq5Y8uo6bVDTNV4ql+Gc2lClCS4
vDqkuzND29asg5SSFVwSBhDdVg55NiP/ML7pw4PG66ZioO/+ke6fwbFk1tstgwY1
xy/bdn/vUNm+NcyIKtfUbYZIpBS3dbefuc4C025XLFu8ikIJZweBaCUkuR3F0Pmz
nKY0k6HRS4zbxOhONXTC5HZs4mY6se7ASTEpMdlqwi7I+YBZiiaios9cDS6rhppx
gCb4QkAY2RHiSs/pjKze9IZc5+qZ2S1VojjeW3+073yNAfmwXbQ=
=pcjU
-----END PGP SIGNATURE-----

--bziea7zvpn2uupav--
