Return-Path: <linux-man+bounces-4363-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 49832CA4051
	for <lists+linux-man@lfdr.de>; Thu, 04 Dec 2025 15:32:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25F8730D47CF
	for <lists+linux-man@lfdr.de>; Thu,  4 Dec 2025 14:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85C5334B1A0;
	Thu,  4 Dec 2025 14:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k38rosVP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1078934B1B4
	for <linux-man@vger.kernel.org>; Thu,  4 Dec 2025 14:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764857947; cv=none; b=kNgC9oq4WqM5O2V+qztT1DTSTGj5+ZSiVDdi7LPydFXEnA60BGzudHvLe2OGetHsS/QigTs2PM/DSenRJBPgjVYXB2nrv7N9lwSm5S+bs3Cyasfc7L9n62NbHCf294s17+dq1fKUrqwJeBEVZ6q/fUMvSSVlF3m5wTd8Q7lOvxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764857947; c=relaxed/simple;
	bh=8ZPUmimEpYnvAvQihfPu740cz+OyMS6H7mAsxyQP7H0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=iZwq0SmCj/bz9Ltl/gXrV+1WBz+fylBh3tK25nw2veI9XsFeEXbgZkUNKqXJmXkgwDGswcCrge2YDx7S78c6FVlneZaB4Q4qHoZ+1OdCKc5H7sBsP8dfXL8SFuTWHBXACuxRsMlC5+8wPpI6/4NLXHANHQia1Ewei0M9gfKZ/sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k38rosVP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E114C4CEFB;
	Thu,  4 Dec 2025 14:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764857943;
	bh=8ZPUmimEpYnvAvQihfPu740cz+OyMS6H7mAsxyQP7H0=;
	h=Date:From:To:Cc:Subject:From;
	b=k38rosVPF8VCXFJvUmHRwSbd8sE9gRf8CCArDOjj2Qx7OTF+qbaJRcaXmXYHHpakv
	 XQ2GpiDhxUXM5vZs8edn9+MDaBUZ0nBKCuCEcDXldhbg6/Y4kih8sn+cLy2BUevo+B
	 0Y0/TTFxz1TjyuYz/Fr0cJWTbR29rztYaa32q8I4NkoqdP5v6g5hor7Ri5W0rGxvqg
	 YPWbnye++9x1k6uquvRZ75TkAgUeJFn0kyswdF+H496KqsSEZUohpbZwK+Lq9IAzl5
	 H2VKqhPvHi/+RLOLyB5LRH5fALzXceHyyjZhT4nDzFm5f4FCJtHBW+bpoE+3Xd1Erc
	 57EOZ6/0BgPpw==
Date: Thu, 4 Dec 2025 15:19:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Paolo Bonzini <bonzini@gnu.org>
Subject: [PATCH] share/mk/: help, help-*: Add targets to list targets,
 variables, and build dependencies
Message-ID: <c4c2c8be62ead1e901659e3d53f305e02196278f.1764857888.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Suggested-by: Paolo Bonzini <bonzini@gnu.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Paolo,

I've applied this patch after your suggestion on LWN.  Thanks!


Have a lovely day!
Alex

 GNUmakefile           | 23 +++-------------------
 share/mk/help/list.mk | 46 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 49 insertions(+), 20 deletions(-)
 create mode 100644 share/mk/help/list.mk

diff --git a/GNUmakefile b/GNUmakefile
index 6ee1a8874..3f2ea50ba 100644
--- a/GNUmakefile
+++ b/GNUmakefile
@@ -55,32 +55,15 @@ help:
 	$(info	$(INFO_)	dist			Produce the release tarball)
 	$(info	$(INFO_)	distcheck		Check the release tarball)
 	$(info	$(INFO_)	help			Print this help)
+	$(info	$(INFO_)	help-list-build-depends	List build dependencies (package/program))
+	$(info	$(INFO_)	help-list-targets	List all targets)
+	$(info	$(INFO_)	help-list-variables	List configurable variables)
 	$(info	$(INFO_)	install			Install the usual stuff)
 	$(info	$(INFO_)	install-all		Install everything)
 	$(info	$(INFO_)	lint			Lint the source code)
 	$(info	$(INFO_)	nothing			Do nothing; useful for debugging)
 	$(info	$(INFO_)	uninstall		Uninstall everything (might leave traces))
 	$(info	)
