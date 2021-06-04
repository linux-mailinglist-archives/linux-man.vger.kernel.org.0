Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 270CB39C1B0
	for <lists+linux-man@lfdr.de>; Fri,  4 Jun 2021 22:54:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229982AbhFDU41 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Jun 2021 16:56:27 -0400
Received: from mail-wr1-f49.google.com ([209.85.221.49]:38875 "EHLO
        mail-wr1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229906AbhFDU40 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Jun 2021 16:56:26 -0400
Received: by mail-wr1-f49.google.com with SMTP id c9so1841953wrt.5
        for <linux-man@vger.kernel.org>; Fri, 04 Jun 2021 13:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4lXRhHJTSIa4BIYpFyO5kEq6CDCYPaqNuGtoadbTeYw=;
        b=RA5vsJ1PHyTUnZZp2M1eu5a3m+ws6Ue245uwxSVtq+KGPWu7fEabRSbx/6K3ldUi+0
         kF+VId2uOOvjVG/7lJLK1pwYrtT6FBDbtJ9B0h7elPKshw+YOnryox50UJHJW3n4gPoM
         g8qdabhGe97pUC8QFCTpJz+8jIxxiWbT19yIaoCnTqc2jQokqbUAol/djIOAsqFlt2AQ
         lJ83sb+LfVGplOieJhshCsPdQ6QZ2goBg74Iuoo7+0ftZ2EDyYtVjxQ32V516bk5Jwvv
         qez+o6K+ENlqisiSJo2Xn8EAIKzzHPPFbMQXbB6a3uWaHPB51n/ccMAbKJ/u5mt3wb9j
         XySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4lXRhHJTSIa4BIYpFyO5kEq6CDCYPaqNuGtoadbTeYw=;
        b=EsO5Zp6yW8aiMo0hwM6y68WzX56KCRJmA8tV/639boOEtwP4doO2eoZ7sVFi56JZzh
         9hlk650tpG5k8GeJEvBxcm9YzRz9J5IfEp0N3CESgfClzlXPmxmOwnRdArUnSqyU82/R
         kQ/zL8uSVOm/cSi3ifKGZ/alXpq+lnRw2rHD+1MUX84cmt+AwaX+z+BXmUv9lRF4wnGe
         Gn6rxtHWf3n83QzXzfeKfYTEbvX5/Vwg/CqU0/+w+yo4TTKCsuRuh15zzkzMSu444fjf
         vIXQul6zJOHcGdjrD/otxDU0jt6Ig7A8Ug9x5W79rqHwJsGMTDDbWAEcg/xpV91mG9Ar
         Ek3g==
X-Gm-Message-State: AOAM532WySwNuUiaR27JnwjrYZDiUzwIFeI9gDat/903+VNityh5YwJD
        c/s+uirEmwYECP1fquqd6u4=
X-Google-Smtp-Source: ABdhPJxIIRkbjxDCj9LVTxwKsg3vcdHNjzqkMn++DhWBV9cLi+2+86jx6F9RE+eG/AdJ47UTbuMdmA==
X-Received: by 2002:adf:a1d2:: with SMTP id v18mr5563687wrv.280.1622840002870;
        Fri, 04 Jun 2021 13:53:22 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id p10sm7342466wrr.58.2021.06.04.13.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 13:53:22 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH] Makefile, README: Break installation into a target for each mandir
Date:   Fri,  4 Jun 2021 22:53:19 +0200
Message-Id: <20210604205319.154059-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Instead of having a monolithic 'make install', break it into
multiple targets such as 'make install-man3'.  This simplifies
packaging, for example in Debian, where they break this project
into several packages: 'manpages' and 'manpages-dev', each
containinng different mandirs.

The above allows for multithread installation: 'make -j8'

Also, don't overwrite files that don't need to be overwritten, by
having a target for files, which makes use of make's timestamp
comparison.

This allows much faster installation times (although, it's a bit
slower to do a full clean install).

