Return-Path: <linux-man+bounces-2336-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF198A256B7
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 11:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F21A3A56BD
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 10:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0211C200BB5;
	Mon,  3 Feb 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfLp+41h"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62CA1FBCBD
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 10:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738577632; cv=none; b=ta/KL3sRNOxlEmV0U68uU2GU/D6eDLVW6Yj8R0HPj3wK9nLeOWa2QycOPDzcYGaydzE3RpESZj7RHtsxU0Otg36k9hv3Zx0zFNBY1wYCBgz/D+dvaLe5qDjyumoM4/qFIZaNflZXcZY5EJ9vicg3KxNhtecKSZ71f9wR/kQl6i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738577632; c=relaxed/simple;
	bh=xwDvvmqzddKI9ZyoO0i7K8ztqLDM0MddakKW52O2gjY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e5aj7nzWfwQ8XGXb2ZdmMHfQGGlJOCrN47JiVve0zxgpiWXYdEB7A5gzdQZd6btaPi66e1M+3+ymT6Pinjo3MApEfR6zHSonUp36HLuUSaZ527q+4k/8pbPdyzuseCqf24ozFAX0zgh+0lwCMprQHiGlgqV6kUO1mDM3mJTf38E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfLp+41h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9BDFC4CED2;
	Mon,  3 Feb 2025 10:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738577632;
	bh=xwDvvmqzddKI9ZyoO0i7K8ztqLDM0MddakKW52O2gjY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hfLp+41hS/tr2GLHavU2NuknBTqOrJWNno01tf6R3uT/iJrQXhifj8xXepYmxmj8i
	 hFxjxWvs/dRjAp7T3TvrS7tej/HOpOEve39aQj0pIBOLGS2lhE/GRpALjMHETJD2+W
	 9zLGsqQYvNjUJJuPgh2QnnlbIVYsOs48ZGrP7W6KNE+bwDCA7tH5vEHKsh4JNSJ+qt
	 7HVwWdjJUlKSp7NnXvDVuZGcCGGX8cSI3kdYm8QmyMwbfElBArRqmFUMxpIHQUkiS+
	 olEhl88Me9q4DfL1kDuGxQEBFACzZxAHxsz+wTteuwpiidFZmC76a1EagXi+fF/4NZ
	 PbXwArP5Tu77Q==
Date: Mon, 3 Feb 2025 11:13:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Sam James <sam@gentoo.org>,
	Paul Smith <psmith@gnu.org>, Guenther Noack <gnoack@google.com>
Subject: [PATCH 2/3] share/mk/: Use ?= assignments for user-facing variables
Message-ID: <79eb1c9e9425f7c17378b23dd7053482523067e4.1738577250.git.alx@kernel.org>
References: <cover.1738577250.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1738577250.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2

This allows users specifying them as environment variables.

Cc: Sam James <sam@gentoo.org>
Cc: Paul Smith <psmith@gnu.org>
Cc: Guenther Noack <gnoack@google.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 GNUmakefile                                   |  2 +-
 .../mk/configure/build-depends/binutils/ld.mk |  8 +++----
 .../build-depends/bsdextrautils/col.mk        |  6 ++---
 .../mk/configure/build-depends/bzip2/bzip2.mk |  6 ++---
 .../build-depends/checkpatch/checkpatch.mk    |  6 ++---
 .../build-depends/clang-tidy/clang-tidy.mk    |  6 ++---
 .../mk/configure/build-depends/clang/clang.mk |  4 ++--
 .../configure/build-depends/coreutils/cat.mk  |  2 +-
 .../configure/build-depends/coreutils/cp.mk   |  2 +-
 .../configure/build-depends/coreutils/cut.mk  |  2 +-
 .../configure/build-depends/coreutils/echo.mk |  2 +-
 .../configure/build-depends/coreutils/expr.mk |  2 +-
 .../configure/build-depends/coreutils/head.mk |  2 +-
 .../build-depends/coreutils/install.mk        |  8 +++----
 .../configure/build-depends/coreutils/ln.mk   |  2 +-
 .../build-depends/coreutils/mkdir.mk          |  2 +-
 .../build-depends/coreutils/realpath.mk       |  2 +-
 .../configure/build-depends/coreutils/rm.mk   |  2 +-
 .../configure/build-depends/coreutils/sort.mk |  2 +-
 .../configure/build-depends/coreutils/stat.mk |  2 +-
 .../configure/build-depends/coreutils/tac.mk  |  2 +-
 .../configure/build-depends/coreutils/tail.mk |  2 +-
 .../configure/build-depends/coreutils/test.mk |  2 +-
 .../build-depends/coreutils/touch.mk          |  2 +-
 .../configure/build-depends/coreutils/true.mk |  2 +-
 share/mk/configure/build-depends/cpp/cpp.mk   |  6 ++---
 .../build-depends/cppcheck/cppcheck.mk        |  6 ++---
 .../build-depends/cpplint/cpplint.mk          |  6 ++---
 .../build-depends/diffoscope/diffoscope.mk    |  2 +-
 .../configure/build-depends/findutils/find.mk |  2 +-
 .../build-depends/findutils/xargs.mk          |  2 +-
 .../build-depends/fontforge/fontforge.mk      |  6 ++---
 share/mk/configure/build-depends/gcc/cc.mk    |  6 ++---
 share/mk/configure/build-depends/git/git.mk   |  2 +-
 share/mk/configure/build-depends/grep/grep.mk |  2 +-
 .../configure/build-depends/groff-base/eqn.mk |  6 ++---
 .../build-depends/groff-base/grops.mk         |  6 ++---
 .../build-depends/groff-base/grotty.mk        |  6 ++---
 .../build-depends/groff-base/nroff.mk         | 10 ++++-----
 .../configure/build-depends/groff-base/pic.mk |  6 ++---
 .../build-depends/groff-base/preconv.mk       |  6 ++---
 .../configure/build-depends/groff-base/tbl.mk |  2 +-
 .../build-depends/groff-base/troff.mk         |  6 ++---
 .../configure/build-depends/groff/afmtodit.mk | 10 ++++-----
 .../configure/build-depends/groff/gropdf.mk   |  6 ++---
 .../configure/build-depends/groff/pfbtops.mk  |  6 ++---
 .../build-depends/groff/post-grohtml.mk       |  6 ++---
 share/mk/configure/build-depends/gzip/gzip.mk |  6 ++---
 share/mk/configure/build-depends/iwyu/iwyu.mk |  6 ++---
 .../build-depends/libc-bin/locale.mk          |  2 +-
 share/mk/configure/build-depends/lzip/lzip.mk |  6 ++---
 .../configure/build-depends/mandoc/mandoc.mk  |  6 ++---
 .../build-depends/moreutils/sponge.mk         |  2 +-
 .../build-depends/pkgconf/pkgconf.mk          |  8 +++----
 share/mk/configure/build-depends/sed/sed.mk   |  2 +-
 .../build-depends/shellcheck/shellcheck.mk    |  6 ++---
 share/mk/configure/build-depends/tar/tar.mk   |  6 ++---
 .../Tinos-Regular.ttf.mk                      |  2 +-
 .../texlive-fonts-extra/Tinos.pfb.mk          |  2 +-
 .../mk/configure/build-depends/xz-utils/xz.mk |  6 ++---
 .../mk/configure/directory_variables/build.mk |  2 +-
 .../configure/directory_variables/install.mk  | 22 +++++++++----------
 share/mk/configure/man/link_pages.mk          |  2 +-
 share/mk/configure/version.mk                 | 10 ++++-----
 share/mk/configure/xfail.mk                   |  2 +-
 65 files changed, 147 insertions(+), 147 deletions(-)

