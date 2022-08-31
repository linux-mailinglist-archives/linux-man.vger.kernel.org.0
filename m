Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2116B5A7F32
	for <lists+linux-man@lfdr.de>; Wed, 31 Aug 2022 15:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231331AbiHaNs1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 Aug 2022 09:48:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230240AbiHaNs0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 Aug 2022 09:48:26 -0400
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 325016260
        for <linux-man@vger.kernel.org>; Wed, 31 Aug 2022 06:48:22 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.44])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id B9D6C122E3A37;
        Wed, 31 Aug 2022 15:41:30 +0200 (CEST)
Received: from jwilk.net (37.59.142.95) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Wed, 31 Aug
 2022 15:41:29 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-95G001da0a15a8-e29d-4cd8-b984-1921d909d67b,
                    817F4FA6544E7B1FA43B80D9ADD74D2FF98C80C1) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.99
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] hosts.5: Use "example.org" as example domain
Date:   Wed, 31 Aug 2022 15:41:28 +0200
Message-ID: <20220831134128.7177-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 1787a8e2-9aa6-49dd-b689-f1e37517b1b1
X-Ovh-Tracer-Id: 7280631748803155936
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekiedggedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvfevufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeefveeggefflefgjeeutdegteduvddugfelhfeuhfekvdehudekledviedvtefhgfenucffohhmrghinhepmhihughomhgrihhnrdhorhhgpdgvgigrmhhplhgvrdhorhhgpdguvggsihgrnhdrohhrghdpohhpvghnshhouhhrtggvrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhohedvle
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/hosts.5 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man5/hosts.5 b/man5/hosts.5
index 575e94ae2..b5ac7e8f4 100644
--- a/man5/hosts.5
+++ b/man5/hosts.5
@@ -96,9 +96,9 @@ I just found three, from 92,
 127.0.0.1       localhost
 
 # 127.0.1.1 is often used for the FQDN of the machine
-127.0.1.1       thishost.mydomain.org  thishost
-192.168.1.10    foo.mydomain.org       foo
-192.168.1.13    bar.mydomain.org       bar
+127.0.1.1       thishost.example.org   thishost
+192.168.1.10    foo.example.org        foo
+192.168.1.13    bar.example.org        bar
 146.82.138.7    master.debian.org      master
 209.237.226.90  www.opensource.org
 
-- 
2.37.2

