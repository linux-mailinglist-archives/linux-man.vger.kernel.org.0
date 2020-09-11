Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DB3C2669C8
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 22:54:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725828AbgIKUyN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 16:54:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725816AbgIKUyK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 16:54:10 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41E89C061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 13:54:10 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x14so12673576wrl.12
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 13:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZBxltnogvsQBPnLyy9sFIFjhXC9jFjbmtySMpBmKjBM=;
        b=cT1hJwtZqFfn+8HqcHD7XpiZSMyRUQdyk2pAuFzBtIa/jJx60lYrYLmgQG/RIvjQ8C
         hpzdhws+7O1Mjf0Q74NvMxF5Nobtge3XCm+jtgRtX9zFCqtxYQLp+eBIfzBf+PVWUZgZ
         yc2/CQgE/s2vMMeAsqKDDdjpCaq4JYt1jTYO1hUuNlk8RI45sICtHfZ4Xwc9a2kFWkZ6
         9wXK35HsiDlsRurhMqSKNM0cylG/iDduLC5JqxG99kT7z9MM2Wlo3UnSE1L/BpADwSnh
         78mFnYnTn0Q6sxzzutrwbwUzAx9q75ncCe46KLPkX20PZP1ScvauOamVMiTd/ACLg1CW
         6uQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZBxltnogvsQBPnLyy9sFIFjhXC9jFjbmtySMpBmKjBM=;
        b=XzfNIkqvioNyUxWPP1WGtNEvyHhshq0+/uuAqdXtqmdmuXOws97YwHR1kkd0UbnHAn
         Ec+6wcoGVgHJ3WWTMzGD7JC16P92e1fgURGRR2K/QaK2u29DOfbOVPyi7CvFnFiLdaWX
         kOTYjfeNlSQIyqO+rctpIKQX7rDKYj7JHbjfUM9oeFnZQl23bERPSU2qKL7st2J+Cq92
         YoSQqf9yMWzmjSBThmUAajq7zRlL+xqx6l+0Mpk3BU5UsOG2nDyWlBEiPXwwI5cwToE3
         IP99aH4En4vX2kS7RGviBzRO3EeOAuMqbBXE7grftcZb0McsVJDnSAeHvBufu3ZSoNCQ
         yGAQ==
X-Gm-Message-State: AOAM532GVFvTcD19SYUl2Fg9KrOvs9OCy0+eVlXyTs/o7j+Wu5a29m1e
        lRDkwOhAXvYtvS1mKTi61pKkO8x56iU=
X-Google-Smtp-Source: ABdhPJy7CoEyzLZ9jepZP6Vu9fJyj1CoZpLr9M35AkF/L0m83lo6JIzfDQJtQ8hAanlXP3ZWFPYR3A==
X-Received: by 2002:a5d:51ce:: with SMTP id n14mr3736808wrv.8.1599857648860;
        Fri, 11 Sep 2020 13:54:08 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id h16sm6959735wre.87.2020.09.11.13.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 13:54:08 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] eventfd.2, mprotect.2, pidfd_open.2, spu_run.2, timer_create.2, bswap.3, dl_iterate_phdr.3, endian.3, pthread_attr_init.3, pthread_getattr_np.3, vcs.4, rtld-audit.7: In printf(): s/0x%/%#/ except when followed by X instead of x
Date:   Fri, 11 Sep 2020 22:53:51 +0200
Message-Id: <20200911205350.11921-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Use printf()'s '#' flag character to prepend the string "0x".

However, when the number is printed in uppercase, and the prefix
is in lowercase, the string "0x" needs to be manually written.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/eventfd.2            | 2 +-
 man2/mprotect.2           | 4 ++--
 man2/pidfd_open.2         | 2 +-
 man2/spu_run.2            | 2 +-
 man2/timer_create.2       | 4 ++--
 man3/bswap.3              | 2 +-
 man3/dl_iterate_phdr.3    | 4 ++--
 man3/endian.3             | 6 +++---
 man3/pthread_attr_init.3  | 2 +-
 man3/pthread_getattr_np.3 | 2 +-
 man4/vcs.4                | 2 +-
 man7/rtld-audit.7         | 4 ++--
 12 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/man2/eventfd.2 b/man2/eventfd.2
index 71e9d85b4..375f4823b 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -431,7 +431,7 @@ main(int argc, char *argv[])
         s = read(efd, &u, sizeof(uint64_t));
         if (s != sizeof(uint64_t))
             handle_error("read");
