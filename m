Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCB9D39E48B
	for <lists+linux-man@lfdr.de>; Mon,  7 Jun 2021 18:52:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231465AbhFGQxo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Jun 2021 12:53:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230306AbhFGQxn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Jun 2021 12:53:43 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD17CC061766
        for <linux-man@vger.kernel.org>; Mon,  7 Jun 2021 09:51:38 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id y7so13775390wrh.7
        for <linux-man@vger.kernel.org>; Mon, 07 Jun 2021 09:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z9URxp4wFDKgsE6BW4iY/a0pAA8ZiYHxahh3VHQh/0w=;
        b=OWWMiSS8+2UedFoITNwA6MyxBXAuY7bpFHTFAoBgMFu4GzNsATQcohqLWphG2uC8W4
         RtxchLspZikWFK2fTGeFdxaJz53CAo0GAtule2GIXt5L1qr3Til8gx+OUow689ds9dyQ
         FqbDdEZnblEeeR7Q52QXgq2RSN73OCUe+j7ItwNcFHsCOQOYeZtCOQj/sws1ovB95icx
         kJhFy+zGAzuhILS/3ZUFrXzrj2F82k+FQx9A8wm0VseOTpMPdPqufepcN8iuD2uNXtlh
         KFAiDMOPpo5jbPwaheWzEBuU6NfbPtGZbmSAKhX0QjrACLNpr1+ivmAOKM61FrKWw7sB
         eDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z9URxp4wFDKgsE6BW4iY/a0pAA8ZiYHxahh3VHQh/0w=;
        b=Bgngjw9SIjEAuOgNr5piFStKl3BA7ox/taXuH8feC0HymeA/qVrlfCGbV4/5IzBiuc
         PcRRPy+ji0PrmBZLsWZ3zyPsgoxGDRUwpkC1FgmIJdXJxfbagF1GPG91FfeDxYJ25jsL
         ODGU8ttDMch/DaCklMLca23c3oQUMYe+nzaRXWjjx5LZdzdS7hyhjJeiNUsJ6dPvz4DE
         hkp7TXx+RXqGeNn5jM+gNQ6ot4CKp2zh64na+iOl1ckN3+CTfRM9gEB2L7cO5NnfLbhM
         1lC1ts+LtnwiFW3lXlD0Y/Rol0gmOf1v9Px+sB5ldE0NVaL24id/lE/frCunXzpa4RJ/
         mQaw==
X-Gm-Message-State: AOAM5333rsu8Sn9JutfiDVcGT4UoyKEDlmKR1OWcXLQfODkengXJ/zbp
        F6rY0HgRPNRI2fMV8QkpQqI=
X-Google-Smtp-Source: ABdhPJy/QRtKqg4rZVCdV2j3M33NrArg0j89wiQ3v6Ew/biJSzSMAOZmdrBkuR9iDgabAROoRQEflw==
X-Received: by 2002:a5d:664c:: with SMTP id f12mr17809644wrw.206.1623084697333;
        Mon, 07 Jun 2021 09:51:37 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id n18sm3775853wmq.41.2021.06.07.09.51.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 09:51:36 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v19] Makefile, README: Break installation into a target for each mandir
Date:   Mon,  7 Jun 2021 18:49:19 +0200
Message-Id: <20210607164918.2129333-1-alx.manpages@gmail.com>
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

	real	0m5.072s
	user	0m4.356s
	sys	0m0.980s
	~/src/linux/man-pages$ time sudo make -j2 >/dev/null

	real	0m1.688s
	user	0m2.616s
	sys	0m0.283s
	~/src/linux/man-pages$ time sudo make -j >/dev/null

	real	0m1.468s
	user	0m2.579s
	sys	0m0.289s

	Here we can see that 'make -j' drops times drastically,
	compared to the old monolithic Makefile.  Not only that,
	but since when we are working with the man pages there
	aren't many pages involved, times will be even better.

	Here are some times with a single page changed:

New Makefile (one page touched):
	~/src/linux/man-pages$ touch man2/membarrier.2
	~/src/linux/man-pages$ time sudo make install
	-	INSTALL	/usr/local/share/man/man2/membarrier.2

	real	0m0.976s
	user	0m0.952s
	sys	0m0.027s
	~/src/linux/man-pages$ touch man2/membarrier.2
	~/src/linux/man-pages$ time sudo make -j install
	-	INSTALL	/usr/local/share/man/man2/membarrier.2

	real	0m0.967s
	user	0m0.964s
	sys	0m0.007s

Also, modify the output of the make install and uninstall commands
so that a line is output for each file or directory that is
installed, similarly to the kernel's Makefile.  This doesn't apply
to html targets, which haven't been changed in this commit.

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


 Makefile | 235 ++++++++++++++++++++++++++++++++++++++++++++-----------
 README   |   8 ++
 2 files changed, 199 insertions(+), 44 deletions(-)

