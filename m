Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E97A6BF15E
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 20:03:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbjCQTDj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 15:03:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbjCQTDi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 15:03:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8765924BDD
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 12:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679079759;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc; bh=c5267v8ZejD8YH0jl4c0lGWYTCZaLZd4o7Hz2ntSufI=;
        b=NVss6vqrpAChcEZrPvIzVbSHNBhRL4yfjRrQOQDkx0/oHZSY611MUb4CfMqEAek/nRxAgL
        Ye1e8fp54KZLV3mKxAnyqZBfgqwu+iDEKIQxrj6fUnF3KgqHpg8uS9vjAPSZ6GBZbqnTxD
        s6wID8A4UeuDScyD4ZjPx4hXhGU5Tgo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-120-TNNoHYJDNCCHQeFAlcP7Ng-1; Fri, 17 Mar 2023 15:02:38 -0400
X-MC-Unique: TNNoHYJDNCCHQeFAlcP7Ng-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9B2C85C064;
        Fri, 17 Mar 2023 19:02:37 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.9.230])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D9EF40C6E67;
        Fri, 17 Mar 2023 19:02:37 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 32HJ2a7D3642719;
        Fri, 17 Mar 2023 15:02:37 -0400
Date:   Fri, 17 Mar 2023 15:02:36 -0400
Message-Id: <xnjzzf2oc3.fsf@greed.delorie.com>
From:   DJ Delorie <dj@redhat.com>
To:     libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: [patch v2] aligned_alloc: conform to C17
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Changes from v1:

* Fixed malloc-debug
* alignment of zero is invalid
* fixed ABI tables

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

From 86923303acfee3b24ced574917b9340e29843557 Mon Sep 17 00:00:00 2001
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
index 3867d15698..bbe989549e 100644
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
@@ -319,7 +331,7 @@ __debug_pvalloc (size_t bytes)
     }
   rounded_bytes = rounded_bytes & -(pagesize - 1);
 
-  return _debug_mid_memalign (pagesize, rounded_bytes, RETURN_ADDRESS (0));
+  return _debug_mid_memalign (pagesize, rounded_bytes, RETURN_ADDRESS (0), 0);
 }
 strong_alias (__debug_pvalloc, pvalloc)
 
@@ -329,7 +341,7 @@ __debug_valloc (size_t bytes)
   if (!pagesize)
     pagesize = sysconf (_SC_PAGESIZE);
 
-  return _debug_mid_memalign (pagesize, bytes, RETURN_ADDRESS (0));
+  return _debug_mid_memalign (pagesize, bytes, RETURN_ADDRESS (0), 0);
 }
 strong_alias (__debug_valloc, valloc)
 
@@ -343,7 +355,7 @@ __debug_posix_memalign (void **memptr, size_t alignment, size_t bytes)
       || alignment == 0)
     return EINVAL;
 
-  *memptr = _debug_mid_memalign (alignment, bytes, RETURN_ADDRESS (0));
+  *memptr = _debug_mid_memalign (alignment, bytes, RETURN_ADDRESS (0), 0);
 
   if (*memptr == NULL)
     return ENOMEM;
diff --git a/malloc/malloc.c b/malloc/malloc.c
index 76c50e3f58..aac667bc42 100644
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
+  if (!powerof2 (alignment) || alignment == 0)
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
diff --git a/sysdeps/generic/libc.abilist b/sysdeps/generic/libc.abilist
index baeb89089a..61f35461bb 100644
--- a/sysdeps/generic/libc.abilist
+++ b/sysdeps/generic/libc.abilist
@@ -1 +1,2 @@
 GLIBC_2.36 pidfd_getfd F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/mach/hurd/i386/libc.abilist b/sysdeps/mach/hurd/i386/libc.abilist
