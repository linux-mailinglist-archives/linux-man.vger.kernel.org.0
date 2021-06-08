Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D3E33A067A
	for <lists+linux-man@lfdr.de>; Tue,  8 Jun 2021 23:56:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233935AbhFHV6Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Jun 2021 17:58:25 -0400
Received: from mail-wm1-f41.google.com ([209.85.128.41]:56245 "EHLO
        mail-wm1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234344AbhFHV6Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Jun 2021 17:58:24 -0400
Received: by mail-wm1-f41.google.com with SMTP id g204so2759276wmf.5
        for <linux-man@vger.kernel.org>; Tue, 08 Jun 2021 14:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mvsoxZnC+EBipjKL6CXz9UCkNjfT7TTZ3oCL1stSiMs=;
        b=kMAUT4p6klsTzedwTIBqnC8XgEQpshzjhjzUGu4IYIiLIlgL8FoFz3eqTnWsNDAcc2
         F1Z729zlbopWBiC9FUCLyv4scgVAu0dYs5EYCHCKAYlWXdzenoR9SMv0L6zM/Bb8OIZr
         sAb6Ae4ZwtXPrg5mFw8yM4TzJ/ZE8xvh1jYkEHpXZIZ4PptPk8brnU9K1d6Ld1JEH1rK
         iaSVZv9IZ38wdGnVXW3hRgntrXjQfrfCglXNfXrB/y1nO3tea1gP6a+KtQrGCKx9gQjm
         +xRRHSkoRNnw0VAnVqVMI2iq1CQd3B/IAxMwRUlX3rKjFIysf+mfLILkBkEi5bfHJ0vJ
         7bOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mvsoxZnC+EBipjKL6CXz9UCkNjfT7TTZ3oCL1stSiMs=;
        b=lUA+XxPV0xKc1BdB4QkH3Kb2SNzil+oLLe2gObUvoKPCvASow160wheeIJZ/S4EiiW
         AR4M/8vKhQAECvR3WL63c+JaZvcaG4+uDjBHGXp/k3TjX80S43AafLSGkjtdODbUNjqy
         zOYvMstWMjQQMb2fc2+ESrQ+8iNbGm1enAqr0gJwut2URtgxGPhlTxa757CcBMFBmROp
         IrcuGd24RV7jhCakqHyXUbZ/BWHBvm2DGR6/1LFcjpH31erFM9lKPus2KrXE4KM9q/qF
         4r5hyWOAD8JvoQx8TW30ApXav5V+GRSiXJB7e+GaHIjyTSCT5ojFwfu2uLxBvQl2uZDz
         4GiA==
X-Gm-Message-State: AOAM5327RHnmWBJ6nznRKNVizm/d/ul7mHWoohuYu/YtDLBck99wRGnc
        dSGvWtW4bQEhXkUJUiwZNlnPdNRiZpI=
X-Google-Smtp-Source: ABdhPJyjWfhWHzRn3lobMs/EGPg9tRKdVF92GcKTj3pAk2S6jz/Nsbwphow35Rjhypcmmyu/yWkZ5A==
X-Received: by 2002:a05:600c:19ce:: with SMTP id u14mr21900129wmq.169.1623189316179;
        Tue, 08 Jun 2021 14:55:16 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id r3sm2648184wmq.8.2021.06.08.14.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 14:55:15 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v26] Makefile, README: Break installation into a target for each mandir
Date:   Tue,  8 Jun 2021 23:55:13 +0200
Message-Id: <20210608215513.468180-1-alx.manpages@gmail.com>
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

The above allows for multithread installation: 'make -j8'

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

	real	0m7.818s
	user	0m6.250s
	sys	0m2.045s
	~/src/linux/man-pages$ time sudo make -j2 >/dev/null

	real	0m1.275s
	user	0m2.222s
	sys	0m0.331s
	~/src/linux/man-pages$ time sudo make -j >/dev/null

	real	0m0.938s
	user	0m2.328s
	sys	0m0.334s

	Here we can see that 'make -j' drops times drastically,
	compared to the old monolithic Makefile.  Not only that,
	but since when we are working with the man pages there
	aren't many pages involved, times will be even better.

	Here are some times with a single page changed (touched):

New Makefile (one page touched):
	~/src/linux/man-pages$ touch man2/membarrier.2
	~/src/linux/man-pages$ time sudo make install
	-	INSTALL	/usr/local/share/man/man2/membarrier.2

	real	0m0.119s
	user	0m0.098s
	sys	0m0.025s
	~/src/linux/man-pages$ touch man2/membarrier.2
	~/src/linux/man-pages$ time sudo make -j install
	-	INSTALL	/usr/local/share/man/man2/membarrier.2

	real	0m0.117s
	user	0m0.106s
	sys	0m0.015s

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


v2:  - Revert changes to 'make [all]', as it might break existing
       scripts.

v3:  - Remove unnecessary target installdirs (its functionality has been
       superseeded by installdirs-man).

v4:  - srcfix

v5:  - wsfix
     - Remove duplicate echo

v6:  - Add paragraph to commit msg.

v7:  - Output which files are removed (one RM line for each file)
     - Add manext variable, to avoid repeating the \.[0-9] regex.
     - Don't use ?=.  It's ugly, and makes no tangible effects
       (I tested that the times are the same).

