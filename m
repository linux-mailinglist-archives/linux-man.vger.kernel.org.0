Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A52C6B2C75
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 18:58:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230044AbjCIR6r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 12:58:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230000AbjCIR6p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 12:58:45 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40590DDB1A
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 09:58:42 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id p26so1757570wmc.4
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 09:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678384721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+NFmZaAeTFHyPfwfsz8g1jgITZNZV6m6OxSi97eVq0=;
        b=e02j7FtDBOmZXeeeqqJh6zMZpXdusI1p49rcz+9CSJ0taLx3eydInOSRDA2Lvk4Fhq
         Uavl31idtVa0GEJDKBDYXQdxp3KtgxqcVstf+HJ70akOB/WAMiXxB0Om+GP7nu6EE8hQ
         dpy3ejAQX+AwZCn/WzXE0o+0+fGdXfQBY4yU/dfzVYzEYCWp0qXaEl9QrbCa3g/GXpYg
         757SbaIftIWpde/4azO7GHyCQhfbrxdRsXpfoUrPaQEGR8rF7FxJMQmCsA9SAvKv6LgR
         aa3e/AMyCnLQDfKK662iC4KA4MIZWp17jdzFZWoltK0m4WZH5D5f3ns0bs3vsi6xgT4B
         Y1pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678384721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q+NFmZaAeTFHyPfwfsz8g1jgITZNZV6m6OxSi97eVq0=;
        b=Ah2uCTG6r5iNCjJYUYZspwjOdEEgKght+8mokOH0aEfhmu7L+Wsv5R3TLJaIC8LBSN
         bx3U/JwFhF2qFzT7xTNNDfbZeQRz2Vg+CUTC7/oEu9+LUnEIyYN8vJO5LuZ2o2DEbDl+
         RQpX4mluNquvVLi9B6nQiLMeQsimop3ptXX0qfUzomnDowXBrTB9ri8M0P/NXYoKIBSd
         1xtDK6fBCrAUt/gcfZsQ//H+bN2DxcgRjziZgm/szn5RGO7o8dx5hI1rW4KM5eeEYD0E
         Wf6Xw8BqSpzd1BuzVRROshRwZQoWdAaao0Pzrg/hv0bytbSKIWCpzbXS8nRvuWwmmTYN
         xxcQ==
X-Gm-Message-State: AO0yUKUB253a1Hn1V7ZhL/NSHCmHmrHj2Xy+EB5SapSYgWaj8TjYOLAJ
        7ANIsk7RKARHkANGlo3UNWLDVrsuY/g=
X-Google-Smtp-Source: AK7set+75cMHQALj7FGl9zPQhBAH2qET/xoaL1FKtsftSqCvsfurCmzUQ+gO8yDLtWg/dD6/mp1erw==
X-Received: by 2002:a05:600c:198e:b0:3ea:4af0:3475 with SMTP id t14-20020a05600c198e00b003ea4af03475mr166416wmq.1.1678384721508;
        Thu, 09 Mar 2023 09:58:41 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id g10-20020a05600c310a00b003daf6e3bc2fsm654231wmo.1.2023.03.09.09.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 09:58:41 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Subject: [PATCH 5/6] Makefile, lint-man.mk: lint-man-groff-grotty: Split target from lint-man-groff
Date:   Thu,  9 Mar 2023 18:58:27 +0100
Message-Id: <20230309175828.136591-6-alx@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230309175828.136591-1-alx@kernel.org>
References: <20230309175828.136591-1-alx@kernel.org>
MIME-Version: 1.0
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

Allow running grotty(1) separately, which allows more granular testing, and also inspecting the output of grotty(1), which can be useful for debugging the pages.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 Makefile        |  1 +
 lib/lint-man.mk | 16 ++++++++++++----
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 270ee00e3..3788fb0f1 100644
--- a/Makefile
+++ b/Makefile
@@ -76,6 +76,7 @@ help:
 	$(info	lint-man-groff-tbl	Lint man pages with tbl(1))
 	$(info	lint-man-groff-eqn	Lint man pages with eqn(1))
 	$(info	lint-man-groff-troff	Lint man pages with troff(1))
+	$(info	lint-man-groff-grotty	Lint man pages with grotty(1))
 	$(info	)
 	$(info	[un]install		Alias for "[un]install-man")
 	$(info	[un]install-man		Wrapper for [un]install-man* targets)
diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index bc3ce6a3d..a342eb44d 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -67,6 +67,7 @@ MANDOC              := mandoc
 _LINT_man_groff_eqn    :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.eqn,$(LINTMAN))
 _LINT_man_groff_troff  :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.troff,$(LINTMAN))
 _LINT_man_groff_grotty :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.grotty,$(LINTMAN))
+_LINT_man_groff_col    :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.col,$(LINTMAN))
 
 _LINT_man_groff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.groff.touch,$(LINTMAN))
 _LINT_man_mandoc:=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.mandoc.touch,$(LINTMAN))
@@ -89,10 +90,13 @@ $(_LINT_man_groff_grotty): %.grotty: %.troff | $$(@D)/.
 	$(info LINT (troff)	$@)
 	$(TROFF) $(TROFFFLAGS) <$< >$@
 
-$(_LINT_man_groff): %.lint-man.groff.touch: %.grotty | $$(@D)/.
-	$(info LINT (groff)	$@)
-	$(GROTTY) $(GROTTYFLAGS) <$< \
-	| $(COL) $(COLFLAGS) \
+$(_LINT_man_groff_col): %.col: %.grotty | $$(@D)/.
+	$(info LINT (grotty)	$@)
+	$(GROTTY) $(GROTTYFLAGS) <$< >$@
+
+$(_LINT_man_groff): %.lint-man.groff.touch: %.col | $$(@D)/.
+	$(info LINT (col)	$@)
+	$(COL) $(COLFLAGS) <$< \
 	| (! $(GREP) -n '.\{$(MANWIDTH)\}.' | $(SED) 's,^,$<:,' >&2)
 	touch $@
 
@@ -145,6 +149,10 @@ lint-man-groff-eqn: $(_LINT_man_groff_troff)
 lint-man-groff-troff: $(_LINT_man_groff_grotty)
 	@:
 
+.PHONY: lint-man-groff-grotty
+lint-man-groff-grotty: $(_LINT_man_groff_col)
+	@:
+
 .PHONY: $(lint_man)
 $(lint_man): lint-man-%: $$(_LINT_man_%)
 	@:
-- 
2.39.2

