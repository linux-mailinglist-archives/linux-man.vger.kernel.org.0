Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4883E6EEB24
	for <lists+linux-man@lfdr.de>; Wed, 26 Apr 2023 01:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237523AbjDYX4M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Apr 2023 19:56:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237521AbjDYX4L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Apr 2023 19:56:11 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8E5013F8B
        for <linux-man@vger.kernel.org>; Tue, 25 Apr 2023 16:56:09 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f193ca059bso34022735e9.3
        for <linux-man@vger.kernel.org>; Tue, 25 Apr 2023 16:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682466968; x=1685058968;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Po4CIP/KzVukQE1dDX510x57g4QUh/ohAqn7quVOJKI=;
        b=pOuBD0IuFFCAoPmu0pT5+U3ZyOKCYJZkP48UcVYgMc6/Q2JH8Py+67eDyYxL7q9ySK
         +FfY4izjgRAb1B0jKscHpaowMZHvCsg4SpiCjIFO0yiexwaDWXdO6kNTu4mKZaVdEcTS
         nX89yZ2iMhjBZzF/2wK3jdDzRSkgSN9/CnZvF14G7UZmsffZsu3++o1UfxbvAFb4Y59J
         vjoLf/iSsnrpeAApdNpSynJ7MBX6m3FjMIwtgUDGWaSRbBD+GD8FItBNNR1Tj8tWn0hB
         FFkKj4/cMxyk/3TUIwRMgXwmT60m5gZ7LelIQ3bQbCHeCATT4rPw2rT0Ap2L2pKqv54a
         dRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682466968; x=1685058968;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Po4CIP/KzVukQE1dDX510x57g4QUh/ohAqn7quVOJKI=;
        b=FPUxSgbBsCwLRTA7w1tTJDAIJvGyCHxvyRYYNKIvDy8ZyrgLfWDjvN5agtnChpKmWx
         3JcwueQGGVC1lhEJ/OO+XKnLhL8cNDFyYMB7NskRoMrU48ge3hevqJi0r/36My25d3WY
         Yomxq3IYIIGgqzWYu81aOZ0kUaUH1UN16VaLMpHbP9FfnhLS55uj1Qd2g8XdMT3K3Aio
         NXfWu7QIeBqLSbZvZ8YS4zCoKMwogizyEXWIUG34CPsj8h7T+KWWu8BzVFIKenOTXc6Q
         C5Gdo5L3zi2tMiNIOYLHBhTTR8tfJmCzaLc67fFH/K9OKPvJTiCtrLte1YMrnqsy7Q29
         +sxw==
X-Gm-Message-State: AAQBX9frLQK/OZzkjHbL7hI+62f/SiUikn8OrbyAI9SlnEhnl17PZi5W
        t9lnw7LvsVwgVyVYsFwbVDv/NmXVDrw=
X-Google-Smtp-Source: AKy350a6A0JJHUcMUrb7agIOSjUpwXBIkMlO21wGYK955jkwiEtYzw1y2U+miale3ZdxaqI/Clr8XQ==
X-Received: by 2002:adf:fdcc:0:b0:2fa:14c8:3f22 with SMTP id i12-20020adffdcc000000b002fa14c83f22mr12738624wrs.30.1682466968182;
        Tue, 25 Apr 2023 16:56:08 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id d9-20020adfe889000000b00303b72946b9sm11416826wrm.50.2023.04.25.16.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Apr 2023 16:56:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, GNU Make <bug-make@gnu.org>
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] *.mk: Handle files with ':' in their pathnames
Date:   Wed, 26 Apr 2023 01:56:02 +0200
Message-Id: <20230425235602.139782-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Since make(1) uses ':' as a special character in rules, it needs to be
handled carefully.  A way to make it work is to escape it with '\:'.  We
can use sed(1) to do that right when we get the pathnames.  The only
problem with ':' is in rules' targets and prerequisites: everywhere else
it's fine; so let's discuss what needs to be done in those places:

-  In the targets, it's as easy as escaping.

-  In prerequisites, we can't second-expand variables containing such
   pathnames, as the '\' would not be used by make(1) to escape the ':',
   but it would be interpreted as part of the pathname.  This means we
   need to expand rules written using second expansion into several
   rules that only expand their variables once.

-  $(wildcard ...) also performs the escape, so after using it the
   pathnames are not escaped.  If we used those variables in targets, we
   would need to escape the ':'s again, but since we don't we can skip
   that.  The trick to make this work is to second-expand these
   variables.

Link: <https://stackoverflow.com/a/76096683/6872717>
Cc: GNU Make <bug-make@gnu.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

Some man pages use ':' (or to be more precise, they use '::') in their
file names.  An example is Perl (3pm) pages.  It's also conceivable that
C++ manual pages (if somebody writes them) would use these characters,
as that language also uses '::' in identifiers (for namespaces).

I want the Linux man-pages' build system to be usable with all manual
pages that exist in a typical Unix system, so that all the linting
capabilities that it supports can be used easily in pages from other
projects.

So, I tested it by copying the makefiles into my system's /usr/share/man
and run `make lint check` there, to see what would happen.  I found this
issue, which is why I'm solving it now.  Apart from this issue, all
looked good (except that I was blown by the number of warnings that the
linters gave on the pages, but that is tangent to this).

I'm CCing GNU Make, since colons are a delicate thing with Makefiles,
and I'd like confirmation from Make's maintainers that this patch is the
right approach.

Cheers,
Alex

 share/mk/build/_.mk      |  6 ++++--
 share/mk/build/src.mk    |  3 ++-
 share/mk/dist.mk         |  4 +++-
 share/mk/install/man.mk  | 26 ++++++++++++++++++++++++--
 share/mk/lint/man/man.mk |  6 ++++--
 share/mk/src.mk          |  3 ++-
 6 files changed, 39 insertions(+), 9 deletions(-)

diff --git a/share/mk/build/_.mk b/share/mk/build/_.mk
index a02301ff1..6cc820073 100644
--- a/share/mk/build/_.mk
+++ b/share/mk/build/_.mk
@@ -26,11 +26,13 @@ RM    := rm
 NONSO_MAN := $(shell $(FIND) $(MANDIR)/man*/ -type f \
 		| $(GREP) '$(MANEXT)' \
 		| $(XARGS) $(GREP) -l '^\.TH ' \
-		| $(SORT))
+		| $(SORT) \
+		| $(SED) 's,:,\\:,g')
 NONSO_MDOC := $(shell $(FIND) $(MANDIR)/man*/ -type f \
 		| $(GREP) '$(MANEXT)' \
 		| $(XARGS) $(GREP) -l '^\.Dt ' \
-		| $(SORT))
+		| $(SORT) \
+		| $(SED) 's,:,\\:,g')
 
 
 $(builddir)/%/:
diff --git a/share/mk/build/src.mk b/share/mk/build/src.mk
index fcee7fa43..4da142a74 100644
--- a/share/mk/build/src.mk
+++ b/share/mk/build/src.mk
@@ -62,7 +62,8 @@ _UNITS_src_src := $(patsubst $(MANDIR)/%,$(_MANDIR)/%,$(shell \
 		| $(XARGS) $(GREP) -H '^\.\\" SRC BEGIN ' \
 		| $(SED) 's,:\.\\" SRC BEGIN (,.d/,' \
 		| $(SED) 's/)//' \
-		| $(SORT)))
+		| $(SORT) \
+		| $(SED) 's,:,\\:,g'))
 _UNITS_src_h   := $(filter %.h,$(_UNITS_src_src))
 _UNITS_src_c   := $(filter %.c,$(_UNITS_src_src))
 _UNITS_src_o   := $(patsubst %.c,%.o,$(_UNITS_src_c))
