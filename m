Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE04B3E83DC
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 21:43:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231200AbhHJToN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 15:44:13 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:43388 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230056AbhHJToL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Aug 2021 15:44:11 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 132791600F1;
        Tue, 10 Aug 2021 12:37:30 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id u03Leoe8pW-R; Tue, 10 Aug 2021 12:37:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 208FA1600EB;
        Tue, 10 Aug 2021 12:37:25 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id tjifnsEr8gc2; Tue, 10 Aug 2021 12:37:25 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id CEB99160060;
        Tue, 10 Aug 2021 12:37:24 -0700 (PDT)
From:   Paul Eggert <eggert@cs.ucla.edu>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Cc:     Paul Eggert <eggert@cs.ucla.edu>
Subject: [[patch] 1/2] malloc.3: modernize for glibc 2.34
Date:   Tue, 10 Aug 2021 12:37:07 -0700
Message-Id: <20210810193708.10277-1-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc has tightened up its rules for replacing the memory allocator.
I went through the malloc man page and looked for how it documented
malloc and related functions, and fixed discrepancies with glibc malloc
documentation and/or implementation.  I also reorganized the portability
discussion so that portability issues can be seen more clearly.
---
 man3/malloc.3 | 163 ++++++++++++++++++++++++--------------------------
 1 file changed, 79 insertions(+), 84 deletions(-)

diff --git a/man3/malloc.3 b/man3/malloc.3
index 0214233bb..fe88948d1 100644
--- a/man3/malloc.3
+++ b/man3/malloc.3
@@ -68,23 +68,20 @@ If
 .I size
 is 0, then
 .BR malloc ()
-returns either NULL,
-.\" glibc does this:
-or a unique pointer value that can later be successfully passed to
+returns a unique pointer value that can later be successfully passed to
 .BR free ().
+(See "Nonportable behavior" for portability issues.)
 .PP
 The
 .BR free ()
 function frees the memory space pointed to by
 .IR ptr ,
 which must have been returned by a previous call to
-.BR malloc (),
-.BR calloc (),
-or
-.BR realloc ().
+.BR malloc ()
+or related functions.
 Otherwise, or if
-.I free(ptr)
-has already been called before, undefined behavior occurs.
+.I ptr
+has already been freed, undefined behavior occurs.
 If
 .I ptr
 is NULL, no operation is performed.
@@ -103,9 +100,7 @@ or
 .I size
 is 0, then
 .BR calloc ()
-returns either NULL,
-.\" glibc does this:
-or a unique pointer value that can later be successfully passed to
+returns a unique pointer value that can later be successfully passed to
 .BR free ().
 If the multiplication of
 .I nmemb
@@ -150,14 +145,12 @@ and
 .I ptr
 is not NULL, then the call is equivalent to
 .I free(ptr)
-(this behavior is nonportable; see NOTES).
+(but see "Nonportable behavior" for portability issues).
 Unless
 .I ptr
 is NULL, it must have been returned by an earlier call to
-.BR malloc (),
-.BR calloc (),
-or
-.BR realloc ().
+.B malloc
+or related functions.
 If the area pointed to was moved, a
 .I free(ptr)
 is done.
@@ -184,60 +177,46 @@ call,
 fails safely in the case where the multiplication would overflow.
 If such an overflow occurs,
 .BR reallocarray ()
-returns NULL, sets
-.I errno
-to
-.BR ENOMEM ,
-and leaves the original block of memory unchanged.
+returns an error.
 .SH RETURN VALUE
 The
-.BR malloc ()
+.BR malloc (),
+.BR calloc (),
+.BR realloc (),
 and
-.BR calloc ()
+.BR reallocarray ()
 functions return a pointer to the allocated memory,
-which is suitably aligned for any built-in type.
-On error, these functions return NULL.
-NULL may also be returned by a successful call to
-.BR malloc ()
-with a
-.I size
-of zero,
-or by a successful call to
-.BR calloc ()
-with
-.I nmemb
-or
-.I size
-equal to zero.
+which is suitably aligned for any type that fits into
+the requested size or less.
+On error, these functions return NULL and set
+.IR errno .
+Attempting to allocate more than
+.B PTRDIFF_MAX
+bytes is considered an error, as an object that large
+could cause later pointer subtraction to overflow.
 .PP
 The
 .BR free ()