-        printf("Parent read %"PRIu64" (0x%"PRIx64") from efd\en", u, u);
+        printf("Parent read %"PRIu64" (%#"PRIx64") from efd\en", u, u);
         exit(EXIT_SUCCESS);
 
     case \-1:
diff --git a/man2/mprotect.2 b/man2/mprotect.2
index 556ee9446..47d250303 100644
--- a/man2/mprotect.2
+++ b/man2/mprotect.2
@@ -326,7 +326,7 @@ handler(int sig, siginfo_t *si, void *unused)
        Nevertheless, we use printf() here as a simple way of
        showing that the handler was called. */
 
-    printf("Got SIGSEGV at address: 0x%lx\en",
+    printf("Got SIGSEGV at address: %#lx\en",
             (long) si\->si_addr);
     exit(EXIT_FAILURE);
 }
@@ -354,7 +354,7 @@ main(int argc, char *argv[])
     if (buffer == NULL)
         handle_error("memalign");
 
-    printf("Start of region:        0x%lx\en", (long) buffer);
+    printf("Start of region:        %#lx\en", (long) buffer);
 
     if (mprotect(buffer + pagesize * 2, pagesize,
                 PROT_READ) == \-1)
diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
index ecdb98b1b..0256d6d8c 100644
--- a/man2/pidfd_open.2
+++ b/man2/pidfd_open.2
@@ -253,7 +253,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
 
-    printf("Events (0x%x): POLLIN is %sset\en", pollfd.revents,
+    printf("Events (%#x): POLLIN is %sset\en", pollfd.revents,
             (pollfd.revents & POLLIN) ? "" : "not ");
 
     close(pidfd);
diff --git a/man2/spu_run.2 b/man2/spu_run.2
index 8346d21b7..b6bc2c131 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -254,7 +254,7 @@ int main(void)
      *   0x00000002 (spu was stopped due to stop\-and\-signal)
      * | 0x12340000 (the stop\-and\-signal code)
      */
-    printf("SPU Status: 0x%08x\en", spu_status);
+    printf("SPU Status: %#08x\en", spu_status);
 
     exit(EXIT_SUCCESS);
 }
diff --git a/man2/timer_create.2 b/man2/timer_create.2
index 9c9907739..05482f6d9 100644
--- a/man2/timer_create.2
+++ b/man2/timer_create.2
@@ -390,7 +390,7 @@ print_siginfo(siginfo_t *si)
     tidp = si\->si_value.sival_ptr;
 
     printf("    sival_ptr = %p; ", si\->si_value.sival_ptr);
-    printf("    *sival_ptr = 0x%lx\en", (unsigned long) *tidp);
+    printf("    *sival_ptr = %#lx\en", (unsigned long) *tidp);
 
     or = timer_getoverrun(*tidp);
     if (or == \-1)
@@ -454,7 +454,7 @@ main(int argc, char *argv[])
     if (timer_create(CLOCKID, &sev, &timerid) == \-1)
         errExit("timer_create");
 
-    printf("timer ID is 0x%lx\en", (unsigned long) timerid);
+    printf("timer ID is %#lx\en", (unsigned long) timerid);
 
     /* Start the timer */
 
diff --git a/man3/bswap.3 b/man3/bswap.3
index ce847580a..722cac806 100644
--- a/man3/bswap.3
+++ b/man3/bswap.3
@@ -73,7 +73,7 @@ main(int argc, char *argv[])
     }
 
     x = strtoull(argv[1], NULL, 0);
-    printf("0x%" PRIx64 " ==> 0x%" PRIx64 "\en", x, bswap_64(x));
+    printf("%#" PRIx64 " ==> %#" PRIx64 "\en", x, bswap_64(x));
 
     exit(EXIT_SUCCESS);
 }
diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
index 62a3596a3..70206a0ba 100644
--- a/man3/dl_iterate_phdr.3
+++ b/man3/dl_iterate_phdr.3
@@ -325,14 +325,14 @@ callback(struct dl_phdr_info *info, size_t size, void *data)
                 (p_type == PT_GNU_STACK) ? "PT_GNU_STACK" :
                 (p_type == PT_GNU_RELRO) ? "PT_GNU_RELRO" : NULL;
 
