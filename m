Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E061487B4E
	for <lists+linux-man@lfdr.de>; Fri,  7 Jan 2022 18:23:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232691AbiAGRXC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 12:23:02 -0500
Received: from 3.mo560.mail-out.ovh.net ([46.105.58.226]:55935 "EHLO
        3.mo560.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348528AbiAGRXC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 12:23:02 -0500
X-Greylist: delayed 1785 seconds by postgrey-1.27 at vger.kernel.org; Fri, 07 Jan 2022 12:23:01 EST
Received: from player758.ha.ovh.net (unknown [10.108.16.251])
        by mo560.mail-out.ovh.net (Postfix) with ESMTP id 9CB5924AD4
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 16:47:43 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id 9586E261091F4;
        Fri,  7 Jan 2022 16:47:36 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R00526e63394-2d56-41b5-86d9-b620093a5a29,
                    378F7200CA80B4250C2E4B9C353773DD9C33FBEE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 9/9] malloc_info.3: Use intptr_t to store pointers
Date:   Fri,  7 Jan 2022 17:46:21 +0100
Message-Id: <20220107164621.275794-9-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
References: <20220107164621.275794-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7975593468907193990
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegvddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

int isn't large enough to store pointers on all platforms, use
intptr_t instead.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man3/malloc_info.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/malloc_info.3 b/man3/malloc_info.3
index a5b8d34f9..3baa891fd 100644
--- a/man3/malloc_info.3
+++ b/man3/malloc_info.3
@@ -198,7 +198,7 @@ static int numThreads, numBlocks;
 static void *
 thread_func(void *arg)
 {
-    int tn = (int) arg;
+    intptr_t tn = (intptr_t) arg;
 
     /* The multiplier \(aq(2 + tn)\(aq ensures that each thread (including
        the main thread) allocates a different amount of memory. */
@@ -237,7 +237,7 @@ main(int argc, char *argv[])
 
     /* Create threads that allocate different amounts of memory. */
 
-    for (int tn = 0; tn < numThreads; tn++) {
+    for (intptr_t tn = 0; tn < numThreads; tn++) {
         errno = pthread_create(&thr[tn], NULL, thread_func,
                                (void *) tn);
         if (errno != 0)
-- 
2.30.2

