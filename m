Return-Path: <linux-man+bounces-3204-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8916AE3380
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 04:04:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A187188C65F
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 02:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF75028E3F;
	Mon, 23 Jun 2025 02:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7JZ/Uw1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC0722EF5
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 02:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750644245; cv=none; b=fkz+HarHxZYoG//v1qfbI40JXMMziw4ySWulJPICzR1yiZufJN4S44+KFsWOgnWCS/PIp+5kIIYaazEHzQGkAH3yaIVcaahm1/tMdcR6YNTHi5bzuNXAxvOLOgp93v/oUQTRQ8irPwnlz0jcLSDwF1euCWSQnR979c1/ZmZsaMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750644245; c=relaxed/simple;
	bh=7a4FUyd0AR/LktPcJda61dQaVJeE/NgF0xfTwN5Sqbc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=d6XTYNP+7eQs9WTvaPseq7inohFsm/1aZriOOmakQHcsxh21bYYJL+6i/gClGR+6YAQJWwS6TxyXXBHiza7ZEy9M8jBNz8MnYMIHHQSq12l8gVTHC/dgfRAmUQS00aJqEj9gAmzGfsDGltlU89DYzFs6A8Gw4Ah1bbBb/4lDFwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7JZ/Uw1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A752C4CEE3;
	Mon, 23 Jun 2025 02:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750644245;
	bh=7a4FUyd0AR/LktPcJda61dQaVJeE/NgF0xfTwN5Sqbc=;
	h=Date:From:To:Cc:Subject:From;
	b=G7JZ/Uw1h7zrsJu5eVKdvvdbtuzT8EFKpDz2jVr2wgr+JdBqCx9+iDns2dlPgnpLX
	 dxz0gFWVuEWyJ52A+rcFJnjm22TDTiPreM+KpSVGR3Co15eJtN7elakzcp0gGzj8jF
	 KJI1PoqZm4R1/8yZb9mKu4WpT5er9Dx26ESoYBE+6D2zhK/5FCVZSO/IK8yn08Hym+
	 E28A7WtnfGsaJkm/bWWpgiQuD7hJ/6Xy9dQf70VUbvVvsfaP71suL3upRWj+Stau+2
	 Hh8xeI/yCOLfKXGMNBJa13sXT23Gehpm4O1ndS0D5K4l1geCdEJMrg1g1Qq5Dxpw0n
	 QBjHOAnJvee0g==
Date: Mon, 23 Jun 2025 04:03:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, gcc@gcc.gnu.org, 
	Aaron Ballman <aaron@aaronballman.com>
Subject: [PATCH v1] man/man3attr/gnu::aligned.3: Add page
Message-ID: <17e951d8dbf4c6a40bedb4f0831c7193aa726dc4.1750643425.git.alx@kernel.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi all,

Aaron and I talked recently about improving some missing Clang
documentation.  Attributes are significantly misdocumented in Clang, and
instead (or complementary to) improving the documentation of attributes
within Clang's internal documentation, I had the idea of providing
manual pages for the attributes, under a new man3attr section of the
manual.

Here's a first draft, documenting one attribute.  At the bottom is the
manual page patch.  Here's how it looks formatted:

	$ MANWIDTH=64 diffman-git HEAD 2>/dev/null
	--- HEAD^:man/man3attr/gnu::aligned.3
	+++ HEAD:man/man3attr/gnu::aligned.3
	@@ -0,0 +1,35 @@
	+gnu::aligned(3attr)                         gnu::aligned(3attr)
	+
	+NAME
	+       gnu::aligned - set alignment of object
	+
	+SYNOPSIS
	+       [[gnu::aligned(n)]]
	+
	+DESCRIPTION
	+       This attribute can be applied to a type or a variable,
	+       and sets its alignment as n bytes.
	+
	+VERSIONS
	+       Different dialects provide similar attributes.
	+
	+           __attribute__((aligned(n)))  // GNU
	+           __declspec(align(n))         // MSVC
	+
	+       There’s also the alignas type specifier since C23.
	+
	+STANDARDS
	+       GNU C23.
	+
	+HISTORY
	+       GNU C23.
	+
	+CAVEATS
	+       This attribute can increase the natural alignment of a
	+       type, but it can’t decrease it.
	+
	+       The linker may limit the maximum alignment that can be
	+       applied.
	+
	+EXAMPLES
	+Linux man‐pages (unreleased) (date)         gnu::aligned(3attr)

I have a few questions about this attribute:

-  In which Clang (or LLVM, I never know which name is appropriate)
   version was it introduced?  This is useful for the HISTORY section.
   For this, it is interesting to know both the version for the old GNU
   syntax and the C23 syntax.

-  In which GCC version was it introduced?

-  If the linker doesn't support an alignment, is it silently ignored or
   coerced?  Can we specify some rules which can be relied upon?

-  Is there any further rule?  Can I specify alignment as 7?  I suspect
   not.

-  'n' can be omitted.  Is is exactly equivalent to
   [[gnu::aligned(alignof(max_align_t))]]?  Or may it be different in
   some cases?

-  Are the semantics exactly the same as alignas()?  Or are there any
   differences?  (Other than that alignas not being allowed on types.)


Have a lovely day!
Alex

 man/man3attr/gnu::aligned.3 | 39 +++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 man/man3attr/gnu::aligned.3

diff --git a/man/man3attr/gnu::aligned.3 b/man/man3attr/gnu::aligned.3
new file mode 100644
index 000000000..792301c68
--- /dev/null
+++ b/man/man3attr/gnu::aligned.3
@@ -0,0 +1,39 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH gnu::aligned 3attr (date) "Linux man-pages (unreleased)"
+.SH NAME
+gnu::aligned \- set alignment of object
+.SH SYNOPSIS
+.nf
+.BI [[gnu::aligned( n )]]
+.fi
+.SH DESCRIPTION
+This attribute can be applied to a type or a variable,
+and sets its alignment as
+.I n
+bytes.
+.SH VERSIONS
+Different dialects provide similar attributes.
+.P
+.in +4n
+.nf
+.BI __attribute__((aligned( n ))) "  \f[R]// GNU\f[]"
+.BI __declspec(align( n )) "         \f[R]// MSVC\f[]"
+.fi
+.in
+.P
+There's also the
+.I alignas
+type specifier since C23.
+.SH STANDARDS
+GNU C23.
+.SH HISTORY
+GNU C23.
+.SH CAVEATS
+This attribute can increase the natural alignment of a type,
+but it can't decrease it.
+.P
+The linker may limit the maximum alignment that can be applied.
+.SH EXAMPLES

base-commit: 4044e31a053f6c370b2188deba583797018f04a2
prerequisite-patch-id: 9baedc3d2399d2f8d54d96511dac415f0d0ff04f
-- 
2.49.0