diff --git a/GNUmakefile b/GNUmakefile
index 2ed8bcc30..cfc6d2409 100644
--- a/GNUmakefile
+++ b/GNUmakefile
@@ -18,7 +18,7 @@ MAKEFLAGS += --no-builtin-variables
 MAKEFLAGS += --warn-undefined-variables
 
 
-srcdir      := .
+srcdir      ?= .
 MAKEFILEDIR := $(CURDIR)/share/mk
 
 
diff --git a/share/mk/configure/build-depends/binutils/ld.mk b/share/mk/configure/build-depends/binutils/ld.mk
index be5098a1c..dd73845bf 100644
--- a/share/mk/configure/build-depends/binutils/ld.mk
+++ b/share/mk/configure/build-depends/binutils/ld.mk
@@ -13,7 +13,7 @@ include $(MAKEFILEDIR)/configure/build-depends/pkgconf/pkgconf.mk
 include $(MAKEFILEDIR)/configure/verbose.mk
 
 
-LD := $(CC) $(CFLAGS_) $(CPPFLAGS_)
+LD ?= $(CC) $(CFLAGS_) $(CPPFLAGS_)
 
 
 LD_HAS_FUSE_LINKER_PLUGIN := \
@@ -37,15 +37,15 @@ ifeq ($(LD_HAS_FUSE_LINKER_PLUGIN),yes)
 DEFAULT_LDFLAGS += -fuse-linker-plugin
 endif
 
-LDFLAGS         :=
-LDFLAGS_        := $(DEFAULT_LDFLAGS) $(LDFLAGS)
+LDFLAGS         ?=
+LDFLAGS_        ?= $(DEFAULT_LDFLAGS) $(LDFLAGS)
 
 
 DEFAULT_LDLIBS := \
 	-lc \
 	$(shell $(PKGCONF_CMD) --libs-only-l $(PKGCONF_LIBS) $(HIDE_ERR))
 LDLIBS         ?=
-LDLIBS_        := $(DEFAULT_LDLIBS) $(LDLIBS)
+LDLIBS_        ?= $(DEFAULT_LDLIBS) $(LDLIBS)
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/bsdextrautils/col.mk b/share/mk/configure/build-depends/bsdextrautils/col.mk
index 9586677dd..ea65dabc9 100644
--- a/share/mk/configure/build-depends/bsdextrautils/col.mk
+++ b/share/mk/configure/build-depends/bsdextrautils/col.mk
@@ -10,9 +10,9 @@ DEFAULT_COLFLAGS := \
 	-b \
 	-p \
 	-x
-COLFLAGS         :=
-COLFLAGS_        := $(DEFAULT_COLFLAGS) $(COLFLAGS)
-COL              := col
+COLFLAGS         ?=
+COLFLAGS_        ?= $(DEFAULT_COLFLAGS) $(COLFLAGS)
+COL              ?= col
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/bzip2/bzip2.mk b/share/mk/configure/build-depends/bzip2/bzip2.mk
index aa915ed19..db516d8f0 100644
--- a/share/mk/configure/build-depends/bzip2/bzip2.mk
+++ b/share/mk/configure/build-depends/bzip2/bzip2.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_BZIP2_BZIP2_INCLUDED := 1
 
 
 DEFAULT_BZIP2FLAGS :=
-BZIP2FLAGS         :=
-BZIP2FLAGS_        := $(DEFAULT_BZIP2FLAGS) $(BZIP2FLAGS)
-BZIP2              := bzip2
+BZIP2FLAGS         ?=
+BZIP2FLAGS_        ?= $(DEFAULT_BZIP2FLAGS) $(BZIP2FLAGS)
+BZIP2              ?= bzip2
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/checkpatch/checkpatch.mk b/share/mk/configure/build-depends/checkpatch/checkpatch.mk
index 0cd88e297..de7bb7d9b 100644
--- a/share/mk/configure/build-depends/checkpatch/checkpatch.mk
+++ b/share/mk/configure/build-depends/checkpatch/checkpatch.mk
@@ -11,9 +11,9 @@ include $(MAKEFILEDIR)/configure/directory_variables/src.mk
 
 CHECKPATCH_CONF         := $(SYSCONFDIR)/checkpatch/checkpatch.conf
 DEFAULT_CHECKPATCHFLAGS :=
-CHECKPATCHFLAGS         :=
-CHECKPATCHFLAGS_        := $(DEFAULT_CHECKPATCHFLAGS) $(CHECKPATCHFLAGS)
-CHECKPATCH              := checkpatch
+CHECKPATCHFLAGS         ?=
+CHECKPATCHFLAGS_        ?= $(DEFAULT_CHECKPATCHFLAGS) $(CHECKPATCHFLAGS)
+CHECKPATCH              ?= checkpatch
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/clang-tidy/clang-tidy.mk b/share/mk/configure/build-depends/clang-tidy/clang-tidy.mk
index 810769f6e..24f8b12dc 100644
--- a/share/mk/configure/build-depends/clang-tidy/clang-tidy.mk
+++ b/share/mk/configure/build-depends/clang-tidy/clang-tidy.mk
@@ -14,9 +14,9 @@ DEFAULT_CLANG_TIDYFLAGS := \
 	--config-file=$(CLANG_TIDY_CONF) \
 	--quiet \
 	--use-color
-CLANG_TIDYFLAGS         :=
-CLANG_TIDYFLAGS_        := $(DEFAULT_CLANG_TIDYFLAGS) $(CLANG_TIDYFLAGS)
-CLANG_TIDY              := clang-tidy
+CLANG_TIDYFLAGS         ?=
+CLANG_TIDYFLAGS_        ?= $(DEFAULT_CLANG_TIDYFLAGS) $(CLANG_TIDYFLAGS)
+CLANG_TIDY              ?= clang-tidy
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/clang/clang.mk b/share/mk/configure/build-depends/clang/clang.mk
index a9e7a2959..d95c7e080 100644
--- a/share/mk/configure/build-depends/clang/clang.mk
+++ b/share/mk/configure/build-depends/clang/clang.mk
@@ -12,8 +12,8 @@ include $(MAKEFILEDIR)/configure/build-depends/gcc/cc.mk
 DEFAULT_CLANGFLAGS := \
 	$(COMMON_CFLAGS) \
 	$(CLANG_CFLAGS)
