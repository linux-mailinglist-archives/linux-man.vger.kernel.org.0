Return-Path: <linux-man+bounces-4424-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E30B1CBE672
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61E18301FA5F
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 641E0309EE7;
	Mon, 15 Dec 2025 14:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crB1R7ju"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73D71FBC92
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809717; cv=none; b=kjpqykQUscEPGjrQZfPNT26vPDLYNNZG2tFDbN2pJ7mhDfdlMJx9zbeQK9RjYfqgeU2w1KQBDaj8vZ+wrutQd6G4sf1RTITNaLCNhGANw9onzTaFSsaK7eDydvlrDd4YrfqFCVHf2hkC19SI2kiZ3fUAiRI9XZp1h7DkYSdGM48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809717; c=relaxed/simple;
	bh=GDTHXMj71DshOowI/wudSrUwkgSQIQCK0NfrTwQt2sY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nJSYZby8uUuGZex/QOsKeNaT/NQQ0NbKWdPAfrUojtvAQF8UEA7bH5JW6aFkzJVdlnznmL8W0oIaYEljAV81oHH/ZHo3xRGcUV7W3vt3jEx54pXJnEZKWVirJm5AcqFTIga3oq6qU21lldvuBwj8ACWu/bOYnadse1OgQhjwTRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crB1R7ju; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A737C4CEF5;
	Mon, 15 Dec 2025 14:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809716;
	bh=GDTHXMj71DshOowI/wudSrUwkgSQIQCK0NfrTwQt2sY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=crB1R7ju80w83i2rgL7dOowS3N+zHSZQ++PyHp8WZJaAAvGi7Q89202aL8DantST4
	 OipOuVa3Z3U9roHLaku+DmhtCJh/mgWR+e+HxSbXnzKNPMq4BpFl9MSbqvCQ5LgDHW
	 MpxJUlrCW81/U5xajloGkH3Mip0bbfGH3FbVgIuIbWeQm3piXWBzPcOZAjE+8wmIcm
	 7JNW/Q5VsK7Uf+9inBr+0W0JcBj1YnF9sJhfqOETg4DLYd0u4TtohVdS/fXOiquhS6
	 hJ0aOw+YjuVtZBX9/AJjnRRH+dfX/LCyUbA9NHSzpM5X4A0qM0G6HW0O0TMYIRAgPU
	 C1WtShi31RL9Q==
Date: Mon, 15 Dec 2025 15:41:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 08/14] man/man3/{posix_memalign,valloc}.3: Split valloc()
 from posix_memalign(3)
Message-ID: <126c39d0fb79014d489f5d47ec4268662abb9b72.1765809415.git.alx@kernel.org>
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
 man/man3/posix_memalign.3 | 64 ++--------------------------
 man/man3/valloc.3         | 89 ++++++++++++++++++++++++++++++++++++++-
 2 files changed, 91 insertions(+), 62 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index b3b27e5bb..2f664eb4e 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -5,7 +5,7 @@
 .\"
 .TH posix_memalign 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-posix_memalign, aligned_alloc, valloc
+posix_memalign, aligned_alloc
 \-
 allocate aligned memory
 .SH LIBRARY
@@ -17,7 +17,6 @@ .SH SYNOPSIS
 .P
 .BI "int posix_memalign(void **" memptr ", size_t " alignment ", size_t " size );
 .BI "void *aligned_alloc(size_t " alignment ", size_t " size );
-.BI "[[deprecated]] void *valloc(size_t " size );
 .fi
 .P
 .RS -4
@@ -34,17 +33,6 @@ .SH SYNOPSIS
 .nf
     _ISOC11_SOURCE
 .fi
-.P
-.BR valloc ():
-.nf
-    Since glibc 2.12:
-        (_XOPEN_SOURCE >= 500) && !(_POSIX_C_SOURCE >= 200112L)
-            || /* glibc >= 2.19: */ _DEFAULT_SOURCE
-            || /* glibc <= 2.19: */ _SVID_SOURCE || _BSD_SOURCE
-    Before glibc 2.12:
-        _BSD_SOURCE || _XOPEN_SOURCE >= 500
-.\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
-.fi
 .SH DESCRIPTION
 .BR posix_memalign ()
 allocates
@@ -74,21 +62,10 @@ .SH DESCRIPTION
 .IR alignment ,
 which must be a power of two.
 .P
-The obsolete function
-.BR valloc ()
-allocates
-.I size
-bytes and returns a pointer to the allocated memory.
-The memory address will be a multiple of the page size.
-It is equivalent to
-.IR "memalign(sysconf(_SC_PAGESIZE),size)" .
-.P
 For all of these functions, the memory is not zeroed.
 .SH RETURN VALUE
