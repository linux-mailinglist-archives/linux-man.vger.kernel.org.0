Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B1CD690FF4
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:09:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbjBISJr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:09:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjBISJq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:09:46 -0500
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBDB063115
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:09:45 -0800 (PST)
Received: by mail-oo1-xc2d.google.com with SMTP id i17-20020a4adf11000000b0051abd9835d4so290643oou.1
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u7tYlpBu9SWhvxdOAaieXrkkV81ZnnUJWLZLzFje+yc=;
        b=SW7PCpr7ZFtl5w3Q0DgCF/HBg7lOWMtBVgFuzN1vYIJtOFNnFOK9x6N89w0v7LgKKr
         JRPhS60ny5fAOjSNUFvGXGUpuJhkzTDRBM/NATtDWdqpFlM4JGekSn5ImMJUP483vyot
         k41T8A0MoHxZm4yEcRMA3PegAlaxAg9Byxu4bM/dzcbQGVPCuMEYtnra9goPwsgYUJBK
         R5v1GNhK4YjksyrpftQ2PMNHcRhxmGdQio59TVgiX/q651EynWfC5qcOv9C0KJlDDv9P
         +dl9Psz/I7l3mLvFaRlyHSI+Wu3OcIba5XV0g+LJtya/qbV6Uba3V2G3R9wvWF9zxDFZ
         cnXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u7tYlpBu9SWhvxdOAaieXrkkV81ZnnUJWLZLzFje+yc=;
        b=SoNBh5F2HL2AkoSkqHGwW90Su5xgJDLAoXtSnysnLsAwA73IoRMMdvmBLR0yF/i+nw
         E7R5aNUTrRvcus9nqBEmSNL7tPTzK4If/Rs8rb7PSmoFsjQuPyApITpdnJKE79J+HCy4
         cnQMmzXukKF3UNYoMGOUnPEYqmrjM48sA+1ATxFQx+Hkj2tSgq4UAR0HhzIr846MWgZH
         OOrJOy5xSWNB0fPBpvgAgBsc/Vp9ETxR02Bw4rFrFxaw/PZDiotKIwam1xs+xDPxl9Ea
         i9i9OwsaYOkIB+4PttFC1sT5dnqCQ8jJJF5dAKuNftgYn+n1c1n5rkWQJMoR5A5I1MxM
         Vj1A==
X-Gm-Message-State: AO0yUKUK9c8zWFaKJYP+jm+t3wMa0i+b6ol8BKnDck2eBoiuIokDJoce
        pxpqoz6Sttf+KdJvs7eBv8P84G+37ak=
X-Google-Smtp-Source: AK7set+2YFt+4mz7yAAffsjqsw/ZaeeOA/Eid9CQlSxYQGh/4/Cw7W5RE7ollnDEyOU4MGwapyE3vA==
X-Received: by 2002:a4a:d6c2:0:b0:518:6fd9:cdfd with SMTP id j2-20020a4ad6c2000000b005186fd9cdfdmr6279418oot.1.1675966185169;
        Thu, 09 Feb 2023 10:09:45 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y11-20020a4a980b000000b005176714c603sm1030129ooi.4.2023.02.09.10.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:09:44 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:09:43 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 04/20] ioctl_fat.2: srcfix
Message-ID: <20230209180943.mqr2no6mmooozc2r@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="d6xy5zqruv525thq"
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


--d6xy5zqruv525thq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Remove unportable hack to put a dot at the beginning of an input line.
Use the idiomatic means of doing this instead: the roff dummy character
escape sequence.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/ioctl_fat.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/ioctl_fat.2 b/man2/ioctl_fat.2
index aaf0e9594..24b383f67 100644
--- a/man2/ioctl_fat.2
+++ b/man2/ioctl_fat.2
@@ -408,8 +408,8 @@ The following was recorded when applying the program to=
 the directory
 .in +4n
 .EX
 $ \fB./fat_dir /mnt/user\fP
-\[char46] \-> \[aq]\[aq]
-\[char46]. \-> \[aq]\[aq]
+\&. \-> \[aq]\[aq]
+\&.. \-> \[aq]\[aq]
 ALONGF\[ti]1.TXT \-> \[aq]a long filename.txt\[aq]
 UPPER.TXT \-> \[aq]\[aq]
 LOWER.TXT \-> \[aq]lower.txt\[aq]
--=20
2.30.2


--d6xy5zqruv525thq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNucACgkQ0Z6cfXEm
bc6bCA//SfiRdZwlaT70tAZQBbAqawRypwUPPyrTaUuNKA420g8eAMeoubRnxnOF
JRKN9fJtyQeubW1UWHxjAB0RIu2xjcWsO1DJjfZ169ItaJAIY1GEDNLdrGaNLond
aWPVo610tP7cI804CFDRlhRcoYO0VOPm9DUTDIy5GWnTLQDepcQM7nbWZV1g6rnS
ux52nC1qCAbrnZpD1VU8v3vRhXoGKiXt30aTVtQtdXeBp1dZMoTD/k8nWstxeJm1
U5cbm0wJwo4aOM6RBQYc7xG9tnrSYiWCTewUpr2PBjfxXwo1rD+lEhS3m5DHTrJY
UlmXfY++iPGQNqGndzbSa7BLn6f7VctyRR8jk0gxdZFF6G4F54sgdAP8lAu3+gNq
WYO8F21aWQ0INhp4EHdHi/FOtf1WLd10CUJ2oCvuo6HMrmVgulLIPxhLxYlhlmSQ
MiJiAaTibV9hGs91hSC0BISxqn70YjcaSpef9Eo/3t3Sb+evtCXrjxOWsZMi/b5O
wyOvJknhoDEZnrahBW0vsC9fkoJJRyITa8OiY4IFX3OzGcXtnVhGNH6tXMUSifho
IBh9bYFdhkutsW4rnb1YaIv2YciS2kphoNjVuKZGHEH2hlYTnZZFp8VMKpe+IuNa
Snyp4oovG7BUBm4n0XJ7KNyTp+lNqq7naLo8X0y0tqz65ZI06dQ=
=Zl7H
-----END PGP SIGNATURE-----

--d6xy5zqruv525thq--
