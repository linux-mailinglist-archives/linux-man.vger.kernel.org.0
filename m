Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA8E86B2C73
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 18:58:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbjCIR6p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 12:58:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbjCIR6n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 12:58:43 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1333DCF66
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 09:58:41 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id ay29-20020a05600c1e1d00b003e9f4c2b623so4223492wmb.3
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 09:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678384720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bngNDJSXg+v9gV3Blg9B3iC/vxYCvOdRAqqV9rS4i48=;
        b=MqutPSqs+a8ER+aDwtbS6hs4NwM0pdXN7oV8xRzD+Hc3FV9w7rQaIXUW8Ewk0UJCzb
         EFLTfd9vWgWEmZEeXmVk1U8zAjlkjNYBfOo40OYprhwwqeWEOJBOJnJI1W6zmGlqgcqZ
         bzSGKHxI6BAgiGAMeokI7o7H4kt6rB3go9xKdXYzzd6GKs1YDv+myIqq8w5kv45rFan2
         rs17bJzAF6aul9c/Fdm9EdE0S6MDe52L+Ovk7KbuQwjIQwNP6nlCKWlBUCwLOyJvq/ju
         dSbHi97OCYSUwhGUl00jEBzvKniD1qYA/MQWi5XZQWJkhoES4ju1lXAXBbD1+5tmZIQQ
         Wm6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678384720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bngNDJSXg+v9gV3Blg9B3iC/vxYCvOdRAqqV9rS4i48=;
        b=BXILUuSIuqwEnLNgtjNv/W2G20SgNScPm1+uU6MST7KdJM64SsiMf4Qv7WNwMOS73v
         y+9mT2N38BgxcS94Gr/uwfK6wHGFmL+BMrC4c3bDbSrNISKAOeXLKPrrxsqBBe2GrccA
         Cf65U9weBhJJgaP/Ue+c3oUpzKK10+gqqFL0HdJAsYS3iRgy2z/P5a3HXoMQEjhajQbg
         W8iH9qwSMTX9h7JWL+svYuAfmTj5gy5vgvSZHsmZD/p00jOUkQZepjPc+lUOBP0ITFfm
         J15Sde1GYegoZ+MPLX+5gkn9krQDnlIohotrK7ixylyCeYbe0KZdv96WuHqRWDJVlG8c
         JxEQ==
X-Gm-Message-State: AO0yUKVbSKiC79mnKATz6AoIW7nll8wlPLt+T2h4aj+SJH08i1isnpaU
        +xslJlD8NwqzY+x2WjDNFkkjVQdRluI=
X-Google-Smtp-Source: AK7set9VqVfVHcpD+FoXdoJLm4PwPq0JNyjdcGxIQXUcUckdb7CfmEIe5shjDJSbO6cceAJ/R03+kA==
X-Received: by 2002:a05:600c:384b:b0:3ea:f6c4:5f3c with SMTP id s11-20020a05600c384b00b003eaf6c45f3cmr148548wmr.7.1678384720319;
        Thu, 09 Mar 2023 09:58:40 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id g10-20020a05600c310a00b003daf6e3bc2fsm654231wmo.1.2023.03.09.09.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 09:58:40 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Subject: [PATCH 3/6] Makefile, lint-man.mk: lint-man-groff-eqn: Split target from lint-man-groff
Date:   Thu,  9 Mar 2023 18:58:25 +0100
Message-Id: <20230309175828.136591-4-alx@kernel.org>
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

Allow running eqn(1) separately, which allows more granular testing, and
also inspecting the output of eqn(1), which can be useful for debugging
the pages.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 Makefile        |  1 +
 lib/lint-man.mk | 14 +++++++++++---
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 46e71faab..b5171e377 100644
--- a/Makefile
+++ b/Makefile
@@ -74,6 +74,7 @@ help:
 	$(info	lint-man-tbl		Lint man pages about '\" t' comment for tbl(1))
 	$(info	lint-man-groff		Lint man pages with groff(1))
 	$(info	lint-man-groff-tbl	Lint man pages with tbl(1))
+	$(info	lint-man-groff-eqn	Lint man pages with eqn(1))
 	$(info	)
 	$(info	[un]install		Alias for "[un]install-man")
 	$(info	[un]install-man		Wrapper for [un]install-man* targets)
diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index 8207860d8..928bb8c68 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -65,6 +65,7 @@ MANDOC              := mandoc
 
 
 _LINT_man_groff_eqn   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.eqn,$(LINTMAN))
+_LINT_man_groff_troff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.troff,$(LINTMAN))
 
 _LINT_man_groff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.groff.touch,$(LINTMAN))
 _LINT_man_mandoc:=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.mandoc.touch,$(LINTMAN))
@@ -79,10 +80,13 @@ $(_LINT_man_groff_eqn): $(_LINTDIR)/%.eqn: $(MANDIR)/% | $$(@D)/.
 	$(info LINT (tbl)	$@)
 	$(TBL) $< >$@
 
-$(_LINT_man_groff): %.lint-man.groff.touch: %.eqn | $$(@D)/.
+$(_LINT_man_groff_troff): %.troff: %.eqn | $$(@D)/.
+	$(info LINT (eqn)	$@)
+	$(EQN) $(EQNFLAGS) <$< >$@
+
+$(_LINT_man_groff): %.lint-man.groff.touch: %.troff | $$(@D)/.
 	$(info LINT (groff)	$@)
-	$(EQN) $(EQNFLAGS) <$< \
-	| $(TROFF) $(TROFFFLAGS) \
+	$(TROFF) $(TROFFFLAGS) <$< \
 	| $(GROTTY) $(GROTTYFLAGS) \
 	| $(COL) $(COLFLAGS) \
 	| (! $(GREP) -n '.\{$(MANWIDTH)\}.' | $(SED) 's,^,$<:,' >&2)
@@ -129,6 +133,10 @@ $(_LINT_man_tbl): $(_LINTDIR)/%.lint-man.tbl.touch: $(MANDIR)/% | $$(@D)/.
 lint-man-groff-tbl: $(_LINT_man_groff_eqn)
 	@:
 
+.PHONY: lint-man-groff-eqn
+lint-man-groff-eqn: $(_LINT_man_groff_troff)
+	@:
+
 .PHONY: $(lint_man)
 $(lint_man): lint-man-%: $$(_LINT_man_%)
 	@:
-- 
2.39.2

