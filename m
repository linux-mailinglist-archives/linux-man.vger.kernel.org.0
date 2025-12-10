Return-Path: <linux-man+bounces-4387-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE85CB2EFA
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:41:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 084433009F91
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4CE2F8BDF;
	Wed, 10 Dec 2025 12:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0QEkyES"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BC6324B24
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370421; cv=none; b=I+FBjGiZaAZhieL67gcf6u7xZVJeHA8OszitU1bm6VQLLuRlmYOrNfRybMS8uOT1JInEmPkzpc/rhw6zsCYXqTegQWH91v8huIpQYaMIDhmq3qOVU8/VrXdZEJieewuInEOTb0H7bOafKhlW6UGXQ1ojN5ZycgFqeytolfLfKuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370421; c=relaxed/simple;
	bh=pyHaZzZcHOqYRFesamY4HDQnFXFzrhW/+/9ni5yVP/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BJbjmaUgKS42Rh8D5KfwGkZ8LVGRNr09pRb6dIfGeZ5Pdeq3+vBXPug3QOhJ3uSgauf25USvK55VASPPyAFpmjG5MJnNmFadu5kxYrZ/Eo3qC2W8HQMkK4ty0bF2eJ6jbXvk0sb2ZQ9xQ47FQubCiQD8WXPowX4ckLRbyh05v4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0QEkyES; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D54FC4CEF1;
	Wed, 10 Dec 2025 12:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370420;
	bh=pyHaZzZcHOqYRFesamY4HDQnFXFzrhW/+/9ni5yVP/I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T0QEkyESLO0F8aW1yPGcZBt+G+aHhfYSU/rmczy/YJtbap61zMgV34c46b9gO14Hu
	 zyzeJsm291WuAb8V24Naub/Z0whjcHJmBleF7pIrxYeCPMONMUzYXOXTas92Gq1Y2v
	 kdTDb/dBOOxcSYWKqQqMMceyL/HdJF5MK/6qk97RzT/m4B4lidfCf2lJmz3uq9nUlv
	 BOzbj4z4qMY2zIR3s5N9Cf0gHELNtt9PfbI16Fe68RjGLDzkqWgSXyWlyeymTCD4aB
	 BwzuC5mp5XnGWsA3FMh+GefALia9Y1DWq9TiT0CiBlr2aPpYRjb9v9lQ++ER4dEind
	 HZcS+P6iB72NA==
Date: Wed, 10 Dec 2025 13:40:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 07/12] man/man3/{posix_memalign,pvalloc}.3: Split
 pvalloc() from posix_memalign(3)
Message-ID: <af29aac577d00e929150fcb5d9b10379b3325f03.1765370035.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765370035.git.alx@kernel.org>

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/posix_memalign.3 | 26 ++++-----------------
 man/man3/pvalloc.3        | 49 ++++++++++++++++++++++++++++++++++++++-
 2 files changed, 52 insertions(+), 23 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index 3271292b7..b3b27e5bb 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -5,7 +5,8 @@
 .\"
 .TH posix_memalign 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-posix_memalign, aligned_alloc, valloc, pvalloc \-
+posix_memalign, aligned_alloc, valloc
+\-
 allocate aligned memory
 .SH LIBRARY
 Standard C library
@@ -17,10 +18,6 @@ .SH SYNOPSIS
 .BI "int posix_memalign(void **" memptr ", size_t " alignment ", size_t " size );
 .BI "void *aligned_alloc(size_t " alignment ", size_t " size );
 .BI "[[deprecated]] void *valloc(size_t " size );
-.P
-.B #include <malloc.h>
-.P
-.BI "[[deprecated]] void *pvalloc(size_t " size );
 .fi
 .P
 .RS -4
@@ -86,19 +83,11 @@ .SH DESCRIPTION
 It is equivalent to
 .IR "memalign(sysconf(_SC_PAGESIZE),size)" .
 .P
-The obsolete function
-.BR pvalloc ()
-is similar to
-.BR valloc (),
-but rounds the size of the allocation up to
-the next multiple of the system page size.
-.P
 For all of these functions, the memory is not zeroed.
 .SH RETURN VALUE
 .BR aligned_alloc (),
-.BR valloc (),
 and
-.BR pvalloc ()
+.BR valloc ()
 return a pointer to the allocated memory on success.
 On error, NULL is returned, and
 .I errno
@@ -145,8 +134,7 @@ .SH ATTRIBUTES
 T{
 .na
 .nh
-.BR valloc (),
-.BR pvalloc ()
+.BR valloc ()
 T}	Thread safety	MT-Unsafe init
 .TE
 .SH STANDARDS
@@ -160,9 +148,6 @@ .SH STANDARDS
 .TP
 .BR valloc ()
 None.
-.TP
-.BR pvalloc ()
-GNU.
 .SH HISTORY
 .TP
 .BR aligned_alloc ()
@@ -179,9 +164,6 @@ .SH HISTORY
 3.0BSD.
 Documented as obsolete in 4.3BSD,
 and as legacy in SUSv2.
-.TP
-.BR pvalloc ()
-glibc 2.0.
 .\"
 .SS Headers
 Everybody agrees that
diff --git a/man/man3/pvalloc.3 b/man/man3/pvalloc.3
index 791d4c801..2f6e21813 100644
--- a/man/man3/pvalloc.3
+++ b/man/man3/pvalloc.3
@@ -1 +1,48 @@
-.so man3/posix_memalign.3
+'\" t
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH pvalloc 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+pvalloc
+\-
+page-sized page-aligned memory allocation
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <malloc.h>
+.P
+.BI "[[deprecated]] void *pvalloc(size_t " size );
+.fi
+.SH DESCRIPTION
+.BR pvalloc ()
+is similar to
+.BR valloc (),
+but rounds the size of the allocation up to
+the next multiple of the system page size.
+.SH ATTRIBUTES
+For an explanation of the terms used in this section, see
+.BR attributes (7).
+.TS
+allbox;
+lbx lb lb
+l l l.
+Interface	Attribute	Value
+T{
+.na
+.nh
+.BR pvalloc ()
+T}	Thread safety	MT-Unsafe init
+.TE
+.SH STANDARDS
+GNU.
+.SH HISTORY
+glibc 2.0.
+.SH CAVEATS
+See
+.BR valloc (3).
+.SH SEE ALSO
+.BR valloc (3)
-- 
2.51.0


