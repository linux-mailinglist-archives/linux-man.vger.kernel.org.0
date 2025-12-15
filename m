Return-Path: <linux-man+bounces-4423-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CB9CBE695
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:53:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E36330358CF
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58731309EFC;
	Mon, 15 Dec 2025 14:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwbhAVlP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B42942F0C68
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809713; cv=none; b=TjNifG6+huF27sxPxPrq6VRPgLmLdm5ShopvzDB3rZ6/M0dluGYsQkqoKCi5SatnHMtZ80MZPD3VysR/JiVw+NVhdSf1iMkf3SjH+ofNlQkuoUIgYlMvYtNtqGIYqI51gtB0t9CKUmSeqXBe/SGfor5YPNPqv5VtGPQb7CtzVxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809713; c=relaxed/simple;
	bh=pyHaZzZcHOqYRFesamY4HDQnFXFzrhW/+/9ni5yVP/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RXZbFIfDfCl7U8MC44oqBUJp96lLZxYSAYSxcH8CR/rpIjZnjXYenqHPNCBVamzhV5k/cKXFL32+SUBIoO6XlfOpYeQXb8dMV7gUwJR66ugSmhUjk3QHRFEbh3/ekdS+nasJZUvLaNoFr84xNQfe6qSD21lw//ea68bRlUXlp9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwbhAVlP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CB41C4CEF5;
	Mon, 15 Dec 2025 14:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809713;
	bh=pyHaZzZcHOqYRFesamY4HDQnFXFzrhW/+/9ni5yVP/I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZwbhAVlP9ttIHbPy3ibNa9XnbTNruHnHaxPh+hoxt+nRqgH7W3yxJB1eFg1/hqjEJ
	 RJ4yvM9A9nHXiPlD+smi47osgbyRjvHLM4+SzFavF8oJFtSj7i/Lu7TjDvwFbitxAj
	 f/n5c85YjHchn//EFwSfi6GYqrvR2xkbQZodvXJj2o68LZEdNktl+Ywo/a2JRfGeWl
	 NtQdzZMZ9q6wYpJy0jnKzviMdQADSK1AtsR2pG4GgKgWvmhSGmRQOpoMn78B5bph3Q
	 C13uwEAK4pCXY7O8UqKTa9ihJjP6A5GQgvKstvPaw+58W4p4Ft7eIofxFipHeL28x9
	 SLgCBf9o/S17g==
Date: Mon, 15 Dec 2025 15:41:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 07/14] man/man3/{posix_memalign,pvalloc}.3: Split
 pvalloc() from posix_memalign(3)
Message-ID: <a60d6283f21c7f080ba064cb3153103f740a5c79.1765809415.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765809415.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765809415.git.alx@kernel.org>

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


