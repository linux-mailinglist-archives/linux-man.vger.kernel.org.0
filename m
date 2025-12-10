Return-Path: <linux-man+bounces-4386-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1CDCB2EF7
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:41:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 804F43009437
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE88431A54C;
	Wed, 10 Dec 2025 12:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOQxmqNO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4572C17A1
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370418; cv=none; b=OGmy9tU7U5g/PU7lqArLgzFJU5fzANagTwfSjCmJD+nNdFwPoei4dXLJuojder25aKKaxRrE/t0KsWvdDfTugOcan1NBAwmQ86Gl49Q5EoTEaBXlKz4Npzj9tcQjV/MiNm//lPFrPm+cYuMOFPabKl/2mT4i3cs0c3e3zd2Vycc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370418; c=relaxed/simple;
	bh=wd/hi7QdgWEVAFiu8Th+2Shyd/XCbYNBWJkVa2xZSak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hmmECg1IQkQy9rw/LZGoc/CC7jQSEvc4V2qVfUgZ/Mb0DK5mdi8S/Vj8s8IRB3pAVr0CDoT3YCMyZoLHq+1YIGnKzfyH66ClPydBIXfb1kaoTemWQovMeKtI437O1BfxUbbSKblakkaxeLRhq12kiV7Q59x7VyNC8CieTZth4ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOQxmqNO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F26DC4CEF1;
	Wed, 10 Dec 2025 12:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370418;
	bh=wd/hi7QdgWEVAFiu8Th+2Shyd/XCbYNBWJkVa2xZSak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nOQxmqNOrwl2X9xoXzwO9ewVcI89pKxwOlzzbGOiSsZa9pi9L+w3imtRNsYQ0Vo4m
	 XRETmO2q8BKAUZONrWOsfus63voQYC0KhU7GlMsCplYrMPmNM7UHTdNlhDWAyNKiH+
	 HasBBggWTVcB/EtUkNlVTW92QeoXO5akUUNuQKlweeNdYwrNOCX4qEgSDotfif3B7h
	 XPIH9JooxhysKxe7Z4Oo6nEntaW9IY1k/h1ydZ9eOYq2qk+IgnfyO07y2fTveRUPgI
	 C+gN8miDwpNckQZ2jKZigi/URC8BCS9gu/E35wLKkQ1meISNdNYZlobxSQP/N33KUO
	 KJr/p+bDrPpRQ==
Date: Wed, 10 Dec 2025 13:40:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 06/12] man/man3/{posix_,}memalign.3: Split memalign() from
 posix_memalign(3)
Message-ID: <de49191b8cd03eb77537e460a16d46ee1a1bc969.1765370035.git.alx@kernel.org>
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
 man/man3/memalign.3       | 77 ++++++++++++++++++++++++++++++++++++++-
 man/man3/posix_memalign.3 | 46 ++---------------------
 2 files changed, 79 insertions(+), 44 deletions(-)

diff --git a/man/man3/memalign.3 b/man/man3/memalign.3
index 791d4c801..48f25a09b 100644
--- a/man/man3/memalign.3
+++ b/man/man3/memalign.3
@@ -1 +1,76 @@
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
+.BR aligned_alloc ().
+Use that instead.
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


