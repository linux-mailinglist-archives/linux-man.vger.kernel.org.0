Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83BFD660D94
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 10:57:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237171AbjAGJ5r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:57:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231209AbjAGJzx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:55:53 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 500788D3A5
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:55:12 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id r205so3038830oib.9
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=178R303viHsUq1R65BsU74qX+xXrKEx3bvRTiYXn3WA=;
        b=qg9ZnBy5QoidlaOsx4yrH39KSiJvPce7ivgQYKraZtzwGZ13FG1iNRoeHWsNsw9d6W
         WfNnB1DWdmXF9UMfU+Mr8gfGcPtuyFPKZZ5+s6t0F0YFY6mOtupklYZepK/4FHqKT3LC
         l3Zjg4xXjptBYhzKRcimwPrL0YnxlXgf2JkXUTuC6qXNAePZi2jPThnDb+W/5wynPleK
         FmzfZTFCeKSNeLJWQRXySQIOgDY3a0pjLuVJEirLNj9GV5sQCptP2WzVdsUx59HnRBKF
         YnCZ8drReSpySun/qJzvpFCumcbS7HI6qZ1D6pz3kEhxsLvkEB7V3/dRzqpO2Mm4r6T9
         yiIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=178R303viHsUq1R65BsU74qX+xXrKEx3bvRTiYXn3WA=;
        b=mPptQmMWUN1tVCpHDXAj78KjHo/uMPGLGmcwgs2rBr+7MVQo6CfoTTQWUA02v8/rQF
         LJcpy/xBVx2jww9jRff/fFpR5Qdq6VcosXueMJO+mVsk8cupHbUPeWIdbFOX4wdMpth+
         JLRD8qx1g2SokmGbsC7bDEdeznXcMdsoGvbLTHxtKs1EHM+S5AXn4fS0vwLHUMnUfh1h
         W1g2zZGSOPUB1SFO8rF0pJQDLGYJPD2U6WG28CwV9COAknxBdH+C8wJKJFSPFyLKiCEY
         525XIDF9dNymTLz3aK38rCB/SpejJvcfoDvS4ZGlq3iIw1cO5i20RFxUj8GFfDCFdKW6
         O7mA==
X-Gm-Message-State: AFqh2koMriOjRxA3Dj7FqW5sHsefFrBpVEGTLE+Uz9+f4ncTol7Gk4fj
        wBjiIciE4tR0ctHHimyDFZs=
X-Google-Smtp-Source: AMrXdXswneZStx7irlucZSbknNp49VJRNc2uxfCIrmLUNz0fX0LbCnBQSW8Sr7jAji5oiwhz/wITJQ==
X-Received: by 2002:a05:6808:1290:b0:355:1df0:9b84 with SMTP id a16-20020a056808129000b003551df09b84mr37391990oiw.2.1673085311641;
        Sat, 07 Jan 2023 01:55:11 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id k18-20020a05680808d200b0035a921f2093sm1336837oij.20.2023.01.07.01.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:55:11 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:55:09 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 07/10] intro.3: ffix
Message-ID: <20230107095509.rh72usl2yif7gkx3@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ulul5k54efvycl44"
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


--ulul5k54efvycl44
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Set "feature test macros" in italics when introducing it as a technical
term.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/intro.3 b/man3/intro.3
index 1758ccaf8..d6d91f6bd 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -36,7 +36,9 @@ the programmer must define a feature test macro in order =
to obtain
 the declaration of a function from the header file specified
 in the man page SYNOPSIS section.
 (Where required,
-these feature test macros must be defined before including
+these
+.I feature test macros
+must be defined before including
 .I any
 header files.)
 In such cases,
--=20
2.30.2


--ulul5k54efvycl44
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QX0ACgkQ0Z6cfXEm
bc5jfA/8C39smkcFbJ16hT1VzI12X/Zn96vNCyb35kiUfO6yrqNgjMy0fmzmNUcy
fZmZcw9XWx8TUmqBKC+fL81OltL27h7ND4jK8MYUQmJnZLKjHJv0uqfD1cvQJBH7
J0Rbptz4AxAAiKZjBF7Tpke8w9D0T+YAxKQn7rSVhYqz73UuecmHsWht2ec0MCqo
6ukANqR47dfbIHMbVDVUftmcY8W+krLdmbonV1qFJOyDaFOnYD6A1dtgkrp11h/Z
9+wMmgLvL6u/l8j8xGrNyt28wY+bx8wTtaIlNIsDrhBUWGnyKhhBxNuM3JWVcKuu
4BVCVE2Iiq5oNXM6pNYlcFDh7i0j6isBmsnlR61lV/KtWYEOaY1TBK87kWhJxToO
vOeONC6JeTZhG2A+MsJ0Qioy/LhWSKrqSy5EjynIdWW2/owz342E/NoHsTxHFnIg
OqTjHdOkDMCrF1lwKWzj0MrULimD0A09Pz9ZcfrAyGqUybYSmETa7YnynVPFXdA/
sgCSLuRaVMZRYqE6E8MTBTIIBmQNzpQeG6hUGiBjJxN0m8ivUAQ0Va3wt0Rrg+Qw
ud82ZHhSRAxOaWATGv2tZ0tss+XwsiXd0G7PDsJhgND/YzjlKoYrq1WgV3gRPIiK
W7FfzadyjTqjwXSsPdOfbeOb4ZM2s5ag7DU78oiUn5tzz6dIEUE=
=Kwoi
-----END PGP SIGNATURE-----

--ulul5k54efvycl44--