-function returns no value.
+function returns no value, and preserves
+.IR errno .
 .PP
 The
 .BR realloc ()
-function returns a pointer to the newly allocated memory, which is suita=
bly
-aligned for any built-in type, or NULL if the request failed.
-The returned pointer may be the same as
+and
+.BR reallocarray ()
+functions return NULL if
+.I ptr
+is not NULL and the requested size is zero;
+this is not considered an error.
+(See "Nonportable behavior" for portability issues.)
+Otherwise, the returned pointer may be the same as
 .IR ptr
 if the allocation was not moved
 (e.g., there was room to expand the allocation in-place), or different f=
rom
 .IR ptr
 if the allocation was moved to a new address.
-If
-.I size
-was equal to 0, either NULL or a pointer suitable to be passed to
-.BR free ()
-is returned.
-If
-.BR realloc ()
-fails, the original block is left untouched; it is not freed or moved.
-.PP
-On success, the
-.BR reallocarray ()
-function returns a pointer to the newly allocated memory.
-On failure,
-it returns NULL and the original block of memory is left untouched.
+If these functions fail,
+the original block is left untouched; it is not freed or moved.
 .SH ERRORS
 .BR calloc (),
 .BR malloc (),
@@ -257,6 +236,16 @@ limit described in
 .SH VERSIONS
 .BR reallocarray ()
 first appeared in glibc in version 2.26.
+.PP
+.BR malloc ()
+and related functions rejected sizes greater than
+.B PTRDIFF_MAX
+starting in glibc 2.30.
+.PP
+.BR free ()
+preserved
+.I errno
+starting in glibc 2.33.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -344,30 +333,27 @@ or
 .BR mmap (2)),
 and managed with its own mutexes.
 .PP
-SUSv2 requires
+If your program uses a private memory allocator,
+it should do so by replacing
 .BR malloc (),
+.BR free (),
 .BR calloc (),
 and
-.BR realloc ()
-to set
+.BR realloc ().
+The replacement functions must implement the documented glibc behaviors,
+including
 .I errno
-to
-.B ENOMEM
-upon failure.
-Glibc assumes that this is done
-(and the glibc versions of these routines do this); if you
-use a private malloc implementation that does not set
-.IR errno ,
-then certain library routines may fail without having
-a reason in
+handling, size-zero allocations, and overflow checking;
+otherwise, other library routines may crash or operate incorrectly.
+For example, if the replacement
+.IR free ()
+does not preserve errno, then seemingly unrelated library routines may
+fail without having a valid reason in
 .IR errno .
+Private memory allocators may also need to replace other glibc functions=
;
+see "Replacing malloc" in the glibc manual for details.
 .PP
-Crashes in
-.BR malloc (),
-.BR calloc (),
-.BR realloc (),
-or
-.BR free ()
+Crashes in memory allocators
 are almost always related to heap corruption, such as overflowing
 an allocated chunk or freeing the same pointer twice.
 .PP
@@ -378,19 +364,28 @@ implementation is tunable via environment variables=
; see
 for details.
 .SS Nonportable behavior
 The behavior of
-.BR realloc ()
-when
-.I size
-is equal to zero,
-and
-.I ptr
-is not NULL,
+these functions when the requested size is zero
 is glibc specific;
-other implementations may return NULL, and set
-.IR errno .
-Portable POSIX programs should avoid it.
+other implementations may return NULL without setting
+.IR errno ,
+and portable POSIX programs should tolerate such behavior.
 See
 .BR realloc (3p).
+.PP
+POSIX requires memory allocators
+to set
+.I errno
+upon failure.
+However, the C standard does not require this, and applications
+portable to non-POSIX platforms should not assume this.
+.PP
+Portable programs should not use private memory allocators,
+as POSIX and the C standard do not allow replacement of
+.BR malloc (),
+.BR free (),
+.BR calloc (),
+and
+.BR realloc ().
 .SH SEE ALSO
 .\" http://g.oswego.edu/dl/html/malloc.html
 .\" A Memory Allocator - by Doug Lea
--=20
2.31.1