-CLANGFLAGS         :=
-CLANGFLAGS_        := $(DEFAULT_CLANGFLAGS) $(CLANGFLAGS)
+CLANGFLAGS         ?=
+CLANGFLAGS_        ?= $(DEFAULT_CLANGFLAGS) $(CLANGFLAGS)
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/cat.mk b/share/mk/configure/build-depends/coreutils/cat.mk
index fa9659569..45bb88d82 100644
--- a/share/mk/configure/build-depends/coreutils/cat.mk
+++ b/share/mk/configure/build-depends/coreutils/cat.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_CAT_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_CAT_INCLUDED := 1
 
 
-CAT := cat
+CAT ?= cat
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/cp.mk b/share/mk/configure/build-depends/coreutils/cp.mk
index 64814dc09..1ae81f152 100644
--- a/share/mk/configure/build-depends/coreutils/cp.mk
+++ b/share/mk/configure/build-depends/coreutils/cp.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_CP_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_CP_INCLUDED := 1
 
 
-CP := cp
+CP ?= cp
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/cut.mk b/share/mk/configure/build-depends/coreutils/cut.mk
index e7a7ebded..07e5dbe44 100644
--- a/share/mk/configure/build-depends/coreutils/cut.mk
+++ b/share/mk/configure/build-depends/coreutils/cut.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_CUT_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_CUT_INCLUDED := 1
 
 
-CUT := cut
+CUT ?= cut
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/echo.mk b/share/mk/configure/build-depends/coreutils/echo.mk
index 272d86cf4..79b983837 100644
--- a/share/mk/configure/build-depends/coreutils/echo.mk
+++ b/share/mk/configure/build-depends/coreutils/echo.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_ECHO_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_ECHO_INCLUDED := 1
 
 
-ECHO := echo
+ECHO ?= echo
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/expr.mk b/share/mk/configure/build-depends/coreutils/expr.mk
index 18ca0e11c..19e196b6d 100644
--- a/share/mk/configure/build-depends/coreutils/expr.mk
+++ b/share/mk/configure/build-depends/coreutils/expr.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_EXPR_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_EXPR_INCLUDED := 1
 
 
-EXPR := expr
+EXPR ?= expr
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/head.mk b/share/mk/configure/build-depends/coreutils/head.mk
index a3fbb3e4b..5dac509a1 100644
--- a/share/mk/configure/build-depends/coreutils/head.mk
+++ b/share/mk/configure/build-depends/coreutils/head.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_HEAD_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_HEAD_INCLUDED := 1
 
 
-HEAD := head
+HEAD ?= head
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/install.mk b/share/mk/configure/build-depends/coreutils/install.mk
index 47c9b0911..c9305fa35 100644
--- a/share/mk/configure/build-depends/coreutils/install.mk
+++ b/share/mk/configure/build-depends/coreutils/install.mk
@@ -6,12 +6,12 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_INSTALL_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_INSTALL_INCLUDED := 1
 
 
-INSTALL := install
+INSTALL ?= install
 
 
-INSTALL_DATA    := $(INSTALL) -m 644
-INSTALL_DIR     := $(INSTALL) -m 755 -d
-INSTALL_PROGRAM := $(INSTALL) -m 755
+INSTALL_DATA    ?= $(INSTALL) -m 644
+INSTALL_DIR     ?= $(INSTALL) -m 755 -d
+INSTALL_PROGRAM ?= $(INSTALL) -m 755
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/ln.mk b/share/mk/configure/build-depends/coreutils/ln.mk
index a520de712..b029bcf02 100644
--- a/share/mk/configure/build-depends/coreutils/ln.mk
+++ b/share/mk/configure/build-depends/coreutils/ln.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_LN_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_LN_INCLUDED := 1
 
 
-LN := ln
+LN ?= ln
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/mkdir.mk b/share/mk/configure/build-depends/coreutils/mkdir.mk
index 77def5dad..52f378252 100644
--- a/share/mk/configure/build-depends/coreutils/mkdir.mk
+++ b/share/mk/configure/build-depends/coreutils/mkdir.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_MKDIR_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_MKDIR_INCLUDED := 1
 
 
-MKDIR := mkdir
+MKDIR ?= mkdir
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/realpath.mk b/share/mk/configure/build-depends/coreutils/realpath.mk
index 7883f9719..128ac5a95 100644
--- a/share/mk/configure/build-depends/coreutils/realpath.mk
+++ b/share/mk/configure/build-depends/coreutils/realpath.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_REALPATH_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_REALPATH_INCLUDED := 1
 
 
-REALPATH := realpath
+REALPATH ?= realpath
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/rm.mk b/share/mk/configure/build-depends/coreutils/rm.mk
index 3c26518bb..ed0802de3 100644
--- a/share/mk/configure/build-depends/coreutils/rm.mk
+++ b/share/mk/configure/build-depends/coreutils/rm.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_RM_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_RM_INCLUDED := 1
 
 
-RM := rm
+RM ?= rm
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/sort.mk b/share/mk/configure/build-depends/coreutils/sort.mk
index 4871d54a6..9a3313658 100644
--- a/share/mk/configure/build-depends/coreutils/sort.mk
+++ b/share/mk/configure/build-depends/coreutils/sort.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_SORT_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_SORT_INCLUDED := 1
 
 
-SORT := sort
+SORT ?= sort
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/stat.mk b/share/mk/configure/build-depends/coreutils/stat.mk
index a04c9567d..3acab1299 100644
--- a/share/mk/configure/build-depends/coreutils/stat.mk
+++ b/share/mk/configure/build-depends/coreutils/stat.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_STAT_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_STAT_INCLUDED := 1
 
 
-STAT := stat
+STAT ?= stat
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/tac.mk b/share/mk/configure/build-depends/coreutils/tac.mk
index 2ad296ab1..01fe03146 100644
--- a/share/mk/configure/build-depends/coreutils/tac.mk
+++ b/share/mk/configure/build-depends/coreutils/tac.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TAC_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TAC_INCLUDED := 1
 
 
-TAC := tac
+TAC ?= tac
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/tail.mk b/share/mk/configure/build-depends/coreutils/tail.mk
index 514391eae..146bd9ae2 100644
--- a/share/mk/configure/build-depends/coreutils/tail.mk
+++ b/share/mk/configure/build-depends/coreutils/tail.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TAIL_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TAIL_INCLUDED := 1
 
 
-TAIL := tail
+TAIL ?= tail
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/test.mk b/share/mk/configure/build-depends/coreutils/test.mk
index 1343fa6f5..64ac295f5 100644
--- a/share/mk/configure/build-depends/coreutils/test.mk
+++ b/share/mk/configure/build-depends/coreutils/test.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TEST_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TEST_INCLUDED := 1
 
 
-TEST := test
+TEST ?= test
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/touch.mk b/share/mk/configure/build-depends/coreutils/touch.mk
index 2db533a6b..1f04f69a7 100644
--- a/share/mk/configure/build-depends/coreutils/touch.mk
+++ b/share/mk/configure/build-depends/coreutils/touch.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TOUCH_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TOUCH_INCLUDED := 1
 
 
-TOUCH := touch
+TOUCH ?= touch
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/coreutils/true.mk b/share/mk/configure/build-depends/coreutils/true.mk
index 2295c2fdb..570a42444 100644
--- a/share/mk/configure/build-depends/coreutils/true.mk
+++ b/share/mk/configure/build-depends/coreutils/true.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TRUE_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_COREUTILS_TRUE_INCLUDED := 1
 
 
-TRUE := true
+TRUE ?= true
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/cpp/cpp.mk b/share/mk/configure/build-depends/cpp/cpp.mk
index 367be0c5c..594215892 100644
--- a/share/mk/configure/build-depends/cpp/cpp.mk
+++ b/share/mk/configure/build-depends/cpp/cpp.mk
@@ -13,7 +13,7 @@ include $(MAKEFILEDIR)/configure/build-depends/pkgconf/pkgconf.mk
 include $(MAKEFILEDIR)/configure/verbose.mk
 
 
