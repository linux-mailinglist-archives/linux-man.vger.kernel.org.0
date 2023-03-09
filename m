Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 561D66B2C76
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 18:58:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbjCIR6s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 12:58:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230013AbjCIR6p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 12:58:45 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D8A1DDF20
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 09:58:43 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id o38-20020a05600c512600b003e8320d1c11so3713744wms.1
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 09:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678384722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O74mvF48Dbn9OdcanlGDd3tMVcFoKkngRGlNGufstj0=;
        b=Vkrlk9mFS1F5klJA5VojDDbuCSwewwgmfFSa5G5moSTnPpTaeUZNy+1gxliIfOd4S3
         GyuNjwWEZpeWwHD79wyAeI5fkMkP22XnlwvLbCHTFPJS8YQ68AchZS1+FEJoS6UpiY+i
         R6UH2D+nE6EL7I6+qYvq4pqNAjrPu3xkoyCAtmMcRt5G2EdCtJHh1WDsmk+3/L+TDYet
         h8yUpNO/9SzqDJgxPSZTZQHfvRzPkVnag0vLFmH/41kGh7ACn/ecsnlWq0vgFBeJDHAO
         fpU+sVl65uC4hUHjbpOteURbve/+TMshuNFnwtGlbk+9XKa8h8n6tvryfiPubOLovOl/
         U/Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678384722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O74mvF48Dbn9OdcanlGDd3tMVcFoKkngRGlNGufstj0=;
        b=gitrKSPIpAB5tr5L/V7CNakakINTTBDL+4vrjnOvwbZ4sjsBLyLhJDbFIegOCY2zDg
         sjJZXT3r9GGUdYXCdHUQYKBEQ57ALxR0OkSg/3ao72/yBOOpxBLJ5Qh2NW49mW7tYzdn
         ILMnwIAuxzOzNBy92bHvVkUHxBuzU02Siv2/qtsgDtR82VXfGMOFLZcn1LxQSTx4W9yP
         z4XDMr3QuFPBOrxPdRVkVSQx6mLsnY5FNAKDlSpxPmuMvtLsr2xw7vKvbTin/ZOwyJH+
         Q5hi8IUikln9MNkVBgywSLYDHWwD0oFl01Am5UlGT6tpTBfAL60kiP55LIq3iDmJVqF9
         fG0A==
X-Gm-Message-State: AO0yUKU4QjVYWmoctyJvTUOWEfOnaHzGkuOHm7jzjqnqoZ768tNz5o5x
        uGuILp+jr8ucwVkY5TPeF+2SbhbKT5A=
X-Google-Smtp-Source: AK7set+N52XnNOSW5zuDxqsLwsp0pkfH6go/wwrPIBXugIoY26biArXxlsT+hpZlTE1U6kDUsJp3CA==
X-Received: by 2002:a05:600c:4587:b0:3df:e468:17dc with SMTP id r7-20020a05600c458700b003dfe46817dcmr49056wmo.40.1678384722088;
        Thu, 09 Mar 2023 09:58:42 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id g10-20020a05600c310a00b003daf6e3bc2fsm654231wmo.1.2023.03.09.09.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 09:58:41 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Subject: [PATCH 6/6] Makefile, lint-man.mk: lint-man-groff-col, lint-man-groff-grep: Split targets from lint-man-groff
Date:   Thu,  9 Mar 2023 18:58:28 +0100
Message-Id: <20230309175828.136591-7-alx@kernel.org>
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

Allow running col(1) and grep(1) separately, which allows more granular
testing, and also inspecting the output of col(1), which can be useful
for debugging the pages.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 Makefile        |  4 +++-
 lib/lint-man.mk | 18 +++++++++++++++---
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 3788fb0f1..c370244d7 100644
--- a/Makefile
+++ b/Makefile
@@ -72,11 +72,13 @@ help:
 	$(info	lint-man		Wrapper for lint-man-* targets)
 	$(info	lint-man-mandoc		Lint man pages with mandoc(1))
 	$(info	lint-man-tbl		Lint man pages about '\" t' comment for tbl(1))
-	$(info	lint-man-groff		Lint man pages with groff(1))
+	$(info	lint-man-groff		Alias for "lint-man-groff-grep")
 	$(info	lint-man-groff-tbl	Lint man pages with tbl(1))
 	$(info	lint-man-groff-eqn	Lint man pages with eqn(1))
 	$(info	lint-man-groff-troff	Lint man pages with troff(1))
 	$(info	lint-man-groff-grotty	Lint man pages with grotty(1))
+	$(info	lint-man-groff-col	Lint man pages with col(1))
+	$(info	lint-man-groff-grep	Lint man pages with grep(1))
 	$(info	)
 	$(info	[un]install		Alias for "[un]install-man")
 	$(info	[un]install-man		Wrapper for [un]install-man* targets)
diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index a342eb44d..e819d1a95 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -68,6 +68,7 @@ _LINT_man_groff_eqn    :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.eqn,$(LINTMAN))
 _LINT_man_groff_troff  :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.troff,$(LINTMAN))
 _LINT_man_groff_grotty :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.grotty,$(LINTMAN))
 _LINT_man_groff_col    :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.col,$(LINTMAN))
+_LINT_man_groff_grep   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.grep,$(LINTMAN))
 
 _LINT_man_groff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.groff.touch,$(LINTMAN))
 _LINT_man_mandoc:=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.mandoc.touch,$(LINTMAN))
@@ -94,10 +95,13 @@ $(_LINT_man_groff_col): %.col: %.grotty | $$(@D)/.
 	$(info LINT (grotty)	$@)
 	$(GROTTY) $(GROTTYFLAGS) <$< >$@
 
-$(_LINT_man_groff): %.lint-man.groff.touch: %.col | $$(@D)/.
+$(_LINT_man_groff_grep): %.grep: %.col | $$(@D)/.
 	$(info LINT (col)	$@)
-	$(COL) $(COLFLAGS) <$< \
-	| (! $(GREP) -n '.\{$(MANWIDTH)\}.' | $(SED) 's,^,$<:,' >&2)
+	$(COL) $(COLFLAGS) <$< >$@
+
+$(_LINT_man_groff): %.lint-man.groff.touch: %.grep | $$(@D)/.
+	$(info LINT (grep)	$@)
+	! $(GREP) -n '.\{$(MANWIDTH)\}.' $< /dev/null >&2
 	touch $@
 
 $(_LINT_man_mandoc): $(_LINTDIR)/%.lint-man.mandoc.touch: $(MANDIR)/% | $$(@D)/.
@@ -153,6 +157,14 @@ lint-man-groff-troff: $(_LINT_man_groff_grotty)
 lint-man-groff-grotty: $(_LINT_man_groff_col)
 	@:
 
+.PHONY: lint-man-groff-col
+lint-man-groff-col: $(_LINT_man_groff_grep)
+	@:
+
+.PHONY: lint-man-groff-grep
+lint-man-groff-grep: $(_LINT_man_groff)
+	@:
+
 .PHONY: $(lint_man)
 $(lint_man): lint-man-%: $$(_LINT_man_%)
 	@:
-- 
2.39.2

