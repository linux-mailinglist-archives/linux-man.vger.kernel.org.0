Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF558488458
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 16:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbiAHPxK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 10:53:10 -0500
Received: from 9.mo576.mail-out.ovh.net ([46.105.56.78]:42369 "EHLO
        9.mo576.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbiAHPxK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 10:53:10 -0500
X-Greylist: delayed 574 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 10:53:09 EST
Received: from player157.ha.ovh.net (unknown [10.108.1.162])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id AE11A224E7
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 15:43:46 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player157.ha.ovh.net (Postfix) with ESMTPSA id 06CAB261BA53B;
        Sat,  8 Jan 2022 15:43:42 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-101G004416a3d15-1b84-4dd4-adde-463c1fe03558,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 4/5] pkeys.7: Rely on the glibc implementations
Date:   Sat,  8 Jan 2022 16:43:03 +0100
Message-Id: <20220108154304.1030478-4-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108154304.1030478-1-steve@sk2.org>
References: <20220108154304.1030478-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 12768267895073441414
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudeghedgheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrudehjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc 2.27 added implementations of pkey_set(), pkey_mprotect(),
pkey_alloc(), and pkey_free(); rely on those instead of defining them
in the example. wrpkru() is only used in pkey_set() and can be removed
too (it's the internal-use-only pkey_write() in glibc).

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man7/pkeys.7 | 38 --------------------------------------
 1 file changed, 38 deletions(-)

diff --git a/man7/pkeys.7 b/man7/pkeys.7
index 7c0d37a37..055e57ce3 100644
--- a/man7/pkeys.7
+++ b/man7/pkeys.7
@@ -184,48 +184,10 @@ Segmentation fault (core dumped)
 .EX
 #define _GNU_SOURCE
 #include <unistd.h>
-#include <sys/syscall.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <sys/mman.h>
 
-static inline void
-wrpkru(unsigned int pkru)
-{
-    unsigned int eax = pkru;
-    unsigned int ecx = 0;
-    unsigned int edx = 0;
-
-    asm volatile(".byte 0x0f,0x01,0xef\en\et"
-                 : : "a" (eax), "c" (ecx), "d" (edx));
-}
-
-int
-pkey_set(int pkey, unsigned int rights)
-{
-    unsigned int pkru = (rights << (2 * pkey));
-    wrpkru(pkru);
-    return 0;
-}
-
-int
-pkey_mprotect(void *ptr, size_t size, int orig_prot, int pkey)
-{
-    return syscall(SYS_pkey_mprotect, ptr, size, orig_prot, pkey);
-}
-
-int
-pkey_alloc(unsigned int flags, unsigned int rights)
-{
-    return syscall(SYS_pkey_alloc, flags, rights);
-}
-
-int
-pkey_free(int pkey)
-{
-    return syscall(SYS_pkey_free, pkey);
-}
-
 #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
                            } while (0)
 
-- 
2.30.2