-CPP := $(CC) $(CFLAGS_) -E
+CPP ?= $(CC) $(CFLAGS_) -E
 
 
 CPP_HAS_ALREADY_D_FORTIFY_SOURCE := \
@@ -30,8 +30,8 @@ DEFAULT_CPPFLAGS := \
 ifeq ($(CPP_HAS_ALREADY_D_FORTIFY_SOURCE),no)
 DEFAULT_CPPFLAGS += -D_FORTIFY_SOURCE=2
 endif
-CPPFLAGS         :=
-CPPFLAGS_        := $(DEFAULT_CPPFLAGS) $(CPPFLAGS)
+CPPFLAGS         ?=
+CPPFLAGS_        ?= $(DEFAULT_CPPFLAGS) $(CPPFLAGS)
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/cppcheck/cppcheck.mk b/share/mk/configure/build-depends/cppcheck/cppcheck.mk
index bd69c07b0..6a613632e 100644
--- a/share/mk/configure/build-depends/cppcheck/cppcheck.mk
+++ b/share/mk/configure/build-depends/cppcheck/cppcheck.mk
@@ -17,9 +17,9 @@ DEFAULT_CPPCHECKFLAGS := \
 	--check-level=exhaustive \
 	--quiet \
 	--suppressions-list=$(CPPCHECK_SUPPRESS)
-CPPCHECKFLAGS         :=
-CPPCHECKFLAGS_        := $(DEFAULT_CPPCHECKFLAGS) $(CPPCHECKFLAGS)
-CPPCHECK              := cppcheck
+CPPCHECKFLAGS         ?=
+CPPCHECKFLAGS_        ?= $(DEFAULT_CPPCHECKFLAGS) $(CPPCHECKFLAGS)
+CPPCHECK              ?= cppcheck
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/cpplint/cpplint.mk b/share/mk/configure/build-depends/cpplint/cpplint.mk
index 5d7f9a043..29a62786e 100644
--- a/share/mk/configure/build-depends/cpplint/cpplint.mk
+++ b/share/mk/configure/build-depends/cpplint/cpplint.mk
@@ -11,9 +11,9 @@ include $(MAKEFILEDIR)/configure/directory_variables/src.mk
 
 CPPLINT_CONF         := $(SYSCONFDIR)/cpplint/cpplint.cfg
 DEFAULT_CPPLINTFLAGS :=
-CPPLINTFLAGS         :=
-CPPLINTFLAGS_        := $(DEFAULT_CPPLINTFLAGS) $(CPPLINTFLAGS)
-CPPLINT              := cpplint
+CPPLINTFLAGS         ?=
+CPPLINTFLAGS_        ?= $(DEFAULT_CPPLINTFLAGS) $(CPPLINTFLAGS)
+CPPLINT              ?= cpplint
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/diffoscope/diffoscope.mk b/share/mk/configure/build-depends/diffoscope/diffoscope.mk
index 032a0c686..1827f6c07 100644
--- a/share/mk/configure/build-depends/diffoscope/diffoscope.mk
+++ b/share/mk/configure/build-depends/diffoscope/diffoscope.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_DIFFOSCOPE_DIFFOSCOPE_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_DIFFOSCOPE_DIFFOSCOPE_INCLUDED := 1
 
 
-DIFFOSCOPE := diffoscope
+DIFFOSCOPE ?= diffoscope
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/findutils/find.mk b/share/mk/configure/build-depends/findutils/find.mk
index 1525f0e3a..00e985840 100644
--- a/share/mk/configure/build-depends/findutils/find.mk
+++ b/share/mk/configure/build-depends/findutils/find.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_FINDUTILS_FIND_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_FINDUTILS_FIND_INCLUDED := 1
 
 
-FIND := find
+FIND ?= find
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/findutils/xargs.mk b/share/mk/configure/build-depends/findutils/xargs.mk
index dffa0098f..06d4b9f3d 100644
--- a/share/mk/configure/build-depends/findutils/xargs.mk
+++ b/share/mk/configure/build-depends/findutils/xargs.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_FINDUTILS_XARGS_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_FINDUTILS_XARGS_INCLUDED := 1
 
 
-XARGS := xargs
+XARGS ?= xargs
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/fontforge/fontforge.mk b/share/mk/configure/build-depends/fontforge/fontforge.mk
index b4161562f..cbf08b6f8 100644
--- a/share/mk/configure/build-depends/fontforge/fontforge.mk
+++ b/share/mk/configure/build-depends/fontforge/fontforge.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_FONTFORGE_FONTFORGE_INCLUDED := 1
 
 
 DEFAULT_FONTFORGEFLAGS :=
