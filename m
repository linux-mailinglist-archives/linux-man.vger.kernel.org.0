Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5722D691010
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:11:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230119AbjBISLe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:11:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbjBISL3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:11:29 -0500
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 983AB68AE3
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:11:14 -0800 (PST)
Received: by mail-oo1-xc30.google.com with SMTP id y81-20020a4a4554000000b0051a7cd153ddso285745ooa.10
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x1Z7yxMzzCuaAwy01C8NcuKFIUELwCuJI0Kvp3LA810=;
        b=nib4iLLrz/TJ4AJgz+BnUDkiA9qQTKI5njPyVgmZ6WgTfYp4X+YevEg7oyt6PT213B
         p6+IlIPISXuFU3bBiFBVEstrr42kgK/pGBwM2Q5zi59NoCZz9G53XehvbVfb2EMbQKYH
         /LApBc889qAOfeDatWpNl8p5NCP1QS3/9gPm6Gh21H6GxqIkdzO4Cktb6lply/vjib9/
         JKNtetYzueVpvWTRmKq4GwJcQQCT//uq4AOyMLZ/TkriTBuqTSnZc+cDpEoiJel6eBLh
         ACyPqnfkchb4vBV7EnK0FPSWFFR7S420aPHn8uMp3VaikqXxMFwICkpliIwb7L5oaFyk
         Fr3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x1Z7yxMzzCuaAwy01C8NcuKFIUELwCuJI0Kvp3LA810=;
        b=Idz8OLjsmXZgEmldaTX/MuIlDZhhaCAAIDXcd0S5Q9hfbcZi3QGikRvLkVAN7H0Jw2
         3L/KkGqqrhGFG5NllY5CiJa10oZ4vroVaPjPhrgcV7MRPeOwFOnFg7DP8275957JmYQq
         Rbk6wMc5+kf0bBadAf9n0EbaQYE8bFzNwaGiSw5oS7jizlW9V50YAkqYhgH6SPEHfCPL
         vqT+XSjFFdyh8JmhV+mqnpZKgJ+Qh+x3mGuuCVYGPhYQ/ex8t7+IsYb4hUvkMplNuP3t
         XSs17CbJR7HdcCtSVam5WiswRPzJ92lYi+PFRYHKV32dEkbEHwAI1C+/PSxmFKa4+0bG
         EOoQ==
X-Gm-Message-State: AO0yUKVTvX5pPI+HbGOvXFfjRbErAgwIDd6TtN9rSSVtmtqbUtmfWf6o
        e3D0TBjicZ3HmdCnSjYH5r8G3jgozAQ=
X-Google-Smtp-Source: AK7set+oSq7oLZfJLrEoNPyPvMytxeySOLXabxPNA9Hb7zokbXFwi2CLvNXmi9z+pvnbxzWOg7lQDQ==
X-Received: by 2002:a4a:5105:0:b0:4e7:128c:f195 with SMTP id s5-20020a4a5105000000b004e7128cf195mr6166612ooa.8.1675966273997;
        Thu, 09 Feb 2023 10:11:13 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id b18-20020a4aba12000000b004f2b4891329sm1000941oop.23.2023.02.09.10.11.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:11:13 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:11:12 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 15/20] localedef.1: ffix
Message-ID: <20230209181112.tq2apv5ygm7atdho@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7k3tz2gtabdgdq74"
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


--7k3tz2gtabdgdq74
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use typographer's quotation marks.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/localedef.1 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man1/localedef.1 b/man1/localedef.1
index b41d040f7..216883422 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -65,7 +65,7 @@ argument is interpreted as follows:
 .IP \[bu] 3
 If
 .I outputpath
-contains a slash character ('/'),
+contains a slash character (\[oq]/\[cq],
 it is interpreted as the name of the
 directory where the output definitions are to be stored.
 In this case,
--=20
2.30.2


--7k3tz2gtabdgdq74
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlN0AACgkQ0Z6cfXEm
bc6FFA/9Ep7VWbIl42pycYUwDkBsGg8fQ2YTdyHk1Mxf1RIPZnUbS4UsWy6X6epo
K3KIYXgEghz0qMAvMcw6xsiio+UkHnwjHCZR5eiVrVLcRWE9iqgah1M3GHgevh45
yOcyXgbKwgNG4zRvSo7dKts+93VVTlOKeVR8LZjG+91bkPvmHpmU5RMfCDQwR8C9
84m5nzSCJTI+vSHE5jKr0G6LGR6j6N7Om9VrfNtitxE/K8lyW66yu15E/Li3uex2
eylRs3aFaIYdtBMlPNw+AHYxt1PoMXWwmBAPBi9XYF7ejAW/xa8hMG7kWbl67pMP
MSiq9w8C6yStRjDbKPzVWuo2zoHFf8GVzXb14ZkSwQAwXpegddeJl1ch53nbY5Yo
hvGHy0BsECoxjP8BHeO8cFgJmy8R1j7T9PGWKtEeXN335PTTgPIGYiPeGuRRUyOG
BzmC5exHoI00icgDxNhcijcSRfzBDbja9g+4kyXF6JGgu67EbOh9NS8gDKhaQCjm
rAiMDSKfphRp9lUXoPZ/g0HN0R4G/iavGircmdd9JTv0uNqU/VoK3oWRL2nlVfLI
rRJ7jmlyaBH9jVFQ9VSDsRn29qfmM4SZ+LHPic2YXJsThA0vscQ0Ap963dsjEqIL
2G/GvvAfl2W1rZZWVfssXPIpQVN3zqaRLCXJ9uNGM+K5frV5vGk=
=pr0A
-----END PGP SIGNATURE-----

--7k3tz2gtabdgdq74--