-.BR aligned_alloc (),
-and
-.BR valloc ()
-return a pointer to the allocated memory on success.
+.BR aligned_alloc ()
+returns a pointer to the allocated memory on success.
 On error, NULL is returned, and
 .I errno
 is set
@@ -131,11 +108,6 @@ .SH ATTRIBUTES
 .BR aligned_alloc (),
 .BR posix_memalign ()
 T}	Thread safety	MT-Safe
-T{
-.na
-.nh
-.BR valloc ()
-T}	Thread safety	MT-Unsafe init
 .TE
 .SH STANDARDS
 .TP
@@ -145,9 +117,6 @@ .SH STANDARDS
 .TP
 .BR posix_memalign ()
 POSIX.1-2024.
-.TP
-.BR valloc ()
-None.
 .SH HISTORY
 .TP
 .BR aligned_alloc ()
@@ -158,29 +127,12 @@ .SH HISTORY
 .BR posix_memalign ()
 glibc 2.1.91.
 POSIX.1d, POSIX.1-2001.
-.TP
-.BR valloc ()
-glibc 2.0.
-3.0BSD.
-Documented as obsolete in 4.3BSD,
-and as legacy in SUSv2.
 .\"
 .SS Headers
 Everybody agrees that
 .BR posix_memalign ()
 is declared in
 .IR <stdlib.h> .
-.P
-According to SUSv2,
-.BR valloc ()
-is declared in
-.IR <stdlib.h> .
-.\" Libc4,5 and
-glibc declares it in
-.IR <malloc.h> ,
-and also in
-.I <stdlib.h>
-if suitable feature test macros are defined (see above).
 .SH NOTES
 On many systems there are alignment restrictions, for example, on buffers
 used for direct block device I/O.
@@ -200,16 +152,6 @@ .SH NOTES
 .BR posix_memalign ()
 can be freed using
 .BR free (3).
-Some systems provide no way to reclaim memory allocated with
-.BR valloc ()
-(see
-.BR memalign (3)).
-.\" Other systems allow passing the result of
-.\" .IR valloc ()
-.\" to
-.\" .IR free (3),
-.\" but not to
-.\" .IR realloc (3).
 .P
 The glibc
 .BR malloc (3)
diff --git a/man/man3/valloc.3 b/man/man3/valloc.3
index 791d4c801..cc3543612 100644
--- a/man/man3/valloc.3
+++ b/man/man3/valloc.3
@@ -1 +1,88 @@
-.so man3/posix_memalign.3
+'\" t
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH valloc 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+valloc
+\-
+page-aligned memory allocation
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <stdlib.h>
+.P
+.BI "[[deprecated]] void *valloc(size_t " size );
+.fi
+.P
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.P
+.BR valloc ():
+.nf
+    Since glibc 2.12:
+        (_XOPEN_SOURCE >= 500) && !(_POSIX_C_SOURCE >= 200112L)
+            || /* glibc >= 2.19: */ _DEFAULT_SOURCE
+            || /* glibc <= 2.19: */ _SVID_SOURCE || _BSD_SOURCE
+    Before glibc 2.12:
+        _BSD_SOURCE || _XOPEN_SOURCE >= 500
+.\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
+.fi
+.SH DESCRIPTION
+.BR valloc ()
+allocates
+.I size
+bytes and returns a pointer to the allocated memory.
+The memory address will be a multiple of the page size.
+.P
+It is equivalent to
+.IR "memalign(sysconf(_SC_PAGESIZE),size)" .
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
+.BR valloc ()
+T}	Thread safety	MT-Unsafe init
+.TE
+.SH VERSIONS
+According to SUSv2,
+.BR valloc ()
+is declared in
+.IR <stdlib.h> .
+.\" Libc4,5 and
+glibc declares it in
+.IR <malloc.h> ,
+and also in
+.I <stdlib.h>
+if suitable feature test macros are defined (see above).
+.SH STANDARDS
+BSD, GNU.
+.SH HISTORY
+glibc 2.0.
+3.0BSD.
+Documented as obsolete in 4.3BSD,
+and as legacy in SUSv2.
+.\"
+.SH CAVEATS
+See
+.BR memalign (3).
+.\" Other systems allow passing the result of
+.\" .IR valloc ()
+.\" to
+.\" .IR free (3),
+.\" but not to
+.\" .IR realloc (3).
+.SH SEE ALSO
+.BR memalign (3)
-- 
2.51.0


