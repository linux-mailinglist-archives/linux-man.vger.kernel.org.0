Return-Path: <linux-man+bounces-4389-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D58FACB2EDF
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:40:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 537093001199
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4AC2F8BDF;
	Wed, 10 Dec 2025 12:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0gouo4e"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3C62C17A1
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370426; cv=none; b=RZDdlMuAl4HzxuctO2FTMBknOQvPFFDdQvLtmtyspOcmhGvQtEBr0eSIALm2jGSgF4uUWAqzk2pZM0wynohp0gOONIUkXqS9jz3EGWnpuwPq1QyxWbjg/m+WmH4GJxVkJPDTAQVALDhoQDtdguvPzzsfO6SLdRvd+1KK5R7BkNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370426; c=relaxed/simple;
	bh=/c0YGikkIXCYu1Z+Na342NQ1Sw6SyEzYrxmido6zSew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d1muSakaYXq3o0PxXNhrcgvcOeHNK53vn1KYckrioDBOLugM8Ovsexb0BitYthE+w7QRUo1BfB9fUpKm2r48PPT29d/0JUsFmLh+8B6x3ZV/nD6j/ju0hu5pl9SeVg6V0eFPp0cDN8EyXV4Hu6og0VTA9JenQ8w/V3S7TJgFChg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0gouo4e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA5B5C4CEF1;
	Wed, 10 Dec 2025 12:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370426;
	bh=/c0YGikkIXCYu1Z+Na342NQ1Sw6SyEzYrxmido6zSew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z0gouo4ejbGuHXlEVLbWp0wLyNtCUJxHWaOWI0i9rbiie1lxCulPuU9UVk3JAJMg/
	 w8AX/9MUcXpprnGtbLjjQhTi+6oRnERhNfOMuytcD8AI30MKYHc9GHut3n0jZ5aYP1
	 gJLBWUgn9bsLAWZcjA3PV+M6xc5JQNiup7ZCwSP8sjBbNkIEUK5h1Uj940XrgQRdmz
	 VgenoSJiE8InHGUKgRdnSBqZSls0OFEF9BunB6KXCxpBGVN15I/cpaeWO9K22uq9ao
	 6MCCTBLE9TDfgvIy82sM8CJ+LicTcV1OOre3QREo+yLfGj8YxUQu3Ul+2X90LGvjin
	 cs+s0qMamNNLw==
Date: Wed, 10 Dec 2025 13:40:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 09/12] man/man3/{aligned_alloc,posix_memalign}.3: Split
 aligned_alloc() from posix_memalign(3)
Message-ID: <6da397d5c73aa3a5923f02b7591b3ac5422c21cb.1765370035.git.alx@kernel.org>
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
 man/man3/aligned_alloc.3  | 99 ++++++++++++++++++++++++++++++++++++++-
 man/man3/posix_memalign.3 | 56 +++-------------------
 2 files changed, 105 insertions(+), 50 deletions(-)

diff --git a/man/man3/aligned_alloc.3 b/man/man3/aligned_alloc.3
index 791d4c801..cdc9ba1a2 100644
--- a/man/man3/aligned_alloc.3
+++ b/man/man3/aligned_alloc.3
@@ -1 +1,98 @@
-.so man3/posix_memalign.3
+'\" t
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH aligned_alloc 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+aligned_alloc
+\-
+allocate aligned memory
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <stdlib.h>
+.P
+.BI "void *aligned_alloc(size_t " alignment ", size_t " size );
+.fi
+.P
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.P
+.BR aligned_alloc ():
+.nf
+    _ISOC11_SOURCE
+.fi
+.SH DESCRIPTION
+.BR aligned_alloc ()
+allocates
+.I size
+bytes and returns a pointer to the allocated memory.
+The memory address will be a multiple of
+.IR alignment ,
+which must be a power of two.
+This address can later be successfully passed to
+.BR free (3).
+.P
+The memory is not zeroed.
+.SH RETURN VALUE
+.BR aligned_alloc ()
+returns a pointer to the allocated memory on success.
+On error, NULL is returned, and
+.I errno
+is set
+to indicate the error.
+.SH ERRORS
+.TP
+.B EINVAL
+The
+.I alignment
+argument was not a power of two.
+.TP
+.B ENOMEM
+Out of memory.
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
+.BR aligned_alloc ()
+T}	Thread safety	MT-Safe
+.TE
+.SH STANDARDS
+C23,
+POSIX.1-2024.
+.SH HISTORY
+glibc 2.16.
+C11,
+POSIX.1-2024.
+.SH NOTES
+On many systems there are alignment restrictions, for example, on buffers
+used for direct block device I/O.
+POSIX specifies the
+.I "pathconf(path,_PC_REC_XFER_ALIGN)"
+call that tells what alignment is needed.
+Now one can use
+.BR aligned_alloc ()
+to satisfy this requirement.
+.P
+The glibc
+.BR malloc (3)
+always returns 8-byte aligned memory addresses,
+so this function is needed
+only if you require larger alignment values.
+.SH SEE ALSO
+.BR brk (2),
+.BR getpagesize (2),
+.BR free (3),
+.BR malloc (3)
diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index 2f664eb4e..8b3258dc2 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -5,7 +5,7 @@
 .\"
 .TH posix_memalign 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-posix_memalign, aligned_alloc