Now that the installation overwrites target files when needed,
'make [all]' is aliased to 'make install', as an uninstall is
almost never needed (unless you specifically want to test a clean
install, in which case you can run 'make uninstall; make install').

Also,
I replaced = by ?=, because eventhough user input overrides any of
those, I don't trust make to not start a subshell for every
submake, in the cases where I invoke a shell.  I want the shell to
be invoked only in the main make process in variable assignments.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 Makefile | 217 +++++++++++++++++++++++++++++++++++++++++++------------
 README   |   8 +-
 2 files changed, 176 insertions(+), 49 deletions(-)

diff --git a/Makefile b/Makefile
index 78d953f3c..159b2fe78 100644
--- a/Makefile
+++ b/Makefile
@@ -1,28 +1,178 @@
 SHELL = /bin/bash -Eeuo pipefail
 
-# Do not print "Entering directory ..."
 MAKEFLAGS += --no-print-directory
+MAKEFLAGS += --silent
+
+htmlbuilddir ?= $(CURDIR)/.html
+HTOPTS ?=
+
+DESTDIR ?=
+prefix ?= /usr/local
+datarootdir ?= $(prefix)/share
+docdir ?= $(datarootdir)/doc
+MANDIR ?= $(CURDIR)
+mandir ?= $(datarootdir)/man
+MAN1DIR ?= $(CURDIR)/man1
+MAN2DIR ?= $(CURDIR)/man2
+MAN3DIR ?= $(CURDIR)/man3
+MAN4DIR ?= $(CURDIR)/man4
+MAN5DIR ?= $(CURDIR)/man5
+MAN6DIR ?= $(CURDIR)/man6
+MAN7DIR ?= $(CURDIR)/man7
+MAN8DIR ?= $(CURDIR)/man8
+man1dir ?= $(mandir)/man1
+man2dir ?= $(mandir)/man2
+man3dir ?= $(mandir)/man3
+man4dir ?= $(mandir)/man4
+man5dir ?= $(mandir)/man5
+man6dir ?= $(mandir)/man6
+man7dir ?= $(mandir)/man7
+man8dir ?= $(mandir)/man8
+htmldir ?= $(docdir)
+htmldir_ ?= $(htmldir)/man
+htmlext ?= .html
+
+INSTALL ?= install
+INSTALL_DATA ?= $(INSTALL) -m 644
+INSTALL_DIR ?= $(INSTALL) -m 755 -d
+RMDIR ?= rmdir --ignore-fail-on-non-empty
 
-htmlbuilddir = $(CURDIR)/.html
-HTOPTS =
 
-DESTDIR =
-prefix = /usr/local
-datarootdir = $(prefix)/share
-docdir = $(datarootdir)/doc
-mandir = $(datarootdir)/man
-htmldir = $(docdir)
-htmldir_ = $(htmldir)/man
-htmlext = .html
+.PHONY: all
+all: install
 
-INSTALL = install
-INSTALL_DATA = $(INSTALL) -m 644
-INSTALL_DIR = $(INSTALL) -m 755 -d
 