-FONTFORGEFLAGS         :=
-FONTFORGEFLAGS_        := $(DEFAULT_FONTFORGEFLAGS) $(FONTFORGEFLAGS)
-FONTFORGE              := fontforge
+FONTFORGEFLAGS         ?=
+FONTFORGEFLAGS_        ?= $(DEFAULT_FONTFORGEFLAGS) $(FONTFORGEFLAGS)
+FONTFORGE              ?= fontforge
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/gcc/cc.mk b/share/mk/configure/build-depends/gcc/cc.mk
index 4cf3c16ee..c443cebfd 100644
--- a/share/mk/configure/build-depends/gcc/cc.mk
+++ b/share/mk/configure/build-depends/gcc/cc.mk
@@ -11,7 +11,7 @@ include $(MAKEFILEDIR)/configure/build-depends/grep/grep.mk
 include $(MAKEFILEDIR)/configure/build-depends/sed/sed.mk
 
 
-CC := gcc
+CC ?= gcc
 
 
 CC_VENDOR := \
@@ -61,8 +61,8 @@ else ifeq ($(CC_VENDOR),clang)
 DEFAULT_CFLAGS += $(CLANG_CFLAGS)
 endif
 
-CFLAGS         :=
-CFLAGS_        := $(DEFAULT_CFLAGS) $(CFLAGS)
+CFLAGS         ?=
+CFLAGS_        ?= $(DEFAULT_CFLAGS) $(CFLAGS)
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/git/git.mk b/share/mk/configure/build-depends/git/git.mk
index 29c309056..d0ed55250 100644
--- a/share/mk/configure/build-depends/git/git.mk
+++ b/share/mk/configure/build-depends/git/git.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_GIT_GIT_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_GIT_GIT_INCLUDED := 1
 
 
-GIT := git
+GIT ?= git
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/grep/grep.mk b/share/mk/configure/build-depends/grep/grep.mk
index 9b1afa58a..875e1128a 100644
--- a/share/mk/configure/build-depends/grep/grep.mk
+++ b/share/mk/configure/build-depends/grep/grep.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_GREP_GREP_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_GREP_GREP_INCLUDED := 1
 
 
-GREP := grep
+GREP ?= grep
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff-base/eqn.mk b/share/mk/configure/build-depends/groff-base/eqn.mk
index adb6eb82d..9fed05316 100644
--- a/share/mk/configure/build-depends/groff-base/eqn.mk
+++ b/share/mk/configure/build-depends/groff-base/eqn.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_BASE_EQN_INCLUDED := 1
 
 
 DEFAULT_EQNFLAGS :=
-EQNFLAGS         :=
-EQNFLAGS_        := $(DEFAULT_EQNFLAGS) $(EQNFLAGS)
-EQN              := eqn
+EQNFLAGS         ?=
+EQNFLAGS_        ?= $(DEFAULT_EQNFLAGS) $(EQNFLAGS)
+EQN              ?= eqn
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff-base/grops.mk b/share/mk/configure/build-depends/groff-base/grops.mk
index 2cd15a14f..781751791 100644
--- a/share/mk/configure/build-depends/groff-base/grops.mk
+++ b/share/mk/configure/build-depends/groff-base/grops.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_BASE_GROPS_INCLUDED := 1
 
 
 DEFAULT_GROPSFLAGS :=
-GROPSFLAGS         :=
-GROPSFLAGS_        := $(DEFAULT_GROPSFLAGS) $(GROPSFLAGS)
-GROPS              := grops
+GROPSFLAGS         ?=
+GROPSFLAGS_        ?= $(DEFAULT_GROPSFLAGS) $(GROPSFLAGS)
+GROPS              ?= grops
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff-base/grotty.mk b/share/mk/configure/build-depends/groff-base/grotty.mk
index fdc9c1396..05055045e 100644
--- a/share/mk/configure/build-depends/groff-base/grotty.mk
+++ b/share/mk/configure/build-depends/groff-base/grotty.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_BASE_GROTTY_INCLUDED := 1
 
 
 DEFAULT_GROTTYFLAGS := -c
-GROTTYFLAGS         :=
-GROTTYFLAGS_        := $(DEFAULT_GROTTYFLAGS) $(GROTTYFLAGS)
-GROTTY              := grotty
+GROTTYFLAGS         ?=
+GROTTYFLAGS_        ?= $(DEFAULT_GROTTYFLAGS) $(GROTTYFLAGS)
+GROTTY              ?= grotty
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff-base/nroff.mk b/share/mk/configure/build-depends/groff-base/nroff.mk
index 6524c81e6..c1c70cec7 100644
--- a/share/mk/configure/build-depends/groff-base/nroff.mk
+++ b/share/mk/configure/build-depends/groff-base/nroff.mk
@@ -13,9 +13,9 @@ include $(MAKEFILEDIR)/configure/build-depends/libc-bin/locale.mk
 include $(MAKEFILEDIR)/configure/build-depends/man/man.mk
 
 