+posix_memalign
 \-
 allocate aligned memory
 .SH LIBRARY
@@ -16,7 +16,6 @@ .SH SYNOPSIS
 .B #include <stdlib.h>
 .P
 .BI "int posix_memalign(void **" memptr ", size_t " alignment ", size_t " size );
-.BI "void *aligned_alloc(size_t " alignment ", size_t " size );
 .fi
 .P
 .RS -4
@@ -28,11 +27,6 @@ .SH SYNOPSIS
 .nf
     _POSIX_C_SOURCE >= 200112L
 .fi
-.P
-.BR aligned_alloc ():
-.nf
-    _ISOC11_SOURCE
-.fi
 .SH DESCRIPTION
 .BR posix_memalign ()
 allocates
@@ -54,23 +48,13 @@ .SH DESCRIPTION
 .\" glibc does this:
 or a unique pointer value.
 .P
-.BR aligned_alloc ()
-allocates
-.I size
-bytes and returns a pointer to the allocated memory.
-The memory address will be a multiple of
-.IR alignment ,
-which must be a power of two.
+The memory is not zeroed.
 .P
-For all of these functions, the memory is not zeroed.
+.BR aligned_alloc (3)
+is a standard function that provides the same functionality,
+and has a more ergonomic prototype.
+Use that instead.
 .SH RETURN VALUE
-.BR aligned_alloc ()
-returns a pointer to the allocated memory on success.
-On error, NULL is returned, and
-.I errno
-is set
-to indicate the error.
-.P
 .BR posix_memalign ()
 returns zero on success, or one of the error values listed in the
 next section on failure.
@@ -105,26 +89,12 @@ .SH ATTRIBUTES
 T{
 .na
 .nh
-.BR aligned_alloc (),
 .BR posix_memalign ()
 T}	Thread safety	MT-Safe
 .TE
 .SH STANDARDS
-.TP
-.BR aligned_alloc ()
-C23,
-POSIX.1-2024.
-.TP
-.BR posix_memalign ()
 POSIX.1-2024.
 .SH HISTORY
-.TP
-.BR aligned_alloc ()
-glibc 2.16.
-C11,
-POSIX.1-2024.
-.TP
-.BR posix_memalign ()
 glibc 2.1.91.
 POSIX.1d, POSIX.1-2001.
 .\"
@@ -134,15 +104,6 @@ .SS Headers
 is declared in
 .IR <stdlib.h> .
 .SH NOTES
-On many systems there are alignment restrictions, for example, on buffers
-used for direct block device I/O.
-POSIX specifies the
-.I "pathconf(path,_PC_REC_XFER_ALIGN)"
-call that tells what alignment is needed.
-Now one can use
-.BR posix_memalign ()
-to satisfy this requirement.
-.P
 .BR posix_memalign ()
 verifies that
 .I alignment
@@ -158,7 +119,4 @@ .SH NOTES
 always returns 8-byte aligned memory addresses, so these functions are
 needed only if you require larger alignment values.
 .SH SEE ALSO
-.BR brk (2),
-.BR getpagesize (2),
-.BR free (3),
-.BR malloc (3)
+.BR aligned_alloc (3)
-- 
2.51.0


