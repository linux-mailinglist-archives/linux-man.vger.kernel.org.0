Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA1974DD259
	for <lists+linux-man@lfdr.de>; Fri, 18 Mar 2022 02:18:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231443AbiCRBTQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Mar 2022 21:19:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231440AbiCRBTP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Mar 2022 21:19:15 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D88D44B439
        for <linux-man@vger.kernel.org>; Thu, 17 Mar 2022 18:17:57 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id j17so9856973wrc.0
        for <linux-man@vger.kernel.org>; Thu, 17 Mar 2022 18:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kIob4LFaoLlx8+700bZpjjyR8OP5xTd41nK4QpM5wZw=;
        b=DB6Y/Ogk3NwbTc4+eDuuDrvVl6zrGlRhSr5/3zSl7TgR8y3XUSMsMUaNIZjeJ5DTSR
         P0TYTL2dMnmwUFfsxm3SLc5BWrHGgAIRKILak4CSF4fD0/pFRAeqtORvz9wU24I8KicT
         mwWJWSbv/m2JWb7PWrgwvu2+PJuOurgP7Q4+YXnww2veXLamep2wyxbDeqoJxEWqbXsU
         BjreJfLkHIlClv6OH6ccgDddRUpbAMEg/hvf3ZauPai/LuN8D4ui6wXbtjkJanisckrr
         +eekzxFtj//sPDP45z8cM4+ypDKe2Ol4iprboLBR35tGDXknGEC/umIOb52S6nXmv5Ep
         ahhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kIob4LFaoLlx8+700bZpjjyR8OP5xTd41nK4QpM5wZw=;
        b=B6VwY33fOP8BgB6uHnJygj4X9ClNr07OLVpkI9om4ZzPWBbLApQPHViQ/lx75VtB6Z
         I6OFeCqHn/uiPHm+GPfOyn7+kMY7x8hxQQY8RACHDMg/dqU4cM5yw48THg11pa528Akx
         /Xq3o8GA7wEKg8UY7zMTBmhjZJv/o5HEjCYskR8hZruT81kcC4NvCK1ON++Eg224nnr1
         Pb6quu1VMFUy67sr7GlwqrFk5w01bLKJVnSoacLawPo6++aUmOlTGOraBoclbt1h7hve
         WAyI9BAWmbeMd6xEuCmuh/t53aO1Y+BTs3TdHakDUcKqT5OqmBGVcgo6Va0ltdHYhYCg
         eQeA==
X-Gm-Message-State: AOAM530uDvZ3MXRKmrn4BUwXeZ3LgFv2QgcPkXFZohiIecZP171MEf8Q
        FBhMcYngJp10Jnv8n2XwNJea9WIy9g2Ur67Y
X-Google-Smtp-Source: ABdhPJwc3uNlGp5LGF4mBHchgGkF+iP8nCuGGTOQOG9t5h+/M37IKND4vO0kGKrMlnnIiihBmsSWgg==
X-Received: by 2002:adf:fc43:0:b0:203:d867:9fe5 with SMTP id e3-20020adffc43000000b00203d8679fe5mr6178151wrs.272.1647566276309;
        Thu, 17 Mar 2022 18:17:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id i10-20020a5d584a000000b00203e8019f2dsm2979513wrf.61.2022.03.17.18.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 18:17:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] Makefile, etc/groff/tmac/deadly.tmac: Add lint and lint-groff targets
Date:   Fri, 18 Mar 2022 02:17:53 +0100
Message-Id: <20220318011753.96759-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'lint' is a metatarget that triggers all lint-* targets (currently
that is just 'lint-groff').
'lint-groff' is a target that runs groff -rCHECKSTYLE to check
manual pages' groff(7) correctness.

etc/groff/tmac/deadly.tmac is a file written by Branden, to make
make groff(1) abort when it finds a style problem, which then
causes make(1) to also abort.

CC: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Branden and Michael!

I'm delighted to add to the man-pages a make(1) target to run Branden's
brand new (pun not intended :)) groff(1) linter.

