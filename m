Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBECF291351
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 19:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438314AbgJQRUA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 13:20:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437790AbgJQRUA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 13:20:00 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFF19C061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 10:19:59 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id b8so6955900wrn.0
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 10:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=MmueS5P5SPzYlBDu7sBSNXzj53jftsEFgH+DH8H/gfA=;
        b=t+o7ZJs4uKc4w/TCHRGwhjrZy249NO6KaAzxa5EIpY99fMwX6be6H8In4YYZiyfR4T
         2kh1gtoPv3GkU4kISMxtLCjVveSW6GSoyTQxDiVFpEszYRRJIjMehdh+tKz0bxUIZO7N
         B3WhTEiRVxx//K76bKpFnuap/gjli7MEtlNFQpaZEHW0PZltbLr9o7NXHjX/3z3L2Jnt
         lW/sX8IDVfBXv22ugBpG01QPRDOIKBS14sUut46dCwGHB1dVVpCf6oWQrHwhiUGgxDJm
         1Nnv/r6A6SV6stOewBTqUZSeqDR/278o2E+5Tj3G6EhG+dnl8kbd/gOlcChC0RgUP4hg
         epvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=MmueS5P5SPzYlBDu7sBSNXzj53jftsEFgH+DH8H/gfA=;
        b=dx9+i1Q2yUQg645N0aWOHCe+Xt95neOdeTBBmhFf4RBcLiiyRypgwJVPVSwAL6XUsx
         bPT9F2pzVCEXQUSKme5lfEy8hJHOKvg0k3yBcmh8JMrMYB7P2gdR8ehttK+GswAdwPoD
         6+rlP4qdQGnPsNM6rdWB62Sf+8k8aSkpKItn2i7E70c9bSZTS/iuUkzvte1hNwIfjeMO
         YRVJZ+SL1ab6XAfMla9VvskmCoFWvpX2eZNbczpuMK/ZM/6WSzRu5Q7CK196e6KECBc7
         ipqosNHGkitOyBlblR593FJTuOSEgTPv6z9wtlqXK7tTrOpsmdtCi7Zn8ILj6pDn/EaJ
         8aRQ==
X-Gm-Message-State: AOAM530niZpFDNS5CK6XN1hQCHfeaRXwIbBcJLNakHGOL0nrlwWpU/6s
        YPRZAJC9VEC6qwAAkvIqZbM=
X-Google-Smtp-Source: ABdhPJyTbJHDmiTeohVhNMz3P5Wfi2oXyl/rYQETI8FD09qtOyGiq+Md9+McefVa9QUdWSb4Pt1DYQ==
X-Received: by 2002:a5d:6551:: with SMTP id z17mr11089414wrv.266.1602955198276;
        Sat, 17 Oct 2020 10:19:58 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id h128sm4964363wme.38.2020.10.17.10.19.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 10:19:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
To:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Manual page update for mallinfo2()
Message-ID: <04e8ab3b-db45-d929-012d-fb539062ad2a@gmail.com>
Date:   Sat, 17 Oct 2020 19:19:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello all,

For the mallinfo2() function that is added in glibc2.33, I
plan to apply te patch below for the mallinfo(3) manual page.
Comments, review, acks are welcome.

Thanks,

Michael

PS While documenting mallinfo2() I alwo noticed some
related bugs in the glibc manual
https://sourceware.org/bugzilla/show_bug.cgi?id=26746


diff --git a/man3/mallinfo.3 b/man3/mallinfo.3
index 0218c2fd3..605e8cd8a 100644
--- a/man3/mallinfo.3
+++ b/man3/mallinfo.3
@@ -24,47 +24,61 @@
 .\"
 .TH MALLINFO 3  2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
-mallinfo \- obtain memory allocation information
+mallinfo, mallinfo2 \- obtain memory allocation information
 .SH SYNOPSIS
+.nf
 .B #include <malloc.h>
 .PP
 .B struct mallinfo mallinfo(void);
