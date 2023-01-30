Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C05EB681A1F
	for <lists+linux-man@lfdr.de>; Mon, 30 Jan 2023 20:15:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237410AbjA3TPM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Jan 2023 14:15:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238441AbjA3TPI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Jan 2023 14:15:08 -0500
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01E8C2706
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 11:15:06 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.58])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id AD9CE20FFA;
        Mon, 30 Jan 2023 19:09:43 +0000 (UTC)
Received: from jwilk.net (37.59.142.106) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Mon, 30 Jan
 2023 20:09:42 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-106R006a10e2503-a735-41ce-8350-98bf7c87f1ad,
                    E811F33AA4688CD78D2BF524CCE38CE1DF5DAA0E) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.226
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] intN_t.3type: tfix
Date:   Mon, 30 Jan 2023 20:09:41 +0100
Message-ID: <20230130190941.4633-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG7EX1.mxp6.local (172.16.2.61) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 4bcd71f6-6bb5-4d9e-9bce-d75dd9524871
X-Ovh-Tracer-Id: 1582733796435482592
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudefvddguddvfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhohedvledpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3type/intN_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3type/intN_t.3type b/man3type/intN_t.3type
index ca30516ef..09383cd65 100644
--- a/man3type/intN_t.3type
+++ b/man3type/intN_t.3type
@@ -98,7 +98,7 @@ are only required in implementations that provide integer types with width 64;
 and all other types of this form are optional.
 .PP
 The macros
-.RB [ U ] INT \fIN\fP _WIDTH W
+.RB [ U ] INT \fIN\fP _WIDTH
 expand to the width in bits of these types
 .RI ( N ).
 .PP
-- 
2.39.1

