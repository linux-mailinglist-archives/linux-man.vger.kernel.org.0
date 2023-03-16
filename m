Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B60026BDA5E
	for <lists+linux-man@lfdr.de>; Thu, 16 Mar 2023 21:49:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbjCPUtM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Mar 2023 16:49:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjCPUtL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Mar 2023 16:49:11 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 071901633E
        for <linux-man@vger.kernel.org>; Thu, 16 Mar 2023 13:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1678999701;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc; bh=2DBviDjtVQ2jlrN5MbFFdCqpk4s86RnQ7ojkrXt030w=;
        b=AJZ50Ye9SHM6+OyVrnSuyDqRjXyfNz4niE0nwoZNgn7zTg50V0AzmDGmf7H9T+P68ozjbX
        vym9FETMdKHkce/Up8LULulYWYFZswWa0ClgvblsdFfhop/3QVGe0Nqma1O3bRX8BaB6od
        4MhSZ8IFmlPrkdh/mMTnLD9ts4w1j8Y=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-176-ickaWx0kPyKBtEgPHZcUlg-1; Thu, 16 Mar 2023 16:48:18 -0400
X-MC-Unique: ickaWx0kPyKBtEgPHZcUlg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3C023815F76;
        Thu, 16 Mar 2023 20:48:17 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.8.48])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id AF97F40C6E67;
        Thu, 16 Mar 2023 20:48:17 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 32GKmHSF3599040;
        Thu, 16 Mar 2023 16:48:17 -0400
Date:   Thu, 16 Mar 2023 16:48:17 -0400
Message-Id: <xnv8j02zji.fsf@greed.delorie.com>
From:   DJ Delorie <dj@redhat.com>
To:     libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: [patch] aligned_alloc: conform to C17
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


References:
https://patchwork.sourceware.org/project/glibc/patch/33ec9e0c1e587813b90e8aa771c2c8e6e379dd48.camel@posteo.net/
https://sourceware.org/bugzilla/show_bug.cgi?id=20137
https://sourceware.org/pipermail/libc-alpha/2023-February/145858.html

The memory.texi portion matches Martin's proposed patch.

man page portion, quoted to avoid CI/CD issues (I can send an official
patch separately after the glibc patch is applied):

> diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
> index f5d6618b7..a73ff0421 100644
> --- a/man3/posix_memalign.3
> +++ b/man3/posix_memalign.3
> @@ -91,9 +91,8 @@ The function
>  is the same as
>  .BR memalign (),
>  except for the added restriction that
> -.I size
> -should be a multiple of
> -.IR alignment .
> +.I alignment
> +must be a power of two.
>  .PP
>  The obsolete function
>  .BR valloc ()


From 4767e0e764e1a7a5ef01e303f503036379dd42c5 Mon Sep 17 00:00:00 2001
From: DJ Delorie <dj@redhat.com>
Date: Thu, 16 Mar 2023 01:33:41 -0400
Subject: aligned_alloc: conform to C17

This patch adds the strict checking for power-of-two alignments
in aligned_alloc(), and updates the manual accordingly.

