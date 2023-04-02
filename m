Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 610776D3522
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 03:13:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229606AbjDBBNA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 21:13:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbjDBBNA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 21:13:00 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E42E81FC1
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 18:12:56 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id j1-20020a05600c1c0100b003f04da00d07so318560wms.1
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 18:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680397975; x=1682989975;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x+ubjf/yHeTOT4NanyHgCcFiGbKZbdK2eSYa9HXDv0g=;
        b=lsNZYaWcB6gTsMCqLkOV1Fu1qDorsrERcgBTrmqnQsZTYQD57LnEFU2NpNTf2924M0
         eT1rNRLJrfOojC2a1T94PIERGupHLkj/tAMUKCHBRNKCnrB8pJTuQGvFnhtHoQgO5wJp
         xuUD94XyFjmsHkortYC4KdkAgIBxmed0vBNiwgOHHPvTzrqKTeXF67D0F5AElWsNxTdK
         884L3izk+eV8ZINgtwrNA8XGPH7ttRK/pXGTpGxMzYo9vkawGZapEcslkpmDhpHQ4qT6
         eEhyABh3mUJ7lE+Z9xlXjFNayexyP8EZTSh/hUVrcr8nOJA1CrOamfiYm623sVbUtl/N
         io8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680397975; x=1682989975;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x+ubjf/yHeTOT4NanyHgCcFiGbKZbdK2eSYa9HXDv0g=;
        b=s7UV5nP7AmaDU6rmaJmiSFEiAhHIKhv+22dRA28IQ7TTB7QgzVxlPbwu/arc0bpH7p
         MynfxLG7TMldLMs+aUmk6lvpSRgdF6pDlGJ+yLFBB7d2opqeMWadOwQxPGIr/WaejNrx
         NaaICH6ztXL0C0tcUyqMKTki85YOasdbWgR1jI+9lCt7c12P79EyjKiikxPZ4k6OsFVv
         eCTLQahEUwJ6NCy3PWf98pMo0u+/cSzoAVW4PMiqQashhLFrE25WKiD7Kh2b826vWLUR
         PsVxTgckACBmz5YV/frldO9cVKiamOHKno0gG4C5PDKuyny/tuFqEOSbmhflIVw291J9
         d4+w==
X-Gm-Message-State: AAQBX9eKuKSX7Xa+vH9WxBYSxg0UkWOlhj3Z7Jj4znYVSMJp6OF8LrO8
        8+gGkhVtBa+Na6LTYhL82LYoPFaVggk=
X-Google-Smtp-Source: AKy350ZpFdPHtxzg0Bnc7uSNgGvMGqAGgL1g1Dh1sgQLKmNRpxD7AaJ4ggt3JPfIUaID6qTgFMR+sQ==
X-Received: by 2002:a7b:c7d4:0:b0:3ef:acf6:f829 with SMTP id z20-20020a7bc7d4000000b003efacf6f829mr10556138wmk.19.1680397975024;
        Sat, 01 Apr 2023 18:12:55 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id h7-20020a05600c314700b003ef66c89af0sm23349157wmo.0.2023.04.01.18.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Apr 2023 18:12:54 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Elliott Hughes <enh@google.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Subject: [PATCH] *.mk, CONTRIBUTING, INSTALL: lint, build, check: Reorganize some targets
Date:   Sun,  2 Apr 2023 03:09:09 +0200
Message-Id: <20230402010908.100635-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Some targets which were under lint-* were really building cat pages, so
let's call it build-catman, since it's what it is.  As part of the
build, it will report warnings, of course, as any other build system, so
nothing really changed, except for the target names, and the path in the
build tree where the cat pages (and intermediate files) are placed,
which is now directly under <.tmp/man/*>.

Some other targets were checking that the cat pages were correct after
the build, so those targets have been moved to check-* targets.

Document that contributors should run both the 'lint' and 'check'
targets to check the correctness of their patches.

`make all`, a.k.a. `make build`, now builds _all_ that can be built,
including cat pages, and C programs.

Implementation detail: $LINTMAN has been renamed, since now it's used
also for things that are not linters.  Call it $NONSO_MAN, since it's a
list of the non-'.so' man pages, which are the ones we want to lint,
build, and check.

Future directions:

I plan to implement 'build-html' using groff(1), which will reuse part
of the build-catman pipeline.  That will produce much higher quality
HTML manual pages.

Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
Cc: Elliott Hughes <enh@google.com>
Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 CONTRIBUTING        |  22 ++++-----
 INSTALL             |  12 ++---
 Makefile            |  25 ++++++----
 lib/build-catman.mk | 112 ++++++++++++++++++++++++++++++++++++++++++++
 lib/build-src.mk    |   3 +-
 lib/build.mk        |  12 ++++-
 lib/check-catman.mk |  53 +++++++++++++++++++++
 lib/check.mk        |  19 ++++++++
 lib/lint-man.mk     |  56 ++--------------------
 lib/lint.mk         |   7 ---
 10 files changed, 234 insertions(+), 87 deletions(-)
 create mode 100644 lib/build-catman.mk
 create mode 100644 lib/check-catman.mk
 create mode 100644 lib/check.mk

diff --git a/CONTRIBUTING b/CONTRIBUTING
index 30e0bc244..8b03d7563 100644
--- a/CONTRIBUTING
+++ b/CONTRIBUTING
@@ -2,7 +2,7 @@ Name
        Contributing - instructions for contributing to the project
 
 Synopsis
-       Mailing list, patches, lint, style guide, bug reports, and notes
+       Mailing list, patches, lint & check, style guide, bug reports, and notes
 
 Description
    Mailing list
@@ -129,23 +129,23 @@ Description
        -  Make patches against the latest version of the manual page.  Use
           git(1) for getting the latest version.
 
-   Lint
-       If you plan to patch a manual page, consider running the linters
-       configured in the build system, to make sure your change doesn't add
-       new warnings.  However, you might still get warnings that are not your
-       fault.  To minimize that, do the following steps:
+   Lint & check
+       If you plan to patch a manual page, consider running the linters and
+       checks configured in the build system, to make sure your change doesn't
+       add new warnings.  However, you might still get warnings that are not
+       your fault.  To minimize that, do the following steps:
 
        (1)  First use make(1)'s -t option, so that make(1) knows that it only
-            needs to lint again pages that you will touch.
+            needs to lint & check again pages that you will touch.
 
-                $ make -t lint >/dev/null
+                $ make -t lint check >/dev/null
 
        (2)  Run make(1) again, asking it to imagine that the page wou'll
             modify has been touched, to see which warnings you'll still see
             from that page that are not your fault.
 
                 $ # replace 'man2/membarrier.2' by the page you'll modify
-                $ make -W man2/membarrier.2 -k lint
+                $ make -W man2/membarrier.2 -k lint check
 
        (3)  Apply your changes, and then run make(1) again.  You can ignore
             warnings that you saw in step (2), but if you see any new ones,
@@ -153,11 +153,11 @@ Description
             patch email.
 
                 $ vi man2/membarrier.2  # do your work
-                $ make -k lint
+                $ make -k lint check
 
        See <INSTALL> for a list of dependencies that this feature requires.
        If you can't meet them all, don't worry; it will still run the linters
-       that you have available.
+       and checks that you have available.
 
    Style guide
        For a description of the preferred layout of manual pages, as well as
diff --git a/INSTALL b/INSTALL
index 2966be22f..402ce53e3 100644
--- a/INSTALL
+++ b/INSTALL
@@ -92,7 +92,7 @@ Description
              -  rm(1)
              -  rmdir(1)
 
-          -  For linting man(7) source:
+          -  For linting/building/checking man(7) source:
              -  eqn(1)
              -  grotty(1)
              -  head(1)
@@ -101,7 +101,7 @@ Description
              -  tbl(1)
              -  troff(1) >= 1.23.0 - GNU troff is required.
 
-          -  For linting C source:
+          -  For linting/building C source:
              -  cc(1) - GCC or Clang
              -  clang-tidy(1)
              -  cpplint(1)
@@ -124,10 +124,10 @@ Description
           -  man(1)
           -  groff(1) | mandoc(1)
 
-   Lint (experimental)
-       You can lint both the manual pages, and the example C programs
-       contained in them.  See 'make help' for a list of targets that can be
-       used.
+   Lint & check
+       You can lint and check both the manual pages, and the example C
+       programs contained in them.  See 'make help' for a list of targets that
+       can be used.
 
 Files
    Makefile, lib/install-man.mk, lib/install.mk
diff --git a/Makefile b/Makefile
index 67faeed94..d31d8b710 100644
--- a/Makefile
+++ b/Makefile
@@ -50,7 +50,14 @@ help:
 	$(info	)
 	$(info	clean			Remove $$(builddir))
 	$(info	)
-	$(info	build			Alias for "build-html")
+	$(info	build			Wrapper for "build-catman build-html build-src")
+	$(info	)
+	$(info	build-catman		Build cat pages; alias for "build-catman-grotty")
+	$(info	build-catman-preconv	preconv(1) step of "build-catman")
+	$(info	build-catman-tbl	tbl(1) step of "build-catman")
+	$(info	build-catman-eqn	eqn(1) step of "build-catman")
+	$(info	build-catman-troff	troff(1) step of "build-catman")
+	$(info	build-catman-grotty	grotty(1) step of "build-catman")
 	$(info	)
 	$(info	build-html		Build HTML manual pages)
 	$(info	html			Alias for "build-html")
@@ -70,14 +77,11 @@ help:
 	$(info	lint-man		Wrapper for lint-man-* targets)
 	$(info	lint-man-mandoc		Lint man pages with mandoc(1))
 	$(info	lint-man-tbl		Lint man pages about '\" t' comment for tbl(1))
-	$(info	lint-man-groff		Alias for "lint-man-groff-grep")
-	$(info	lint-man-groff-preconv	Lint man pages with preconv(1))
-	$(info	lint-man-groff-tbl	Lint man pages with tbl(1))
-	$(info	lint-man-groff-eqn	Lint man pages with eqn(1))
-	$(info	lint-man-groff-troff	Lint man pages with troff(1))
-	$(info	lint-man-groff-grotty	Lint man pages with grotty(1))
-	$(info	lint-man-groff-col	Lint man pages with col(1))
-	$(info	lint-man-groff-grep	Lint man pages with grep(1))
+	$(info	)
+	$(info	check			Alias for "check-catman")
+	$(info	check-catman		Check cat pages; alias for "check-catman-grep")
+	$(info	check-catman-col	Filter cat pages with col(1))
+	$(info	check-catman-grep	Check cat pages with grep(1))
 	$(info	)
 	$(info	[un]install		Alias for "[un]install-man")
 	$(info	[un]install-man		Wrapper for [un]install-man* targets)
@@ -109,7 +113,10 @@ help:
 .SECONDEXPANSION:
 
 
+include $(srcdir)/lib/check.mk
+include $(srcdir)/lib/check-catman.mk
 include $(srcdir)/lib/build.mk
+include $(srcdir)/lib/build-catman.mk
 include $(srcdir)/lib/build-html.mk
 include $(srcdir)/lib/build-src.mk
 include $(srcdir)/lib/dist.mk
diff --git a/lib/build-catman.mk b/lib/build-catman.mk
new file mode 100644
index 000000000..f689e0b64
--- /dev/null
+++ b/lib/build-catman.mk
@@ -0,0 +1,112 @@
+########################################################################
+# Copyright (C) 2021 - 2023  Alejandro Colomar <alx@kernel.org>
+# SPDX-License-Identifier:  GPL-3.0-or-later  OR  LGPL-3.0-or-later
+########################################################################
+
+
+ifndef MAKEFILE_BUILD_CATMAN_INCLUDED
+MAKEFILE_BUILD_CATMAN_INCLUDED := 1
+
+
+include $(srcdir)/lib/build.mk
+include $(srcdir)/lib/cmd.mk
+include $(srcdir)/lib/src.mk
+
+
+TMACDIR := $(SYSCONFDIR)/groff/tmac
+
+
+MANWIDTH          ?= 80
+NROFF_LINE_LENGTH := $(shell $(EXPR) $(MANWIDTH) - 2)
+NROFF_OUT_DEVICE  := $(shell $(LOCALE) charmap \
+                             | $(GREP) -i 'utf-*8' >/dev/null \
+                                 && $(ECHO) utf8 \
+                                 || $(ECHO) ascii)
+
+DEFAULT_PRECONVFLAGS :=
+EXTRA_PRECONVFLAGS   :=
+PRECONVFLAGS         := $(DEFAULT_PRECONVFLAGS) $(EXTRA_PRECONVFLAGS)
+PRECONV              := preconv
+
+TBL := tbl
+
+DEFAULT_EQNFLAGS :=
+EXTRA_EQNFLAGS   :=
+EQNFLAGS         := $(DEFAULT_EQNFLAGS) $(EXTRA_EQNFLAGS)
+EQN              := eqn
+
+TMACFILES            := $(shell $(FIND) $(TMACDIR) -not -type d | $(SORT))
+TMACNAMES            := $(basename $(notdir $(TMACFILES)))
+TROFF_CHECKSTYLE_LVL := 3
+DEFAULT_TROFFFLAGS   := -man
+DEFAULT_TROFFFLAGS   += -t
+DEFAULT_TROFFFLAGS   += -M $(TMACDIR)
+DEFAULT_TROFFFLAGS   += $(foreach x,$(TMACNAMES),-m $(x))
+DEFAULT_TROFFFLAGS   += -rCHECKSTYLE=$(TROFF_CHECKSTYLE_LVL)
+DEFAULT_TROFFFLAGS   += -ww
+DEFAULT_TROFFFLAGS   += -rLL=$(NROFF_LINE_LENGTH)n
+EXTRA_TROFFFLAGS     :=
+TROFFFLAGS           := $(DEFAULT_TROFFFLAGS) $(EXTRA_TROFFFLAGS)
+TROFF                := troff
+
+DEFAULT_GROTTYFLAGS := -c
+EXTRA_GROTTYFLAGS   :=
+GROTTYFLAGS         := $(DEFAULT_GROTTYFLAGS) $(EXTRA_GROTTYFLAGS)
+GROTTY              := grotty
+
+
+_MAN_tbl       := $(patsubst $(MANDIR)/%,$(_MANDIR)/%.tbl,$(NONSO_MAN))
+_MAN_eqn       := $(patsubst $(MANDIR)/%,$(_MANDIR)/%.eqn,$(NONSO_MAN))
+_CATMAN_troff  := $(patsubst $(MANDIR)/%,$(_MANDIR)/%.cat.troff,$(NONSO_MAN))
+_CATMAN_grotty := $(patsubst $(MANDIR)/%,$(_MANDIR)/%.cat.grotty,$(NONSO_MAN))
+_CATMAN        := $(patsubst $(MANDIR)/%,$(_MANDIR)/%.cat,$(NONSO_MAN))
+
+
+$(_MAN_tbl): $(_MANDIR)/%.tbl: $(MANDIR)/% | $$(@D)/
+	$(info	PRECONV	$@)
+	$(PRECONV) $(PRECONVFLAGS) $< >$@
+
+$(_MAN_eqn): %.eqn: %.tbl | $$(@D)/
+	$(info	TBL	$@)
+	$(TBL) <$< >$@
+
+$(_CATMAN_troff): %.cat.troff: %.eqn | $$(@D)/
+	$(info	EQN	$@)
+	$(EQN) -T$(NROFF_OUT_DEVICE) $(EQNFLAGS) <$< 2>&1 >$@ \
+	| ( ! $(GREP) ^ )
+
+$(_CATMAN_grotty): %.cat.grotty: %.cat.troff | $$(@D)/
+	$(info	TROFF	$@)
+	$(TROFF) -T$(NROFF_OUT_DEVICE) $(TROFFFLAGS) <$< >$@
+
+$(_CATMAN): %.cat: %.cat.grotty | $$(@D)/
+	$(info	GROTTY	$@)
+	$(GROTTY) $(GROTTYFLAGS) <$< >$@
+
+
+.PHONY: build-catman-preconv
+build-catman-preconv: $(_MAN_tbl)
+	@:
+
+.PHONY: build-catman-tbl
+build-catman-tbl: $(_MAN_eqn)
+	@:
+
+.PHONY: build-catman-eqn
+build-catman-eqn: $(_CATMAN_troff)
+	@:
+
+.PHONY: build-catman-troff
+build-catman-troff: $(_CATMAN_grotty)
+	@:
+
+.PHONY: build-catman-grotty
+build-catman-grotty: $(_CATMAN)
+	@:
+
+.PHONY: build-catman
+build-catman: build-catman-grotty
+	@:
+
+
+endif  # MAKEFILE_BUILD_CATMAN_INCLUDED
diff --git a/lib/build-src.mk b/lib/build-src.mk
index 237d663b9..410af3abd 100644
--- a/lib/build-src.mk
+++ b/lib/build-src.mk
@@ -10,7 +10,6 @@ MAKEFILE_BUILD_SRC_INCLUDED := 1
 
 include $(srcdir)/lib/build.mk
 include $(srcdir)/lib/cmd.mk
-include $(srcdir)/lib/lint.mk
 include $(srcdir)/lib/src.mk
 include $(srcdir)/lib/verbose.mk
 
@@ -56,7 +55,7 @@ LD  := $(CC) $(CFLAGS)
 MAN := man
 
 
-_SRCPAGEDIRS   := $(patsubst $(MANDIR)/%,$(_SRCDIR)/%.d,$(LINTMAN))
+_SRCPAGEDIRS   := $(patsubst $(MANDIR)/%,$(_SRCDIR)/%.d,$(NONSO_MAN))
 
 _UNITS_src_src := $(patsubst $(MANDIR)/%,$(_SRCDIR)/%,$(shell \
 		$(FIND) $(MANDIR)/man*/ -type f \
