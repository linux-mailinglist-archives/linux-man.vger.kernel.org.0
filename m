Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7678691000
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:11:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229918AbjBISK7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:10:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229852AbjBISKz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:10:55 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8EEA68AD8
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:10:39 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id n132so2347338oih.7
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BAeyT1gZFYm0BQVRXpgnmdmHvOwy7GSZ99cUEfhv8Zk=;
        b=C1FrWqOg5EDlXVZhfnRqLdCQs4QbkfU8J+0zqgKR+cALyNesXIo5NG7uZYqYmqh8aW
         OVN03jLqsGGfcyru1bppIv49pQ+kM7sejL7DWLAUtqVFxEwoqthHwyVMLK+ClSjWvtYJ
         TaJIM91qwmuAjeEk/ryKE40IYRF4INVkLZR86MkI1fLPLSohvTkHYL00xXc8uIcy0hqr
         uXwyoufweJypDcG8+4X7sx9iT/8GXa9VjTa/whZMTh1+JhwVMizm8oKQLB0aTbfjjNSF
         Z/QMzKSrty19/zhDPEt8YS0DEQzDALYSnt7HK1Vh341dnoqqLv8a8J1J5laEZBqrrQPQ
         2Y8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BAeyT1gZFYm0BQVRXpgnmdmHvOwy7GSZ99cUEfhv8Zk=;
        b=sIrCOZ+ziTl9rEkpzDnQpD0rx2bdoZYFNxGswNq+9yYmi5oAbReQl/paPNnWpkfEZR
         1NGKYejVPpxWx7k2uc2Fb3QYUjHZND2XFnsswFSi4hEqj+Z5/pdEj++dlDQKcxgR0oLl
         nF8QBIIVjMEvMKpPyWt10MZzGCMWsv5cuqZhRMLo36AJCGv6vf5+sC9/jM6unl1JxJvT
         NuNji86jYxjMmQgHQr6eyw+sVK9puNfN4lBMNUPVwOYsm1zJAqtK7MCBFVGTPcNRAN+W
         CD4ccM/ycnyu/IMxlmDYnS1GI/2dBjGjoZT6z/mWUsKBLviGMCBaWLhxrRVCou2BBykj
         hb8Q==
X-Gm-Message-State: AO0yUKXrJdfgdlcgrLKcQhZ3IHcbupcNH6mJxa/YQcs0TAcwrLSoyWeh
        W+xzqoH2tttUYgPE4SAGq5k=
X-Google-Smtp-Source: AK7set/EzwkS3AoiVaWttP/T+v2Yjzm4BNYnyWjDlYcY5Rxwx21tI/4Ay9/rzFUofnVAXgz4Kh4iMA==
X-Received: by 2002:aca:220b:0:b0:359:c6f0:5086 with SMTP id b11-20020aca220b000000b00359c6f05086mr2241371oic.56.1675966238802;
        Thu, 09 Feb 2023 10:10:38 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i126-20020acaea84000000b0037887ca2150sm1124951oih.22.2023.02.09.10.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:10:38 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:10:36 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 11/20] times.2: ffix
Message-ID: <20230209181036.nkgq7mvn7yeotmb2@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="43nnz5uyomulhn6p"
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


--43nnz5uyomulhn6p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use \[lq] and \[rq] special characters for prose quotation marks.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/times.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/times.2 b/man2/times.2
index f45faa01e..6c4d4ce8e 100644
--- a/man2/times.2
+++ b/man2/times.2
@@ -163,7 +163,7 @@ not the clock ticks used by
 .BR times ().
 .PP
 On Linux,
-the "arbitrary point in the past"
+the \[lq]arbitrary point in the past\[rq]
 from which the return value of
 .BR times ()
 is measured has varied across kernel versions.
--=20
2.30.2


--43nnz5uyomulhn6p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNxwACgkQ0Z6cfXEm
bc7ONxAAh51j/L3jMfLpX/XDVxRF7EhJz3WtJNgMmEWBpZEmF5dhjFJRSQuKovzU
rDMqifesrHF6gmKys/zKwAUiP1P6UIRAisRAPcyXKKhOgCvT28/dRtbKFUruh4ap
4h+n49lA3EdPrXmf8Mb5q6+hLV4bzwPVbnaCVL2aSduXAEA909maNFyfdSFRLlnX
WZbGuvQ/q8zQt5d04LHp/WfSKcPo7VFvF+Pn9thHXSlYk4IXe5/85fF1U2RMg0BB
ytbscd5M41qAN7ql1Xo2rnR0B/wSdj+ZmvgU6EGJbwX6SI6WVlsi6eQ2Xegdaa9w
mZnFpcpL9rClNLCtFwNwZ444ACRxlGXdZi7zkuQvvTlMzNhmPX9hKGDpG31dYqPp
gnjIxK60Dod5ShEHKvix7VPQOXcBkWn2/dXN3oKrahjNcmd3fT43kv3EuxCp1bfh
+yVUn8AZhe1V6zblI896MFrMOTdrOBW2jNm9cPaumQOlgNJjbN18GCESTgZSXtOL
r33xKk0LtBd6/drF5eiF7UD2rKNyrd+E3qHUmkKj2ygqdPnNAcVKSiqh7t5hbWCv
eYw2kzM+50kz7Y9fWRVo6KiwUY8krlDlkpqFJnY951urXGDVNPiEm703jNgyetez
2NyrwTVOMoFWN2HY43Alpb/WfDspI7xhQIymmrALKGGRiEEVdXI=
=HUz5
-----END PGP SIGNATURE-----

--43nnz5uyomulhn6p--