v8:  - wsfix
     - Replace small shell scripts by proper Makefile dependencies
       and helper targets.

v9:  - wsfix
     - Sort files, so that the installation is more predictable, and
       thus, one can guess the progress of the install by the filenames
       in the log.

v10: - srcfix: use patsubst instead of addprefix + notdir, to be more
       clear.

v11: - Reorder things a bit to make it easier to read.
     - Remove an unnecessary dependency.

v12: - tfix

v13: - Remove unused variable: manext
     - Define undefined variables: man[1-8]ext
     - A few minor srcfix
     - Add times comparison and output examples to commit msg.

v14: - Replace '=' with ':=' to improve performance.
       Times in commit msg updated for this change.
     - Add a note in the README that installation should use
       multiple threads for performance reasons.

v15: - Move some code into variables (times didn't change considerably).

v16: - Add missing .PHONY: $(uninstall_manpages)

v17: - Replace *_MANN by *_MANn, which is more readable.

v18: - Don't use bash(1).  We don't need pipefail now that I simplified
       the targets to have simple separate commands.  make(1) will
       now break installation if anything fails.  This cut times by
       around 40%.
     - Don't call echo(1).  Invoking a shell just to call echo(1) for
       every file is too expensive.  Use make(1)'s $(info ...) function.
       This cut times by another 40%.
     - Update the commit msg to reflect the times after these changes.
       For a single thread, it's using around a third of the time that
       v17 needed.
     - v18 applies on top of mtk's tree, unlike previous revisions,
       which applied on top of another patch of mine, which I dropped.

v19: - Remove `;` and `'` to avoid calling unnecessary shells.
     - The above improved performance by another 50% or so; update the
       commit msg with the new times.
     - Fix some dependencies.
     - Add installdirs again.
     - srcfix: reduce LOC

v20: - Workaround a bug in make 3.81 where a trailing slash is ignored.
       See <https://ismail.badawi.io/blog/automatic-directory-creation-in-make/>
       That helps workaround some ambiguity in the rules, wher a rule
       to uninstall a dir also matched the pattern rule to install that
       dir.

v21: - ffix

v22: - Avoid race conditions, by avoiding `mkdir -p` behavior.
     - Reduce LOCs by using make's `$(foreach ...)` and `.SECONDEXPANSION:`.
     - Add an empty recipe for each target that does nothing but declare
       dependencies, to avoid implicit rules.

v23: - Remove unused variables

v24: - Improve readability
     - Fix dependencies
     - Time increased a bit for single-process full clean install,
       but they dropped to 10% for a single page, having times of
       around 0.1 s!  Update commit msg.

v25: - Workaround some problems with make:
       - Instead of using a prefix in pattern rules, use a suffix.
       - Instead of using .PHONY for implicit rules, use FORCE.
     - Improve readability
     - Use make's $(sort ...) instead of sort(1).

v26: - Fix dependencies.
     - Add copyright.
     - Add "Conventions" comment at the top of the Makefile.
     - Rename some variables to add consistency, and provide allow creating
       some simple conventions.
     - Add warning: --warn-undefined-variables

 Makefile | 260 +++++++++++++++++++++++++++++++++++++++++++++----------
 README   |   8 ++
 2 files changed, 224 insertions(+), 44 deletions(-)

diff --git a/Makefile b/Makefile
index 609009715..e93cb9364 100644
--- a/Makefile
+++ b/Makefile
@@ -1,26 +1,219 @@
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
+# - Every file or directory to be created depends on its directory.  This
+#   avoids race conditions caused by `mkdir -p`.  Only the root directories
+#   are created with parents.
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
+.SECONDEXPANSION:
+%$(man1ext) \
+%$(man2ext) \
+%$(man3ext) \
+%$(man4ext) \
+%$(man5ext) \
+%$(man6ext) \
+%$(man7ext) \
+%$(man8ext): | $$(@D)/.
+	$(info -	INSTALL	$@)
+	$(INSTALL_DATA) -T $< $@
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
+$(_manpages): $(DESTDIR)$(mandir)/%: $(MANDIR)/%
+
+$(_mandirs): %/.: | $$(dir %). $(_mandir)
+
+$(_mandirs_rmdir): $(DESTDIR)$(mandir)/%/.-rmdir: $$(_%pages_rm) FORCE
+$(_mandir_rmdir): $(uninstall_manX) FORCE
+
+
+.PHONY: $(install_manX)
+$(install_manX): install-%: $$(_%pages) | installdirs-%
+	@:
+
+.PHONY: install-man
+install-man: $(install_manX)
+	@:
+
+.PHONY: $(installdirs_manX)
+$(installdirs_manX): installdirs-%: $$(_%dir) $(_mandir)
+	@:
+
+.PHONY: installdirs-man
+installdirs-man: $(installdirs_manX)
+	@:
+
+.PHONY: $(uninstall_manX)
+$(uninstall_manX): uninstall-%: $$(_%pages_rm) $$(_%dir_rmdir)
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
@@ -57,28 +250,6 @@ installdirs-html:
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
@@ -86,12 +257,9 @@ uninstall-html:
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
@@ -109,3 +277,7 @@ check-groff-warnings:
 
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