diff --git a/lib/build.mk b/lib/build.mk
index 71a76ba10..aab086981 100644
--- a/lib/build.mk
+++ b/lib/build.mk
@@ -8,21 +8,31 @@ ifndef MAKEFILE_BUILD_INCLUDED
 MAKEFILE_BUILD_INCLUDED := 1
 
 
+include $(srcdir)/lib/cmd.mk
 include $(srcdir)/lib/src.mk
 
 
 builddir := .tmp
 
+SYSCONFDIR := $(srcdir)/etc
+
 _SRCDIR := $(builddir)/src
+_MANDIR := $(builddir)/man
 
 
 MKDIR := mkdir -p
 RM    := rm
 
 
+NONSO_MAN := $(shell $(FIND) $(MANDIR)/man*/ -type f \
+		| $(GREP) '$(MANEXT)' \
+		| $(XARGS) $(GREP) -l '^\.TH ' \
+		| $(SORT))
+_MANDIRS := $(patsubst $(MANDIR)/%,$(_MANDIR)/%/,$(MANDIRS))
 _SRCDIRS := $(patsubst $(MANDIR)/%,$(_SRCDIR)/%/,$(MANDIRS))
 
 
+$(_MANDIRS): %/: | $$(dir %) $(_MANDIR)/
 $(_SRCDIRS): %/: | $$(dir %) $(_SRCDIR)/
 
 
