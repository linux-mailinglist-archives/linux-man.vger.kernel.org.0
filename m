Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6C10690FF8
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:10:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229896AbjBISKP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:10:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229944AbjBISKP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:10:15 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6114B68112
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:10:14 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-169ba826189so3645270fac.2
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+jthkb2cb1HQtGvV6WCSKAMyGVlTBi3/yb8TrfzomZM=;
        b=nPJWp0DLg+M2c2GRbYVGfVcyj0jd/OdUOFlJYslvARm52z/FKT6duvHC8SLrl1/X6Q
         B4fozebZ6CgJRlKlLaBvGyCzuiDkn17BdFIbVkn32akvZu4un+6JeeiDHBPmqEU3/VN1
         Mk/bTTjg3tpy676+j0VjSm/fWO4IwbZVJ80RNz/4+q4eQFYrkw2dbtDZcd+CaRju8ckF
         2k3yOJXUY2xsC8DC/3qrl2ghM9x5dJERUXQJaAxfP7kJRpRlSnXgvOwKvefwVSC07MQy
         rLVHThBuGf0RblZNEXZDwzCMBIBIJfpDubr48yxl1X++yPLuY44vOm1G/QL7TBL06KyC
         fF+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+jthkb2cb1HQtGvV6WCSKAMyGVlTBi3/yb8TrfzomZM=;
        b=YUjh7uJOGOlsS0cSZYYfsJPmMCssPPW3pUXVYkLf7IPKcyLW8hM/c58/e5XPVwtxuX
         Q8nwvBAzQjWAO3KnQ0Jphhj3M00wHkBiwCfSJjR2BZaOtSEPdXuzkTzp6mCCQR38BOsP
         QW7JlRskTp6+AG0dlLWzvuYiBS8c1LxuZ9BcSXgxNFhgYDkwzpBKyx+QuYh3CiFXysVQ
         UdKgOJYDYv23baqVyI2OWKhQwmNtqTuacu1A1aQhgp1630udAIEo4us5Qyf3tUdF7KVA
         0Dr/5Cl7WgXDx4uTTwI1xKzxfwW3QfnYyQyh0B90R6xpkuIecqqv3B9zDasAd8Va0PqQ
         Bocw==
X-Gm-Message-State: AO0yUKWTNiN2NOx+y2qQhoQSf0FFs+C/VDAlMhGnmvv8E9mMERkm6Ba5
        9cjwrqxNPRy9nNsM3UUEG2vEYnwtH4Q=
X-Google-Smtp-Source: AK7set8v3Owwhpn14BTb+6z8Vc42upH/Zunu1evlMrj73QpC9ILjbvwH4jApFsl32F5wTu4lPFxQFQ==
X-Received: by 2002:a05:6870:4286:b0:16a:689:b1a1 with SMTP id y6-20020a056870428600b0016a0689b1a1mr6203888oah.20.1675966213645;
        Thu, 09 Feb 2023 10:10:13 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id n40-20020a056870822800b0013bc95650c8sm948601oae.54.2023.02.09.10.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:10:13 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:10:11 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 08/20] quotactl.2: ffix
Message-ID: <20230209181011.lpjvyhrgbxpknidf@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dmbvdvfpl434bufh"
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


--dmbvdvfpl434bufh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use \- for minus sign instead of - (hyphen), producing better typography
on typesetting devices and Unicode terminals.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/quotactl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/quotactl.2 b/man2/quotactl.2
index 30e93966f..53506c211 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -92,7 +92,7 @@ and quota limits up to 2\[ha]42 bytes and 2\[ha]32 inodes.
 .TP
 .B QFMT_VFS_V1
 A quota format that can handle 32-bit UIDs and GIDs
-and quota limits of 2\[ha]63 - 1 bytes and 2\[ha]63 - 1 inodes.
+and quota limits of 2\[ha]63 \- 1 bytes and 2\[ha]63 \- 1 inodes.
 .RE
 .IP
 The
--=20
2.30.2


--dmbvdvfpl434bufh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNwMACgkQ0Z6cfXEm
bc47NA/8D39MV1Y7WC+HB6w0Ra8UC93JPcv5lU3q5XV0q+5AJYb3hkKmVjlb83+M
UjwCc3HEiyyQELA3tvKouRDHB+VS4FDVkRaKPGRVDcPooWuGs3BI+F67ceyXKNmW
SrMQDNPi8Aa8iDncp6V3eas8GTWqlY9DDzjTfRvL11OYnYoT0Ur3/U/hilQJNklu
V9JyklWFP8AroiiDUBdb/rHKuSNIxToyK+9WvgMns/5OZOge3Z/YxHOXidYR/9hq
8YuuTllldfFroyF70EBRykCyYskivJA2tiF+VNdmxeZ0Ebm0jbYSj/iGI5EQPuRr
YnYkdFlDcwTcyUzrNhyQsNGpcokih6v17XoQidw1Sumfxh3Lth9Foa5t30wyoUCX
2WiCQbSiVRERPts8p3CHlkiwDVwyAL/09ayhnuRgUczdINH9xhYirgFBWeGRNuHB
eqmPW20dVKziSPfhBdLJXLm1jN+BYR/6HUgRrWFHCVxCR0JGFAK8jmzHzmn0H7a8
MOy9JfmkX9vVaHZF9dQUZYbP1SyKnJBjM1bbhcwXE//riLVGpj2/scXusi0Z0dkl
1drR3e5Vgw7VJgNg4RF/RDXgtLV47KS70W3yNMc05np6Wq51QvEB8sLA1Z9AAakr
GXNbX+yXHYcT71WWAngov2dqjxEd+TQzpyW5StQ8KEW1NuHS9ao=
=UxJm
-----END PGP SIGNATURE-----

--dmbvdvfpl434bufh--
