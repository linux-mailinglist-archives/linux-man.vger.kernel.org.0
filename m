Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72D835A39B0
	for <lists+linux-man@lfdr.de>; Sat, 27 Aug 2022 21:12:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231528AbiH0TM5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Aug 2022 15:12:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230450AbiH0TM4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Aug 2022 15:12:56 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62432F14EC
        for <linux-man@vger.kernel.org>; Sat, 27 Aug 2022 12:12:55 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id u5so5465280wrt.11
        for <linux-man@vger.kernel.org>; Sat, 27 Aug 2022 12:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=ZZLDE0nzQNbHB9aGpzt7WRiTBbhR3szyEgV8671wt50=;
        b=MJ8sE2n/16pKB1/KFJbDA+fEESMAD13f9O+vDDtFobaPkT0969bh5mv0YMtb5CTOVa
         xKKn/B6+4H+rIA0NM0GTDxCdqlpCG7s6MA6647spLU8qQywUYsOmikZBatVL3HI7rPXH
         z8RLvmFthFZN9TqlSoNHfJepvaIln7274bQjXL3vXQvpm/mVJJy3/hca7aEctQVZfdFE
         QUTzcrmbzBEkF+u0Hm3C6ZEMXBMhmJ2HsYzRbTH7OPyyqFy3nNu/7JiaGN5oP+ARKLtN
         NjDAI8UBy2vREVwj++Rwt+aVO4fzapJeDAAs6PgYW/TcJdxOcLmyeRWwhZEWuirb8xed
         Utfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=ZZLDE0nzQNbHB9aGpzt7WRiTBbhR3szyEgV8671wt50=;
        b=l3fZvy2K49h5WxSlb3MW/ZQ+mCKEFBpaGM4yfF9CZuq7XZAWDbLf3lUAJWhKb1xItU
         s7/q6NDta+aa8v+jD0FCE3Nb80JHk56d5f1tX1Uz4Y1iYGgmP4gj4cDpP/yE3Gm1i3dW
         yx/nUFxun7kIOMJ5fDnHy7jGQ4ljDqZaPMQnmIyGqcCstVYmWKbXQswRS4P1UqfdMwAf
         ODxhBxl6j7HTs+tHM7S8CNIDqP1IhGX08/qHlhvAbSpdHZLHaSslcDlyhsSgLF92chcN
         RN26vyFcawi+AgZjB31GtuwnG8/O36eLH+frmWWyhv9lr9QKfT0lVwtLhcPZdZ9EOYRh
         vYZg==
X-Gm-Message-State: ACgBeo3X0ZIV91MD1X/op7gJ0Lx3NegA1VD/RwMjpmN9llYjHjU68mi1
        /R49rSP77ZoJKFzgyk5cN+cNV3HCWTw=
X-Google-Smtp-Source: AA6agR7bQTCwtitNx9xvP2sME+u2TWOfcFfKi+nOxRtYgDzhuYbjKsHI+bF01Ow8s6u5AUFc3zJFjw==
X-Received: by 2002:a05:6000:15c8:b0:225:5263:a223 with SMTP id y8-20020a05600015c800b002255263a223mr2804901wry.335.1661627573961;
        Sat, 27 Aug 2022 12:12:53 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g42-20020a05600c4caa00b003a607e395ebsm3753669wmp.9.2022.08.27.12.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Aug 2022 12:12:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff@gnu.org
Subject: [PATCH] lint-man.mk: Use a pipeline instead of the groff(1) wrapper
Date:   Sat, 27 Aug 2022 21:09:47 +0200
Message-Id: <20220827190946.10128-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2385; i=alx.manpages@gmail.com;
 h=from:subject; bh=uKA9b6wVHkpZm5ks7HUdxAxlcs96HpLfOqs1lndyoHc=;
 b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjCmvxKQC8W1lqYM/GRjDwJlUY5Xh3IW+C5zJLDJbJ
 v3fWkZCJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYwpr8QAKCRCejBr7vv/bMoqpEA
 CTD7oaP2aNKlptLL0HU2AJDTEX7j+2gohnj87xIRKwLlqlCEFrcfV87ZAj4E6N8ebqSnsh+S3ghalA
 XXKf+L5dJGaeIBL1dQjjPLN6XCChs7dXoc2LNs4LDqAgCauSXk7w8t1GzFkHB6W8W0c/WuVL1wmx+g
 4lBdR3e6A5HjP9gk9aoLNv5xhUluvkrbXJztmvD2UzmuNAuiQttwjKgoRpd9zchYfhUzfRHxrP52y7
 xnGcIMULNM3v5w6hUJs+p3Ep+cPx4EEQk3eAHRjd8v3bJdUAdcCoLexs17bbeW4J5MZmNzNVjXRY+f
 187j9KKpQvsL6leYPaLwJqHsv5R7A3FRfFJX/qXeij84qchRSGKvR/3vrwEeMAX7BRHBNkdIXXWZdj
 5MW+T3ALuX2NryUbTowqtV3SlL9HZqPfZ7/jnHJlSQERLKUor2VG8gps+4RSLhcyqwb0BT7XITJzHD
 09NZ/yT7snxtQyaZ0z6ekDO5K42GCCgFQvNqXOBkBRVWDY0Hef4Aio7Ghg8epk/5xp03ADxc9ayVnF
 Qc4v/Q5+PXxTDC6VYoXfvFSG41AGaUK8DB5WXuUXvdrR76AAScOwxYJjNEPT5ktWpadYJFjNNvd1Kq
 OqAB+a4j82hOpGVivI5fM9W0u9YutEy4Y7GhOiL4qPTN86QXXk3VGS8LFo7Q==