diff --git a/Makefile b/Makefile
index 609009715..f491a0197 100644
--- a/Makefile
+++ b/Makefile
@@ -1,26 +1,198 @@
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
+%/:
+	$(info -	INSTALL	$@)
+	$(INSTALL_DIR) $@
+
+
+.PHONY: install
+install: install-man | installdirs
+
+.PHONY: installdirs
+installdirs: | installdirs-man
+
+.PHONY: uninstall remove
+uninstall remove: uninstall-man
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
+MAN1PAGES := $(filter %$(man1ext),$(MANPAGES))
+MAN2PAGES := $(filter %$(man2ext),$(MANPAGES))
+MAN3PAGES := $(filter %$(man3ext),$(MANPAGES))
+MAN4PAGES := $(filter %$(man4ext),$(MANPAGES))
+MAN5PAGES := $(filter %$(man5ext),$(MANPAGES))
+MAN6PAGES := $(filter %$(man6ext),$(MANPAGES))
+MAN7PAGES := $(filter %$(man7ext),$(MANPAGES))
+MAN8PAGES := $(filter %$(man8ext),$(MANPAGES))
+
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
+.SECONDEXPANSION:
+$(manpages): $(DESTDIR)$(mandir)/%: $(MANDIR)/% | $$(@D)/
+	$(info -	INSTALL	$@)
+	$(INSTALL_DATA) -T $(MANDIR)/$* $@
+
+
+INSTALL_MANn := install-man1 \
+                install-man2 \
+                install-man3 \
+                install-man4 \
+                install-man5 \
+                install-man6 \
+                install-man7 \
+                install-man8
+
+.PHONY: $(INSTALL_MANn)
+install-man1: $(man1pages)
+install-man2: $(man2pages)
+install-man3: $(man3pages)
+install-man4: $(man4pages)
+install-man5: $(man5pages)
+install-man6: $(man6pages)
+install-man7: $(man7pages)
+install-man8: $(man8pages)
+$(INSTALL_MANn): install-%: | installdirs-%
+	@:
+
+.PHONY: install-man
+install-man: $(INSTALL_MANn)
+	@:
+
+
+INSTALLDIRS_MANn := installdirs-man1 \
+                    installdirs-man2 \
+                    installdirs-man3 \
+                    installdirs-man4 \
+                    installdirs-man5 \
+                    installdirs-man6 \
+                    installdirs-man7 \
+                    installdirs-man8
+
+.PHONY: $(INSTALLDIRS_MANn)
+$(INSTALLDIRS_MANn): installdirs-%: $(DESTDIR)$(mandir)/%/ | $(DESTDIR)$(mandir)/
+	@:
+
+.PHONY: installdirs-man
+installdirs-man: $(INSTALL_MANn)
+	@:
+
+
+uninstall_manpages  := $(addprefix uninstall-,$(wildcard $(manpages)))
+uninstall_man1pages := $(filter %$(man1ext),$(uninstall_manpages))
+uninstall_man2pages := $(filter %$(man2ext),$(uninstall_manpages))
+uninstall_man3pages := $(filter %$(man3ext),$(uninstall_manpages))
+uninstall_man4pages := $(filter %$(man4ext),$(uninstall_manpages))
+uninstall_man5pages := $(filter %$(man5ext),$(uninstall_manpages))
+uninstall_man6pages := $(filter %$(man6ext),$(uninstall_manpages))
+uninstall_man7pages := $(filter %$(man7ext),$(uninstall_manpages))
+uninstall_man8pages := $(filter %$(man8ext),$(uninstall_manpages))
+
+.PHONY: $(uninstall_manpages)
+$(uninstall_manpages): uninstall-%:
+	$(info -	RM	$*)
+	$(RM) $*
+
+
+UNINSTALL_MANn := uninstall-man1 \
+                  uninstall-man2 \
+                  uninstall-man3 \
+                  uninstall-man4 \
+                  uninstall-man5 \
+                  uninstall-man6 \
+                  uninstall-man7 \
+                  uninstall-man8
+
+.PHONY: $(UNINSTALL_MANn)
+uninstall-man1: $(uninstall_man1pages)
+uninstall-man2: $(uninstall_man2pages)
+uninstall-man3: $(uninstall_man3pages)
+uninstall-man4: $(uninstall_man4pages)
+uninstall-man5: $(uninstall_man5pages)
+uninstall-man6: $(uninstall_man6pages)
+uninstall-man7: $(uninstall_man7pages)
+uninstall-man8: $(uninstall_man8pages)
+$(UNINSTALL_MANn): uninstall-%:
+	$(info -	RMDIR	$(DESTDIR)$(mandir)/$*/)
+	$(RMDIR) $(DESTDIR)$(mandir)/$*/ 2>/dev/null ||:
+
+.PHONY: uninstall-man
+uninstall-man: $(UNINSTALL_MANn)
+	$(info -	RMDIR	$(DESTDIR)$(mandir)/)
+	$(RMDIR) $(DESTDIR)$(mandir)/ ||:
+
+
+################################################################################
+# html
 
 # Use with
 #  make HTOPTS=whatever html
@@ -57,28 +229,6 @@ installdirs-html:
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
@@ -86,12 +236,9 @@ uninstall-html:
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

