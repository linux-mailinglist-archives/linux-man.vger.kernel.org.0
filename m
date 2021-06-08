Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADBF739FCDE
	for <lists+linux-man@lfdr.de>; Tue,  8 Jun 2021 18:52:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233081AbhFHQyi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Jun 2021 12:54:38 -0400
Received: from mail-wr1-f44.google.com ([209.85.221.44]:36768 "EHLO
        mail-wr1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231503AbhFHQyh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Jun 2021 12:54:37 -0400
Received: by mail-wr1-f44.google.com with SMTP id e11so12137818wrg.3
        for <linux-man@vger.kernel.org>; Tue, 08 Jun 2021 09:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0dVWmDAeifB5VousZN8e9eHsS/MmEL2WItMAkwpT2/A=;
        b=UfSM+S6LOBvfOX28KmrZb5f5P9YTEFklHEDBy9+uKcL6tUk80djvf+pfWIxkAZ2TfX
         AfyfT6gWD0MjW68yZJYWJRHAG7q35X+5Tkb0nG3V+MhIeJ1AAEIrS++qBrKgk8a4CAdl
         Gc6GgUbTxfV91nF5NiKx7JA/gJPaZd+LJmd0Kv4DhCRwd9HWbzKI0BXXIYr2MmXZmsy5
         ic+CFhLn4Y1o5u4xb2h9hX4qXcSc8zpo5FRoAGg206RV3gasJT0dl3KmLAqqP90uk1o2
         aYix3GX4I0FS9U3y4nOAc8wUPVwDvtnfQD10nFg9Llb9xPec5trcSSBKPVJhw057lvTy
         GMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0dVWmDAeifB5VousZN8e9eHsS/MmEL2WItMAkwpT2/A=;
        b=CKeEsmRyLXJ8/tyhVVeaVZwglCeONlPE6qrOi1Us/Jd4BesJ+8ljSWE13I1Rh2R+Kz
         k8rJzC1AzFAQu6PNE7au2CJ3PhXS0OuRK+OybTMXPVu141ri6SbwQAmxglZKxRCqxp8f
         8KHp7wZeEaajFEMZroZCp7035HLRwvBZv+YfZHioqsf9xVb0A6e0rXtdtfpYura34eRV
         Te/aCPiLOviU0G5j1jyCTWgkOKbD+0rzmjYv7hPh+u854GBcGRejb+JCQgoYoGySehPG
         BmYd3NnY3hupSkO9JbwyQFsBvEMxnl5j6/F/IfGNpSVUSuP1jgCD6atofrS++BNg/+tA
         wL8g==
X-Gm-Message-State: AOAM531UMdXgMfF274iN27Gx6YClADdb/JJ2kPKWcfUtfGAe9exIq3a1
        croZboOVKUNxIex80RWBPi4=
X-Google-Smtp-Source: ABdhPJzuYK9lXO39bvWfcMl/GENHCSF1NF3QYBZq2IVmHBcRPsLinqI6MmUjmsJLGFvIbZudg6UYpg==
X-Received: by 2002:adf:eed2:: with SMTP id a18mr23418358wrp.147.1623171104042;
        Tue, 08 Jun 2021 09:51:44 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z5sm12276406wrv.67.2021.06.08.09.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 09:51:43 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v25] Makefile, README: Break installation into a target for each mandir
Date:   Tue,  8 Jun 2021 18:51:40 +0200
Message-Id: <20210608165140.373122-1-alx.manpages@gmail.com>
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
	user@sqli:~/src/linux/man-pages$ time sudo make >/dev/null

	real	0m7.818s
	user	0m6.250s
	sys	0m2.045s
	user@sqli:~/src/linux/man-pages$ time sudo make -j2 >/dev/null

	real	0m1.275s
	user	0m2.222s
	sys	0m0.331s
	user@sqli:~/src/linux/man-pages$ time sudo make -j >/dev/null

	real	0m0.938s
	user	0m2.328s
	sys	0m0.334s

	Here we can see that 'make -j' drops times drastically,
	compared to the old monolithic Makefile.  Not only that,
	but since when we are working with the man pages there
	aren't many pages involved, times will be even better.

	Here are some times with a single page changed (touched):

New Makefile (one page touched):
	user@sqli:~/src/linux/man-pages$ touch man2/membarrier.2
	user@sqli:~/src/linux/man-pages$ time sudo make install
	-	INSTALL	/usr/local/share/man/man2/membarrier.2

	real	0m0.119s
	user	0m0.098s
	sys	0m0.025s
	user@sqli:~/src/linux/man-pages$ touch man2/membarrier.2
	user@sqli:~/src/linux/man-pages$ time sudo make -j install
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


 Makefile | 215 +++++++++++++++++++++++++++++++++++++++++++------------
 README   |   8 +++
 2 files changed, 179 insertions(+), 44 deletions(-)

diff --git a/Makefile b/Makefile
index 609009715..9eb439abc 100644
--- a/Makefile
+++ b/Makefile
@@ -1,26 +1,175 @@
-# Do not print "Entering directory ..."
 MAKEFLAGS += --no-print-directory
