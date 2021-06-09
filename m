Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FF923A1B6A
	for <lists+linux-man@lfdr.de>; Wed,  9 Jun 2021 19:02:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230151AbhFIREV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 13:04:21 -0400
Received: from mail-wr1-f43.google.com ([209.85.221.43]:44730 "EHLO
        mail-wr1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229782AbhFIRET (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 13:04:19 -0400
Received: by mail-wr1-f43.google.com with SMTP id f2so26239790wri.11
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 10:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8BfFumu8n3JEPzVgygne2nHkYeqPWSyCgKz8n2n5dpI=;
        b=YkeO3d/mYyhGX9210gWszIhI7pVjCC/O/UYQE/bBq/PxfzXGoRDe/az8fcKwJt+c9e
         EhjK9NFVLHlEXbjIeKR9AUg98VmLyusIsbVX/qBmOdIshqgv7x2nsdodF+3592VrMZh4
         yxZlxWSNesGd6Lys5AHoS/AKlz2Df+n7vBOw/KcGUzkPHMfcgGKIL9I1ovaJKQHf1fiu
         2H9mpnJJyMDWZ4w09OVpk6nTZ30/AQSfzSbSo58CHNpwhu1r7/8Ev5234vAfiLFXBgsV
         28GkKkWcy6T2GjD91+RCbYLhvyI/Xv0frGIBxlf3MmVLJ/k7ZcaqvcEeh6OJcbADTbqp
         2egQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8BfFumu8n3JEPzVgygne2nHkYeqPWSyCgKz8n2n5dpI=;
        b=f45qD2A4N95AvJUWtE48vUl/AGUQIkuw5viBAgdcUziLmzmNEPAIFftnwhkyKb8Ewd
         u9rKKV2wpSLsZHOA8Mxa3gRsD2WvcCdHGnjw12Fab06osH2NzbtjykE6Dm/Hl9os0Dv9
         ZzytqBUVl8Vo70BywE2lFIfkH7zIYRzdNbiW4SXC8u4DnFiq8KUV1G8hB6Gjrhl0ZGtL
         fRQxlH6N1wn/y5XDP1D+HCjvTup9ponX2cNx07vwKDWxwRoZMbCyPKLyZGpDiSefAgJT
         RpYUyJGv+0D/OPzQgvXG7kkWhjNZ5ZdUpca4GUD/og+pP1X7z3c8wiZUmrp6cpVtd3mK
         nBOQ==
X-Gm-Message-State: AOAM532Et388RGbUTRt4Y6tAbU1neT+QQcDFdBNDtxO82uKLwoTvjUpX
        l6IHMLWRZJXNWcakakym9FQ=
X-Google-Smtp-Source: ABdhPJzcK3hBMYGPF/5GSgan0GcCwzWHKtHF6TsMOyoJYdJYzQGNV7VC8eh1rka9j8BN95mxjr78sw==
X-Received: by 2002:a5d:4903:: with SMTP id x3mr788790wrq.376.1623258072307;
        Wed, 09 Jun 2021 10:01:12 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h6sm538132wrt.20.2021.06.09.10.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jun 2021 10:01:11 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v27] Makefile, README: Break installation into a target for each mandir
Date:   Wed,  9 Jun 2021 19:01:08 +0200
Message-Id: <20210609170108.199125-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210604205319.154059-1-alx.manpages@gmail.com>
References: <20210604205319.154059-1-alx.manpages@gmail.com>
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

The above allows for multithread installation: 'make -j'

Also, don't overwrite files that don't need to be overwritten, by
having a target for files, which makes use of make's timestamp
comparison.

This allows for much faster installation times.

For comparison, on my laptop (i7-8850H; 6C/12T):

Old Makefile:
	~/src/linux/man-pages$ time sudo make >/dev/null

	real	0m7.509s
	user	0m5.269s
	sys	0m2.614s

	The times with the old makefile, varied a lot, between
	5 and 10 seconds.  The times after applying this patch
	are much more consistent.  BTW, I compared these times to
	the very old Makefile of man-pages-5-09, and those were
	around 3.5 s, so it was a bit of my fault to have such a
	slow Makefile, when I changed the Makefile some weeks ago.

New Makefile (full clean install):
	~/src/linux/man-pages$ time sudo make >/dev/null

	real	0m5.160s
	user	0m4.326s
	sys	0m1.137s
	~/src/linux/man-pages$ time sudo make -j2 >/dev/null

	real	0m1.602s
	user	0m2.529s
	sys	0m0.289s
	~/src/linux/man-pages$ time sudo make -j >/dev/null

	real	0m1.398s
	user	0m2.502s
	sys	0m0.281s

	Here we can see that 'make -j' drops times drastically,
	compared to the old monolithic Makefile.  Not only that,
	but since when we are working with the man pages there
	aren't many pages involved, times will be even better.

	Here are some times with a single page changed (touched):

New Makefile (one page touched):
	~/src/linux/man-pages$ touch man2/membarrier.2
	~/src/linux/man-pages$ time sudo make install
	-	INSTALL	/usr/local/share/man/man2/membarrier.2

	real	0m0.988s
	user	0m0.966s
	sys	0m0.025s
	~/src/linux/man-pages$ touch man2/membarrier.2
	~/src/linux/man-pages$ time sudo make install -j
	-	INSTALL	/usr/local/share/man/man2/membarrier.2

	real	0m0.989s
	user	0m0.943s
	sys	0m0.049s

Also, modify the output of the make install and uninstall commands
so that a line is output for each file or directory that is
installed, similarly to the kernel's Makefile.  This doesn't apply
to html targets, which haven't been changed in this commit.

Also, make sure that for each invokation of $(INSTALL_DIR), no
parents are created, (i.e., avoid `mkdir -p` behavior).  The GNU
make manual states that it can create race conditions.  Instead,
declare as a prerequisite for each directory its parent directory,
and let make resolve the order of creation.

Also, use ':=' instead of '=' to improve performance, by
evaluating each assignment only once.

Ensure than the shell is not called when not needed, by removing
all ";" and quotes in the commands.

See also: <https://stackoverflow.com/q/67862417/6872717>

Specify conventions and rationales used in the Makefile in a comment.

Add copyright.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---


v27: - Remove pattern rule for installing files:  Installing is not something
       needed to create files with a specific extension, so it looks weird.
       Instead, put the installation command in a static pattern rule.
     - Use '%' as little as possible, to not hide information.  Be as specific
       as possible.
     - This improved single-process times, but worsened multi-process times.


 Makefile | 251 +++++++++++++++++++++++++++++++++++++++++++++----------
 README   |   8 ++
 2 files changed, 215 insertions(+), 44 deletions(-)

diff --git a/Makefile b/Makefile
index 609009715..b551e6c98 100644
--- a/Makefile
+++ b/Makefile
@@ -1,26 +1,210 @@
-# Do not print "Entering directory ..."
+########################################################################
+# Copyright (C) 2021        Alejandro Colomar <alx.manpages@gmail.com>
+# SPDX-License-Identifier:  GPL-2.0  OR  LGPL-2.0
+########################################################################
+# Conventions:
+#
+# - Follow "Makefile Conventions" from the "GNU Coding Standards" closely.
+#   However, when something could be improved, don't follow those.
+# - Uppercase variables, when referring files, refer to files in this repo.
+# - Lowercase variables, when referring files, refer to system files.
+# - Variables starting with '_' refer to absolute paths, including $(DESTDIR).
+# - Variables ending with '_' refer to a subdir of their parent dir, which
+#   is in a variable of the same name but without the '_'.  The subdir is
+#   named after this project: <*/man>.
+# - Variables ending in '_rm' refer to files that can be removed (exist).
+# - Variables ending in '_rmdir' refer to dirs that can be removed (exist).
+# - Targets of the form '%-rm' remove their corresponding file '%'.
+# - Targets of the form '%/.-rmdir' remove their corresponding dir '%/'.
+# - Targets of the form '%/.' create their corresponding directory '%/'.
+# - Every file or directory to be created depends on its parent directory.
+#   This avoids race conditions caused by `mkdir -p`.  Only the root
+#   directories are created with parents.
+# - The 'FORCE' target is used to make phony some variables that can't be
+#   .PHONY to avoid some optimizations.
+#
+########################################################################
+
 MAKEFLAGS += --no-print-directory
+MAKEFLAGS += --silent
+MAKEFLAGS += --warn-undefined-variables
+
+
+htmlbuilddir := $(CURDIR)/.html
+HTOPTS :=
+
+DESTDIR :=
+prefix := /usr/local
+datarootdir := $(prefix)/share
+docdir := $(datarootdir)/doc
+MANDIR := $(CURDIR)
+mandir := $(datarootdir)/man
+MAN1DIR := $(MANDIR)/man1
+MAN2DIR := $(MANDIR)/man2
+MAN3DIR := $(MANDIR)/man3
+MAN4DIR := $(MANDIR)/man4
+MAN5DIR := $(MANDIR)/man5
+MAN6DIR := $(MANDIR)/man6
+MAN7DIR := $(MANDIR)/man7
+MAN8DIR := $(MANDIR)/man8
+man1dir := $(mandir)/man1
+man2dir := $(mandir)/man2
+man3dir := $(mandir)/man3
+man4dir := $(mandir)/man4
+man5dir := $(mandir)/man5
+man6dir := $(mandir)/man6
+man7dir := $(mandir)/man7
+man8dir := $(mandir)/man8
+manext := \.[0-9]
+man1ext := .1
+man2ext := .2
+man3ext := .3
+man4ext := .4
+man5ext := .5
+man6ext := .6
+man7ext := .7
+man8ext := .8
+htmldir := $(docdir)
+htmldir_ := $(htmldir)/man
+htmlext := .html
 
-htmlbuilddir = $(CURDIR)/.html
-HTOPTS =
+INSTALL := install
+INSTALL_DATA := $(INSTALL) -m 644
+INSTALL_DIR := $(INSTALL) -m 755 -d
+RM := rm
+RMDIR := rmdir --ignore-fail-on-non-empty
 
-DESTDIR =
-prefix = /usr/local
-datarootdir = $(prefix)/share
-docdir = $(datarootdir)/doc
-mandir = $(datarootdir)/man
-htmldir = $(docdir)
-htmldir_ = $(htmldir)/man
-htmlext = .html
+MAN_SECTIONS := 1 2 3 4 5 6 7 8
 
-INSTALL = install
-INSTALL_DATA = $(INSTALL) -m 644
-INSTALL_DIR = $(INSTALL) -m 755 -d
 
 .PHONY: all
 all:
-	$(MAKE) uninstall;
-	$(MAKE) install;
+	$(MAKE) uninstall
+	$(MAKE) install
+
+
+%/.:
+	$(info -	INSTALL	$(@D))
+	$(INSTALL_DIR) $(@D)
+
+%-rm:
+	$(info -	RM	$*)
+	$(RM) $*
+
+%-rmdir:
+	$(info -	RMDIR	$(@D))
+	$(RMDIR) $(@D)
+
+
+.PHONY: install
+install: install-man | installdirs
+	@:
+
+.PHONY: installdirs
+installdirs: | installdirs-man
+	@:
+
+.PHONY: uninstall remove
+uninstall remove: uninstall-man
+	@:
+
+.PHONY: clean
+clean:
+	find man?/ -type f \
+	|while read f; do \
+		rm -f "$(htmlbuilddir)/$$f".*; \
+	done;
+
+########################################################################
+# man
+
+MANPAGES   := $(sort $(shell find $(MANDIR)/man?/ -type f | grep '$(manext)$$'))
+_manpages  := $(patsubst $(MANDIR)/%,$(DESTDIR)$(mandir)/%,$(MANPAGES))
+_man1pages := $(filter %$(man1ext),$(_manpages))
+_man2pages := $(filter %$(man2ext),$(_manpages))
+_man3pages := $(filter %$(man3ext),$(_manpages))
+_man4pages := $(filter %$(man4ext),$(_manpages))
+_man5pages := $(filter %$(man5ext),$(_manpages))
+_man6pages := $(filter %$(man6ext),$(_manpages))
+_man7pages := $(filter %$(man7ext),$(_manpages))
+_man8pages := $(filter %$(man8ext),$(_manpages))
+
+MANDIRS  := $(sort $(shell find $(MANDIR)/man? -type d))
+_mandirs := $(patsubst $(MANDIR)/%,$(DESTDIR)$(mandir)/%/.,$(MANDIRS))
+_man1dir := $(filter %man1/.,$(_mandirs))
+_man2dir := $(filter %man2/.,$(_mandirs))
+_man3dir := $(filter %man3/.,$(_mandirs))
+_man4dir := $(filter %man4/.,$(_mandirs))
+_man5dir := $(filter %man5/.,$(_mandirs))
+_man6dir := $(filter %man6/.,$(_mandirs))
+_man7dir := $(filter %man7/.,$(_mandirs))
+_man8dir := $(filter %man8/.,$(_mandirs))
+_mandir  := $(DESTDIR)$(mandir)/.
+
+_manpages_rm  := $(addsuffix -rm,$(wildcard $(_manpages)))
+_man1pages_rm := $(filter %$(man1ext)-rm,$(_manpages_rm))
+_man2pages_rm := $(filter %$(man2ext)-rm,$(_manpages_rm))
+_man3pages_rm := $(filter %$(man3ext)-rm,$(_manpages_rm))
+_man4pages_rm := $(filter %$(man4ext)-rm,$(_manpages_rm))
+_man5pages_rm := $(filter %$(man5ext)-rm,$(_manpages_rm))
+_man6pages_rm := $(filter %$(man6ext)-rm,$(_manpages_rm))
+_man7pages_rm := $(filter %$(man7ext)-rm,$(_manpages_rm))
+_man8pages_rm := $(filter %$(man8ext)-rm,$(_manpages_rm))
+
+_mandirs_rmdir := $(addsuffix -rmdir,$(wildcard $(_mandirs)))
+_man1dir_rmdir := $(addsuffix -rmdir,$(wildcard $(_man1dir)))
+_man2dir_rmdir := $(addsuffix -rmdir,$(wildcard $(_man2dir)))
+_man3dir_rmdir := $(addsuffix -rmdir,$(wildcard $(_man3dir)))
+_man4dir_rmdir := $(addsuffix -rmdir,$(wildcard $(_man4dir)))
+_man5dir_rmdir := $(addsuffix -rmdir,$(wildcard $(_man5dir)))
+_man6dir_rmdir := $(addsuffix -rmdir,$(wildcard $(_man6dir)))
+_man7dir_rmdir := $(addsuffix -rmdir,$(wildcard $(_man7dir)))
+_man8dir_rmdir := $(addsuffix -rmdir,$(wildcard $(_man8dir)))
+_mandir_rmdir  := $(addsuffix -rmdir,$(wildcard $(_mandir)))
+
+install_manX     := $(foreach x,$(MAN_SECTIONS),install-man$(x))
+installdirs_manX := $(foreach x,$(MAN_SECTIONS),installdirs-man$(x))
+uninstall_manX   := $(foreach x,$(MAN_SECTIONS),uninstall-man$(x))
+
+
+.SECONDEXPANSION:
+$(_manpages): $(DESTDIR)$(mandir)/man%: $(MANDIR)/man% | $$(@D)/.
+	$(info -	INSTALL	$@)
+	$(INSTALL_DATA) -T $< $@
+
+$(_mandirs): %/.: | $$(dir %). $(_mandir)
+
+$(_mandirs_rmdir): $(DESTDIR)$(mandir)/man%/.-rmdir: $$(_man%pages_rm) FORCE
+$(_mandir_rmdir): $(uninstall_manX) FORCE
+
+
+.PHONY: $(install_manX)
+$(install_manX): install-man%: $$(_man%pages) | installdirs-man%
+	@:
+
+.PHONY: install-man
+install-man: $(install_manX)
+	@:
+
+.PHONY: $(installdirs_manX)
+$(installdirs_manX): installdirs-man%: $$(_man%dir) $(_mandir)
+	@:
+
+.PHONY: installdirs-man
+installdirs-man: $(installdirs_manX)
+	@:
+
+.PHONY: $(uninstall_manX)
+$(uninstall_manX): uninstall-man%: $$(_man%pages_rm) $$(_man%dir_rmdir)
+	@:
+
+.PHONY: uninstall-man
+uninstall-man: $(_mandir_rmdir) $(uninstall_manX)
+	@:
+
+
+########################################################################
+# html
 
 # Use with
 #  make HTOPTS=whatever html
@@ -57,28 +241,6 @@ installdirs-html:
 		$(INSTALL_DIR) "$(DESTDIR)$(htmldir_)/$$d" || exit $$?; \
 	done;
 
-.PHONY: install
-install: | installdirs
-	find man?/ -type f \
-	|while read f; do \
-		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(mandir)/$$f" || exit $$?; \
-	done;
-
-.PHONY: installdirs
-installdirs:
-	find man?/ -type d \
-	|while read d; do \
-		$(INSTALL_DIR) "$(DESTDIR)$(mandir)/$$d" || exit $$?; \
-	done;
-
-.PHONY: uninstall remove
-uninstall remove:
-	find man?/ -type f \
-	|while read f; do \
-		rm -f "$(DESTDIR)$(mandir)/$$f" || exit $$?; \
-		rm -f "$(DESTDIR)$(mandir)/$$f".* || exit $$?; \
-	done;
-
 .PHONY: uninstall-html
 uninstall-html:
 	find man?/ -type f \
@@ -86,12 +248,9 @@ uninstall-html:
 		rm -f "$(DESTDIR)$(htmldir_)/$$f".* || exit $$?; \
 	done;
 
-.PHONY: clean
-clean:
-	find man?/ -type f \
-	|while read f; do \
-		rm -f "$(htmlbuilddir)/$$f".* || exit $$?; \
-	done;
+
+########################################################################
+# tests
 
 # Check if groff reports warnings (may be words of sentences not displayed)
 # from https://lintian.debian.org/tags/groff-message.html
@@ -109,3 +268,7 @@ check-groff-warnings:
 
 # someone might also want to look at /var/catman/cat2 or so ...
 # a problem is that the location of cat pages varies a lot
+
+########################################################################
+
+FORCE:
diff --git a/README b/README
index 6598170c0..484151773 100644
--- a/README
+++ b/README
@@ -26,9 +26,17 @@ To install to a path different from /usr/local, use
 distribution from its destination.  Use with caution, and remember to
 use "prefix" if desired, as with the "install" target.
 
+To install only a specific man section (mandir) such as man3, use
+"make install-man3".  Similar syntax can be used to uninstall a
+specific man section, such as man7: "make uninstall-man7".
+
 "make" or "make all" will perform "make uninstall" followed by "make
 install".
 
+Consider using multiple threads (at least 2) when installing
+these man pages, as the Makefile is optimized for multiple threads:
+"make -j install".
+
 Copyrights
 ==========
 See the 'man-pages-x.y.Announce' file.
-- 
2.31.1