-        printf("    %2d: [%14p; memsz:%7lx] flags: 0x%x; ", j,
+        printf("    %2d: [%14p; memsz:%7lx] flags: %#x; ", j,
                 (void *) (info\->dlpi_addr + info\->dlpi_phdr[j].p_vaddr),
                 info\->dlpi_phdr[j].p_memsz,
                 info\->dlpi_phdr[j].p_flags);
         if (type != NULL)
             printf("%s\en", type);
         else
-            printf("[other (0x%x)]\en", p_type);
+            printf("[other (%#x)]\en", p_type);
     }
 
     return 0;
diff --git a/man3/endian.3 b/man3/endian.3
index bdf1efd7e..4a2b29882 100644
--- a/man3/endian.3
+++ b/man3/endian.3
@@ -164,9 +164,9 @@ main(int argc, char *argv[])
     x.arr[2] = 0x33;
     x.arr[3] = 0x44;	/* Highest-address byte */
 
-    printf("x.u32 = 0x%x\en", x.u32);
-    printf("htole32(x.u32) = 0x%x\en", htole32(x.u32));
-    printf("htobe32(x.u32) = 0x%x\en", htobe32(x.u32));
+    printf("x.u32 = %#x\en", x.u32);
+    printf("htole32(x.u32) = %#x\en", htole32(x.u32));
+    printf("htobe32(x.u32) = %#x\en", htobe32(x.u32));
 
     exit(EXIT_SUCCESS);
 }
diff --git a/man3/pthread_attr_init.3 b/man3/pthread_attr_init.3
index ed7faaff0..815b45de8 100644
--- a/man3/pthread_attr_init.3
+++ b/man3/pthread_attr_init.3
@@ -228,7 +228,7 @@ display_pthread_attr(pthread_attr_t *attr, char *prefix)
     if (s != 0)
         handle_error_en(s, "pthread_attr_getstack");
     printf("%sStack address       = %p\en", prefix, stkaddr);
-    printf("%sStack size          = 0x%zx bytes\en", prefix, v);
+    printf("%sStack size          = %#zx bytes\en", prefix, v);
 }
 
 static void *
diff --git a/man3/pthread_getattr_np.3 b/man3/pthread_getattr_np.3
index be957607e..01538526b 100644
--- a/man3/pthread_getattr_np.3
+++ b/man3/pthread_getattr_np.3
@@ -222,7 +222,7 @@ display_stack_related_attributes(pthread_attr_t *attr, char *prefix)
     if (stack_size > 0)
         printf(" (EOS = %p)", (char *) stack_addr + stack_size);
     printf("\en");
-    printf("%sStack size          = 0x%zx (%zu) bytes\en",
+    printf("%sStack size          = %#zx (%zu) bytes\en",
             prefix, stack_size, stack_size);
 }
 
diff --git a/man4/vcs.4 b/man4/vcs.4
index 6a67eb413..bfa92aaea 100644
--- a/man4/vcs.4
+++ b/man4/vcs.4
@@ -177,7 +177,7 @@ main(void)
     if (s & mask)
         ch |= 0x100;
     attrib = ((s & \(timask) >> 8);
-    printf("ch=0x%03x attrib=0x%02x\en", ch, attrib);
+    printf("ch=%#03x attrib=%#02x\en", ch, attrib);
     s \(ha= 0x1000;
     (void) lseek(fd, \-2, SEEK_CUR);
     (void) write(fd, &s, 2);
diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
index c6a4c19bf..f90731261 100644
--- a/man7/rtld-audit.7
+++ b/man7/rtld-audit.7
@@ -572,7 +572,7 @@ la_symbind32(Elf32_Sym *sym, unsigned int ndx, uintptr_t *refcook,
 {
     printf("la_symbind32(): symname = %s; sym\->st_value = %p\en",
             symname, sym\->st_value);
-    printf("        ndx = %d; flags = 0x%x", ndx, *flags);
+    printf("        ndx = %d; flags = %#x", ndx, *flags);
     printf("; refcook = %p; defcook = %p\en", refcook, defcook);
 
     return sym\->st_value;
@@ -584,7 +584,7 @@ la_symbind64(Elf64_Sym *sym, unsigned int ndx, uintptr_t *refcook,
 {
     printf("la_symbind64(): symname = %s; sym\->st_value = %p\en",
             symname, sym\->st_value);
-    printf("        ndx = %d; flags = 0x%x", ndx, *flags);
+    printf("        ndx = %d; flags = %#x", ndx, *flags);
     printf("; refcook = %p; defcook = %p\en", refcook, defcook);
 
     return sym\->st_value;
-- 
2.28.0

