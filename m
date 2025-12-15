Return-Path: <linux-man+bounces-4422-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D552CBE67D
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:52:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3A59830216BA
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31B2C2F1FDA;
	Mon, 15 Dec 2025 14:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5G1gd75"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864122F0C68
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809709; cv=none; b=KseBQscZ5VI+fYKUrgCuMCrdmh7DHmoYZ471Y61gTFsanl6ETKcaNtaKAfA7Dtrkc1o7ON4oYf4Vd2CJCaWl5Vt52xw5S5DZqeOyZtykq+jBNdI/+REq83VG/XIwVkLfzTVTxGYlnE2KpTjO8k07GDbwOawiT9UtS7Ep9M82peU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809709; c=relaxed/simple;
	bh=DT4yDfA1QQ45JBdjw+f+0R8o8YHSLgXTIskGJAM96+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jU/jHego5ozznSSpxIfv/3+1TP+S33Bmjs8h74pD8opjMP6LAlZ+FFpGXBypmucm/eyxWP9KKPai3KJILuEFhCMb4+JStUwqsiVY/2ZhqfNHjPVlc/Wl4HavYrqH5iD32HtXkvcidJiwAVJBmGUZlSG6UdqNtQzNsFnrxwQG+B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5G1gd75; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49F4AC4CEF5;
	Mon, 15 Dec 2025 14:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809709;
	bh=DT4yDfA1QQ45JBdjw+f+0R8o8YHSLgXTIskGJAM96+o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T5G1gd75lMzblc/fxikFy1NL99dDQj+vXsLuSkK8REWe76umlkWpSUjHZhX9eRUrW
	 EekQoifT1cYsmGSPVMfP5PxNAzsRnAWU1ibKVea6Jv4s2IYx7+oneiXPsmy5Hhz3e2
	 Wi/ufcqe0ym/9TUNvUV1Uv+EddnQG1Yd1u3I5SCY4GEz/JBw+LlQ2MNFmdBN0XrrLR
	 RlQ3vD9hpJsINT3cjfO6htJt6dAl1QrSOUZ6PVABgxJVvejAlUV2FSnc8+4kBOlnZd
	 OgSnz5yr6iH0ojqRXM9dczr+E5yLRHebKr4QySCBKxuO2Rmc6eC1FwqwTKF0NqOYvB
	 YBWb7vL49D1Iw==
Date: Mon, 15 Dec 2025 15:41:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 06/14] man/man3/{posix_,}memalign.3: Split memalign() from
 posix_memalign(3)
Message-ID: <51b7f9f43587df5a4bdb76df0024003602e8ee7f.1765809415.git.alx@kernel.org>
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
 man/man3/memalign.3       | 76 ++++++++++++++++++++++++++++++++++++++-
 man/man3/posix_memalign.3 | 46 ++----------------------
 2 files changed, 78 insertions(+), 44 deletions(-)

diff --git a/man/man3/memalign.3 b/man/man3/memalign.3
index 791d4c801..cc341be7b 100644
--- a/man/man3/memalign.3
+++ b/man/man3/memalign.3
@@ -1 +1,75 @@
-.so man3/posix_memalign.3
+'\" t
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH memalign 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+memalign
+\-
+allocate aligned memory
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <malloc.h>
+.P
+.BI "[[deprecated]] void *memalign(size_t " alignment ", size_t " size );
+.fi
+.SH DESCRIPTION
+.BR memalign ()
+is the same as
+.BR aligned_alloc (3).
+.\" The behavior of memalign() for size==0 is as for posix_memalign()
+.\" but no standards govern this.
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
+.BR memalign ()
+T}	Thread safety	MT-Safe
+.TE
+.SH VERSIONS
+On some systems
+.BR memalign ()
+is declared in
+.I <stdlib.h>
+instead of
+.IR <malloc.h> .
+.SH STANDARDS
+None.
+.SH HISTORY
+glibc 2.0.
+SunOS 4.1.3.
+.SH CAVEATS
+.BR memalign ()
+may not check that the
+.I alignment
+argument is correct.
+.P
+Some systems provide no way to reclaim memory allocated with
+.BR memalign ()
+(because one can pass to
+.BR free (3)
+only a pointer obtained from
+.BR malloc (3),
+while, for example,
+.BR memalign ()
+would call
+.BR malloc (3)
+and then align the obtained value).
+The glibc implementation
+allows memory obtained from
+.BR memalign ()
+to be reclaimed with
+.BR free (3).
+.SH SEE ALSO
+.BR aligned_alloc (3)
diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index ecbbd3e7a..3271292b7 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -5,7 +5,7 @@
 .\"
 .TH posix_memalign 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-posix_memalign, aligned_alloc, memalign, valloc, pvalloc \-
