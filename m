Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B4D8758C92
	for <lists+linux-man@lfdr.de>; Wed, 19 Jul 2023 06:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230144AbjGSES5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jul 2023 00:18:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbjGSESg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jul 2023 00:18:36 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 784451B9
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 21:18:35 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-1b055511f8bso273423fac.1
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 21:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689740314; x=1692332314;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LNMKyuDox03AqO/8jS7KPIAH6EY6APkN3XRSxpFUphA=;
        b=IF/rf7XEygGHi8xtoUT5WEWW61H2Y7N0oTXphvra1L7GDcqE50R1guuJ72eZP8ShGV
         2OAvXPI7TBSWu+50oxDcpkUT4Qe8gDiEBLzUuH1QYGV4xg5cYti3KFRzNqFDq9h3g2hq
         xGZC0208JbVFfRnKUTiawQJm5xT/lR9RrP4B3oF4CD7EQzbtl4B68+3Dmc5JQZx72j3b
         Li/kwFApUbx7u7EYqKshanV81uy6AkTbd/E5K/OeihTazvs8hkuaPUZw4PC6VxIWfAAz
         /kGLgnqq1pt08P9slX/Cfp4fyo7HxqJo5lZj+VQ79nIaBUH3yBl0Me4OBMBWY5U5aM7s
         vP/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689740314; x=1692332314;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LNMKyuDox03AqO/8jS7KPIAH6EY6APkN3XRSxpFUphA=;
        b=jtVl4HfPCpfs+o/es/LHjIymUodKNQgcBIhkvmLMcxUP3+AfCvOztNK4AEFR81enwX
         5mkoB6Uuoh2UaPU7H1JQ2MrPfUCnt/kf3K+PMVmjoqtMqTTy8lOYht8m/sJ/AX7GMTHm
         rEHL0wfSXteBgh+MJlM3fH71tUVsWyeLP2hzJWYvVUfaCk24uBwjhdouZRwX+NurZcTJ
         V/A+2KkR3AlX/yaTPsgjwK4g1H6BZvxFscTu0Wg3B+hABpareeEM4JiY9PgPdUt66bvO
         6SqqYBeqBN2wTDnUzOe41m99frNJqnaFpfd6BGjJlrGfDNnOQ5qG+Hp31jL2uBntMPGT
         frrA==
X-Gm-Message-State: ABy/qLaIYxaLjfQ0xJO/6rV1TvDGPr7JET1mmDn98wZiTZDI0Bva8QiH
        2D18YdWRJOZMWNOZuHovc2lvR7REEAA=
X-Google-Smtp-Source: APBJJlEMH1Nsxoil/eZtJbN7ehzKIVq8zevJ/+a1UJ2viT7YUkdCZ1Xwkx2nTM5ROaFzClooOz2hRg==
X-Received: by 2002:a05:6870:63aa:b0:1b4:5fe3:c355 with SMTP id t42-20020a05687063aa00b001b45fe3c355mr810331oap.18.1689740314494;
        Tue, 18 Jul 2023 21:18:34 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h5-20020a056870d24500b0019e6b96f909sm1577235oac.22.2023.07.18.21.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 21:18:33 -0700 (PDT)
Date:   Tue, 18 Jul 2023 23:18:32 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH] man-pages(7): Add attributive annotation advice
Message-ID: <20230719041832.ulsigsjae42rqh3g@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="a2ilqdaisusn34pc"
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


--a2ilqdaisusn34pc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=46rom 0e3a24fda10445d6fd92c7dbbfb54106b1284931 Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Sat, 15 Jul 2023 14:54:32 -0500
Subject: [PATCH] man-pages(7): Add attributive annotation advice

Cc: Alejandro Colomar <alx@kernel.org>
Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/man-pages.7 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index d63f2d8f2..aa39dbfd2 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -255,6 +255,13 @@ .SS Sections within a manual page
 Including version information is especially useful to users
 who are constrained to using older kernel or C library versions
 (which is typical in embedded systems, for example).
+.IP
+When an aspect of an interface requires multiple annotations,
+such as an applicable architecture,
+data type,
+or indication of read-only status,
+include these before the version information and separate them
+with semicolons.
 .TP
 .B OPTIONS
 A description of the command-line options accepted by a
--=20
2.30.2

Regards,
Branden

--a2ilqdaisusn34pc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmS3ZBAACgkQ0Z6cfXEm
bc4eVg/6AvsgZVFh5LLiigJbnkMekrsUVbY80DQCt/p91OEa8DuitKdx4xPVJCx1
KGIXTtsLXp6/kkdlcKO5yk2TSUY4nl35cO/+mfjhChzo9EdQsYDk+NutvElnP9tR
qLP19y9hgX2GmTW8yn4FG9z3ki7uErfuMoWFvfANHg4TD6joSpUo3weNL8KW9LOV
JrNkulg1f6sx689aOraiNHAP/GVG8Mxb4jfEp6ME6Uz0t/bn9xlrwlOVukiel/iC
ONMqc6Qp85/YC/XyhaDAXvfxsDKTKrT98Fjm4AzWvOlYXoFGyyENPSz93ElV51d1
BrCv42+2NJT0kAtiMEgnh5Z08Zv6DcH8e4ZxORaiJsqzdlA5HWEbohrFfaXdLGuO
Co/quPjMk2M5P+1RLVxZ1MH20DOvuiP7nV9YkxMdm1Fvhjxq9zaua+9xi4Uzf6Pt
nMu/q8cPb0pjCpUUYFIRrS+mTOWUQeQC0HOj1SaKQJxgBNaMLz95MDpU+qRFiEY2
kc/UTWGO78ajOTcA9hMCkFz+DqNvBE0LC8xYRLP4wYcOMXa03tImfvs6HOR954d6
Vmnpqq30zJrJJ00GKWerngPXGVmukdblzHSbEgNobPyz6NZFmWEqGIUmQ09m+smK
Xv1ttlMUhtS1p2ATMi1xRvuHwNRSLOTlahFazdlLDJyiE+YE9Yo=
=8hjV
-----END PGP SIGNATURE-----

--a2ilqdaisusn34pc--
