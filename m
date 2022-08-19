Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61FEE59A611
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 21:17:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351165AbiHSTJk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 15:09:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351140AbiHSTJj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 15:09:39 -0400
Received: from 6.mo552.mail-out.ovh.net (6.mo552.mail-out.ovh.net [188.165.49.222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A099C106B1A
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 12:09:35 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.253])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 625062558E;
        Fri, 19 Aug 2022 19:09:33 +0000 (UTC)
Received: from jwilk.net (37.59.142.101) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Fri, 19 Aug
 2022 21:09:32 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G004806ee76a-e0a2-4b93-ae59-0f0c82038e4c,
                    504186192CBDCCB46C37AA7B8534EBBC1F215137) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.242
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 07/10] timespec.3type: tfix
Date:   Fri, 19 Aug 2022 21:08:56 +0200
Message-ID: <20220819190859.6248-7-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220819190859.6248-1-jwilk@jwilk.net>
References: <20220819190859.6248-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 43763d18-9bcf-4955-8eee-e514f6acc076
X-Ovh-Tracer-Id: 16135553041845508064
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiuddgudefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepieegvdduieetveefgfevvdejgedtieekiedugfffjeekkeeifedtjeeiiedufefgnecuffhomhgrihhnpehsohhurhgtvgifrghrvgdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvd
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
 man3type/timespec.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3type/timespec.3type b/man3type/timespec.3type
index fb31357f8..52a55ea1d 100644
--- a/man3type/timespec.3type
+++ b/man3type/timespec.3type
@@ -53,7 +53,7 @@ In reality, the field ends up being defined as:
 .EE
 .in
 .PP
-This is a long-stansing and long-enshrined glibc bug
+This is a long-standing and long-enshrined glibc bug
 .UR https://sourceware.org/bugzilla/show_bug.cgi?id=16437
 .I #16437
 .UE ,
-- 
2.37.2

