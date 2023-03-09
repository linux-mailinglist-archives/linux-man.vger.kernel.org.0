Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 514C56B2C72
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 18:58:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbjCIR6n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 12:58:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230000AbjCIR6m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 12:58:42 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E838DD5BA
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 09:58:41 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso1829508wmo.0
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 09:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678384719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L3uTnggsV+xpAqaI3LTopYh1vXxBSMAW7FIQsOANOKM=;
        b=UCdEnz7r7qpsWEbAi85wFVoU8l/1g5YxhZyJiJd0EsbNiDKXmequrCqXbe1TmVfvfr
         N+IjosThM96t7I4Rp5tJwyCGMuElFjQZvuOISkJrCNo2kFgYVd77m6OLET6ZGAI4K7BX
         TmtvSyc9xUvjepy8IbG+6Suc95nfsy4zg14QsO0OUP/aJoQg4mQ2CMeXEzfwrRYOTqpn
         cp6dUsyMmsnRMjBK2FpVWKh+VymttoAVLLNFVwC1Q4oZ0/9yTBK31WEOUOeoCdJIpyOT
         BWHBbaFXDyLwhCt96CmqW014v6XFq18l5PPWHxmoKbZhcFiCjOx3mx8mpprVHnljF6tw
         yX1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678384719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L3uTnggsV+xpAqaI3LTopYh1vXxBSMAW7FIQsOANOKM=;
        b=xzYPQaBC2L116qOHOt2861m+JGMfrLsLfRAG4udKhNKq6Toqh5OgneODR27G2wow5i
         n2tT67XD6FIWvh8j844mVtPuktVWsdOuJWtoiS2WjMpQj14MkxMG6SS4fHaXIZX4fYI5
         oteBApBKHwK91CsA9Sn37NnxOGEXqinhKjbVuxxYjBjLh1A0MF2ypFgsn+Z16Ks/aXvr
         T+iv53zmc2WiJrcb5eUJSBnolmhoeDGH92/VFE+LPTtIAF+aSddlDOZGx8mNj2tv+OJS
         FqwsppA7hPV7C6/ZxvIuw/O+ViFMF67Tc2HRjL9+w97nyRjwUX5f7OTcyYxvaDWFkVRw
         zmbw==
X-Gm-Message-State: AO0yUKXT1OQ+qzd1K03ZQNk0Mfo+RJol9kyj0iOCEMnJO+HLHhRG64f2
        Wb5dY5F86BZOLIpp/KnI69AMxvB8m8U=
X-Google-Smtp-Source: AK7set/6vmctR5GC0IpGF4zf1Wv9ykq4CZF6q6/PEVogzDNCiaVnMrcxDyoPpviWJUhk2f4+IkPMuw==
X-Received: by 2002:a05:600c:3d0f:b0:3e2:9b4:4303 with SMTP id bh15-20020a05600c3d0f00b003e209b44303mr105902wmb.19.1678384719579;
        Thu, 09 Mar 2023 09:58:39 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id g10-20020a05600c310a00b003daf6e3bc2fsm654231wmo.1.2023.03.09.09.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 09:58:39 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Subject: [PATCH 2/6] Makefile, lint-man.mk: lint-man-groff-tbl: Split target from lint-man-groff
Date:   Thu,  9 Mar 2023 18:58:24 +0100
Message-Id: <20230309175828.136591-3-alx@kernel.org>
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

Allow running tbl(1) separately, which has several benefits:

-  More granular testing.
-  Allows inspecting the output of tbl(1), which can be useful for
   debugging the pages.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 Makefile        |  3 ++-
 lib/lint-man.mk | 15 ++++++++++++---
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 54b492d40..46e71faab 100644
--- a/Makefile
+++ b/Makefile
@@ -70,9 +70,10 @@ help:
 	$(info	lint-c-cpplint		Lint C programs from EXAMPLES with cpplint(1))
 	$(info	lint-c-iwyu		Lint C programs from EXAMPLES with iwyu(1))
 	$(info	lint-man		Wrapper for lint-man-* targets)
-	$(info	lint-man-groff		Lint man pages with groff(1))
 	$(info	lint-man-mandoc		Lint man pages with mandoc(1))
 	$(info	lint-man-tbl		Lint man pages about '\" t' comment for tbl(1))
+	$(info	lint-man-groff		Lint man pages with groff(1))
+	$(info	lint-man-groff-tbl	Lint man pages with tbl(1))
 	$(info	)
 	$(info	[un]install		Alias for "[un]install-man")
 	$(info	[un]install-man		Wrapper for [un]install-man* targets)
diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index c4a4c57b0..8207860d8 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -64,6 +64,8 @@ MANDOCFLAGS         := $(DEFAULT_MANDOCFLAGS) $(EXTRA_MANDOCFLAGS)
 MANDOC              := mandoc
 
 
+_LINT_man_groff_eqn   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.eqn,$(LINTMAN))
+
 _LINT_man_groff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.groff.touch,$(LINTMAN))
 _LINT_man_mandoc:=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.mandoc.touch,$(LINTMAN))
 _LINT_man_tbl   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.tbl.touch,$(LINTMAN))
@@ -73,10 +75,13 @@ linters_man := groff mandoc tbl
 lint_man    := $(foreach x,$(linters_man),lint-man-$(x))
 
 
-$(_LINT_man_groff): $(_LINTDIR)/%.lint-man.groff.touch: $(MANDIR)/% | $$(@D)/.
+$(_LINT_man_groff_eqn): $(_LINTDIR)/%.eqn: $(MANDIR)/% | $$(@D)/.
+	$(info LINT (tbl)	$@)
+	$(TBL) $< >$@
+
+$(_LINT_man_groff): %.lint-man.groff.touch: %.eqn | $$(@D)/.
 	$(info LINT (groff)	$@)
-	$(TBL) $< \
-	| $(EQN) $(EQNFLAGS) \
+	$(EQN) $(EQNFLAGS) <$< \
 	| $(TROFF) $(TROFFFLAGS) \
 	| $(GROTTY) $(GROTTYFLAGS) \
 	| $(COL) $(COLFLAGS) \
@@ -120,6 +125,10 @@ $(_LINT_man_tbl): $(_LINTDIR)/%.lint-man.tbl.touch: $(MANDIR)/% | $$(@D)/.
 	touch $@
 
 
+.PHONY: lint-man-groff-tbl
+lint-man-groff-tbl: $(_LINT_man_groff_eqn)
+	@:
+
 .PHONY: $(lint_man)
 $(lint_man): lint-man-%: $$(_LINT_man_%)
 	@:
-- 
2.39.2

