Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56CF9487AE4
	for <lists+linux-man@lfdr.de>; Fri,  7 Jan 2022 18:03:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348433AbiAGRDM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 12:03:12 -0500
Received: from 6.mo560.mail-out.ovh.net ([87.98.165.38]:48977 "EHLO
        6.mo560.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348385AbiAGRDL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 12:03:11 -0500
X-Greylist: delayed 951 seconds by postgrey-1.27 at vger.kernel.org; Fri, 07 Jan 2022 12:03:11 EST
Received: from player758.ha.ovh.net (unknown [10.109.146.240])
        by mo560.mail-out.ovh.net (Postfix) with ESMTP id 467C124DAE
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 16:47:32 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id F0541261091BD;
        Fri,  7 Jan 2022 16:47:27 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R005d036135e-c578-4077-ba06-75c0d6d316de,
                    378F7200CA80B4250C2E4B9C353773DD9C33FBEE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 7/9] pkeys.7: Update the example to match glibc
Date:   Fri,  7 Jan 2022 17:46:19 +0100
Message-Id: <20220107164621.275794-7-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
References: <20220107164621.275794-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7972497241946097286
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegvddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc 2.27 introduced support for the pkeys functions, but the glibc
versions don't match those declared in the example. Update the example
to match glibc, and avoid declaring the functions if glibc is new
enough.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man7/pkeys.7 | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/man7/pkeys.7 b/man7/pkeys.7
index 73ddcdc43..480ff21d4 100644
--- a/man7/pkeys.7
+++ b/man7/pkeys.7
@@ -186,8 +186,10 @@ Segmentation fault (core dumped)
 #include <unistd.h>
 #include <sys/syscall.h>
 #include <stdio.h>
+#include <stdlib.h>
 #include <sys/mman.h>
 
+#if __GLIBC__ < 2 || (__GLIBC__ == 2 && __GLIBC_MINOR__ < 27)
 static inline void
 wrpkru(unsigned int pkru)
 {
@@ -200,7 +202,7 @@ wrpkru(unsigned int pkru)
 }
 
 int
-pkey_set(int pkey, unsigned long rights, unsigned long flags)
+pkey_set(int pkey, unsigned long rights)
 {
     unsigned int pkru = (rights << (2 * pkey));
     return wrpkru(pkru);
@@ -214,9 +216,9 @@ pkey_mprotect(void *ptr, size_t size, unsigned long orig_prot,
 }
 
 int
-pkey_alloc(void)
+pkey_alloc(unsigned int flags, unsigned int rights)
 {
-    return syscall(SYS_pkey_alloc, 0, 0);
+    return syscall(SYS_pkey_alloc, flags, rights);
 }
 
 int
@@ -224,6 +226,7 @@ pkey_free(unsigned long pkey)
 {
     return syscall(SYS_pkey_free, pkey);
 }
+#endif
 
 #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
                            } while (0)
@@ -252,7 +255,7 @@ main(void)
     /*
      * Allocate a protection key:
      */
-    pkey = pkey_alloc();
+    pkey = pkey_alloc(0, 0);
     if (pkey == \-1)
         errExit("pkey_alloc");
 
@@ -260,7 +263,7 @@ main(void)
      * Disable access to any memory with "pkey" set,
      * even though there is none right now.
      */
-    status = pkey_set(pkey, PKEY_DISABLE_ACCESS, 0);
+    status = pkey_set(pkey, PKEY_DISABLE_ACCESS);
     if (status)
         errExit("pkey_set");
 
-- 
2.30.2