X-Developer-Key: i=alx.manpages@gmail.com; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UPPERCASE_50_75 autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This more explicitly shows how stuff really works, and allows
inspecting some intermediate steps in case it may be necessary.

Cc: Ralph Corderoy <ralph@inputplus.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: <groff@gnu.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Ralph and Branden,

Would you recommend this change?  Is it correct?  It seems to work.

Cheers,

Alex


 lib/lint-man.mk | 38 +++++++++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index 63d86fe11..269240c3a 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -16,20 +16,29 @@ include $(srcdir)/lib/src.mk
 TMACDIR := $(SYSCONFDIR)/groff/tmac
 
 
+TBL := tbl
+
+DEFAULT_EQNFLAGS := -Tutf8
+EXTRA_EQNFLAGS   :=
+EQNFLAGS         := $(DEFAULT_EQNFLAGS) $(EXTRA_EQNFLAGS)
+EQN              := eqn
+
 TMACFILES            := $(shell $(FIND) $(TMACDIR) -not -type d | $(SORT))
 TMACNAMES            := $(basename $(notdir $(TMACFILES)))
-GROFF_CHECKSTYLE_LVL := 3
-DEFAULT_GROFFFLAGS   := -man
-DEFAULT_GROFFFLAGS   += -t
-DEFAULT_GROFFFLAGS   += -M $(TMACDIR)
-DEFAULT_GROFFFLAGS   += $(foreach x,$(TMACNAMES),-m $(x))
-DEFAULT_GROFFFLAGS   += -rCHECKSTYLE=$(GROFF_CHECKSTYLE_LVL)
-DEFAULT_GROFFFLAGS   += -ww
-DEFAULT_GROFFFLAGS   += -Tutf8
-DEFAULT_GROFFFLAGS   += -rLL=80n
-EXTRA_GROFFFLAGS     :=
-GROFFFLAGS           := $(DEFAULT_GROFFFLAGS) $(EXTRA_GROFFFLAGS)
-GROFF                := groff
+TROFF_CHECKSTYLE_LVL := 3
+DEFAULT_TROFFFLAGS   := -man
+DEFAULT_TROFFFLAGS   += -t
+DEFAULT_TROFFFLAGS   += -M $(TMACDIR)
+DEFAULT_TROFFFLAGS   += $(foreach x,$(TMACNAMES),-m $(x))
+DEFAULT_TROFFFLAGS   += -rCHECKSTYLE=$(TROFF_CHECKSTYLE_LVL)
+DEFAULT_TROFFFLAGS   += -ww
+DEFAULT_TROFFFLAGS   += -Tutf8
+DEFAULT_TROFFFLAGS   += -rLL=80n
+EXTRA_TROFFFLAGS     :=
+TROFFFLAGS           := $(DEFAULT_TROFFFLAGS) $(EXTRA_TROFFFLAGS)
+TROFF                := troff
+
+GROTTY := grotty
 
 DEFAULT_MANDOCFLAGS := -man
 DEFAULT_MANDOCFLAGS += -Tlint
@@ -48,7 +57,10 @@ lint_man    := $(foreach x,$(linters_man),lint-man-$(x))
 
 $(_LINT_man_groff): $(_LINTDIR)/%.lint-man.groff.touch: $(MANDIR)/% | $$(@D)/.
 	$(info LINT (groff)	$@)
-	$(GROFF) $(GROFFFLAGS) $< \
+	$(TBL) <$< \
+	| $(EQN) $(EQNFLAGS) \
+	| $(TROFF) $(TROFFFLAGS) \
+	| $(GROTTY) \
 	| sed 's/\x1b\[[^@-~]*[@-~]//g' \
 	| (! grep -n '.\{80\}.')
 	touch $@
-- 
2.37.2