+posix_memalign, aligned_alloc, valloc, pvalloc \-
 allocate aligned memory
 .SH LIBRARY
 Standard C library
@@ -20,7 +20,6 @@ .SH SYNOPSIS
 .P
 .B #include <malloc.h>
 .P
-.BI "[[deprecated]] void *memalign(size_t " alignment ", size_t " size );
 .BI "[[deprecated]] void *pvalloc(size_t " size );
 .fi
 .P
@@ -77,13 +76,6 @@ .SH DESCRIPTION
 The memory address will be a multiple of
 .IR alignment ,
 which must be a power of two.
-.\" The behavior of memalign() for size==0 is as for posix_memalign()
-.\" but no standards govern this.
-.P
-The obsolete function
-.BR memalign ()
-is the same as
-.BR aligned_alloc ().
 .P
 The obsolete function
 .BR valloc ()
@@ -104,7 +96,6 @@ .SH DESCRIPTION
 For all of these functions, the memory is not zeroed.
 .SH RETURN VALUE
 .BR aligned_alloc (),
-.BR memalign (),
 .BR valloc (),
 and
 .BR pvalloc ()
@@ -149,7 +140,6 @@ .SH ATTRIBUTES
 .na
 .nh
 .BR aligned_alloc (),
-.BR memalign (),
 .BR posix_memalign ()
 T}	Thread safety	MT-Safe
 T{
@@ -168,8 +158,6 @@ .SH STANDARDS
 .BR posix_memalign ()
 POSIX.1-2024.
 .TP
-.BR memalign ()
-.TQ
 .BR valloc ()
 None.
 .TP
@@ -186,10 +174,6 @@ .SH HISTORY
 glibc 2.1.91.
 POSIX.1d, POSIX.1-2001.
 .TP
-.BR memalign ()
-glibc 2.0.
-SunOS 4.1.3.
-.TP
 .BR valloc ()
 glibc 2.0.
 3.0BSD.
@@ -205,13 +189,6 @@ .SS Headers
 is declared in
 .IR <stdlib.h> .
 .P
-On some systems
-.BR memalign ()
-is declared in
-.I <stdlib.h>
-instead of
-.IR <malloc.h> .
-.P
 According to SUSv2,
 .BR valloc ()
 is declared in
@@ -236,38 +213,21 @@ .SH NOTES
 verifies that
 .I alignment
 matches the requirements detailed above.
-.BR memalign ()
-may not check that the
-.I alignment
-argument is correct.
 .P
 POSIX requires that memory obtained from
 .BR posix_memalign ()
 can be freed using
 .BR free (3).
 Some systems provide no way to reclaim memory allocated with
-.BR memalign ()
-or
 .BR valloc ()
-(because one can pass to
-.BR free (3)
-only a pointer obtained from
-.BR malloc (3),
-while, for example,
-.BR memalign ()
-would call
-.BR malloc (3)
-and then align the obtained value).
+(see
+.BR memalign (3)).
 .\" Other systems allow passing the result of
 .\" .IR valloc ()
 .\" to
 .\" .IR free (3),
 .\" but not to
 .\" .IR realloc (3).
-The glibc implementation
-allows memory obtained from any of these functions to be
-reclaimed with
-.BR free (3).
 .P
 The glibc
 .BR malloc (3)
-- 
2.51.0


