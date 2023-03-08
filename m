Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A06986AFBC2
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 02:07:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbjCHBHe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Mar 2023 20:07:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229974AbjCHBHc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Mar 2023 20:07:32 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05A71AE13C
        for <linux-man@vger.kernel.org>; Tue,  7 Mar 2023 17:07:27 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id g3so13897023wri.6
        for <linux-man@vger.kernel.org>; Tue, 07 Mar 2023 17:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678237645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zF0ugv183wcbjmQoNE+7+6TLYI6Zh5KPNsr6RuJz9AE=;
        b=DdWJLYMbiy9BcYsXLEdkw2Fye+Sfap7yIVSpqmjOELqLJV3kKfVTQTWmtm5cwzqsD4
         4DxHXmhCdh5PMFvveRyfGbuDdqaPr8ylI9O0NPDW/Lvs1dpNnPkqRXT7e4SJT6qVjCcZ
         ZMV5Vfd95tNNJmlvMRPdFlRHqyqykR8NK2tGkmoCKAiCu2MdZRZajbW8+MLsRUB6Z7ji
         WiY0+89qww5l46u/AsbyHPsP36DMLmLCkHu0NKTyXG2K0B6VnQ2iQ/rJf9gqO7iAmR9l
         KMpiQViXPf4pWA6spPl+Aw8AWC4eGdNEy8ywt5olXug7WCVW3vM6M6zclrZEk5kP56Se
         rJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678237645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zF0ugv183wcbjmQoNE+7+6TLYI6Zh5KPNsr6RuJz9AE=;
        b=Wv9vJ4YHJ+YpxBq0WDO1V5RG0E1gnSnEkgr94iHrvdXLkoP71Ok7TOMaZ1vk1HbCcw
         LudwuK/2rC++XsI6KQTyeg9fFXSt9O4pCGKl37NJtPUQifGfOu8/f4eZs87bHmqpFyk2
         gE3d7dJ5tc+B5fhKeHzBaofzh4IKH79CX3r6WOMa1xVCZtdksxqBzb5ja9+7GD0tZ8bh
         PEvPfNARmdT43j2CS6Sy6SjXXZEHwzI5QKEADYGqknAS0iNJ/rtXRt/EADHtw7VLsW3C
         7F1kMoRPpqitGQB0jd9Cg5uT+gZ+Cw270NsfqVMcLXdZttvz8HR2cSC7GZn2R4Sg4fz7
         KIsg==
X-Gm-Message-State: AO0yUKUQiEQtyGEc67HJ5rGgHc16zsITKvl8deETG7yz7+XilXxOOKGO
        1R9KRgWtr/Ngg85UAreVU1KBJRUNzjk=
X-Google-Smtp-Source: AK7set+Gio5zsFSL0Lr8KgWQOl7woHeZDutJ1iIphNSFQTw4X21KQCobCJG5Bb65A7kqYYAesLTqXA==
X-Received: by 2002:adf:fd89:0:b0:2c9:70a4:4f94 with SMTP id d9-20020adffd89000000b002c970a44f94mr12148833wrr.18.1678237645366;
        Tue, 07 Mar 2023 17:07:25 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id f10-20020a5d4dca000000b002c70bfe505esm13616286wru.82.2023.03.07.17.07.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Mar 2023 17:07:24 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Marcos Fouces <marcos@debian.org>
Subject: [PATCH] cmd.mk, install-man.mk: Allow installing link pages as symlinks
Date:   Wed,  8 Mar 2023 02:04:19 +0100
Message-Id: <20230308010418.174517-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

We keep them as .so "includes" in our source code, but if some
distribution wants to have them as symlinks in their filesystem, make it
easy for them to install as such, by specifying 'LINK_PAGES=symlink'.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

I'm going to add support for installing link pages as symlinks.  Debian
installs them this way, so I think it makes sense to help distributors
use our upstream build system to install in their preferred way, since
otherwise, to be more useful.

Here's the implementation I came up with, but I'd like to hear comments
about the interface (the LINK_PAGES variable).  Would you make it
different?

Thanks!

Alex


 lib/cmd.mk         | 1 +
 lib/install-man.mk | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/lib/cmd.mk b/lib/cmd.mk
index 17f3a8ee5..9cd09fe89 100644
--- a/lib/cmd.mk
+++ b/lib/cmd.mk
@@ -16,6 +16,7 @@ GREP       := grep
 GZIP       := gzip
 HEAD       := head
 INSTALL    := install
+LN         := ln
 LOCALE     := locale
 PKG-CONFIG := pkg-config
 SED        := sed
diff --git a/lib/install-man.mk b/lib/install-man.mk
index 174f503ca..aaa545290 100644
--- a/lib/install-man.mk
+++ b/lib/install-man.mk
@@ -12,6 +12,9 @@ include $(srcdir)/lib/install.mk
 include $(srcdir)/lib/src.mk
 
 
+LINK_PAGES := so  # Alternatives: "so", "symlink"
+
+
 mandir      := $(datarootdir)/man
 man1dir     := $(mandir)/man1
 man2dir     := $(mandir)/man2
@@ -147,6 +150,12 @@ $(_manpages):
 		-e '/^\.so /s, man7/\(.*\)\.7$$, $(notdir $(man7dir))/\1$(man7ext),' \
 		-e '/^\.so /s, man8/\(.*\)\.8$$, $(notdir $(man8dir))/\1$(man8ext),' \
 		$@
+ifeq ($(LINK_PAGES),symlink)
+	if $(GREP) '^\.so ' <$@ >/dev/null; then \
+		$(SED) 's,^\.so \(.*\),../\1,' <$@ \
+		| $(XARGS) -I tgt $(LN) -fsT tgt $@; \
+	fi
+endif
 
 $(_mandirs): %/.: | $$(dir %). $(_mandir)/.
 
-- 
2.39.2

