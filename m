Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9950D39F288
	for <lists+linux-man@lfdr.de>; Tue,  8 Jun 2021 11:35:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229507AbhFHJhY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Jun 2021 05:37:24 -0400
Received: from mail-wm1-f52.google.com ([209.85.128.52]:56132 "EHLO
        mail-wm1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229724AbhFHJhX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Jun 2021 05:37:23 -0400
Received: by mail-wm1-f52.google.com with SMTP id g204so1379353wmf.5
        for <linux-man@vger.kernel.org>; Tue, 08 Jun 2021 02:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wf8+INZNGWCholUheC3jhbL/0vCS22yGL0/bVt8meOI=;
        b=bSTpKW+f7LkQ+iT0VEoi91Ucv3PqDtuqvjBWbSLFog513+bgh8oNjQ3qU/W2BZSqwf
         Kp1SslClErpsR3aguWmpE99zcmFWmWsAwPVIsFBbRLNOEWfoOQFQDAq+iFk8Qvx9bUgw
         c0yb7zq6/evQlQvZAF9O6I3RjJJieIcCLzXpjXZ6bswNiXhYRFFmpYIeP6zTEpuNqU8p
         Xz91FcWwQNg9ya3/zTBjM+j42UnKjN25Pig5LDOpA1XHcve4ODftfNkm8PgH3Ys0y+X4
         Vy/fA4NJyp1qhoxgRLtuxFE7ExBciHD9eby6dDuypxiV55sPgNib2xbiPvvu9mg0C94c
         wztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wf8+INZNGWCholUheC3jhbL/0vCS22yGL0/bVt8meOI=;
        b=jRFVv2SjZKHdyxbdJnIsuQD1M9oStjM5TY4uAtOEDMn/beGQ1ACgPoXqpVC17vfzoc
         XUMhZVpJFiXrfxbvcgVdT4yS/Dn2pyIoh7OBs4esB4XrlPZMshcOB9RV8CL6BCInE0N1
         1DtsQaukleeWjdy+n18Qfeue3FxlnXM4IACfRU4or2dMEunR0s4EfjGiPB8pX3I6rUYn
         A8u1Bzox7Yi7WUtF2neof/HGGELLHLhy5GlRHH7G8wN5FEyV3/YUUlEHIZpx1k435Rtn
         D0i9IDgHTFDK7Gs0k0as+Z+MdKWPZ31gj1oA+0v+0jBwMLSFYaTNkoPEfvTFOKW4PSNi
         RhjA==
X-Gm-Message-State: AOAM530EBAw/i76xi04m9QrJ2cIoUSnIbwDbwLA7AkBl2oLXwEcxgqsR
        TlWw2J16UbmoqQMLp9C58GY=
X-Google-Smtp-Source: ABdhPJx5pR7iYOJH82e0CM0wGckSn06LH4RY7uSEKpFs5nDciJZmQnfk7nWuh+vPuStef4ojLUR3QQ==
X-Received: by 2002:a1c:7218:: with SMTP id n24mr3232854wmc.104.1623144854433;
        Tue, 08 Jun 2021 02:34:14 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o11sm3539486wmq.1.2021.06.08.02.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 02:34:13 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v24] Makefile, README: Break installation into a target for each mandir
Date:   Tue,  8 Jun 2021 11:34:11 +0200
Message-Id: <20210608093411.229249-1-alx.manpages@gmail.com>
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


 Makefile | 210 +++++++++++++++++++++++++++++++++++++++++++------------
 README   |   8 +++
 2 files changed, 174 insertions(+), 44 deletions(-)

diff --git a/Makefile b/Makefile
index 609009715..58b01b7a4 100644
--- a/Makefile
+++ b/Makefile
@@ -1,26 +1,173 @@
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
+	$(info -	INSTALL	$*/)
+	$(INSTALL_DIR) $*/
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
+	$(INSTALL_DATA) -T $^ $@
+
+rm-/%:
+	$(info -	RM	/$*)
+	$(RM) /$*
+
+rmdir-/%:
+	$(info -	RMDIR	/$*)
+	$(RMDIR) /$* 2>/dev/null ||:
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
+################################################################################
+# man
+
+MANPAGES  := $(shell find $(MANDIR)/man?/ -type f | grep '$(manext)$$' | sort)
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
+$(manpages): $(DESTDIR)$(mandir)/%: $(MANDIR)/%
+
+
+install_manX := $(foreach x,$(MAN_SECTIONS),install-man$(x))
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
+MANDIRS := $(shell find $(MANDIR)/man? -type d)
+mandirs := $(patsubst $(MANDIR)/%,$(DESTDIR)$(mandir)/%/,$(MANDIRS))
+
+$(mandirs:=.): %/.: | $$(dir %). $(mandir)
+
+
+installdirs_manX := $(foreach x,$(MAN_SECTIONS),installdirs-man$(x))
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
+rm_manpages  := $(addprefix rm-,$(wildcard $(manpages)))
+rm_man1pages := $(filter %$(man1ext),$(rm_manpages))
+rm_man2pages := $(filter %$(man2ext),$(rm_manpages))
+rm_man3pages := $(filter %$(man3ext),$(rm_manpages))
+rm_man4pages := $(filter %$(man4ext),$(rm_manpages))
+rm_man5pages := $(filter %$(man5ext),$(rm_manpages))
+rm_man6pages := $(filter %$(man6ext),$(rm_manpages))
+rm_man7pages := $(filter %$(man7ext),$(rm_manpages))
+rm_man8pages := $(filter %$(man8ext),$(rm_manpages))
+
+
+uninstall_manX := $(foreach x,$(MAN_SECTIONS),uninstall-man$(x))
+
+.PHONY: $(uninstall_manX)
+$(uninstall_manX): uninstall-%: $$(rm_%pages)
+	$(MAKE) rmdir-$(DESTDIR)$(mandir)/$*/
+
+.PHONY: uninstall-man
+uninstall-man: $(uninstall_manX)
+	$(MAKE) rmdir-$(DESTDIR)$(mandir)/
+
+
+################################################################################
+# html
 
 # Use with
 #  make HTOPTS=whatever html
@@ -57,28 +204,6 @@ installdirs-html:
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
@@ -86,12 +211,9 @@ uninstall-html:
 		rm -f "$(DESTDIR)$(htmldir_)/$$f".* || exit $$?; \
 	done;
 
-.PHONY: clean
-clean:
-	find man?/ -type f \
-	|while read f; do \
-		rm -f "$(htmlbuilddir)/$$f".* || exit $$?; \
-	done;
+
+################################################################################
+# tests
 
 # Check if groff reports warnings (may be words of sentences not displayed)
 # from https://lintian.debian.org/tags/groff-message.html
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

