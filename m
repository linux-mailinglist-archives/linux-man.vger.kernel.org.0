Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3D707687C8
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:02:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbjG3UCq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:02:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbjG3UCp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:02:45 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34D5F93
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:45 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1bbb8daeefaso2524726fac.2
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690747364; x=1691352164;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QkAb/fKoRbkMk+DXFbkpmD+frDRFwV/Heu+yH+QtoFE=;
        b=YnrRMTctSVNfGzuKiW/pbxSJdLaEW7dZ/Oqy5nPSxGu4hFX2LWbaAeVWEwPazXNhdw
         PPz2y6nUlJkq6oAyHJIbTGEqPeRl3cDzPy+L5FU2/j5mdhBXDnRsNdIw2bzyETLBP0Tl
         v3954VA4AZUG4Y5Z7rkme83tc2Py9fEY5dH6t45DOjrge7Zn9GDfB7lPhx2RMJKigDZf
         f1A6uHcFpUq2Q3l5Gkeirtm21E282qIpOiJLRUxgeyyyVuDr8w8RgPFUlmXJIQMAXQIK
         0D7NerCFonnCqKnmg6/IPlvZrpqNl5/CQXQGRgPbHxY+UJN3PCsepc0kOYW7YfYpTx74
         jYRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690747364; x=1691352164;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QkAb/fKoRbkMk+DXFbkpmD+frDRFwV/Heu+yH+QtoFE=;
        b=PCvGcabsJdT3BlM61UY8LDRfYaaQuvG6AKm/yktmJaf/5BHn09BMerbsEyz0CbiVE3
         9LCROdb0VdiOZSFayVQLJKdzyyDpGlkhpQyAuZ0uHCIpudzN8lr96e0wZl45ohio76kO
         Ea+WzH9NWvSlyx8evk+YBwsR6yuYSqlCrB0gq1efuDCiiCCEemEXfr0iaRa7T2k2ybme
         1UfzoWIdcWcei+lwS6yLKGFqbBqCd8MmSvis0XcFhb0O8u8q/E78sOZ1d0IYz6qqSBk+
         U4kjho5DZswAak9F2Tz5lN/Y3nxjomL3EFFpV7HBT3c+od1vSEpCCRQ5NXcwI5MZVVfj
         rnHg==
X-Gm-Message-State: ABy/qLbDfTdy/FLzozIOfeb9PWkv9+d0WrXT9pAaskdUOvJK2gsKfwzH
        sAx0uyiJuL38t5xXe32i/VKG3O70Iy8=
X-Google-Smtp-Source: APBJJlHJ/dm9Z3usGl52ko7DWHLNQt7Iwhvbt+1HAyuJi1RuTg1455YyBm76AxhdEOCHrYFz94VGDQ==
X-Received: by 2002:a05:6870:d184:b0:1bb:7d24:eabb with SMTP id a4-20020a056870d18400b001bb7d24eabbmr9118726oac.0.1690747364473;
        Sun, 30 Jul 2023 13:02:44 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id f3-20020a056870d30300b001b36699bd5fsm3830572oag.35.2023.07.30.13.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 13:02:44 -0700 (PDT)
Date:   Sun, 30 Jul 2023 15:02:42 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 5/9] pthread_setcancelstate.3: srcfix
Message-ID: <20230730200242.lqklx53gfsxlbgfl@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6oclz6zzzpj2fdpf"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6oclz6zzzpj2fdpf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Continue commit 9e54434ead, 19 July.

Fix half-bracketed table that didn't turn hyphenation off prior to the
`TS` call in the first place.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man3/pthread_setcancelstate.3 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man3/pthread_setcancelstate.3 b/man3/pthread_setcancelstate.3
index bf42fb91c..bcb7ef0aa 100644
--- a/man3/pthread_setcancelstate.3
+++ b/man3/pthread_setcancelstate.3
@@ -125,7 +125,6 @@ .SH ATTRIBUTES
 T}
 .TE
 .sp 1
-.hy
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.30.2


--6oclz6zzzpj2fdpf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGweIACgkQ0Z6cfXEm
bc7RBw//VqQc8qBtg5Hz5OOA5b1gPBEDnAGqMyrynsgCpSBoxexU/0PwZv2RdO/a
o0O2MQmzmdIG0ctufjjWv8J6pRyhz85d7ZdQ7lFH3IzZVJkiCwNQhZQLpOMGOFq7
uHNS72h82dPirog09igwQ49TKfsUm2jDy0rvjXQm/Rj5qKQ4K8j/jJdjPB8mhD8c
OYFlJAAEyqZ/zw7tr1lK92NA4cBbYFTxpc7yuH0AuCPa7lHmA8FOiTW5k+qDSCHq
6vkWBPTYYK2Xb/3ONb0eHOoma35mGvlJ05B16WbYffAVXGS1RrJLk/6NqGngWGjm
jr+b9nHlcj/41x83qT7Lt4/8f2HVk+CfDiCBe3hAsGa/6XL6vaT9VjSEtO0LUYNC
cEfhizPiVcH11HNcOtpEAKRtCF4z3Vc3zz/5VVoHUT9Yc7FLDELxhrsSNZ1pWjv+
4b8QPfRcYYvOn4pldPis+HDcHEOTMLkJinW0KdLpSgxr8cMoTf8syNzlQ2hfWLai
i4XB24rDeUTrZP78yXYJRZ+0m+Y8rb6S4mD6MZ+R7ilCBSIXnG4ALp3NfkfmHDRE
JyqVlOFlucG+43FX6bOyfQKBe66D+m6GXei+io+SwSdJOU1ZXer/U86iAvFYnwRb
KfPYbvPuLC2XUJexAgtmJ2APcaZDu65W7vZWyGZyxX9u9wX4x14=
=geOl
-----END PGP SIGNATURE-----

--6oclz6zzzpj2fdpf--