+.B struct mallinfo2 mallinfo2(void);
+.fi
 .SH DESCRIPTION
-The
-.BR mallinfo ()
-function returns a copy of a structure containing information about
+These functions return a copy of a structure containing information about
 memory allocations performed by
 .BR malloc (3)
 and related functions.
+The structure returned by each function contains the same fields.
+However, the older function,
+.BR mallinfo (),
+is deprecated since the type used for the fields is too small (see BUGS).
 .PP
-Note that not all allocations are visible to
-.BR mallinfo ();
+Note that not all allocations are visible to these functions;
 see BUGS and consider using
 .BR malloc_info (3)
 instead.
 .PP
-The returned structure is defined as follows:
+The
+.I mallinfo2
+structure returned by
+.BR mallinfo2 ()
+is defined as follows:
 .PP
 .in +4n
 .EX
-struct mallinfo {
-    int arena;     /* Non-mmapped space allocated (bytes) */
-    int ordblks;   /* Number of free chunks */
-    int smblks;    /* Number of free fastbin blocks */
-    int hblks;     /* Number of mmapped regions */
-    int hblkhd;    /* Space allocated in mmapped regions (bytes) */
-    int usmblks;   /* See below */
-    int fsmblks;   /* Space in freed fastbin blocks (bytes) */
-    int uordblks;  /* Total allocated space (bytes) */
-    int fordblks;  /* Total free space (bytes) */
-    int keepcost;  /* Top-most, releasable space (bytes) */
+struct mallinfo2 {
+    size_t arena;     /* Non-mmapped space allocated (bytes) */
+    size_t ordblks;   /* Number of free chunks */
+    size_t smblks;    /* Number of free fastbin blocks */
+    size_t hblks;     /* Number of mmapped regions */
+    size_t hblkhd;    /* Space allocated in mmapped regions
+                         (bytes) */
+    size_t usmblks;   /* See below */
+    size_t fsmblks;   /* Space in freed fastbin blocks (bytes) */
+    size_t uordblks;  /* Total allocated space (bytes) */
+    size_t fordblks;  /* Total free space (bytes) */
+    size_t keepcost;  /* Top-most, releasable space (bytes) */
 };
 .EE
 .in
 .PP
-The fields of the
+The
 .I mallinfo
-structure contain the following information:
+structure returned by the deprecated
+.BR mallinfo ()
+function is exactly the same, except that the fields are typed as
+.IR int .
+.PP
+The structure fields contain the following information:
 .TP 10
 .I arena
 The total amount of memory allocated by means other than
@@ -117,8 +131,13 @@ of the heap.
 This is the maximum number of bytes that could ideally
 (i.e., ignoring page alignment restrictions, and so on) be released by
 .BR malloc_trim (3).
-.\" .SH VERSIONS
-.\" Available already in glibc 2.0, possibly earlier
+.SH VERSIONS
+.\" imallinfo(): Available already in glibc 2.0, possibly earlier
+The
+.BR mallinfo2 ()
+function was added
+.\" commit e3960d1c57e57f33e0e846d615788f4ede73b945
+in glibc 2.33.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -128,11 +147,13 @@ lb lb lbw28
 l l l.
 Interface	Attribute	Value
 T{
-.BR mallinfo ()
+.BR mallinfo (),
+.BR mallinfo2 ()
 T}	Thread safety	MT-Unsafe init const:mallopt
 .TE
 .sp 1
-.BR mallinfo ()
+.BR mallinfo ()/
+.BR mallinfo2 ()
 would access some global internal objects.
 If modify them with non-atomically,
 may get inconsistent results.
@@ -143,11 +164,14 @@ in
 mean that
 .BR mallopt ()
 would modify the global internal objects with atomics, that make sure
-.BR mallinfo ()
+.BR mallinfo ()/
+.BR mallinfo2 ()
 is safe enough, others modify with non-atomically maybe not.
 .SH CONFORMING TO
-This function is not specified by POSIX or the C standards.
-A similar function exists on many System V derivatives,
+These functions are not specified by POSIX or the C standards.
+A
+.BR mallinfo ()
+function exists on many System V derivatives,
 and was specified in the SVID.
 .SH BUGS
 .\" FIXME . http://sourceware.org/bugzilla/show_bug.cgi?id=208
@@ -164,14 +188,16 @@ for alternatives that include information about other arenas.
 .PP
 The fields of the
 .I mallinfo
-structure are typed as
+structure that is returned by the older
+.BR mallinfo ()
+function are typed as
 .IR int .
 However, because some internal bookkeeping values may be of type
 .IR long ,
 the reported values may wrap around zero and thus be inaccurate.
 .SH EXAMPLES
 The program below employs
-.BR mallinfo ()
+.BR mallinfo2 ()
 to retrieve memory allocation statistics before and after
 allocating and freeing some blocks of memory.
 The statistics are displayed on standard output.
@@ -246,22 +272,22 @@ Topmost releasable block (keepcost):   31168
 #include <string.h>
 
 static void
-display_mallinfo(void)
+display_mallinfo2(void)
 {
-    struct mallinfo mi;
+    struct mallinfo2 mi;
 
-    mi = mallinfo();
+    mi = mallinfo2();
 
-    printf("Total non\-mmapped bytes (arena):       %d\en", mi.arena);
-    printf("# of free chunks (ordblks):            %d\en", mi.ordblks);
-    printf("# of free fastbin blocks (smblks):     %d\en", mi.smblks);
-    printf("# of mapped regions (hblks):           %d\en", mi.hblks);
-    printf("Bytes in mapped regions (hblkhd):      %d\en", mi.hblkhd);
-    printf("Max. total allocated space (usmblks):  %d\en", mi.usmblks);
-    printf("Free bytes held in fastbins (fsmblks): %d\en", mi.fsmblks);
-    printf("Total allocated space (uordblks):      %d\en", mi.uordblks);
-    printf("Total free space (fordblks):           %d\en", mi.fordblks);
-    printf("Topmost releasable block (keepcost):   %d\en", mi.keepcost);
+    printf("Total non\-mmapped bytes (arena):       %zu\en", mi.arena);
+    printf("# of free chunks (ordblks):            %zu\en", mi.ordblks);
+    printf("# of free fastbin blocks (smblks):     %zu\en", mi.smblks);
+    printf("# of mapped regions (hblks):           %zu\en", mi.hblks);
+    printf("Bytes in mapped regions (hblkhd):      %zu\en", mi.hblkhd);
+    printf("Max. total allocated space (usmblks):  %zu\en", mi.usmblks);
+    printf("Free bytes held in fastbins (fsmblks): %zu\en", mi.fsmblks);
+    printf("Total allocated space (uordblks):      %zu\en", mi.uordblks);
+    printf("Total free space (fordblks):           %zu\en", mi.fordblks);
+    printf("Topmost releasable block (keepcost):   %zu\en", mi.keepcost);
 }
 
 int
@@ -285,7 +311,7 @@ main(int argc, char *argv[])
     freeEnd = (argc > 5) ? atoi(argv[5]) : numBlocks;
 
     printf("============== Before allocating blocks ==============\en");
-    display_mallinfo();
+    display_mallinfo2();
 
     for (int j = 0; j < numBlocks; j++) {
         if (numBlocks >= MAX_ALLOCS) {
@@ -301,13 +327,13 @@ main(int argc, char *argv[])
     }
 
     printf("\en============== After allocating blocks ==============\en");
-    display_mallinfo();
+    display_mallinfo2();
 
     for (int j = freeBegin; j < freeEnd; j += freeStep)
         free(alloc[j]);
 
     printf("\en============== After freeing blocks ==============\en");
-    display_mallinfo();
+    display_mallinfo2();
 
     exit(EXIT_SUCCESS);
 }

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