@@ -32,7 +42,7 @@ $(builddir)/%/:
 
 
 .PHONY: build
-build: build-html
+build: build-catman build-html build-src
 	@:
 
 .PHONY: clean
diff --git a/lib/check-catman.mk b/lib/check-catman.mk
new file mode 100644
index 000000000..5e8718041
--- /dev/null
+++ b/lib/check-catman.mk
@@ -0,0 +1,53 @@
+########################################################################
+# Copyright (C) 2021 - 2023 Alejandro Colomar <alx@kernel.org>
+# SPDX-License-Identifier:  GPL-3.0-or-later  OR  LGPL-3.0-or-later
+########################################################################
+
+
+ifndef MAKEFILE_CHECK_CATMAN_INCLUDED
+MAKEFILE_CHECK_CATMAN_INCLUDED := 1
+
+
+include $(srcdir)/lib/cmd.mk
+include $(srcdir)/lib/build.mk
+include $(srcdir)/lib/build-catman.mk
+include $(srcdir)/lib/check.mk
+include $(srcdir)/lib/src.mk
+
+
+DEFAULT_COLFLAGS := -b
+DEFAULT_COLFLAGS += -p
+DEFAULT_COLFLAGS += -x
+EXTRA_COLFLAGS   :=
+COLFLAGS         := $(DEFAULT_COLFLAGS) $(EXTRA_COLFLAGS)
+COL              := col
+
+
+_CHECK_catman_grep := $(patsubst $(MANDIR)/%,$(_MANDIR)/%.cat.grep,$(NONSO_MAN))
+_CHECK_catman := $(patsubst $(MANDIR)/%,$(_MANDIR)/%.check-catman.touch,$(NONSO_MAN))
+
+
+$(_CHECK_catman_grep): %.grep: % | $$(@D)/
+	$(info	COL	$@)
+	$(COL) $(COLFLAGS) <$< >$@
+
+$(_CHECK_catman): %.check-catman.touch: %.cat.grep | $$(@D)/
+	$(info	GREP	$@)
+	! $(GREP) -n '.\{$(MANWIDTH)\}.' $< /dev/null >&2
+	touch $@
+
+
+.PHONY: check-catman-col
+check-catman-col: $(_CHECK_catman_grep)
+	@:
+
+.PHONY: check-catman-grep
+check-catman-grep: $(_CHECK_catman)
+	@:
+
+.PHONY: check-catman
+check-catman: check-catman-grep
+	@:
+
+
+endif  # MAKEFILE_CHECK_CATMAN_INCLUDED
diff --git a/lib/check.mk b/lib/check.mk
new file mode 100644
index 000000000..90190619e
--- /dev/null
+++ b/lib/check.mk
@@ -0,0 +1,19 @@
+########################################################################
+# Copyright (C) 2023  Alejandro Colomar <alx@kernel.org>
+# SPDX-License-Identifier:  GPL-3.0-or-later  OR  LGPL-3.0-or-later
+########################################################################
+
+
+ifndef MAKEFILE_CHECK_INCLUDED
+MAKEFILE_CHECK_INCLUDED := 1
+
+
+check := check-catman
+
+
+.PHONY: check
+check: $(check)
+	@:
+
+
+endif  # MAKEFILE_CHECK_INCLUDED
diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index 0dc2c4735..bae8ee27b 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -9,52 +9,11 @@ MAKEFILE_LINT_MAN_INCLUDED := 1
 
 
 include $(srcdir)/lib/cmd.mk