index ed0c4789eb..41557a887b 100644
--- a/sysdeps/mach/hurd/i386/libc.abilist
+++ b/sysdeps/mach/hurd/i386/libc.abilist
@@ -2326,6 +2326,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/aarch64/libc.abilist b/sysdeps/unix/sysv/linux/aarch64/libc.abilist
index 0e2d9c3045..da7fea3946 100644
--- a/sysdeps/unix/sysv/linux/aarch64/libc.abilist
+++ b/sysdeps/unix/sysv/linux/aarch64/libc.abilist
@@ -2665,3 +2665,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/alpha/libc.abilist b/sysdeps/unix/sysv/linux/alpha/libc.abilist
index f1bec1978d..2e070513a1 100644
--- a/sysdeps/unix/sysv/linux/alpha/libc.abilist
+++ b/sysdeps/unix/sysv/linux/alpha/libc.abilist
@@ -2762,6 +2762,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.38 __nldbl___isoc23_fscanf F
 GLIBC_2.38 __nldbl___isoc23_fwscanf F
 GLIBC_2.38 __nldbl___isoc23_scanf F
diff --git a/sysdeps/unix/sysv/linux/arc/libc.abilist b/sysdeps/unix/sysv/linux/arc/libc.abilist
index aa874b88d0..298b4818e5 100644
--- a/sysdeps/unix/sysv/linux/arc/libc.abilist
+++ b/sysdeps/unix/sysv/linux/arc/libc.abilist
@@ -2426,3 +2426,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/arm/be/libc.abilist b/sysdeps/unix/sysv/linux/arm/be/libc.abilist
index afbd57da6f..85947d82b3 100644
--- a/sysdeps/unix/sysv/linux/arm/be/libc.abilist
+++ b/sysdeps/unix/sysv/linux/arm/be/libc.abilist
@@ -546,6 +546,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 _Exit F
 GLIBC_2.4 _IO_2_1_stderr_ D 0xa0
 GLIBC_2.4 _IO_2_1_stdin_ D 0xa0
diff --git a/sysdeps/unix/sysv/linux/arm/le/libc.abilist b/sysdeps/unix/sysv/linux/arm/le/libc.abilist
index e7364cd3fe..41988fc314 100644
--- a/sysdeps/unix/sysv/linux/arm/le/libc.abilist
+++ b/sysdeps/unix/sysv/linux/arm/le/libc.abilist
@@ -543,6 +543,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 _Exit F
 GLIBC_2.4 _IO_2_1_stderr_ D 0xa0
 GLIBC_2.4 _IO_2_1_stdin_ D 0xa0
diff --git a/sysdeps/unix/sysv/linux/csky/libc.abilist b/sysdeps/unix/sysv/linux/csky/libc.abilist
index 913fa59215..30f8fdc6a1 100644
--- a/sysdeps/unix/sysv/linux/csky/libc.abilist
+++ b/sysdeps/unix/sysv/linux/csky/libc.abilist
@@ -2702,3 +2702,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/hppa/libc.abilist b/sysdeps/unix/sysv/linux/hppa/libc.abilist
index 43af3a9811..27440777b6 100644
--- a/sysdeps/unix/sysv/linux/hppa/libc.abilist
+++ b/sysdeps/unix/sysv/linux/hppa/libc.abilist
@@ -2651,6 +2651,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/i386/libc.abilist b/sysdeps/unix/sysv/linux/i386/libc.abilist
index af72f8fab0..17ab605e90 100644
--- a/sysdeps/unix/sysv/linux/i386/libc.abilist
+++ b/sysdeps/unix/sysv/linux/i386/libc.abilist
@@ -2835,6 +2835,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/ia64/libc.abilist b/sysdeps/unix/sysv/linux/ia64/libc.abilist
index 48cbb0fa50..8ca64fcc0d 100644
--- a/sysdeps/unix/sysv/linux/ia64/libc.abilist
+++ b/sysdeps/unix/sysv/linux/ia64/libc.abilist
@@ -2600,6 +2600,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/loongarch/lp64/libc.abilist b/sysdeps/unix/sysv/linux/loongarch/lp64/libc.abilist
index c15884bb0b..9adbf2b8b4 100644
--- a/sysdeps/unix/sysv/linux/loongarch/lp64/libc.abilist
+++ b/sysdeps/unix/sysv/linux/loongarch/lp64/libc.abilist
@@ -2186,3 +2186,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/m68k/coldfire/libc.abilist b/sysdeps/unix/sysv/linux/m68k/coldfire/libc.abilist
index 3738db81df..ede35d38d9 100644
--- a/sysdeps/unix/sysv/linux/m68k/coldfire/libc.abilist
+++ b/sysdeps/unix/sysv/linux/m68k/coldfire/libc.abilist
@@ -547,6 +547,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 _Exit F
 GLIBC_2.4 _IO_2_1_stderr_ D 0x98
 GLIBC_2.4 _IO_2_1_stdin_ D 0x98
