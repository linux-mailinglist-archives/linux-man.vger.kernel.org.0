Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8588E488444
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 16:43:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234573AbiAHPnn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 10:43:43 -0500
Received: from 6.mo560.mail-out.ovh.net ([87.98.165.38]:48359 "EHLO
        6.mo560.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231841AbiAHPnn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 10:43:43 -0500
Received: from player157.ha.ovh.net (unknown [10.110.103.41])
        by mo560.mail-out.ovh.net (Postfix) with ESMTP id 07D45221A7
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 15:43:42 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player157.ha.ovh.net (Postfix) with ESMTPSA id 78599261BA528;
        Sat,  8 Jan 2022 15:43:37 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-101G0049d16dd3f-d69e-4629-98ca-de72f4579241,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 3/5] pkeys.7: Update the example to match glibc
Date:   Sat,  8 Jan 2022 16:43:02 +0100
Message-Id: <20220108154304.1030478-3-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108154304.1030478-1-steve@sk2.org>
References: <20220108154304.1030478-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 12766860521834645126
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudeghedgheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrudehjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc 2.27 introduced support for the pkeys functions, but the glibc
versions don't match those declared in the example. Update the example
to match glibc, and avoid declaring the functions if glibc is new
enough.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man7/pkeys.7 | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/man7/pkeys.7 b/man7/pkeys.7
index 73ddcdc43..7c0d37a37 100644
--- a/man7/pkeys.7
+++ b/man7/pkeys.7
@@ -186,6 +186,7 @@ Segmentation fault (core dumped)
 #include <unistd.h>
 #include <sys/syscall.h>
 #include <stdio.h>
+#include <stdlib.h>
 #include <sys/mman.h>
 
 static inline void
@@ -200,27 +201,27 @@ wrpkru(unsigned int pkru)
 }
 
 int
-pkey_set(int pkey, unsigned long rights, unsigned long flags)
+pkey_set(int pkey, unsigned int rights)
 {
     unsigned int pkru = (rights << (2 * pkey));
-    return wrpkru(pkru);
+    wrpkru(pkru);
+    return 0;
 }
 
 int
-pkey_mprotect(void *ptr, size_t size, unsigned long orig_prot,
-              unsigned long pkey)
+pkey_mprotect(void *ptr, size_t size, int orig_prot, int pkey)
 {
     return syscall(SYS_pkey_mprotect, ptr, size, orig_prot, pkey);
 }
 
 int
-pkey_alloc(void)
+pkey_alloc(unsigned int flags, unsigned int rights)
 {
-    return syscall(SYS_pkey_alloc, 0, 0);
+    return syscall(SYS_pkey_alloc, flags, rights);
 }
 
 int
-pkey_free(unsigned long pkey)
+pkey_free(int pkey)
 {
     return syscall(SYS_pkey_free, pkey);
 }
@@ -252,7 +253,7 @@ main(void)
     /*
      * Allocate a protection key:
      */
-    pkey = pkey_alloc();
+    pkey = pkey_alloc(0, 0);
     if (pkey == \-1)
         errExit("pkey_alloc");
 
@@ -260,7 +261,7 @@ main(void)
      * Disable access to any memory with "pkey" set,
      * even though there is none right now.
      */
-    status = pkey_set(pkey, PKEY_DISABLE_ACCESS, 0);
+    status = pkey_set(pkey, PKEY_DISABLE_ACCESS);
     if (status)
         errExit("pkey_set");
 
-- 
2.30.2

