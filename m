Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3902865197E
	for <lists+linux-man@lfdr.de>; Tue, 20 Dec 2022 04:18:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbiLTDSH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 22:18:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232761AbiLTDSG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 22:18:06 -0500
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D63952DC0
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 19:18:04 -0800 (PST)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-142b72a728fso13991996fac.9
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 19:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xPg3QelN5UtzKjMeC6M/ZFYm7FqnxFNgFEqRjlkOqP0=;
        b=mUU+aGmOvKlUTvfHaGbtBsPOmR+8UgCoEGieATng9sn2pMiz0BSK8iUczIGXJJXbkE
         +REFjS7Y6UQYTz5XSNuO2L9jMsd2iVxJcgA7bSnmFWoRvGf/T8p7cm4enEkVLEaoWMDo
         xMwP2F58zcddACPV5R1/EHfX6p4SvfErMGHPJJXQOzRmE/x4bEWGYKPSd+t2N/GzoP89
         0OiMVQ1+tiIiNFj0pRPUkqlMWA6iy3If7VwYD91EEPMy2xsKRYZ6gICsEmGtAjd3pRVW
         7EOHBGlwwg/tvyHxrQ6IR/xBRyirT7fN631UwDQRoqoWEIQPtrec6FYygaMeLt60xTA/
         ENkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xPg3QelN5UtzKjMeC6M/ZFYm7FqnxFNgFEqRjlkOqP0=;
        b=assQEDkMvp3UnbH/aO+tTnlYrG1pqdyI1hAaaDu7RwtcInHog74D99cRvFsj2UYa1z
         PY3EGSV3DkncGTMLIXq+e4usNa9tDZp/rjhx8UIL5g2E3nxPsEciY9D/qY58Vdmso9hN
         MG3meY4SW33PfRD3JJdpD5COcpBeRKAeJr6PQNqLUKlrGN9pi5cpQkPo4etG5SkDwuWn
         Xu9cTljgZmp6RygLYp66QtPjLTc2qvqXnOC/CxeKrNW9GvxgbScPcOEE2DWRVpsKSPjv
         ZjRqIxfr7+Jl9QExrQ+JIbqaDQdNpEc9HvFEsqmCxb6cQvYDyd1hFpRdnT1uwcc4oZ9p
         PGRQ==
X-Gm-Message-State: AFqh2krp6jvnHfZcHhP+iHVskzOrNFFVZM+fuFToE8PQcDkaTHplRz61
        qFytYX55zID37xLji7z9QZ2pyReu6MCv1g==
X-Google-Smtp-Source: AMrXdXtXUen6DaF6xf0z2s7LWdngzI9RKvDYQ3L8Sntwt0xBn7t8Q3LpTYx0fEIC6JjuvzI6bNubkg==
X-Received: by 2002:a05:6871:4390:b0:144:b331:bd2d with SMTP id lv16-20020a056871439000b00144b331bd2dmr5176867oab.33.1671506283177;
        Mon, 19 Dec 2022 19:18:03 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x14-20020a056870330e00b0010c727a3c79sm5534956oae.26.2022.12.19.19.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 19:18:02 -0800 (PST)
Date:   Mon, 19 Dec 2022 21:18:01 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] suffixes.7: Drop diagnostic-suppressing hack
Message-ID: <20221220031801.ocnqc66lh23nxgz7@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="krjexat6rdrvagdh"
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


--krjexat6rdrvagdh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The extension of the page length is workaround for
<https://savannah.gnu.org/bugs/?63449>, which is a very old groff bug,
possibily dating back to groff 1.00 or beyond.  It is fixed in groff
Git.  But waiting for a groff release is not necessary; man-db man(1)
nowadays conceals diagnostic messages from the formatter and output
drivers.
---
 man7/suffixes.7 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man7/suffixes.7 b/man7/suffixes.7
index b7da26c13..89b9cde2c 100644
--- a/man7/suffixes.7
+++ b/man7/suffixes.7
@@ -13,9 +13,6 @@
 .\" Modified Thu Nov 16 23:28:25 2000 by David A. Wheeler
 .\"    <dwheeler@dwheeler.com>
 .\"
-.\" "nroff" ("man") (or "tbl") needs a long page to avoid warnings
-.\" from "grotty" (at imagined page breaks).  Bug in grotty?
-.if n .pl 1000v
 .TH SUFFIXES 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 suffixes \- list of file suffixes
--=20
2.30.2


--krjexat6rdrvagdh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOhKWEACgkQ0Z6cfXEm
bc4Gzg/4zHa8J0O9MoxvYEf++VPqvQQ/wWpQbZbmp3hRTRSJhsVNnuzBgfmvOLT9
Rq/mRlLhOnnn4vwT5MfzsdppvTbMu8m1yqBwYWfmMKmSRvWhsWrPHltNXkGLH42Z
bOSwQwq7v6xb7zROHYwiYwWYmXXPiHZvi/ox8zTAOlowEVVa95F7Hoa+wjVV1tUF
eeGCMN8OnPbUDm6ztKi3wfybgu2KT0sf3a0BZRjC/p5pDH6VTbyCy+eDyKoOoRbA
MW6Y7B1EwBWGgJC7H3p/pc92FUSCvC8RM7C1y0/9wdsB7o5aG81UssvvP+NgjfHL
vYNqRO0jh/+cZ9z11Ie5tSl+qmkEBziSgb5JFi/CO46nDapIe0xhxxJWU4FJ+nUe
hmYKjlE8hsuj7Es1nMzwXL5jhQeJ0Nbdm3s03DxXTDuQd5F3GZC1uYXnYPXCXWZE
6L9cRjL8D9RYAXAkErbre0h0Py3UjUB5AHOUftDTZnqeU8su7mq/a1PHpv/tr/b8
elfgbv++wxrYLBk7HYzfbkpn+reXgegH6gUjpFPpY43VWfZTSiIQY5YRQ9JjrusW
36a50BJKT7JSb14rQwJ3hVwQaj0qBC37OHDHlNtjpjTHh6Mm96Vr72M/y4otCHQl
LCkcmzddNu9Xb6m534TwS/YGcBw5+qesUJ9QcJh2xHG/YA0qYQ==
=6Xuc
-----END PGP SIGNATURE-----

--krjexat6rdrvagdh--