diff --git a/sysdeps/unix/sysv/linux/m68k/m680x0/libc.abilist b/sysdeps/unix/sysv/linux/m68k/m680x0/libc.abilist
index ed13627752..3a3f248c7c 100644
--- a/sysdeps/unix/sysv/linux/m68k/m680x0/libc.abilist
+++ b/sysdeps/unix/sysv/linux/m68k/m680x0/libc.abilist
@@ -2778,6 +2778,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/microblaze/be/libc.abilist b/sysdeps/unix/sysv/linux/microblaze/be/libc.abilist
index 8357738621..3921fdc389 100644
--- a/sysdeps/unix/sysv/linux/microblaze/be/libc.abilist
+++ b/sysdeps/unix/sysv/linux/microblaze/be/libc.abilist
@@ -2751,3 +2751,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/microblaze/le/libc.abilist b/sysdeps/unix/sysv/linux/microblaze/le/libc.abilist
index 58c5da583d..941a176ce8 100644
--- a/sysdeps/unix/sysv/linux/microblaze/le/libc.abilist
+++ b/sysdeps/unix/sysv/linux/microblaze/le/libc.abilist
@@ -2748,3 +2748,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/mips/mips32/fpu/libc.abilist b/sysdeps/unix/sysv/linux/mips/mips32/fpu/libc.abilist
index d3741945cd..092d0fa49f 100644
--- a/sysdeps/unix/sysv/linux/mips/mips32/fpu/libc.abilist
+++ b/sysdeps/unix/sysv/linux/mips/mips32/fpu/libc.abilist
@@ -2743,6 +2743,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/mips/mips32/nofpu/libc.abilist b/sysdeps/unix/sysv/linux/mips/mips32/nofpu/libc.abilist
index 5319fdc204..72188d746b 100644
--- a/sysdeps/unix/sysv/linux/mips/mips32/nofpu/libc.abilist
+++ b/sysdeps/unix/sysv/linux/mips/mips32/nofpu/libc.abilist
@@ -2741,6 +2741,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/mips/mips64/n32/libc.abilist b/sysdeps/unix/sysv/linux/mips/mips64/n32/libc.abilist
index 1743ea6eb9..7c13eea918 100644
--- a/sysdeps/unix/sysv/linux/mips/mips64/n32/libc.abilist
+++ b/sysdeps/unix/sysv/linux/mips/mips64/n32/libc.abilist
@@ -2749,6 +2749,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/mips/mips64/n64/libc.abilist b/sysdeps/unix/sysv/linux/mips/mips64/n64/libc.abilist
index 9b1f53c6ac..6ab946775c 100644
--- a/sysdeps/unix/sysv/linux/mips/mips64/n64/libc.abilist
+++ b/sysdeps/unix/sysv/linux/mips/mips64/n64/libc.abilist
@@ -2651,6 +2651,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/nios2/libc.abilist b/sysdeps/unix/sysv/linux/nios2/libc.abilist
index ae1c6ca1b5..fd57b8ec8b 100644
--- a/sysdeps/unix/sysv/linux/nios2/libc.abilist
+++ b/sysdeps/unix/sysv/linux/nios2/libc.abilist
@@ -2790,3 +2790,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/or1k/libc.abilist b/sysdeps/unix/sysv/linux/or1k/libc.abilist
index a7c572c947..8de529faf6 100644
--- a/sysdeps/unix/sysv/linux/or1k/libc.abilist
+++ b/sysdeps/unix/sysv/linux/or1k/libc.abilist
@@ -2172,3 +2172,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/powerpc/powerpc32/fpu/libc.abilist b/sysdeps/unix/sysv/linux/powerpc/powerpc32/fpu/libc.abilist
index 074fa031a7..216b0ff0cd 100644
--- a/sysdeps/unix/sysv/linux/powerpc/powerpc32/fpu/libc.abilist
+++ b/sysdeps/unix/sysv/linux/powerpc/powerpc32/fpu/libc.abilist
@@ -2805,6 +2805,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.38 __nldbl___isoc23_fscanf F
 GLIBC_2.38 __nldbl___isoc23_fwscanf F
 GLIBC_2.38 __nldbl___isoc23_scanf F
