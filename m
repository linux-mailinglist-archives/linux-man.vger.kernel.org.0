Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53C565FAD2F
	for <lists+linux-man@lfdr.de>; Tue, 11 Oct 2022 09:04:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbiJKHEm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Oct 2022 03:04:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229921AbiJKHEJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Oct 2022 03:04:09 -0400
X-Greylist: delayed 1204 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 11 Oct 2022 00:04:07 PDT
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2701885AA5
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 00:04:06 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.219])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id ABFE61312912D;
        Tue, 11 Oct 2022 08:25:24 +0200 (CEST)
Received: from jwilk.net (37.59.142.97) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Tue, 11 Oct
 2022 08:25:23 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G0028dd65873-1e20-4e56-8b72-b8461ade742b,
                    BFFA122BD8CA4C6E4E903379B22456E68B469BCA) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.168
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] prctl.2: tfix
Date:   Tue, 11 Oct 2022 08:25:20 +0200
Message-ID: <20221011062520.4614-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 95f1d035-be40-4852-9fe9-eb09dce0ef4f
X-Ovh-Tracer-Id: 888335029321062368
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrfeejhedguddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdeljeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhohedvle
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Escape hyphens.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/prctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index ea6b23229..b91d12af9 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1618,7 +1618,7 @@ or
 .IP
 For more information,
 see the kernel source file
-.I Documentation/admin-guide/syscall-user-dispatch.rst
+.I Documentation/admin-guide/syscall\-user\-dispatch.rst
 .\" prctl PR_SET_TAGGED_ADDR_CTRL
 .\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
 .TP
-- 
2.37.2