-.PHONY: all
-all:
-	$(MAKE) uninstall;
-	$(MAKE) install;
+%/:
+	@echo '	INSTALL	$@';
+	$(INSTALL_DIR) $@;
+
+
+.PHONY: install
+install: install-man
+
+.PHONY: uninstall remove
+uninstall remove: uninstall-man
+
+.PHONY: installdirs
+installdirs: installdirs-man
+installdirs: installdirs-man1
+installdirs: installdirs-man2
+installdirs: installdirs-man3
+installdirs: installdirs-man4
+installdirs: installdirs-man5
+installdirs: installdirs-man6
+installdirs: installdirs-man7
+installdirs: installdirs-man8
+
+.PHONY: clean
+clean:
+	find man?/ -type f \
+	|while read f; do \
+		rm -f "$(htmlbuilddir)/$$f".*; \
+	done;
+
+################################################################################
+# man
+
+MAN1PAGES ?= $(shell find $(MAN1DIR) -type f | grep '$(man1ext)$$')
+MAN2PAGES ?= $(shell find $(MAN2DIR) -type f | grep '$(man2ext)$$')
+MAN3PAGES ?= $(shell find $(MAN3DIR) -type f | grep '$(man3ext)$$')
+MAN4PAGES ?= $(shell find $(MAN4DIR) -type f | grep '$(man4ext)$$')
+MAN5PAGES ?= $(shell find $(MAN5DIR) -type f | grep '$(man5ext)$$')
+MAN6PAGES ?= $(shell find $(MAN6DIR) -type f | grep '$(man6ext)$$')
+MAN7PAGES ?= $(shell find $(MAN7DIR) -type f | grep '$(man7ext)$$')
+MAN8PAGES ?= $(shell find $(MAN8DIR) -type f | grep '$(man8ext)$$')
+MANPAGES  ?= $(MAN1PAGES) \
+            $(MAN2PAGES) \
+            $(MAN3PAGES) \
+            $(MAN4PAGES) \
+            $(MAN5PAGES) \
+            $(MAN6PAGES) \
+            $(MAN7PAGES) \
+            $(MAN8PAGES)
+man1pages ?= $(addprefix $(DESTDIR)$(man1dir)/,$(notdir $(MAN1PAGES)))
+man2pages ?= $(addprefix $(DESTDIR)$(man2dir)/,$(notdir $(MAN2PAGES)))
+man3pages ?= $(addprefix $(DESTDIR)$(man3dir)/,$(notdir $(MAN3PAGES)))
+man4pages ?= $(addprefix $(DESTDIR)$(man4dir)/,$(notdir $(MAN4PAGES)))
+man5pages ?= $(addprefix $(DESTDIR)$(man5dir)/,$(notdir $(MAN5PAGES)))
+man6pages ?= $(addprefix $(DESTDIR)$(man6dir)/,$(notdir $(MAN6PAGES)))
+man7pages ?= $(addprefix $(DESTDIR)$(man7dir)/,$(notdir $(MAN7PAGES)))
+man8pages ?= $(addprefix $(DESTDIR)$(man8dir)/,$(notdir $(MAN8PAGES)))
+manpages  ?= $(man1pages) \
+            $(man2pages) \
+            $(man3pages) \
+            $(man4pages) \
+            $(man5pages) \
+            $(man6pages) \
+            $(man7pages) \
+            $(man8pages)
+
+
+$(manpages): $(DESTDIR)$(mandir)/%: $(MANDIR)/%
+	@echo '	INSTALL	$@';
+	$(INSTALL_DATA) -T "$(MANDIR)/$*" $@;
+
+
+INSTALLDIRS_MANN ?= installdirs-man1 \
+                    installdirs-man2 \
+                    installdirs-man3 \
+                    installdirs-man4 \
+                    installdirs-man5 \
+                    installdirs-man6 \
+                    installdirs-man7 \
+                    installdirs-man8
+.PHONY: $(INSTALLDIRS_MANN)
+$(INSTALLDIRS_MANN): installdirs-%: $(DESTDIR)$(mandir)/%/ | installdirs-man
+	@:;
+.PHONY: installdirs-man
+installdirs-man:  $(DESTDIR)$(mandir)/
+	@:;
+
+INSTALL_MANN ?= install-man1 \
+                install-man2 \
+                install-man3 \
+                install-man4 \
+                install-man5 \
+                install-man6 \
+                install-man7 \
+                install-man8
+.PHONY: install-man
+install-man: $(INSTALL_MANN) | $(INSTALLDIRS_MANN)
+	@:;
+
+.PHONY: $(INSTALL_MANN)
+$(INSTALL_MANN): install-%: | installdirs-%
+	@echo '	INSTALL    $(DESTDIR)$(mandir)/$*/';
+	find $(MANDIR)/$*/ -type f \
+	| grep '.[0-9]$$' \
+	| sed 's,$(MANDIR)/$*/,$(DESTDIR)$(mandir)/$*/,' \
+	| xargs $(MAKE);
+
+UNINSTALL_MANN ?= uninstall-man1 \
+                  uninstall-man2 \
+                  uninstall-man3 \
+                  uninstall-man4 \
+                  uninstall-man5 \
+                  uninstall-man6 \
+                  uninstall-man7 \
+                  uninstall-man8 
+
+.PHONY: $(UNINSTALL_MANN)
+$(UNINSTALL_MANN): uninstall-%:
+	@echo '	UNINSTALL  $(DESTDIR)$(mandir)/$*/';
+	find $(MANDIR)/$*/ -type f \
+	| grep '.[0-9]$$' \
+	| sed 's,$(MANDIR)/$*/,$(DESTDIR)$(mandir)/$*/,' \
+	| xargs rm -f;
+	$(RMDIR) $(DESTDIR)$(mandir)/$*/ 2>/dev/null ||:;
+.PHONY: uninstall-man
+uninstall-man: $(UNINSTALL_MANN)
+	@echo '	UNINSTALL	$(DESTDIR)$(mandir)/';
+	$(RMDIR) $(DESTDIR)$(mandir)/ ||:;
+
+
+################################################################################
+# html
 
 # Use with
 #  make HTOPTS=whatever html