diff --git a/sysdeps/unix/sysv/linux/powerpc/powerpc32/nofpu/libc.abilist b/sysdeps/unix/sysv/linux/powerpc/powerpc32/nofpu/libc.abilist
index dfcb4bd2d5..4c8365600f 100644
--- a/sysdeps/unix/sysv/linux/powerpc/powerpc32/nofpu/libc.abilist
+++ b/sysdeps/unix/sysv/linux/powerpc/powerpc32/nofpu/libc.abilist
@@ -2838,6 +2838,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.38 __nldbl___isoc23_fscanf F
 GLIBC_2.38 __nldbl___isoc23_fwscanf F
 GLIBC_2.38 __nldbl___isoc23_scanf F
diff --git a/sysdeps/unix/sysv/linux/powerpc/powerpc64/be/libc.abilist b/sysdeps/unix/sysv/linux/powerpc/powerpc64/be/libc.abilist
index 63bbccf3f9..cd40cdd7c9 100644
--- a/sysdeps/unix/sysv/linux/powerpc/powerpc64/be/libc.abilist
+++ b/sysdeps/unix/sysv/linux/powerpc/powerpc64/be/libc.abilist
@@ -2559,6 +2559,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.38 __nldbl___isoc23_fscanf F
 GLIBC_2.38 __nldbl___isoc23_fwscanf F
 GLIBC_2.38 __nldbl___isoc23_scanf F
diff --git a/sysdeps/unix/sysv/linux/powerpc/powerpc64/le/libc.abilist b/sysdeps/unix/sysv/linux/powerpc/powerpc64/le/libc.abilist
index ab85fd61ef..5e664ad0ce 100644
--- a/sysdeps/unix/sysv/linux/powerpc/powerpc64/le/libc.abilist
+++ b/sysdeps/unix/sysv/linux/powerpc/powerpc64/le/libc.abilist
@@ -2873,6 +2873,7 @@ GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
 GLIBC_2.38 __isoc23_wscanfieee128 F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.38 __nldbl___isoc23_fscanf F
 GLIBC_2.38 __nldbl___isoc23_fwscanf F
 GLIBC_2.38 __nldbl___isoc23_scanf F
diff --git a/sysdeps/unix/sysv/linux/riscv/rv32/libc.abilist b/sysdeps/unix/sysv/linux/riscv/rv32/libc.abilist
index b716f5c763..9a8510fd15 100644
--- a/sysdeps/unix/sysv/linux/riscv/rv32/libc.abilist
+++ b/sysdeps/unix/sysv/linux/riscv/rv32/libc.abilist
@@ -2428,3 +2428,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/riscv/rv64/libc.abilist b/sysdeps/unix/sysv/linux/riscv/rv64/libc.abilist
index 774e777b65..328679b413 100644
--- a/sysdeps/unix/sysv/linux/riscv/rv64/libc.abilist
+++ b/sysdeps/unix/sysv/linux/riscv/rv64/libc.abilist
@@ -2628,3 +2628,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
diff --git a/sysdeps/unix/sysv/linux/s390/s390-32/libc.abilist b/sysdeps/unix/sysv/linux/s390/s390-32/libc.abilist
index 8625135c48..2360f6f1e1 100644
--- a/sysdeps/unix/sysv/linux/s390/s390-32/libc.abilist
+++ b/sysdeps/unix/sysv/linux/s390/s390-32/libc.abilist
@@ -2803,6 +2803,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.38 __nldbl___isoc23_fscanf F
 GLIBC_2.38 __nldbl___isoc23_fwscanf F
 GLIBC_2.38 __nldbl___isoc23_scanf F