diff --git a/share/mk/dist.mk b/share/mk/dist.mk
index da76e7bf3..90e2870e5 100644
--- a/share/mk/dist.mk
+++ b/share/mk/dist.mk
@@ -27,7 +27,9 @@ EXTRA_TARFLAGS   :=
 TARFLAGS         := $(DEFAULT_TARFLAGS) $(EXTRA_TARFLAGS)
 
 
-DISTFILES   := $(shell $(GIT) ls-files $(HIDE_ERR) | $(SED) 's,^,$(srcdir)/,')
+DISTFILES   := $(shell $(GIT) ls-files $(HIDE_ERR) \
+			| $(SED) 's,^,$(srcdir)/,' \
+			| $(SED) 's,:,\\:,g')
 _DISTFILES  := $(patsubst $(srcdir)/%,$(_DISTDIR)/%,$(DISTFILES))
 _DISTPAGES  := $(filter     $(_DISTDIR)/man%,$(_DISTFILES))
 _DISTOTHERS := $(filter-out $(_DISTDIR)/man%,$(_DISTFILES))
diff --git a/share/mk/install/man.mk b/share/mk/install/man.mk
index f1043a9d6..caafe5e09 100644
--- a/share/mk/install/man.mk
+++ b/share/mk/install/man.mk
@@ -191,8 +191,30 @@ $(_mandirs_rmdir): $(_mandir)/man%/-rmdir: $$(_man%pages_rm) FORCE
 $(_mandir_rmdir): $(uninstall_manX) FORCE
 
 
-.PHONY: $(install_manX)
-$(install_manX): install-man%: $$(_man%pages);
+.PHONY: install-man1
+install-man1:      $(_man1pages);
+.PHONY: install-man2
+install-man2:      $(_man2pages);
+.PHONY: install-man2type
+install-man2type:  $(_man2typepages);
+.PHONY: install-man3
+install-man3:      $(_man3pages);
+.PHONY: install-man3const
+install-man3const: $(_man3constpages);
+.PHONY: install-man3head
+install-man3head:  $(_man3headpages);
+.PHONY: install-man3type
+install-man3type:  $(_man3typepages);
+.PHONY: install-man4
+install-man4:      $(_man4pages);
+.PHONY: install-man5
+install-man5:      $(_man5pages);
+.PHONY: install-man6
+install-man6:      $(_man6pages);
+.PHONY: install-man7
+install-man7:      $(_man7pages);
+.PHONY: install-man8
+install-man8:      $(_man8pages);
 
 .PHONY: install-man
 install-man: $(install_manX);
diff --git a/share/mk/lint/man/man.mk b/share/mk/lint/man/man.mk
index 4b3d1db8b..a3f2ae960 100644
--- a/share/mk/lint/man/man.mk
+++ b/share/mk/lint/man/man.mk
@@ -60,8 +60,10 @@ $(_LINT_man_tbl): $(_MANDIR)/%.lint-man.tbl.touch: $(MANDIR)/% | $$(@D)/
 	touch $@
 
 
-.PHONY: $(lint_man)
-$(lint_man): lint-man-%: $$(_LINT_man_%);
+.PHONY: lint-man-mandoc
+lint-man-mandoc: $(_LINT_man_mandoc);
+.PHONY: lint-man-tbl
+lint-man-tbl:    $(_LINT_man_tbl);
 
 .PHONY: lint-man
 lint-man: $(lint_man);
diff --git a/share/mk/src.mk b/share/mk/src.mk
index 256b6ca85..84ebcb97f 100644
--- a/share/mk/src.mk
+++ b/share/mk/src.mk
@@ -17,7 +17,8 @@ MANEXT := \.[0-9]\w*$
 
 MANPAGES := $(shell $(FIND) $(MANDIR)/man*/ -type f \
 		| $(GREP) '$(MANEXT)' \
-		| $(SORT))
+		| $(SORT) \
+		| $(SED) 's,:,\\:,g')
 MANDIRS  := $(shell $(FIND) $(MANDIR)/man* -type d \
 		| $(SORT))
 
-- 
2.40.0