@@ -58,28 +208,6 @@ installdirs-html:
 		$(INSTALL_DIR) "$(DESTDIR)$(htmldir_)/$$d"; \
 	done;
 
-.PHONY: install
-install: | installdirs
-	find man?/ -type f \
-	|while read f; do \
-		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(mandir)/$$f"; \
-	done;
-
-.PHONY: installdirs
-installdirs:
-	find man?/ -type d \
-	|while read d; do \
-		$(INSTALL_DIR) "$(DESTDIR)$(mandir)/$$d"; \
-	done;
-
-.PHONY: uninstall remove
-uninstall remove:
-	find man?/ -type f \
-	|while read f; do \
-		rm -f "$(DESTDIR)$(mandir)/$$f"; \
-		rm -f "$(DESTDIR)$(mandir)/$$f".*; \
-	done;
-
 .PHONY: uninstall-html
 uninstall-html:
 	find man?/ -type f \
@@ -87,12 +215,9 @@ uninstall-html:
 		rm -f "$(DESTDIR)$(htmldir_)/$$f".*; \
 	done;
 
-.PHONY: clean
-clean:
-	find man?/ -type f \
-	|while read f; do \
-		rm -f "$(htmlbuilddir)/$$f".*; \
-	done;
+
+################################################################################
+# tests
 
 # Check if groff reports warnings (may be words of sentences not displayed)
 # from https://lintian.debian.org/tags/groff-message.html
diff --git a/README b/README
index 6598170c0..b8c7d6edc 100644
--- a/README
+++ b/README
@@ -17,7 +17,8 @@ For further information on contributing, see the CONTRIBUTING file.
 
 Installing and uninstalling
 ===========================
-"make install" will copy these man pages to /usr/local/share/man/man[1-8].
+"make", "make all", or "make install" will copy these man pages to
+/usr/local/share/man/man[1-8].
 
 To install to a path different from /usr/local, use
 "make install prefix=/install/path".
@@ -26,8 +27,9 @@ To install to a path different from /usr/local, use
 distribution from its destination.  Use with caution, and remember to
 use "prefix" if desired, as with the "install" target.
 
-"make" or "make all" will perform "make uninstall" followed by "make
-install".
+To install only a specific man section (mandir) such as man3, use
+"make install-man3".  Similar syntax can be used to uninstall a
+specific man section, such as man7: "make uninstall-man7".
 
 Copyrights
 ==========
-- 
2.31.1