diff --git a/sysdeps/unix/sysv/linux/s390/s390-64/libc.abilist b/sysdeps/unix/sysv/linux/s390/s390-64/libc.abilist
index d00c7eb262..5c1e2108d3 100644
--- a/sysdeps/unix/sysv/linux/s390/s390-64/libc.abilist
+++ b/sysdeps/unix/sysv/linux/s390/s390-64/libc.abilist
@@ -2596,6 +2596,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.38 __nldbl___isoc23_fscanf F
 GLIBC_2.38 __nldbl___isoc23_fwscanf F
 GLIBC_2.38 __nldbl___isoc23_scanf F
diff --git a/sysdeps/unix/sysv/linux/sh/be/libc.abilist b/sysdeps/unix/sysv/linux/sh/be/libc.abilist
index b63037241d..ca0fcb388e 100644
--- a/sysdeps/unix/sysv/linux/sh/be/libc.abilist
+++ b/sysdeps/unix/sysv/linux/sh/be/libc.abilist
@@ -2658,6 +2658,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/sh/le/libc.abilist b/sysdeps/unix/sysv/linux/sh/le/libc.abilist
index d80055617d..5f5a38398d 100644
--- a/sysdeps/unix/sysv/linux/sh/le/libc.abilist
+++ b/sysdeps/unix/sysv/linux/sh/le/libc.abilist
@@ -2655,6 +2655,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/sparc/sparc32/libc.abilist b/sysdeps/unix/sysv/linux/sparc/sparc32/libc.abilist
index 5be55c11d2..091755df39 100644
--- a/sysdeps/unix/sysv/linux/sparc/sparc32/libc.abilist
+++ b/sysdeps/unix/sysv/linux/sparc/sparc32/libc.abilist
@@ -2798,6 +2798,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.38 __nldbl___isoc23_fscanf F
 GLIBC_2.38 __nldbl___isoc23_fwscanf F
 GLIBC_2.38 __nldbl___isoc23_scanf F
diff --git a/sysdeps/unix/sysv/linux/sparc/sparc64/libc.abilist b/sysdeps/unix/sysv/linux/sparc/sparc64/libc.abilist
index 475fdaae15..f7e35b5185 100644
--- a/sysdeps/unix/sysv/linux/sparc/sparc64/libc.abilist
+++ b/sysdeps/unix/sysv/linux/sparc/sparc64/libc.abilist
@@ -2623,6 +2623,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/x86_64/64/libc.abilist b/sysdeps/unix/sysv/linux/x86_64/64/libc.abilist
index 6cfb928bc8..f9e55a59c9 100644
--- a/sysdeps/unix/sysv/linux/x86_64/64/libc.abilist
+++ b/sysdeps/unix/sysv/linux/x86_64/64/libc.abilist
@@ -2574,6 +2574,7 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F
 GLIBC_2.4 __confstr_chk F
 GLIBC_2.4 __fgets_chk F
 GLIBC_2.4 __fgets_unlocked_chk F
diff --git a/sysdeps/unix/sysv/linux/x86_64/x32/libc.abilist b/sysdeps/unix/sysv/linux/x86_64/x32/libc.abilist
index c735097172..410d49fbf6 100644
--- a/sysdeps/unix/sysv/linux/x86_64/x32/libc.abilist
+++ b/sysdeps/unix/sysv/linux/x86_64/x32/libc.abilist
@@ -2680,3 +2680,4 @@ GLIBC_2.38 __isoc23_wcstoull F
 GLIBC_2.38 __isoc23_wcstoull_l F
 GLIBC_2.38 __isoc23_wcstoumax F
 GLIBC_2.38 __isoc23_wscanf F
+GLIBC_2.38 __libc_aligned_alloc F

