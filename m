Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CDB6585707
	for <lists+linux-man@lfdr.de>; Sat, 30 Jul 2022 01:01:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239439AbiG2XB0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 19:01:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232317AbiG2XBZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 19:01:25 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D4A233401
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 16:01:23 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id b21-20020a05600c4e1500b003a32bc8612fso3075509wmq.3
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 16:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=q70TVQaWSpx8e1d+i0IXQVTY8xKBhf9F4NS3OeVPb50=;
        b=YUyteNn2JkYO5caSUxuiArknBM8xFIWGXo8bBnJ7y9jJ0l9BMtjHxqBiwhT4JpgD/b
         vS3Zn5pV3/sBp3mgsM/l4+AHsmozdcotft9tlUJipZ8nofAD2puV7feUbHbM37zaJXZt
         RazlrdNmR7U+RC2KgA+b80bAdzHMLGRUFPAaI053i9GK3ZXElrsyJfOcQCp5gaciZm7e
         s60RQXxVGeG7894yNx4UABOffXbU1TxGzMw8BP0ac9zPq9VOKO9So0zOgfIxjjE4GNmU
         tRB7j8iUKlKzjiYNwAQOzfHL2soZHkykX14meMtpfg7IUr/mB2Gy0LoG7NvzStZskRp9
         LVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=q70TVQaWSpx8e1d+i0IXQVTY8xKBhf9F4NS3OeVPb50=;
        b=06ti16736SrCiDKEnd+tiUtYhqLyJ2a64oZcP8ar8AbI/oCaBZfrkA7RqoJlYCHAdp
         Bu/izEXDANY+yZs83atCu2u/Io/BbwD4CjgioLnysorKIAsk1Cofao6LZqCSZ8JMGIXW
         Tc88crLfY2Vtz3tGlii1rrnzbQjMrtHXuDXiGYIPBCDo9m3k93WLwoWNxWDxt4PzgGIB
         PGi4eQ05fLd6nyFvyC1YJ17lFGpx4degbN6wpuFo0lnXR0wJPTOacWjzz9EmnW86B4Lh
         n5wcHHZn93cJDLxZ5FKWPpe2D2t4kn1wcqDD9gu6ai7XP+5DBaEe7+E1dzXRden1PBDA
         GIHQ==
X-Gm-Message-State: AJIora+mcrbGsFf6tsgQ/nTtOVDH4p43AEU6jviTWhvuHb1fHiZfI8D1
        URiTPI3zBgqhjqynJrbX2qyfEujGxuE=
X-Google-Smtp-Source: AGRyM1uq7o4T82tId/g+Ry9pC8XanAM49Ov1z3Q2DuSIE79rh5+CETvFOoifli7y+Mgr+if9YmSupQ==
X-Received: by 2002:a05:600c:3546:b0:3a3:2df8:42c9 with SMTP id i6-20020a05600c354600b003a32df842c9mr3762859wmq.161.1659135682019;
        Fri, 29 Jul 2022 16:01:22 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k13-20020adfe8cd000000b0021e3e73dec6sm5779727wrn.72.2022.07.29.16.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 16:01:21 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, groff@gnu.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?q?Heinz-J=C3=BCrgen=20Oertel?= <hj.oertel@t-online.de>,
        Ralph Corderoy <ralph@inputplus.co.uk>
Subject: [PATCH v5 1/2] open_how.2type: ffix
Date:   Sat, 30 Jul 2022 01:01:07 +0200
Message-Id: <20220729230107.11954-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220729152737.27770-1-alx.manpages@gmail.com>
References: <20220729152737.27770-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1162; h=from:subject; bh=X6XvXDwrwY95/7Xj5gG4Sc8Th4tiAlLY48NHujVaSOo=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBi5Gap3kuBi8KuZ34XPI0Jcy9d+eTt9MC/0ToirSMv wipt3VqJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYuRmqQAKCRCejBr7vv/bMi2xD/ 0YUvrCeBpSaYSZ9hc2LURfi3KTaPD0iRWJyS2SUQ0Btg7YoVkBruDeDikMHtgOYLuBD6l/v0V8DoPr alCYjxwmkZn4hdrrUkspLaGOPsmyxhTaIkiGC2MNBKr7eoTLW+kXC3pKhLjQBTWi29aYzC4bQFT/Ki +n7i6wPPKNYdGhDOZB5aQmcKsNJlMyLczbDAuH3GYZoxOyy8MKYx96kGJ+YSxAht7FOw9oGvWmxBXw mrLmiNDVAg5R0VrPorabYuf/qVKAbNKgNe5k8IaQxbab+Q31VGYIzw5rlWKm4WE2fPFKHvs22RG3b7 26YO7A2I8YSbeMRzYM//xLU0VxHCD0H3Wd+xkU1qP56kYOno3m0sSTHjqbIptaXAyMsffpGsZGhiQc O0U+qzWC+YRCzT+zNmpARveHASpWJlp/4LO/3QvzJudBcHUKom8fZCMT50+0Xc469n2lZZ276x2EM0 rojye0gx8VthEGHKk1LpXq0pfH2I5eqPSvLyfN2pVl3c7w/sbLyXrwYEz0NhzAP0Ys8sBf1aRpDJnV x7Eau0mEYL5spdg6l1P80oO+KsrKtDsYYVTkIIh0/kHZw/O0Vyyc2SQMhbtaEksbjYALsciihmyuY1 s/53thdylxHp1EBscSdxOMKaG347a8rwrbhveVmJd7CY8es/bsKLYtoBmD8Q==
X-Developer-Key: i=alx.manpages@gmail.com; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Format structures with tbl(1) to improve alignment in
proportional-width font text.

Reported-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Heinz-Jürgen Oertel <hj.oertel@t-online.de>
Cc: Ralph Corderoy <ralph@inputplus.co.uk>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2type/open_how.2type | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/man2type/open_how.2type b/man2type/open_how.2type
index 570bc9b22..847f33f95 100644
--- a/man2type/open_how.2type
+++ b/man2type/open_how.2type
@@ -13,10 +13,27 @@ Linux kernel headers
 .B #include <linux/openat2.h>
 .PP
 .B struct open_how {
-.BR "    u64  flags;" "    /* " O_ "* flags */"
-.BR "    u64  mode;" "     /* Mode for " O_ { CREAT , TMPFILE "} */"
-.BR "    u64  resolve;" "  /* " RESOLVE_ "* flags */"
-    /* ... */
+.fi
+.RS 4
+.TS
+lB2 lB2 l1 lX.
+u64	flags;	/*	T{
+.BR O_ *
+flags */
+T}
+u64	mode;	/*	T{
+Mode for
+.BR \%O_ { CREAT , TMPFILE }
+*/
+T}
+u64	resolve;	/*	T{
+.BR RESOLVE_ *
+flags */
+T}
+.TE
+.nf
+/* ... */
+.RE
 .B };
 .fi
 .SH DESCRIPTION
-- 
2.36.1