+MAKEFLAGS += --silent
 
-htmlbuilddir = $(CURDIR)/.html
-HTOPTS =
+ROOTDIR := $(CURDIR)
+htmlbuilddir := $(ROOTDIR)/.html
+HTOPTS :=
 
-DESTDIR =
-prefix = /usr/local
-datarootdir = $(prefix)/share
-docdir = $(datarootdir)/doc
-mandir = $(datarootdir)/man
-htmldir = $(docdir)
-htmldir_ = $(htmldir)/man
-htmlext = .html
+DESTDIR :=
+prefix := /usr/local
+datarootdir := $(prefix)/share
+docdir := $(datarootdir)/doc
+MANDIR := $(ROOTDIR)
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
+
+INSTALL := install
+INSTALL_DATA := $(INSTALL) -m 644
+INSTALL_DIR := $(INSTALL) -m 755 -d
+RM := rm -f
+RMDIR := rmdir --ignore-fail-on-non-empty
+
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
+	$(RMDIR) $(@D) 2>/dev/null ||:
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
+MANPAGES  := $(sort $(shell find $(MANDIR)/man?/ -type f | grep '$(manext)$$'))
+manpages  := $(patsubst $(MANDIR)/%,$(DESTDIR)$(mandir)/%,$(MANPAGES))
+man1pages := $(filter %$(man1ext),$(manpages))
+man2pages := $(filter %$(man2ext),$(manpages))
+man3pages := $(filter %$(man3ext),$(manpages))
+man4pages := $(filter %$(man4ext),$(manpages))
+man5pages := $(filter %$(man5ext),$(manpages))
+man6pages := $(filter %$(man6ext),$(manpages))
+man7pages := $(filter %$(man7ext),$(manpages))
+man8pages := $(filter %$(man8ext),$(manpages))
+
+MANDIRS := $(sort $(shell find $(MANDIR)/man? -type d))
+mandirs := $(patsubst $(MANDIR)/%,$(DESTDIR)$(mandir)/%/.,$(MANDIRS))
+
+rm_manpages  := $(addsuffix -rm,$(wildcard $(manpages)))
+rm_man1pages := $(filter %$(man1ext)-rm,$(rm_manpages))
+rm_man2pages := $(filter %$(man2ext)-rm,$(rm_manpages))
+rm_man3pages := $(filter %$(man3ext)-rm,$(rm_manpages))
+rm_man4pages := $(filter %$(man4ext)-rm,$(rm_manpages))
+rm_man5pages := $(filter %$(man5ext)-rm,$(rm_manpages))
+rm_man6pages := $(filter %$(man6ext)-rm,$(rm_manpages))
+rm_man7pages := $(filter %$(man7ext)-rm,$(rm_manpages))
+rm_man8pages := $(filter %$(man8ext)-rm,$(rm_manpages))
+
+rmdir_mandirs := $(addsuffix -rmdir,$(wildcard $(mandirs)))
+
+install_manX     := $(foreach x,$(MAN_SECTIONS),install-man$(x))
+installdirs_manX := $(foreach x,$(MAN_SECTIONS),installdirs-man$(x))
+uninstall_manX   := $(foreach x,$(MAN_SECTIONS),uninstall-man$(x))
+
+
+$(manpages): $(DESTDIR)$(mandir)/%: $(MANDIR)/% FORCE
+
+$(mandirs): %/.: FORCE | $$(dir %). $(mandir)
+
+$(rmdir_mandirs): $(DESTDIR)$(mandir)/%/.-rmdir: $$(rm_%pages) FORCE
+$(DESTDIR)$(mandir)/.-rmdir: $(uninstall_manX) FORCE
+
+
+.PHONY: $(install_manX)
+$(install_manX): install-%: $$(%pages) | installdirs-%
+	@:
+
+.PHONY: install-man
+install-man: $(install_manX)
+	@:
+
+
+.PHONY: $(installdirs_manX)
+$(installdirs_manX): installdirs-%: $(DESTDIR)$(mandir)/%/. | $(DESTDIR)$(mandir)/.
+	@:
+
+.PHONY: installdirs-man
+installdirs-man: $(installdirs_manX)
+	@:
+
+
+.PHONY: $(uninstall_manX)
+$(uninstall_manX): uninstall-%: $(DESTDIR)$(mandir)/%/.-rmdir $$(rm_%pages)
+	@:
+
+.PHONY: uninstall-man
+uninstall-man: $(DESTDIR)$(mandir)/.-rmdir $(uninstall_manX)
+	@:
+
+
+########################################################################
+# html
 
 # Use with
 #  make HTOPTS=whatever html
@@ -57,28 +206,6 @@ installdirs-html:
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
@@ -86,12 +213,9 @@ uninstall-html:
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
@@ -109,3 +233,6 @@ check-groff-warnings:
 
 # someone might also want to look at /var/catman/cat2 or so ...
 # a problem is that the location of cat pages varies a lot
+
+########################################################################
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