-	$(info	$(INFO_)To see the full list of targets, run:)
-	$(info	$(INFO_)	$$ make -R -p nothing \)
-	$(info	$(INFO_)	| grep '^\.PHONY:' \)
-	$(info	$(INFO_)	| tr ' ' '\n' \)
-	$(info	$(INFO_)	| grep -v '^\.PHONY:' \)
-	$(info	$(INFO_)	| sort;)
-	$(info	)
-	$(info	$(INFO_)To see a list of variables, run:)
-	$(info	$(INFO_)	$$ find GNUmakefile share/mk/configure -type f \)
-	$(info	$(INFO_)	| sort \)
-	$(info	$(INFO_)	| xargs grep '^[^[:space:]].*=' \)
-	$(info	$(INFO_)	| sed 's/=.*/=/' \)
-	$(info	$(INFO_)	| grep -v -e ':DEFAULT_.*=' -e ':MAKEFILE_.*INCLUDED :=';)
-	$(info	)
-	$(info	$(INFO_)To see a list of dependencies (package/program), run:)
-	$(info	$(INFO_)	$$ find share/mk/configure/build-depends -type f \)
-	$(info	$(INFO_)	| sed 's,share/mk/configure/build-depends/,,' \)
-	$(info	$(INFO_)	| sed 's,\.mk,,' \)
-	$(info	$(INFO_)	| sort;)
-	$(info	)
 
 
 .DELETE_ON_ERROR:
diff --git a/share/mk/help/list.mk b/share/mk/help/list.mk
new file mode 100644
index 000000000..7443d1288
--- /dev/null
+++ b/share/mk/help/list.mk
@@ -0,0 +1,46 @@
+# Copyright, the authors of the Linux man-pages project
+# SPDX-License-Identifier: LGPL-3.0-only WITH LGPL-3.0-linking-exception
+
+
+ifndef MAKEFILE_HELP_LIST_INCLUDED
+MAKEFILE_HELP_LIST_INCLUDED := 1
+
+
+include $(MAKEFILEDIR)/configure/build-depends/coreutils/sort.mk
+include $(MAKEFILEDIR)/configure/build-depends/coreutils/tr.mk
+include $(MAKEFILEDIR)/configure/build-depends/findutils/find.mk
+include $(MAKEFILEDIR)/configure/build-depends/findutils/xargs.mk
+include $(MAKEFILEDIR)/configure/build-depends/grep/grep.mk
+include $(MAKEFILEDIR)/configure/build-depends/sed/sed.mk
+
+
+.PHONY: help-list-targets
+help-list-targets:
+	$(MAKE) -p nothing \
+	| $(GREP) '^\.PHONY:' \
+	| $(TR) ' ' '\n' \
+	| $(GREP) -v '^\.PHONY:' \
+	| $(SORT)
+
+
+.PHONY: help-list-variables
+help-list-variables:
+	$(FIND) $(CURDIR)/GNUmakefile $(MAKEFILEDIR) -type f \
+	| $(GREP) -e '/GNUmakefile$$' -e '\.mk$$' \
+	| $(SORT) \
+	| $(XARGS) $(GREP) '^[^[:space:]].*=' \
+	| $(SED) 's,$(CURDIR)/,,' \
+	| $(SED) 's/=.*/=/' \
+	| $(GREP) -v -e ':DEFAULT_.*=' -e ':MAKEFILE_.*INCLUDED :='
+
+
+.PHONY: help-list-build-depends
+help-list-build-depends:
+	$(FIND) $(MAKEFILEDIR)/configure/build-depends -type f \
+	| $(GREP) -e '\.mk$$' -e '\.mk$$' \
+	| $(SED) 's,$(MAKEFILEDIR)/configure/build-depends/,,' \
+	| $(SED) 's,\.mk$$,,' \
+	| $(SORT)
+
+
+endif  # include guard
-- 
2.51.0