diff --git a/malloc/Versions b/malloc/Versions
index c763395c6d..28f41a94f3 100644
--- a/malloc/Versions
+++ b/malloc/Versions
@@ -67,6 +67,9 @@ libc {
   GLIBC_2.33 {
     mallinfo2;
   }
+  GLIBC_2.38 {
+    __libc_aligned_alloc;
+  }
   GLIBC_PRIVATE {
     # Internal startup hook for libpthread.
     __libc_malloc_pthread_startup;
diff --git a/malloc/malloc-debug.c b/malloc/malloc-debug.c
index 3867d15698..4d2ec04a1a 100644
--- a/malloc/malloc-debug.c
+++ b/malloc/malloc-debug.c
@@ -268,7 +268,8 @@ __debug_realloc (void *oldmem, size_t bytes)
 strong_alias (__debug_realloc, realloc)
 
 static void *
-_debug_mid_memalign (size_t alignment, size_t bytes, const void *address)
+_debug_mid_memalign (size_t alignment, size_t bytes, const void *address,
+		     int check_alignment)
 {
   void *(*hook) (size_t, size_t, const void *) =
     atomic_forced_read (__memalign_hook);
@@ -281,9 +282,15 @@ _debug_mid_memalign (size_t alignment, size_t bytes, const void *address)
   if ((!__is_malloc_debug_enabled (MALLOC_MCHECK_HOOK)
        || !memalign_mcheck_before (alignment, &bytes, &victim)))
     {
-      victim = (__is_malloc_debug_enabled (MALLOC_CHECK_HOOK)
-		? memalign_check (alignment, bytes)
-		: __libc_memalign (alignment, bytes));
+      if (check_alignment && !powerof2 (alignment))
+	{
+	  __set_errno (EINVAL);
+	  victim = NULL;
+	}
+      else
+	victim = (__is_malloc_debug_enabled (MALLOC_CHECK_HOOK)
+		  ? memalign_check (alignment, bytes)
+		  : __libc_memalign (alignment, bytes));
     }
   if (__is_malloc_debug_enabled (MALLOC_MCHECK_HOOK) && victim != NULL)
     victim = memalign_mcheck_after (victim, alignment, orig_bytes);
@@ -296,10 +303,15 @@ _debug_mid_memalign (size_t alignment, size_t bytes, const void *address)
 static void *
 __debug_memalign (size_t alignment, size_t bytes)
 {
-  return _debug_mid_memalign (alignment, bytes, RETURN_ADDRESS (0));
+  return _debug_mid_memalign (alignment, bytes, RETURN_ADDRESS (0), 0);
 }
 strong_alias (__debug_memalign, memalign)
-strong_alias (__debug_memalign, aligned_alloc)
+static void *
+__debug_aligned_alloc (size_t alignment, size_t bytes)
+{
+  return _debug_mid_memalign (alignment, bytes, RETURN_ADDRESS (0), 1);
+}
+strong_alias (__debug_aligned_alloc, aligned_alloc)
 
 static void *
 __debug_pvalloc (size_t bytes)
diff --git a/malloc/malloc.c b/malloc/malloc.c
index 76c50e3f58..09619ed168 100644
--- a/malloc/malloc.c
+++ b/malloc/malloc.c
@@ -656,6 +656,9 @@ libc_hidden_proto (__libc_realloc)
 void*  __libc_memalign(size_t, size_t);
 libc_hidden_proto (__libc_memalign)
 
+void * __libc_aligned_alloc (size_t alignment, size_t bytes);
+libc_hidden_proto (__libc_aligned_alloc)
+
 /*
   valloc(size_t n);
   Equivalent to memalign(pagesize, n), where pagesize is the page
@@ -3509,6 +3512,27 @@ __libc_memalign (size_t alignment, size_t bytes)
   void *address = RETURN_ADDRESS (0);
   return _mid_memalign (alignment, bytes, address);
 }
+libc_hidden_def (__libc_memalign)
+
+/* For ISO C11.  */
+void *
+__libc_aligned_alloc (size_t alignment, size_t bytes)
+{
+  if (!__malloc_initialized)
+    ptmalloc_init ();
+
+  /* Similar to memalign, but ISO C17 requires an error for invalid
+     alignments.  Valid alignments are non-negative powers of two.  */
+  if (!powerof2 (alignment))
+    {
+      __set_errno (EINVAL);
+      return 0;
+    }
+
+  void *address = RETURN_ADDRESS (0);
+  return _mid_memalign (alignment, bytes, address);
+}
+libc_hidden_def (__libc_aligned_alloc)
 
 static void *
 _mid_memalign (size_t alignment, size_t bytes, void *address)
@@ -3567,9 +3591,6 @@ _mid_memalign (size_t alignment, size_t bytes, void *address)
           ar_ptr == arena_for_chunk (mem2chunk (p)));
   return tag_new_usable (p);
 }
-/* For ISO C11.  */
-weak_alias (__libc_memalign, aligned_alloc)
-libc_hidden_def (__libc_memalign)
 
 void *
 __libc_valloc (size_t bytes)
@@ -5903,6 +5924,7 @@ weak_alias (__libc_mallinfo, mallinfo)
 strong_alias (__libc_mallinfo2, __mallinfo2)
 weak_alias (__libc_mallinfo2, mallinfo2)
 strong_alias (__libc_mallopt, __mallopt) weak_alias (__libc_mallopt, mallopt)
+weak_alias (__libc_aligned_alloc, aligned_alloc)
 
 weak_alias (__malloc_stats, malloc_stats)
 weak_alias (__malloc_usable_size, malloc_usable_size)
diff --git a/manual/memory.texi b/manual/memory.texi
index 9d3398a326..8952ff2bfa 100644
--- a/manual/memory.texi
+++ b/manual/memory.texi
@@ -995,7 +995,7 @@ power of two than that, use @code{aligned_alloc} or @code{posix_memalign}.
 @c Alias to memalign.
 The @code{aligned_alloc} function allocates a block of @var{size} bytes whose
 address is a multiple of @var{alignment}.  The @var{alignment} must be a
-power of two and @var{size} must be a multiple of @var{alignment}.
+power of two.
 
 The @code{aligned_alloc} function returns a null pointer on error and sets
 @code{errno} to one of the following values:

