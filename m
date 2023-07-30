Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF250768639
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 17:31:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbjG3Pbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 11:31:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbjG3Pbl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 11:31:41 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC2FC4
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 08:31:40 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6b9c90527a0so3221026a34.1
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 08:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690731100; x=1691335900;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xdssZc5TE3tk5IPmZsLTpkbhjwgnqLRFR0vLo3Gk0Fo=;
        b=lWVoBaF+gZnccGXPlHR6Ozi3iqB1dOxKJrXOJ6zcNPK8IO2Q3mYfoHMBx3X+zWO+cj
         9pwWT95vrN/feIV1pxbisUHN+viUjS0KzGql/pJ4gZ12vwkHZS/Lvgs8WXspku2o/Xr8
         BL4y/cquM2/SFA8oxamCSaN1y0Sgd3OSdhc76+e/5gWBZIlgWYmnskRSOVeNh/l25yF1
         sZIQ+D+EJ2Wm4Wu0ZrtU3cdQAiNfKp+ny3CUMUyZwgODgsE3JblpjYzdCPkMvWnJMNK9
         cGcOwD/7eKOR6SsVPtzMbw9uZA/6MtfIk6nC3ONoStH3EGfpkq/5RNwKDuBGrPU8Ah+k
         phbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690731100; x=1691335900;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xdssZc5TE3tk5IPmZsLTpkbhjwgnqLRFR0vLo3Gk0Fo=;
        b=TPIdfRd121K0A0i2YV+0Yf2fXa3TKeqDsPXsmHPBKSA3Ai8mew807y7d+9LXdONKLz
         9bQBcurQV0KUsAbB9WnJ2M2MmxuLy0s94VwIYSXXlPOELr65VW9a3cuBo45DPmNp4/Yk
         sP4bvo26H5e8pqMDlUg8aaiRz/ASfmE3uGc1z5pDCdTDKGRAoEt1Mfevyr4obq83qH3a
         Hc83EK7NlJynVF3v54E/MKA7ZqT8Ae6cz39q5uS9gK3Zq1RAEnPkumfkMzauRZ/qHdCu
         BfvtpHe+Pxdm/3grhbtYP9nLTtCuLAjOA/fhc3GRwqrplCveUPKytvcqBcqOk0sZqOz4
         3HTg==
X-Gm-Message-State: ABy/qLaI3WaErwH/hlzEMSLp+BBBZ4FtE4hWkmZUvwZpWBdQjz/PGl4B
        rqVo+J9KbJ8skdCnlPfY/5gpOgbtsjjRAA==
X-Google-Smtp-Source: APBJJlHTOcX25LFJhb/o5a6S+Fv/2rUjLlrKSBmEZMEBo4ypRSvZD2Al8qprBixR2eZGriDCxvGlPA==
X-Received: by 2002:a05:6830:1e62:b0:6ba:3d84:b9f6 with SMTP id m2-20020a0568301e6200b006ba3d84b9f6mr6564572otr.15.1690731099644;
        Sun, 30 Jul 2023 08:31:39 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v19-20020a05683018d300b006b8af3a2599sm3344310ote.73.2023.07.30.08.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 08:31:39 -0700 (PDT)
Date:   Sun, 30 Jul 2023 10:31:37 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] memcmp.3: Recast security caveat
Message-ID: <20230730153137.qgkurw4mudy6etca@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wf3rofksmfpk6fjg"
Content-Disposition: inline
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URI_DOTEDU autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wf3rofksmfpk6fjg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use terminology more carefully.

* Refer to the info sec property of confidentiality instead of saying,
  vaguely, "security-critical".
    https://informationsecurity.wustl.edu/items/\
    confidentiality-integrity-and-availability-the-cia-triad/
* Try not to confuse anyone who's studied the analysis of algorithms:
  don't say "constant time" when "deterministic time" is meant.  The
  time to perform the memory comparison remains linear (O(n)), not
  constant (O(1)).
* Tighten wording.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/memcmp.3 | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/man3/memcmp.3 b/man3/memcmp.3
index 9a2aad353..67ebe392e 100644
--- a/man3/memcmp.3
+++ b/man3/memcmp.3
@@ -67,9 +67,17 @@ .SH HISTORY
 .SH CAVEATS
 Do not use
 .BR memcmp ()
-to compare security critical data, such as cryptographic secrets,
-because the required CPU time depends on the number of equal bytes.
-Instead, a function that performs comparisons in constant time is required.
+to compare confidential data,
+such as cryptographic secrets,
+because the CPU time required for the comparison
+depends on the contents of the addresses compared,
+this function is subject to timing-based side-channel attacks.
+In such cases,
+a function that performs comparisons in deterministic time,
+depending only on
+.I n
+(the quantity of bytes compared)
+is required.
 Some operating systems provide such a function (e.g., NetBSD's
 .BR consttime_memequal ()),
 but no such function is specified in POSIX.
--=20
2.30.2

v2: Tweak phrasing per suggestions from Alex Colomar.

Regards,
Branden

--wf3rofksmfpk6fjg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGglkACgkQ0Z6cfXEm
bc40EQ/9G0z5lX3qEdaLtJseFXq6FSRlU329JEGyokpUIkvQRHiGfgmHgDeXMy03
03ArrhkA9NDL8gdhKDHQubeF6Ei63RN5Ot0mRuLurFtaENarrMrmWT+GkRZAS3PM
QDfEkbjxlq9PTB7i/+vKEsKM35Y94EYurgahsjIxNQLbzrOZvAUPhi7UY0dl+O0h
aGlfK9LFE6JV+tNQhq9yJrx9gEeALmNvkbv+TjTDC0FmAHsBU8zVIAoiMDTMlhjk
B334v14xquzbLu0g7Gp7tZ/0KB0VS5J8qjjNyU7gzb5wKb3FNw0mIvZaJYxQ3Qgx
q9yyqt+C7UoQlAPnDD3yotbtRY1fJT490LRNtssFfV4aLFqi4ywXm04QMlQpZrmf
WHTF6w+THP9Sq0GayPKWf5KCXnYTF29xWzneUyfsZL8nxNgechz4sTJSKmf2CoSn
fI00nCcXC1jMatXalvNaQ+8ogwE+IJXH0GKclyAvQv/yzCY2ggQWuDIEdCa+dPFq
6L0b930QaW3eLPnF+T+MlzKhtRnEL4KuzrTSG86NpwnpbGyV9sEVzmagQnQHP7Jl
e8/GdHofHdBZfCLxJwEMFEvqGSDUe3iolD009GRgLn+UOMeFTjSRe88PuBx2TWxI
AALumxtSr1xdaVPuwCIA6Ku9/hFlfNwhsWJq8ORMcSKDb6vyZ+s=
=XfCz
-----END PGP SIGNATURE-----

--wf3rofksmfpk6fjg--
