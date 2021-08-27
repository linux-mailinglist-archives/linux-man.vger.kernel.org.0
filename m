Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B5AD3FA1D2
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 01:29:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232433AbhH0Xaa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 19:30:30 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:38100 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232405AbhH0Xaa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 19:30:30 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 54F0C160084;
        Fri, 27 Aug 2021 16:29:40 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id sNIAkDrEVHLC; Fri, 27 Aug 2021 16:29:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 5F6B71600CC;
        Fri, 27 Aug 2021 16:29:35 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 360g59pjfFJc; Fri, 27 Aug 2021 16:29:35 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 2EB89160084;
        Fri, 27 Aug 2021 16:29:35 -0700 (PDT)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <20210810193708.10277-1-eggert@cs.ucla.edu>
 <89f0f59b-4b64-5810-3c66-e77f3c921cff@cs.ucla.edu>
 <12c8b75b-b0bd-6eb3-63b8-b3681bfb357c@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [PATCH] malloc.3: modernize for glibc 2.34 (ping 1)
Message-ID: <0f050123-3b50-a7e6-49f5-9314692fd0ab@cs.ucla.edu>
Date:   Fri, 27 Aug 2021 16:29:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <12c8b75b-b0bd-6eb3-63b8-b3681bfb357c@gmail.com>
Content-Type: multipart/mixed;
 boundary="------------179E8D7EDDDB1FD5EE2705C3"
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------179E8D7EDDDB1FD5EE2705C3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 8/27/21 4:07 PM, Alejandro Colomar (man-pages) wrote:
> Could you break this patch into a few of them?

I could if I had more time, but I'd rather not. If you have the time to=20
break up the patch please feel free. My suggestion, however, is for us=20
to work on the patch together until it passes muster; that should be=20
more efficient for both you and me.
> Also, for the removal of malloc(0), is it that glibc removed that behav=
ior?

In glibc, malloc(0) always returns a unique nonnull pointer when it=20
succeeds. This behavior conforms to POSIX but is not required by POSIX,=20
as POSIX also allows malloc(0) to return NULL when it succeeds.

This has been glibc behavior for decades. The patch merely documents the=20
behavior more clearly. (It also documents some other behavior that *has*=20
changed recently.)

> I think that info should go in the commit message

OK, revised patch attached. It's the same as before, except for the=20
commit message.

--------------179E8D7EDDDB1FD5EE2705C3
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-malloc.3-modernize-for-glibc-2.34.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0001-malloc.3-modernize-for-glibc-2.34.patch"

=46rom be9fc3024c23c8fdb2d8fe96a384a223e3829207 Mon Sep 17 00:00:00 2001
From: Paul Eggert <eggert@cs.ucla.edu>
Date: Fri, 27 Aug 2021 14:56:41 -0700
Subject: [PATCH] malloc.3: modernize for glibc 2.34

glibc has tightened up its rules for replacing the memory allocator.
I went through the malloc man page and looked for how it documented
malloc and related functions, and fixed discrepancies with glibc malloc
documentation and/or implementation.  In particular, I documented
the behavior for size-zero allocations: malloc (0) returns nonnull
on success in glibc (POSIX allows it to return null), realloc (0, N)
behaves like malloc (N), and realloc (P, 0) where P is nonnull
frees P and returns NULL (POSIX and the C standard allow other
behaviors for these cases, and this patch documents that too).
I also reorganized the portability discussion so that portability
issues can be seen more clearly.
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
+The replacement functions must implement the documented glibc behaviors,=

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


--------------179E8D7EDDDB1FD5EE2705C3--
