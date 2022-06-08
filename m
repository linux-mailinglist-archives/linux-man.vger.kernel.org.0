Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 001E45440F8
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 03:17:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231326AbiFIBRw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 21:17:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229720AbiFIBRv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 21:17:51 -0400
X-Greylist: delayed 143410 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 08 Jun 2022 18:17:49 PDT
Received: from 9.mo552.mail-out.ovh.net (9.mo552.mail-out.ovh.net [87.98.180.222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B254A3206E
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 18:17:49 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.109])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 54197272A4;
        Wed,  8 Jun 2022 22:43:16 +0000 (UTC)
Received: from jwilk.net (37.59.142.107) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Thu, 9 Jun 2022
 00:43:15 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-107S001769554bf-b5ac-42f5-bfb7-1c99001ea7e3,
                    9E871150687A271A3AE4CBB98EACDFB4283266B4) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.136
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH resend] Changes.old: tfix
Date:   Thu, 9 Jun 2022 00:43:13 +0200
Message-ID: <20220608224313.2303-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [37.59.142.107]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 8e1c4b84-9f46-4af9-977f-a5a7a222490e
X-Ovh-Tracer-Id: 2739314475115861984
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedruddtkedgudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvfevufffkffogggtgfhisehtkeertdertdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeghfefgeegjedvkeekvdffleevffeufeeghfevuefhheekleehudefgfethedvtdenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvd
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 Changes.old | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Changes.old b/Changes.old
index 742a2134d..77c06b98d 100644
--- a/Changes.old
+++ b/Changes.old
@@ -52419,7 +52419,7 @@ uintN_t.3
 uintptr_t.3
 va_list.3
 void.3
-    Alejandro Colomar, Michael kerrisk
+    Alejandro Colomar, Michael Kerrisk
         New links to system_data_types(7)
 
 CIRCLEQ_ENTRY.3
@@ -54666,7 +54666,7 @@ futex.2
         Document FUTEX_LOCK_PI2
 
 ioctl_tty.2
-    Pali Rohár  [Alejandro Colomar, Michael kerrisk]
+    Pali Rohár  [Alejandro Colomar, Michael Kerrisk]
         Document ioctls: TCGETS2, TCSETS2, TCSETSW2, TCSETSF2
 
 pidfd_open.2
-- 
2.36.1

