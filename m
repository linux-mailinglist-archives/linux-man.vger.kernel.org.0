Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B95516B2C74
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 18:58:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230256AbjCIR6p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 12:58:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230044AbjCIR6n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 12:58:43 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B061DD581
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 09:58:42 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso4256838wmb.0
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 09:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678384721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0MXlhTI1MJSYdGGhdXk4lfHix50cxUPUO2h8N33JhmU=;
        b=B/Sv9XvNdoYQ0s5NSAOyZsLEbf9KPg7WRCXFHSe0K4OPDTi6wZ+jS3lPzmeYehRr7f
         rxNaKoK9g5gQlWsBiC2FmXdegYxOknIq6on9BiUzVrXgVdSvbww6kcBrLpzJxtERjQ0e
         tBhMFJj5Q5g3DWyrXnM4hw4XVn+xbX8Ofit+EfIFSAv5Vzk4x777SfuljLi+WfESo1Su
         Y+H7Zf6iHpbOJlW8Ho/WKrwod2024PE1aVU18blSWo00NpkM5QStFENjoUW1qatsEq1i
         0+kBsbOf/gSCR9gVQmjk7K90vBxneCPFd6svC+xrQWiJdgTT5E6PIF+fdSGTroKaKaiH
         k5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678384721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0MXlhTI1MJSYdGGhdXk4lfHix50cxUPUO2h8N33JhmU=;
        b=yB61zEPiS/a/q3XlNg5o/nrTbGKjwP5+HGR6FkKzhm9WR5NEgAldwPW4bz6+Vnse87
         wYA9Nx/BsbdPQ4E2+rqyihuCqkv5waA1IFFO81DALmu+k3VMqKY7IC1AiHn0gvauFc6i
         ZIUnSygtFHypq2xeGpgWqDMTGT+zriuHl+dT8SJdiatGyGqA/mO/xcrxyRmohegImhf/
         yNi/WgWDFhF0vc2rYS5m5f5DTIv8YVi24KF2Xe31Z52ffUk6w/duucI2ipqdZvO7ErPH
         t6dJBdQPjPMK2qqPazU5nG4PHh7CRblQomT1ozohb6Ta1aFCdW4uPDpaQzMhMswMixxc
         j9gw==
X-Gm-Message-State: AO0yUKU7spG1HT5Eovzn06CgVZgjv+RjAFqZ67GXzS4TTRPdkaADG4KB
        sGM6Hf2dw5In+RAKrhTsn9rgmVIb2+A=
X-Google-Smtp-Source: AK7set9C7VKi53iFlesyC742iWL+KXcfg6nVLwhnPELI65TZSIrYl+IpPrpaBiC/7Hnl8HIUx/FErQ==
X-Received: by 2002:a05:600c:a04:b0:3eb:3971:a2aa with SMTP id z4-20020a05600c0a0400b003eb3971a2aamr88653wmp.25.1678384720883;
        Thu, 09 Mar 2023 09:58:40 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id g10-20020a05600c310a00b003daf6e3bc2fsm654231wmo.1.2023.03.09.09.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 09:58:40 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Subject: [PATCH 4/6] Makefile, lint-man.mk: lint-man-groff-troff: Split target from lint-man-groff
Date:   Thu,  9 Mar 2023 18:58:26 +0100
Message-Id: <20230309175828.136591-5-alx@kernel.org>
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

Allow running troff(1) separately, which allows more granular testing,
and also inspecting the output of troff(1), which can be useful for
debugging the pages.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 Makefile        |  1 +
 lib/lint-man.mk | 18 +++++++++++++-----
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index b5171e377..270ee00e3 100644
--- a/Makefile
+++ b/Makefile
@@ -75,6 +75,7 @@ help:
 	$(info	lint-man-groff		Lint man pages with groff(1))
 	$(info	lint-man-groff-tbl	Lint man pages with tbl(1))
 	$(info	lint-man-groff-eqn	Lint man pages with eqn(1))
+	$(info	lint-man-groff-troff	Lint man pages with troff(1))
 	$(info	)
 	$(info	[un]install		Alias for "[un]install-man")
 	$(info	[un]install-man		Wrapper for [un]install-man* targets)
diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index 928bb8c68..bc3ce6a3d 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -64,8 +64,9 @@ MANDOCFLAGS         := $(DEFAULT_MANDOCFLAGS) $(EXTRA_MANDOCFLAGS)
 MANDOC              := mandoc
 
 
-_LINT_man_groff_eqn   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.eqn,$(LINTMAN))
-_LINT_man_groff_troff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.troff,$(LINTMAN))
+_LINT_man_groff_eqn    :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.eqn,$(LINTMAN))
+_LINT_man_groff_troff  :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.troff,$(LINTMAN))
+_LINT_man_groff_grotty :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.grotty,$(LINTMAN))
 
 _LINT_man_groff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.groff.touch,$(LINTMAN))
 _LINT_man_mandoc:=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.mandoc.touch,$(LINTMAN))
@@ -84,10 +85,13 @@ $(_LINT_man_groff_troff): %.troff: %.eqn | $$(@D)/.
 	$(info LINT (eqn)	$@)
 	$(EQN) $(EQNFLAGS) <$< >$@
 
-$(_LINT_man_groff): %.lint-man.groff.touch: %.troff | $$(@D)/.
+$(_LINT_man_groff_grotty): %.grotty: %.troff | $$(@D)/.
+	$(info LINT (troff)	$@)
+	$(TROFF) $(TROFFFLAGS) <$< >$@
+
+$(_LINT_man_groff): %.lint-man.groff.touch: %.grotty | $$(@D)/.
 	$(info LINT (groff)	$@)
-	$(TROFF) $(TROFFFLAGS) <$< \
-	| $(GROTTY) $(GROTTYFLAGS) \
+	$(GROTTY) $(GROTTYFLAGS) <$< \
 	| $(COL) $(COLFLAGS) \
 	| (! $(GREP) -n '.\{$(MANWIDTH)\}.' | $(SED) 's,^,$<:,' >&2)
 	touch $@
@@ -137,6 +141,10 @@ lint-man-groff-tbl: $(_LINT_man_groff_eqn)
 lint-man-groff-eqn: $(_LINT_man_groff_troff)
 	@:
 
+.PHONY: lint-man-groff-troff
+lint-man-groff-troff: $(_LINT_man_groff_grotty)
+	@:
+
 .PHONY: $(lint_man)
 $(lint_man): lint-man-%: $$(_LINT_man_%)
 	@:
-- 
2.39.2