+include $(srcdir)/lib/build.mk
 include $(srcdir)/lib/lint.mk
 include $(srcdir)/lib/src.mk
 
 
-TMACDIR := $(SYSCONFDIR)/groff/tmac
-
-
-MANWIDTH          ?= 80
-TROFF_LINE_LENGTH := $(shell $(EXPR) $(MANWIDTH) - 2)
-TROFF_OUT_DEVICE  := $(shell $(LOCALE) charmap \
-                             | $(GREP) -i 'utf-*8' >/dev/null \
-                                 && $(ECHO) utf8 \
-                                 || $(ECHO) ascii)
-
-DEFAULT_PRECONVFLAGS :=
-EXTRA_PRECONVFLAGS   :=
-PRECONVFLAGS         := $(DEFAULT_PRECONVFLAGS) $(EXTRA_PRECONVFLAGS)
-PRECONV              := preconv
-
-TBL := tbl
-
-DEFAULT_EQNFLAGS := -T$(TROFF_OUT_DEVICE)
-EXTRA_EQNFLAGS   :=
-EQNFLAGS         := $(DEFAULT_EQNFLAGS) $(EXTRA_EQNFLAGS)
-EQN              := eqn
-
-TMACFILES            := $(shell $(FIND) $(TMACDIR) -not -type d | $(SORT))
-TMACNAMES            := $(basename $(notdir $(TMACFILES)))
-TROFF_CHECKSTYLE_LVL := 3
-DEFAULT_TROFFFLAGS   := -man
-DEFAULT_TROFFFLAGS   += -t
-DEFAULT_TROFFFLAGS   += -M $(TMACDIR)
-DEFAULT_TROFFFLAGS   += $(foreach x,$(TMACNAMES),-m $(x))
-DEFAULT_TROFFFLAGS   += -rCHECKSTYLE=$(TROFF_CHECKSTYLE_LVL)
-DEFAULT_TROFFFLAGS   += -ww
-DEFAULT_TROFFFLAGS   += -T$(TROFF_OUT_DEVICE)
-DEFAULT_TROFFFLAGS   += -rLL=$(TROFF_LINE_LENGTH)n
-EXTRA_TROFFFLAGS     :=
-TROFFFLAGS           := $(DEFAULT_TROFFFLAGS) $(EXTRA_TROFFFLAGS)
-TROFF                := troff
-
-DEFAULT_GROTTYFLAGS := -c
-EXTRA_GROTTYFLAGS   :=
-GROTTYFLAGS         := $(DEFAULT_GROTTYFLAGS) $(EXTRA_GROTTYFLAGS)
-GROTTY              := grotty
-
 DEFAULT_COLFLAGS := -b
 DEFAULT_COLFLAGS += -p
 DEFAULT_COLFLAGS += -x