Please have a look at it, and feel free to comment.  As I expected,
one of the first pages linted had problems (and I am surprised for good
that it didn't abort right in the first page):

	INSTALL	tmp/lint/
	INSTALL	tmp/lint/man0/
	LINT (groff)	tmp/lint/man0/sysexits.h.0.lint.groff.touch
	INSTALL	tmp/lint/man1/
	LINT (groff)	tmp/lint/man1/getent.1.lint.groff.touch
	LINT (groff)	tmp/lint/man1/iconv.1.lint.groff.touch
	LINT (groff)	tmp/lint/man1/intro.1.lint.groff.touch
	an.tmac:man1/intro.1:72: style: blank line in input
	found style problems; aborting
	make: *** [Makefile:244: tmp/lint/man1/intro.1.lint.groff.touch] Error 1

I may start cleaning all of those one day.  Now that we have some tool
that finds those for us, that day may be sooner than later.

Branden, I'm curious to learn how/if you're using it in your own Makefile
in groff(1).

BTW, don't feel pressured by my premature usage of your unreleased feature
to consider not changing it too much to avoid breaking this build system.
I assume that it may change it the future when you release and will adapt
if necessary.

Cheers,

Alex


 Makefile                   | 54 +++++++++++++++++++++++++++++++++-----
 etc/groff/tmac/deadly.tmac |  7 +++++
 2 files changed, 55 insertions(+), 6 deletions(-)
 create mode 100644 etc/groff/tmac/deadly.tmac

diff --git a/Makefile b/Makefile
index f68066bec..7316b4582 100644
--- a/Makefile
+++ b/Makefile
@@ -29,15 +29,19 @@ MAKEFLAGS += --no-print-directory
 MAKEFLAGS += --warn-undefined-variables
 
 
+srcdir := .
 builddir := tmp
+LINTDIR := $(builddir)/lint
 htmlbuilddir := $(builddir)/html
 HTOPTS :=
 
 DESTDIR :=
 prefix := /usr/local
+SYSCONFDIR := $(srcdir)/etc
+TMACDIR := $(SYSCONFDIR)/groff/tmac
 datarootdir := $(prefix)/share
 docdir := $(datarootdir)/doc
-MANDIR := $(CURDIR)
+MANDIR := $(srcdir)
 mandir := $(datarootdir)/man
 MAN0DIR := $(MANDIR)/man0
 MAN1DIR := $(MANDIR)/man1
@@ -71,12 +75,23 @@ htmldir := $(docdir)
 htmldir_ := $(htmldir)/man
 htmlext := .html
 
-INSTALL := install
+TMACFILES            := $(sort $(shell find $(TMACDIR) -not -type d))
+TMACNAMES            := $(basename $(notdir $(TMACFILES)))
+GROFF_CHECKSTYLE_LVL := 3
+DEFAULT_GROFFFLAGS   := -man
+DEFAULT_GROFFFLAGS   += -M $(TMACDIR)
+DEFAULT_GROFFFLAGS   += $(foreach x,$(TMACNAMES),-m $(x))
+DEFAULT_GROFFFLAGS   += -rCHECKSTYLE=$(GROFF_CHECKSTYLE_LVL)
+EXTRA_GROFFFLAGS     :=
+GROFFFLAGS           := $(DEFAULT_GROFFFLAGS) $(EXTRA_GROFFFLAGS)
+
+INSTALL      := install
 INSTALL_DATA := $(INSTALL) -m 644
-INSTALL_DIR := $(INSTALL) -m 755 -d
-RM := rm
-RMDIR := rmdir --ignore-fail-on-non-empty
-MAN2HTML := man2html
+INSTALL_DIR  := $(INSTALL) -m 755 -d
+RM           := rm
+RMDIR        := rmdir --ignore-fail-on-non-empty
+GROFF        := groff
+MAN2HTML     := man2html
 
 MAN_SECTIONS := 0 1 2 3 4 5 6 7 8
 
@@ -132,9 +147,11 @@ _man5pages := $(filter %$(man5ext),$(_manpages))
 _man6pages := $(filter %$(man6ext),$(_manpages))
 _man7pages := $(filter %$(man7ext),$(_manpages))
 _man8pages := $(filter %$(man8ext),$(_manpages))
+LINT_groff := $(patsubst $(MANDIR)/%,$(LINTDIR)/%.lint.groff.touch,$(MANPAGES))
 
 MANDIRS   := $(sort $(shell find $(MANDIR)/man? -type d))
 HTMLDIRS  := $(patsubst $(MANDIR)/%,$(htmlbuilddir)/%/.,$(MANDIRS))
+LINTDIRS  := $(patsubst $(MANDIR)/%,$(LINTDIR)/%/.,$(MANDIRS))
 _htmldirs := $(patsubst $(htmlbuilddir)/%,$(DESTDIR)$(htmldir_)/%,$(HTMLDIRS))
 _mandirs  := $(patsubst $(MANDIR)/%,$(DESTDIR)$(mandir)/%/.,$(MANDIRS))
 _man0dir  := $(filter %man0/.,$(_mandirs))
@@ -216,6 +233,31 @@ uninstall-man: $(_mandir_rmdir) $(uninstall_manX)
 	@:
 
 
+########################################################################
+# lint
+
+linters := groff
+lint    := $(foreach x,$(linters),lint-$(x))
+
+$(LINT_groff): $(LINTDIR)/%.lint.groff.touch: $(MANDIR)/% | $$(@D)/.
+	$(info LINT (groff)	$@)
+	$(GROFF) $(GROFFFLAGS) -z $<
+	touch $@
+
+$(LINTDIRS): %/.: | $$(dir %). $(LINTDIR)/.
+
+.PHONY: lint-groff
+lint-groff: $(LINT_groff) | lintdirs
+	@:
+
+lintdirs: $(LINTDIRS)
+	@:
+
+.PHONY: lint
+lint: $(lint)
+	@:
+
+
 ########################################################################
 # html
 
diff --git a/etc/groff/tmac/deadly.tmac b/etc/groff/tmac/deadly.tmac
new file mode 100644
index 000000000..b87cb6a3d
--- /dev/null
+++ b/etc/groff/tmac/deadly.tmac
@@ -0,0 +1,7 @@
+.am an-style-warn
+.	ds LANDMINE\"
+..
+.de end-of-input-macro
+.	if d LANDMINE .ab found style problems; aborting
+..
+.em end-of-input-macro
-- 
2.35.1

