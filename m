Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8ADC487AC0
	for <lists+linux-man@lfdr.de>; Fri,  7 Jan 2022 17:53:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240116AbiAGQxC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 11:53:02 -0500
Received: from 3.mo576.mail-out.ovh.net ([188.165.52.203]:51037 "EHLO
        3.mo576.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240137AbiAGQxC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 11:53:02 -0500
X-Greylist: delayed 329 seconds by postgrey-1.27 at vger.kernel.org; Fri, 07 Jan 2022 11:53:02 EST
Received: from player758.ha.ovh.net (unknown [10.110.171.215])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id 974E623EDD
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 16:47:09 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id DE43E2610914E;
        Fri,  7 Jan 2022 16:47:04 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R0059fabfa5f-2b92-4047-a980-98fb823148c4,
                    378F7200CA80B4250C2E4B9C353773DD9C33FBEE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 2/9] seccomp.2: Use syscall() in the example code
Date:   Fri,  7 Jan 2022 17:46:14 +0100
Message-Id: <20220107164621.275794-2-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
References: <20220107164621.275794-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7966023319553083014
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegvddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Since seccomp() doesn't exist in glibc, avoid relying on it, and use
syscall() instead. This updates the example program to match the
documentation, which was updated in commit 5945cd7bd3c3 ("seccomp.2:
Use syscall(SYS_...); for system calls without a wrapper").

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man2/seccomp.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/seccomp.2 b/man2/seccomp.2
index a3421871f..67928ed3f 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -1133,6 +1133,7 @@ cecilia
 #include <linux/filter.h>
 #include <linux/seccomp.h>
 #include <sys/prctl.h>
+#include <sys/syscall.h>
 
 #define X32_SYSCALL_BIT 0x40000000
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
@@ -1190,7 +1191,7 @@ install_filter(int syscall_nr, int t_arch, int f_errno)
         .filter = filter,
     };
 
-    if (seccomp(SECCOMP_SET_MODE_FILTER, 0, &prog)) {
+    if (syscall(SYS_seccomp, SECCOMP_SET_MODE_FILTER, 0, &prog)) {
         perror("seccomp");
         return 1;
     }
-- 
2.30.2

