Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33DB766AF84
	for <lists+linux-man@lfdr.de>; Sun, 15 Jan 2023 06:44:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230517AbjAOFo3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Jan 2023 00:44:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230519AbjAOFo0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Jan 2023 00:44:26 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A14A5C13E6
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:44:25 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id h185so20825321oif.5
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XFuCxDY8tKolhDFM3Bg6PLb5HKFQYw13WIL8V5xCEzk=;
        b=ZZFgrToKHDZsTpGIbpmmFmh8t683+WCykiqgpdBRCJ4mEUkPdyCx+KFqsHU4cPOkKc
         0DxXEQjQQiCegPKkoSuCv1VlOx/PJM4ALk4VklIaBje+FxnUdZIHwwxDTWjml0seQMX+
         dAJCyo+zu9fqAq0PoFcLP4ZNdHIC+VlmvcIsTA2/4pqHwRRFsCGgX8RRgjYKE2pxnpD3
         fvbipS+Cil8iBph+Avpyo/zr1JWA4p4Z4S7jMGdWdwbJYDWEZsjSmIqmQaSw/+7KYOts
         Ksc6doGHXr/Y/N66s9rvBgaeFXtEgbQgtk9/uweoTMJyiNJ/+ROz4RPsnZ3wQA1ti6Rd
         1niQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XFuCxDY8tKolhDFM3Bg6PLb5HKFQYw13WIL8V5xCEzk=;
        b=j+c/bcUaRszLdnsnPqpighz2nBCasiGHEuceOxH6DMxX/oOBXGItALzRX6hdyuPqXu
         oyC8WUwqwPyXUFzmewBbxHpI2zcERYsqzZ8ymroqSuUaMaQhp5AGSVgl5rcOJ/ZxA3fv
         GM0t5Xv5PTrz4X6mO5qrZ82rjEhQ65YaiOojqriQnfcBfi5yHS/aKPM3PV3Tsnm0CZEv
         wnXRIU3RyRhojHpWS2KMnx70gs92v4kukpkX4LJnbrDjhu27sgBSQSHDKTy6WgmJhqsW
         Ml/A+8BYXC598u1pZ/flq4rcWMIyDk0AKb5pMOpFZLROeG9gDSdKU6p+VQWuu91WUjZ6
         ktlw==
X-Gm-Message-State: AFqh2kp0+7VjSXr4o6puWcKpqbW7RhVyX41oKr8/2JFg806ZOuwF6XWa
        JziHGO5Ws5S/tqFVtBbwJ+Z28CYvZ1E=
X-Google-Smtp-Source: AMrXdXu2xmaB4AoCDxs01lb4MsdtN01IsqEaznmODf6jEw7FGZ+FTKS2jj1VHKYf2ZJqzrCHx+gb5Q==
X-Received: by 2002:a05:6808:4d8:b0:364:d6be:a442 with SMTP id a24-20020a05680804d800b00364d6bea442mr1503570oie.57.1673761465037;
        Sat, 14 Jan 2023 21:44:25 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bo34-20020a05680822a200b003549dde122fsm11100547oib.5.2023.01.14.21.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jan 2023 21:44:24 -0800 (PST)
Date:   Sat, 14 Jan 2023 23:44:22 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 6/6] intro.3: srcfix (hyphenation control)
Message-ID: <20230115054422.56udqx22sujx6o2q@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="sc2vs7fphhzd77nd"
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


--sc2vs7fphhzd77nd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Protect man page cross reference from hyphenation.  (This will not be
necessary upon migration to groff 1.23's `MR` macro.)

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/intro.3 b/man3/intro.3
index f5a47b566..da1e72a63 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -44,7 +44,7 @@ header files.)
 In such cases,
 the relevant function's man page describes the required macro.
 See
-.BR feature_test_macros (7).
+.BR \%feature_test_macros (7).
 .\" .IP (3F)
 .\" These functions are part of the FORTRAN library libF77.  There are no
 .\" special compiler flags needed to use these functions.
--=20
2.30.2

--sc2vs7fphhzd77nd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPDkrYACgkQ0Z6cfXEm
bc6gkxAAn3ELXZHNl4DWT6jguGmoJ+JOiBYdsdA6m82OKrr1RWlcWNeN8SLgAhld
qe43XeEKikBn0GzEk+q9irKylTUbX+q5T0xsFSNScJrcsvlTc3C8E2XjOK03Kb9l
X/uRs0TS+uKT9m0s6MBZRKTeqReYdmqMo99sBHeBRFMC+rFBk/j09CPoxoIGVDPN
YH0eQnqndFPFRDQ6ZxvbSinxY28UYN6mmAtMs7At0N+gq0wtTn3doZeaasvbeV1y
2PHomEbVG6iKo0YhNYAzGZhCTZoBUxx04okVJ1+RlqqA3XbtEE1Vg5TnucKkVppF
i+JEY2nz+XH89XCJO81tat1zuGXbpDlQIeIpkBSRgFhAwmH0Zc8nOGrN35RIvxue
PbE/kVxxyACNZb3GTA70XmsI6OtJHNHnoQ6ZsRvtX3vniOlNYE3s4L8CPzhQNWs0
3rK7SVCG4adz5vbCtzk5Tdnj72b3e3+h25g828cIfgW1qzu9xGT7Dtg+7SmLCxY+
OU4Jl8vIxO477ogyNYx3FTd2EcfNNIrhg9BuGZBP+JGf5GWK6juox738iefLIIXq
mo+moFrBqOuBRx0KqJIN5AEiXgjUR4G4pfx3DtYiypR1qaeKNAw04VzmXCYiSBlH
iLH6LjLaV6T7VibLRl3la1BNxFx7cD/lYR4dvIsiaXvMQiVRBbI=
=MiY5
-----END PGP SIGNATURE-----

--sc2vs7fphhzd77nd--
