Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4300690FF1
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:09:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbjBISJj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:09:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjBISJj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:09:39 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B8F7643E1
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:09:38 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id bx13so2321901oib.13
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GT/u5/OSrsIpHEbOAdzRdf/DfDMJnIBCfzI5fvd0JEE=;
        b=eGvD99skTgQEdQ1zXMoS8sBstOFsFn4qFT8zGirBICcbQ4tN3sYoi96kseGv8wz4GQ
         APM5TMfZK8TW043gB/1CBhfthSgfWBRLGyzEZdMCgkp5olQiukyvIXlQFET5hHFWhd7U
         aZhgZjNxnRf87YgQENbwfKZtxREC/C+XQEIU370bMhu9qot+Akxdrz5ieJxkAz/d2LHO
         DePEV1+y3n48gU0tLrG5KvTa0k0iDhOMmuPCdqlFlQz87IB1GDR0IUeIE16USVe9g1uI
         xcfWz65Y9ghYFak1hXk8FhnPTKsM+W3kXYUx+ZIgkyhwRLYC2PJ//yXLYF7b3RIPu/P7
         hPrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GT/u5/OSrsIpHEbOAdzRdf/DfDMJnIBCfzI5fvd0JEE=;
        b=k5oBRu1VhJy+PYSBQVi7Kf2uJR/yNHmEogeqDNxEKxaNjw9rzmyJYrnUD3DISNcGpt
         dFzusqxgOlu9TEBqQ+zTd237GDehrEZqHyrNuW4pOCo7X4hAxCvx2nt5u0zTwB9z2HHr
         eOpEdbCrqaPzLg/gM0iloG0L1vvqwVEhvObLFyWD0lxahFcYcPIIFm1ZHZD23srNWWIe
         bZmPj8x5okIZRcfJOnK+JViyPlOSOpTV/A5cVIRXD7v6U6VmY0adIidYbLRs4j7rhclG
         414+JZPi8hZReg0ksORIorUYZ8sxxwFqFTT9BaST4+9VTNkt/jrhfsxji0i0C6zncSR9
         zOmg==
X-Gm-Message-State: AO0yUKVF/MOz+L2BvcneU864rf9T/R+tq3cllyjsE0WJmozQgW/hJWeX
        AuBG7WvryaXnCz8aDhWJosZGpcU4yJQ=
X-Google-Smtp-Source: AK7set/tHqNADqn6iuv2OGlzN1RwXJbTWp1vP/ZIgAOApc7Sog5wgKpsB5lMadKm+MshObqy7/bcbg==
X-Received: by 2002:a05:6808:48c:b0:36e:cc57:33a3 with SMTP id z12-20020a056808048c00b0036ecc5733a3mr5397942oid.22.1675966177640;
        Thu, 09 Feb 2023 10:09:37 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w8-20020aca6208000000b0037832f60518sm1137371oib.14.2023.02.09.10.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:09:37 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:09:35 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 03/20] prctl.2: srcfix
Message-ID: <20230209180935.dqkavtz5tgkvza43@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bcolrmakhsgntlrq"
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


--bcolrmakhsgntlrq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Remove spurious escaping of '.' where it cannot be interpreted as a roff
control character.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/prctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 37dc2b99d..2212331af 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -727,7 +727,7 @@ To change the symbolic link, one needs to unmap all exi=
sting
 executable memory areas, including those created by the kernel itself
 (for example the kernel usually creates at least one executable
 memory area for the ELF
-.I \.text
+.I .text
 section).
 .IP
 In Linux 4.9 and earlier, the
--=20
2.30.2


--bcolrmakhsgntlrq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNt8ACgkQ0Z6cfXEm
bc6bFA//TBBKBR0Jxnv55C3V3/SxDJBHMwGBu80Ad7LyDGfRSJ56hi6daIGZxbXg
VHlji2xWj94CXTDyZ0El5gu1ILeW7rp5eVZa+ILQEa/dFRYWlaO0qJEZp/dhyZxb
V9Axl6VS2ooDgj0trL+OZtlznYMsG1ovwHxx29oqb25vBLLjoVTZKwhINqzKsBsl
aIIOoyF9BoEEYVqxX5/89mzLNcLiLRlam1RR3z7vlpP1BGQhZLt+uLOVUEQcI907
1vICVPWYKqcv5yQxjtCIKW1ma5xm7EihCoe0lbD/pg3J4UkTkPcgPYZEvS1e/KD7
1a+dPPpHkzTzcZsI5pY2AWcKl7PgwJlK6Euf/R9xWnoFHp3zlsbyQMo3rsgb3O2N
uTOK7YYqRamQL1/Wq3q8w3TTRbcSBybOpFrBPt3dckS7Mx+mn9SAPJTR1xfkAt0P
KABtG7orKD+M4z90L+Lp2XmFR6vRSQBN0MkMfXEq+IcW6G0C9OA0A78Yp6vgn5m4
/VEXYtHvFT5lmGv1d0wj/fiY0aNPk7JLpVLZb9EBQDK5OylVUtUSEVrO0Dwl+yCt
W4NbNjYMgbUEMl0AIFmqp3iEaGGyRz5hvufnrd6EmkmANYK2NULDOuUH/wiomnj6
ak2GQhT8MHP7ttzTQ1At7nryVwjTO2sfhChmGwR0fBUSRUmRSzc=
=xcPX
-----END PGP SIGNATURE-----

--bcolrmakhsgntlrq--