-NROFF_CHECKSTYLE_LVL := 3
-NROFF_LINE_LENGTH    := $(shell $(EXPR) $(MANWIDTH) - 2)
-NROFF_OUT_DEVICE     := \
+NROFF_CHECKSTYLE_LVL ?= 3
+NROFF_LINE_LENGTH    ?= $(shell $(EXPR) $(MANWIDTH) - 2)
+NROFF_OUT_DEVICE     ?= \
 	$(shell $(LOCALE) charmap \
 		| $(GREP) -i 'utf-*8' >/dev/null \
 		&& $(ECHO) utf8 \
@@ -28,8 +28,8 @@ DEFAULT_NROFFFLAGS := \
 	-rLL=$(NROFF_LINE_LENGTH)n \
 	-rCHECKSTYLE=$(NROFF_CHECKSTYLE_LVL) \
 	-ww
-NROFFFLAGS         :=
-NROFFFLAGS_        := $(DEFAULT_NROFFFLAGS) $(NROFFFLAGS)
+NROFFFLAGS         ?=
+NROFFFLAGS_        ?= $(DEFAULT_NROFFFLAGS) $(NROFFFLAGS)
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff-base/pic.mk b/share/mk/configure/build-depends/groff-base/pic.mk
index 40e35ebb4..3b10a66d7 100644
--- a/share/mk/configure/build-depends/groff-base/pic.mk
+++ b/share/mk/configure/build-depends/groff-base/pic.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_BASE_PIC_INCLUDED := 1
 
 
 DEFAULT_PICFLAGS :=
-PICFLAGS         :=
-PICFLAGS_        := $(DEFAULT_PICFLAGS) $(PICFLAGS)
-PIC              := pic
+PICFLAGS         ?=
+PICFLAGS_        ?= $(DEFAULT_PICFLAGS) $(PICFLAGS)
+PIC              ?= pic
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff-base/preconv.mk b/share/mk/configure/build-depends/groff-base/preconv.mk
index 9a5acd251..e1dfc95fc 100644
--- a/share/mk/configure/build-depends/groff-base/preconv.mk
+++ b/share/mk/configure/build-depends/groff-base/preconv.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_BASE_PRECONV_INCLUDED := 1
 
 
 DEFAULT_PRECONVFLAGS :=
-PRECONVFLAGS         :=
-PRECONVFLAGS_        := $(DEFAULT_PRECONVFLAGS) $(PRECONVFLAGS)
-PRECONV              := preconv
+PRECONVFLAGS         ?=
+PRECONVFLAGS_        ?= $(DEFAULT_PRECONVFLAGS) $(PRECONVFLAGS)
+PRECONV              ?= preconv
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff-base/tbl.mk b/share/mk/configure/build-depends/groff-base/tbl.mk
index ff87a6241..f1e8889ba 100644
--- a/share/mk/configure/build-depends/groff-base/tbl.mk
+++ b/share/mk/configure/build-depends/groff-base/tbl.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_BASE_TBL_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_BASE_TBL_INCLUDED := 1
 
 
-TBL := tbl
+TBL ?= tbl
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff-base/troff.mk b/share/mk/configure/build-depends/groff-base/troff.mk
index dff9fb35f..533f9bbfc 100644
--- a/share/mk/configure/build-depends/groff-base/troff.mk
+++ b/share/mk/configure/build-depends/groff-base/troff.mk
@@ -10,9 +10,9 @@ DEFAULT_TROFFFLAGS := \
 	-wbreak \
 	-rS12 \
 	-rU0
-TROFFFLAGS         :=
-TROFFFLAGS_        := $(DEFAULT_TROFFFLAGS) $(TROFFFLAGS)
-TROFF              := troff
+TROFFFLAGS         ?=
+TROFFFLAGS_        ?= $(DEFAULT_TROFFFLAGS) $(TROFFFLAGS)
+TROFF              ?= troff
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff/afmtodit.mk b/share/mk/configure/build-depends/groff/afmtodit.mk
index 9cb1e7faf..75cef85e9 100644
--- a/share/mk/configure/build-depends/groff/afmtodit.mk
+++ b/share/mk/configure/build-depends/groff/afmtodit.mk
@@ -6,14 +6,14 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_AFMTODIT_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_AFMTODIT_INCLUDED := 1
 
 
-PDF_TEXT_ENC := /usr/share/groff/current/font/devpdf/enc/text.enc
-PDF_TEXT_MAP := /usr/share/groff/current/font/devpdf/map/text.map
+PDF_TEXT_ENC ?= /usr/share/groff/current/font/devpdf/enc/text.enc
+PDF_TEXT_MAP ?= /usr/share/groff/current/font/devpdf/map/text.map
 
 
 DEFAULT_AFMTODITFLAGS :=
-AFMTODITFLAGS         :=
-AFMTODITFLAGS_        := $(DEFAULT_AFMTODITFLAGS) $(AFMTODITFLAGS)
-AFMTODIT              := afmtodit
+AFMTODITFLAGS         ?=
+AFMTODITFLAGS_        ?= $(DEFAULT_AFMTODITFLAGS) $(AFMTODITFLAGS)
+AFMTODIT              ?= afmtodit
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff/gropdf.mk b/share/mk/configure/build-depends/groff/gropdf.mk
index 2e595819c..61b19a561 100644
--- a/share/mk/configure/build-depends/groff/gropdf.mk
+++ b/share/mk/configure/build-depends/groff/gropdf.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_GROPDF_INCLUDED := 1
 
 
 DEFAULT_GROPDFFLAGS :=
-GROPDFFLAGS         :=
-GROPDFFLAGS_        := $(DEFAULT_GROPDFFLAGS) $(GROPDFFLAGS)
-GROPDF              := gropdf
+GROPDFFLAGS         ?=
+GROPDFFLAGS_        ?= $(DEFAULT_GROPDFFLAGS) $(GROPDFFLAGS)
+GROPDF              ?= gropdf
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff/pfbtops.mk b/share/mk/configure/build-depends/groff/pfbtops.mk
index 8591d692a..dd6982caf 100644
--- a/share/mk/configure/build-depends/groff/pfbtops.mk
+++ b/share/mk/configure/build-depends/groff/pfbtops.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_PFBTOPS_INCLUDED := 1
 
 
 DEFAULT_PFBTOPSFLAGS :=
-PFBTOPSFLAGS         :=
-PFBTOPSFLAGS_        := $(DEFAULT_PFBTOPSFLAGS) $(PFBTOPSFLAGS)
-PFBTOPS              := pfbtops
+PFBTOPSFLAGS         ?=
+PFBTOPSFLAGS_        ?= $(DEFAULT_PFBTOPSFLAGS) $(PFBTOPSFLAGS)
+PFBTOPS              ?= pfbtops
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/groff/post-grohtml.mk b/share/mk/configure/build-depends/groff/post-grohtml.mk
index 3af01c049..ed66bdcb2 100644
--- a/share/mk/configure/build-depends/groff/post-grohtml.mk
+++ b/share/mk/configure/build-depends/groff/post-grohtml.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_GROFF_POST_GROHTML_INCLUDED := 1
 
 
 DEFAULT_POST_GROHTMLFLAGS :=
-POST_GROHTMLFLAGS         :=
-POST_GROHTMLFLAGS_        := $(DEFAULT_POST_GROHTMLFLAGS) $(POST_GROHTMLFLAGS)
-POST_GROHTML              := post-grohtml
+POST_GROHTMLFLAGS         ?=
+POST_GROHTMLFLAGS_        ?= $(DEFAULT_POST_GROHTMLFLAGS) $(POST_GROHTMLFLAGS)
+POST_GROHTML              ?= post-grohtml
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/gzip/gzip.mk b/share/mk/configure/build-depends/gzip/gzip.mk
index 133c15bcb..82b3f57f3 100644
--- a/share/mk/configure/build-depends/gzip/gzip.mk
+++ b/share/mk/configure/build-depends/gzip/gzip.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_GZIP_GZIP_INCLUDED := 1
 
 
 DEFAULT_GZIPFLAGS := -n
-GZIPFLAGS         :=
-GZIPFLAGS_        := $(DEFAULT_GZIPFLAGS) $(GZIPFLAGS)
-GZIP              := gzip
+GZIPFLAGS         ?=
+GZIPFLAGS_        ?= $(DEFAULT_GZIPFLAGS) $(GZIPFLAGS)
+GZIP              ?= gzip
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/iwyu/iwyu.mk b/share/mk/configure/build-depends/iwyu/iwyu.mk
index 7e2f480a0..3c22f7733 100644
--- a/share/mk/configure/build-depends/iwyu/iwyu.mk
+++ b/share/mk/configure/build-depends/iwyu/iwyu.mk
@@ -9,9 +9,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_IWYU_IWYU_INCLUDED := 1
 DEFAULT_IWYUFLAGS := \
 	-Xiwyu --no_fwd_decls \
 	-Xiwyu --error
-IWYUFLAGS         :=
-IWYUFLAGS_        := $(DEFAULT_IWYUFLAGS) $(IWYUFLAGS)
-IWYU              := iwyu
+IWYUFLAGS         ?=
+IWYUFLAGS_        ?= $(DEFAULT_IWYUFLAGS) $(IWYUFLAGS)
+IWYU              ?= iwyu
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/libc-bin/locale.mk b/share/mk/configure/build-depends/libc-bin/locale.mk
index fe670f44e..ac7b3915a 100644
--- a/share/mk/configure/build-depends/libc-bin/locale.mk
+++ b/share/mk/configure/build-depends/libc-bin/locale.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_LIBC_BIN_LOCALE_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_LIBC_BIN_LOCALE_INCLUDED := 1
 
 
-LOCALE := locale
+LOCALE ?= locale
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/lzip/lzip.mk b/share/mk/configure/build-depends/lzip/lzip.mk
index c661a54a7..e8fa2e473 100644
--- a/share/mk/configure/build-depends/lzip/lzip.mk
+++ b/share/mk/configure/build-depends/lzip/lzip.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_LZIP_LZIP_INCLUDED := 1
 
 
 DEFAULT_LZIPFLAGS :=
-LZIPFLAGS         :=
-LZIPFLAGS_        := $(DEFAULT_LZIPFLAGS) $(LZIPFLAGS)
-LZIP              := lzip
+LZIPFLAGS         ?=
+LZIPFLAGS_        ?= $(DEFAULT_LZIPFLAGS) $(LZIPFLAGS)
+LZIP              ?= lzip
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/mandoc/mandoc.mk b/share/mk/configure/build-depends/mandoc/mandoc.mk
index 21ccd3dc6..d78ee24d0 100644
--- a/share/mk/configure/build-depends/mandoc/mandoc.mk
+++ b/share/mk/configure/build-depends/mandoc/mandoc.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_MANDOC_MANDOC_INCLUDED := 1
 
 
 DEFAULT_MANDOCFLAGS := -Tlint
-MANDOCFLAGS         :=
-MANDOCFLAGS_        := $(DEFAULT_MANDOCFLAGS) $(MANDOCFLAGS)
-MANDOC              := mandoc
+MANDOCFLAGS         ?=
+MANDOCFLAGS_        ?= $(DEFAULT_MANDOCFLAGS) $(MANDOCFLAGS)
+MANDOC              ?= mandoc
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/moreutils/sponge.mk b/share/mk/configure/build-depends/moreutils/sponge.mk
index e9b89893f..e5a57e57e 100644
--- a/share/mk/configure/build-depends/moreutils/sponge.mk
+++ b/share/mk/configure/build-depends/moreutils/sponge.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_MOREUTILS_SPONGE_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_MOREUTILS_SPONGE_INCLUDED := 1
 
 
-SPONGE := sponge
+SPONGE ?= sponge
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/pkgconf/pkgconf.mk b/share/mk/configure/build-depends/pkgconf/pkgconf.mk
index cd9b4c611..353f47945 100644
--- a/share/mk/configure/build-depends/pkgconf/pkgconf.mk
+++ b/share/mk/configure/build-depends/pkgconf/pkgconf.mk
@@ -7,13 +7,13 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_PKGCONF_PKGCONF_INCLUDED := 1
 
 
 # Compat
-PKG_CONFIG := pkgconf
+PKG_CONFIG ?= pkgconf
 
 
 DEFAULT_PKGCONFFLAGS :=
-PKGCONFFLAGS         :=
-PKGCONFFLAGS_        := $(DEFAULT_PKGCONFFLAGS) $(PKGCONFFLAGS)
-PKGCONF              := $(PKG_CONFIG)
+PKGCONFFLAGS         ?=
+PKGCONFFLAGS_        ?= $(DEFAULT_PKGCONFFLAGS) $(PKGCONFFLAGS)
+PKGCONF              ?= $(PKG_CONFIG)
 PKGCONF_CMD          := $(PKGCONF) $(PKGCONFFLAGS_)
 
 
diff --git a/share/mk/configure/build-depends/sed/sed.mk b/share/mk/configure/build-depends/sed/sed.mk
index 30dcf206b..abe11aef0 100644
--- a/share/mk/configure/build-depends/sed/sed.mk
+++ b/share/mk/configure/build-depends/sed/sed.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_SED_SED_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_SED_SED_INCLUDED := 1
 
 
-SED := sed
+SED ?= sed
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/shellcheck/shellcheck.mk b/share/mk/configure/build-depends/shellcheck/shellcheck.mk
index 065ded8d1..efb7206e9 100644
--- a/share/mk/configure/build-depends/shellcheck/shellcheck.mk
+++ b/share/mk/configure/build-depends/shellcheck/shellcheck.mk
@@ -11,9 +11,9 @@ include $(MAKEFILEDIR)/configure/directory_variables/src.mk
 
 SHELLCHECK_CONF         := $(SYSCONFDIR)/shellcheck/shellcheckrc
 DEFAULT_SHELLCHECKFLAGS := -o all
-SHELLCHECKFLAGS         :=
-SHELLCHECKFLAGS_        := $(DEFAULT_SHELLCHECKFLAGS) $(SHELLCHECKFLAGS)
-SHELLCHECK              := shellcheck
+SHELLCHECKFLAGS         ?=
+SHELLCHECKFLAGS_        ?= $(DEFAULT_SHELLCHECKFLAGS) $(SHELLCHECKFLAGS)
+SHELLCHECK              ?= shellcheck
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/tar/tar.mk b/share/mk/configure/build-depends/tar/tar.mk
index 689baceca..677d99a6e 100644
--- a/share/mk/configure/build-depends/tar/tar.mk
+++ b/share/mk/configure/build-depends/tar/tar.mk
@@ -14,9 +14,9 @@ DEFAULT_TARFLAGS := \
 	--owner=root:0 \
 	--group=root:0 \
 	--mtime='$(DISTDATE)'
-TARFLAGS         :=
-TARFLAGS_        := $(DEFAULT_TARFLAGS) $(TARFLAGS)
-TAR              := tar
+TARFLAGS         ?=
+TARFLAGS_        ?= $(DEFAULT_TARFLAGS) $(TARFLAGS)
+TAR              ?= tar
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/texlive-fonts-extra-links/Tinos-Regular.ttf.mk b/share/mk/configure/build-depends/texlive-fonts-extra-links/Tinos-Regular.ttf.mk
index 1005f6b94..498ea4860 100644
--- a/share/mk/configure/build-depends/texlive-fonts-extra-links/Tinos-Regular.ttf.mk
+++ b/share/mk/configure/build-depends/texlive-fonts-extra-links/Tinos-Regular.ttf.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_TEXLIVE_FONTS_EXTRA_LINKS_TINOS_REGULAR_
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_TEXLIVE_FONTS_EXTRA_LINKS_TINOS_REGULAR_TTF_INCLUDED := 1
 
 
-TINOSR_TTF := /usr/share/texlive/texmf-dist/fonts/truetype/google/tinos/Tinos-Regular.ttf
+TINOSR_TTF ?= /usr/share/texlive/texmf-dist/fonts/truetype/google/tinos/Tinos-Regular.ttf
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb.mk b/share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb.mk
index c1c713c41..c640a701a 100644
--- a/share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb.mk
+++ b/share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_BUILD_DEPENDS_TEXLIVE_FONTS_EXTRA_TINOS_PFB_INCLUDED
 MAKEFILE_CONFIGURE_BUILD_DEPENDS_TEXLIVE_FONTS_EXTRA_TINOS_PFB_INCLUDED := 1
 
 
-TINOS_PFB := /usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tinos.pfb
+TINOS_PFB ?= /usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tinos.pfb
 
 
 endif  # include guard
diff --git a/share/mk/configure/build-depends/xz-utils/xz.mk b/share/mk/configure/build-depends/xz-utils/xz.mk
index 439304407..d26a367cb 100644
--- a/share/mk/configure/build-depends/xz-utils/xz.mk
+++ b/share/mk/configure/build-depends/xz-utils/xz.mk
@@ -7,9 +7,9 @@ MAKEFILE_CONFIGURE_BUILD_DEPENDS_XZ_UTILS_XZ_INCLUDED := 1
 
 
 DEFAULT_XZFLAGS :=
-XZFLAGS         :=
-XZFLAGS_        := $(DEFAULT_XZFLAGS) $(XZFLAGS)
-XZ              := xz
+XZFLAGS         ?=
+XZFLAGS_        ?= $(DEFAULT_XZFLAGS) $(XZFLAGS)
+XZ              ?= xz
 
 
 endif  # include guard
diff --git a/share/mk/configure/directory_variables/build.mk b/share/mk/configure/directory_variables/build.mk
index e31da032c..a005a4235 100644
--- a/share/mk/configure/directory_variables/build.mk
+++ b/share/mk/configure/directory_variables/build.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_DIRECTORY_VARIABLES_BUILD_INCLUDED
 MAKEFILE_CONFIGURE_DIRECTORY_VARIABLES_BUILD_INCLUDED := 1
 
 
-builddir := .tmp
+builddir ?= .tmp
 
 
 endif  # include guard
diff --git a/share/mk/configure/directory_variables/install.mk b/share/mk/configure/directory_variables/install.mk
index d503fb483..d1e605991 100644
--- a/share/mk/configure/directory_variables/install.mk
+++ b/share/mk/configure/directory_variables/install.mk
@@ -9,21 +9,21 @@ MAKEFILE_CONFIGURE_DIRECTORY_VARIABLES_INSTALL_INCLUDED := 1
 include $(MAKEFILEDIR)/configure/directory_variables/src.mk
 
 
-DESTDIR     :=
-prefix      := /usr/local
-exec_prefix := $(prefix)
-datarootdir := $(prefix)/share
-mandir      := $(datarootdir)/man
-docdir      := $(datarootdir)/doc
-htmldir     := $(docdir)/html/man
-pdfdir      := $(docdir)/pdf
-bindir      := $(exec_prefix)/bin
+DESTDIR     ?=
+prefix      ?= /usr/local
+exec_prefix ?= $(prefix)
+datarootdir ?= $(prefix)/share
+mandir      ?= $(datarootdir)/man
+docdir      ?= $(datarootdir)/doc
+htmldir     ?= $(docdir)/html/man
+pdfdir      ?= $(docdir)/pdf
+bindir      ?= $(exec_prefix)/bin
 
 
 $(foreach s, $(MANSECTIONS),                                                  \
-	$(eval man$(s)dir := $(mandir)/man$(s)))
+	$(eval man$(s)dir ?= $(mandir)/man$(s)))
 $(foreach s, $(MANSECTIONS),                                                  \
-	$(eval man$(s)ext := .$(s)))
+	$(eval man$(s)ext ?= .$(s)))
 
 
 endif  # include guard
