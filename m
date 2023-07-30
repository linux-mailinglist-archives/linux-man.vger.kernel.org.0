Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB82A7687C5
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:02:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbjG3UC1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:02:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbjG3UC0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:02:26 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0ABD11C
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:23 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1bba254a7d4so2906628fac.2
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690747343; x=1691352143;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UlwCrSZV9XBuoDy1yU8KufCjZ9qZzqV7gBo1WtTGsaU=;
        b=MggHKOja0jonlBVgk1rlVqqqqgAA8/O7L7KP8Qm9GTXnZzoUYDSZ8YJQkNgwMNtjzk
         rM6TdJ95rGznpHOh+hA/gk/KsLp0iFFnLdR+edM+QsCuRgLVSc8N1Ax4NAXCBeLbKAWB
         zRm4/Gd55N7MjeFknL5o86GrHUFRtg6XOs9mplyRTIYGRYS4CJvCnIfPOqE7aJshNn7N
         cMb5KGu3JpzXDoQz36uJ7ihbRUm/jAXbzb50b5QGjtK0S+paT7+aS6wa9urCcyKBezaE
         ahPni+WvR5ggfStf9vdoPyh9ialdsTu51RvTSc48733TbPuhUY6fZWLlZekvcMq8vqvA
         dCsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690747343; x=1691352143;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UlwCrSZV9XBuoDy1yU8KufCjZ9qZzqV7gBo1WtTGsaU=;
        b=SK8kwrz0RIsfq+MQYIFUoYiKUrhBW6zRk23nvy+CYerEsHxwXOvNdOLVn+cmrXxPYD
         wf9j6GhmcrM3UuMr7wLW3CVNtiVZ8cgu8/+o9X3WvQlsQfHBGH2xBD2eOPW7QxSTu71a
         2+JV/Qzpyx5oQlW36ghxR7O5N8bEc+5csYseTrRKzLkbJ1RAKfxsUKs/qaMlWOoL74UM
         +fPp3oE9XAq7Sl59ZJ2q1pd83fHousTWFMXieDnx8XKsZXGBaQHNA7QubuOTUsWWNw3I
         wyaucjSpmTwbC7JyVllC5pGX05lO6rN1Lpplp4C7ijhivz3dpl5F2yQUraRSskVYvrRI
         0TIA==
X-Gm-Message-State: ABy/qLYiP0j5j4NCVImVu6NEsRsjl3JetHcxyVI0QyKtghwUOtSEqfy9
        gE10ysS5igqwaZR8QbxEautpXXFXDBE=
X-Google-Smtp-Source: APBJJlG/4v36FMFyH8GAdDEU4S0uZNO96vBEwtz6uLnc42hQdfoZZ5oMgufN5pDBo0Kw8e3aAkhiyw==
X-Received: by 2002:a05:6870:c685:b0:1b7:4655:2ac9 with SMTP id cv5-20020a056870c68500b001b746552ac9mr9325409oab.6.1690747342938;
        Sun, 30 Jul 2023 13:02:22 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id t4-20020a4a8244000000b00567829a4991sm3711600oog.36.2023.07.30.13.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 13:02:22 -0700 (PDT)
Date:   Sun, 30 Jul 2023 15:02:21 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/9] pthread_setcancelstate.3: ffix
Message-ID: <20230730200221.ulker6w3boeydwtr@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lzgwkd26t24yr4w4"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lzgwkd26t24yr4w4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

Protect man page name from hyphenation.  `MR` will take care of
that for us; this change is to detect a regression when migrating to it.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man3/pthread_setcancelstate.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_setcancelstate.3 b/man3/pthread_setcancelstate.3
index 0c805fda3..bf42fb91c 100644
--- a/man3/pthread_setcancelstate.3
+++ b/man3/pthread_setcancelstate.3
@@ -133,7 +133,7 @@ .SH HISTORY
 POSIX.1-2001.
 .SH NOTES
 For details of what happens when a thread is canceled, see
-.BR pthread_cancel (3).
+.BR \%pthread_cancel (3).
 .PP
 Briefly disabling cancelability is useful
 if a thread performs some critical action
--=20
2.30.2


--lzgwkd26t24yr4w4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGwc0ACgkQ0Z6cfXEm
bc5q/Q/8Dr1Rq1LlPisPBsqJcEZwK15qvb3Vnp1JQKdUKKJIMyWvkzUJsRqpnaUP
4vAeydj6+rVqCju1a0dHpTY4Acm7dPvExhbNIAWvxfjAIWPrirFw/ZqugLxNxu2V
E8ydMU8P/E5/+aOm/wQpSZWquTa/jNT8K8zTSf2ojEQMg5Cnm/urBDLqDubFZ13E
fTV1t50e/YXLOXLmNZieYhm2XE68yuXoTvV1ccgkltZyGTAV+Tawhx69kYjwsz7d
LgelxAxaABslVesBIaBv7srdRmGSPbOhSoL1qdQJ3wqgpT9moP+yPCNnAe9iLwo9
hOgrCCirIWkq5dIasYe+ZUDViCCv6syggDQ2iH1Lslkv/tgyWMK8X+G98RDNCgWm
GVQbCsjA3DJcIJ7Xiz45gRqpLSY0ZWHyhtv03Ss/0vu0LM2jFmX7UckdgY/0FnwC
JuaIcGOoXEtnv/R2QLehfJROu1N+ebRdKcaVRh81wUq4q836UKeeRbuV05kpF+ZE
ZSQD9eHRGGMeSUDdSp2NzRPLpHSRSK2J3pJXf3sx+YJCNgRjzI7ZbsD0e2uO8Hf7
WnohzPDA1W3RfCjgYsAFJmXnpGK0vY1cBT3zE9YFE1znzaG6lJG5F1JsTIYhC9JL
pkMR2+lafBk4KF/siFjityJOWJ12V5BlUAWp9oxAa7FBx+Z/GrA=
=QCjB
-----END PGP SIGNATURE-----

--lzgwkd26t24yr4w4--