@@ -69,16 +28,11 @@ MANDOCFLAGS         := $(DEFAULT_MANDOCFLAGS) $(EXTRA_MANDOCFLAGS)
 MANDOC              := mandoc
 
 
-_LINT_man_groff_tbl    :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.tbl,$(LINTMAN))
-_LINT_man_groff_eqn    :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.eqn,$(LINTMAN))
-_LINT_man_groff_troff  :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.troff,$(LINTMAN))
-_LINT_man_groff_grotty :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.grotty,$(LINTMAN))
-_LINT_man_groff_col    :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.col,$(LINTMAN))
-_LINT_man_groff_grep   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.grep,$(LINTMAN))
+_LINT_man_groff_grep :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.grep,$(NONSO_MAN))
 
-_LINT_man_groff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.groff.touch,$(LINTMAN))
-_LINT_man_mandoc:=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.mandoc.touch,$(LINTMAN))
-_LINT_man_tbl   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.tbl.touch,$(LINTMAN))
+_LINT_man_groff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.groff.touch,$(NONSO_MAN))
+_LINT_man_mandoc:=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.mandoc.touch,$(NONSO_MAN))
+_LINT_man_tbl   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.tbl.touch,$(NONSO_MAN))
 
 
 linters_man := groff mandoc tbl
diff --git a/lib/lint.mk b/lib/lint.mk
index f287f973c..347e8d12c 100644
--- a/lib/lint.mk
+++ b/lib/lint.mk
@@ -9,19 +9,12 @@ MAKEFILE_LINT_INCLUDED := 1
 
 
 include $(srcdir)/lib/build.mk
-include $(srcdir)/lib/cmd.mk
 include $(srcdir)/lib/src.mk
 
 
-SYSCONFDIR := $(srcdir)/etc
-
 _LINTDIR   := $(builddir)/lint
 
 
-LINTMAN   := $(shell $(FIND) $(MANDIR)/man*/ -type f \
-		| $(GREP) '$(MANEXT)' \
-		| $(XARGS) $(GREP) -l '^\.TH ' \
-		| $(SORT))
 _LINTDIRS := $(patsubst $(MANDIR)/%,$(_LINTDIR)/%/,$(MANDIRS))
 
 
-- 
2.39.2