diff --git a/share/mk/configure/man/link_pages.mk b/share/mk/configure/man/link_pages.mk
index 8e9c56c6c..69b9981bf 100644
--- a/share/mk/configure/man/link_pages.mk
+++ b/share/mk/configure/man/link_pages.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_MAN_LINK_PAGES_INCLUDED
 MAKEFILE_CONFIGURE_MAN_LINK_PAGES_INCLUDED := 1
 
 
-LINK_PAGES := .so
+LINK_PAGES ?= .so
 ifeq ($(LINK_PAGES),.so)
 else ifeq ($(LINK_PAGES),symlink)
 else
diff --git a/share/mk/configure/version.mk b/share/mk/configure/version.mk
index 6897f5565..bd9884e21 100644
--- a/share/mk/configure/version.mk
+++ b/share/mk/configure/version.mk
@@ -19,12 +19,12 @@ include $(MAKEFILEDIR)/configure/verbose.mk
 
 
 projname      := man-pages
-VERSION       := $(shell $(GIT) describe --dirty | $(SED) 's/$(projname)-//')
-EXTRAVERSION  :=
+VERSION       ?= $(shell $(GIT) describe --dirty | $(SED) 's/$(projname)-//')
+EXTRAVERSION  ?=
 
 
-DISTVERSION   := $(VERSION)$(EXTRAVERSION)
-DISTNAME      := $(projname)-$(DISTVERSION)
+DISTVERSION   ?= $(VERSION)$(EXTRAVERSION)
+DISTNAME      ?= $(projname)-$(DISTVERSION)
 
 
 DISTFILESCMD := \
@@ -47,7 +47,7 @@ DISTDATECMD := \
 	fi;
 
 
-DISTDATE := $(shell $(DISTDATECMD))
+DISTDATE ?= $(shell $(DISTDATECMD))
 
 
 MANPAGEDATECMD = $(GIT) log --format=%cs -1 -- $< $(HIDE_ERR)
diff --git a/share/mk/configure/xfail.mk b/share/mk/configure/xfail.mk
index 44e4eded6..5aa7f8fd7 100644
--- a/share/mk/configure/xfail.mk
+++ b/share/mk/configure/xfail.mk
@@ -6,7 +6,7 @@ ifndef MAKEFILE_CONFIGURE_XFAIL_INCLUDED
 MAKEFILE_CONFIGURE_XFAIL_INCLUDED := 1
 
 
-SKIP_XFAIL := yes
+SKIP_XFAIL ?= yes
 ifeq ($(SKIP_XFAIL),yes)
 else ifeq ($(SKIP_XFAIL),no)
 else
-- 
2.47.2


