Return-Path: <linux-man+bounces-2335-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6925FA256B6
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 11:13:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2938C18839D6
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 10:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D001C1FF5E6;
	Mon,  3 Feb 2025 10:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkHfIxaX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBCC1FBCBD
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 10:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738577627; cv=none; b=Gi+ER3kTDCVlKncC1ImObvVyVQhJsR9p0ypQGGaDTk3VXwgKtc3WJOSjJIYK40FBDtlaFF/AVcVjyjioIzgMA3HRIT1hikWrTUno/ciCmzX8PMzWEtj+Up8Y0EEISaQwvCJBtgGDJXTq9JbFv66PzQDun2kTf0RbUF6yY1kdq0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738577627; c=relaxed/simple;
	bh=rCG0iNVJiMgTumDB0lEGnazyzG5XRuZwB+YFn4OkSgM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SXfD27RQ/6xjsBGbj1Zo6c4VdwnsHu5UKqmrmGfs22WR2mChe+VKNka5WIM+bFNob8HC+Jrpebm3qCoWbSzOgyz+ASHlqZMRnQW8lpBFR9nIS/jeLFLwWB7jQ1yJTjOEMB1pp7vLcdZ35mVgUq7ECrrRp4NrKNJGSyjCl/O1NFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkHfIxaX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05850C4CED2;
	Mon,  3 Feb 2025 10:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738577627;
	bh=rCG0iNVJiMgTumDB0lEGnazyzG5XRuZwB+YFn4OkSgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QkHfIxaXb9cC0SSNUoATW7UmrcWbBNHTGinN8NVJWcdAP1mkGIc7+ETEGFoBOdQz1
	 tvRefcoH3RtOE+V5GtSxEMMK+IU3GoHVmRzTmcwEV6NhhYRQKe2IsUcNAZ1XSCfxnj
	 sgU6oVsP2QMOVYK4vCPD2NTsXU+bHpTyAWPVRprwI5kbgKOH+ATsfwBymeBFGNskCM
	 +vkWux+M03XRl/ewRpYQKq7KWw82whuIe7x637Vo2jeyoJDGXDt67EScfopRGx1HpX
	 LeLJFhyvaWNuxzRpMSJ3B8BBPnhvvt+b8v0ImEN9e3Z4syMF29yibrPCPgGHpOdKm8
	 c++k3enkMenIQ==
Date: Mon, 3 Feb 2025 11:13:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Sam James <sam@gentoo.org>,
	Paul Smith <psmith@gnu.org>, Guenther Noack <gnoack@google.com>
Subject: [PATCH 1/3] GNUmakefile: Require the user to specify '-R' if their
 make(1) is too old
Message-ID: <516e1c9c7eb072eeed47779af763571cf52f6de2.1738577250.git.alx@kernel.org>
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

And everyone's make(1) is too old.  :-)

This will allow us to use ?= assignments.  Once a new GNU make(1)
release is done, we'll be able to rely on our setting of MAKEFLAGS+=-R
at the top of the GNUMakefile, but currently, that's not enough, and the
user must specify -R to unset implicit variables.

Cc: Sam James <sam@gentoo.org>
Cc: Paul Smith <psmith@gnu.org>
Cc: Guenther Noack <gnoack@google.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 GNUmakefile | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/GNUmakefile b/GNUmakefile
index fcc96a364..2ed8bcc30 100644
--- a/GNUmakefile
+++ b/GNUmakefile
@@ -1,4 +1,4 @@
-# Copyright 2021-2024, Alejandro Colomar <alx@kernel.org>
+# Copyright 2021-2025, Alejandro Colomar <alx@kernel.org>
 # SPDX-License-Identifier: LGPL-3.0-only WITH LGPL-3.0-linking-exception
 
 
@@ -6,6 +6,13 @@ SHELL       := bash
 .SHELLFLAGS := -Eeuo pipefail -c
 
 
+ifneq (4.4.999,$(firstword $(sort 4.4.999 $(MAKE_VERSION))))
+  ifneq (R,$(findstring R, $(firstword -$(MAKEFLAGS))))
+    $(error Please run make(1) with the '-R' flag)
+  endif
+endif
+
+
 MAKEFLAGS += --no-builtin-rules
 MAKEFLAGS += --no-builtin-variables
 MAKEFLAGS += --warn-undefined-variables
-- 
2.47.2


