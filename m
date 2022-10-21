Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BD38607EEE
	for <lists+linux-man@lfdr.de>; Fri, 21 Oct 2022 21:17:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbiJUTRk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Oct 2022 15:17:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230337AbiJUTRe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Oct 2022 15:17:34 -0400
X-Greylist: delayed 1217 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 21 Oct 2022 12:17:17 PDT
Received: from 4.mo548.mail-out.ovh.net (4.mo548.mail-out.ovh.net [188.165.42.229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B3722920DB
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 12:17:16 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.3])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 62FFF24BF9;
        Fri, 21 Oct 2022 18:41:08 +0000 (UTC)
Received: from jwilk.net (37.59.142.102) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Fri, 21 Oct
 2022 20:41:07 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-102R0041eba6f4e-a9ea-4e00-84f4-507f61f71de1,
                    07A313E626EF86A3DF519F5385F932A8F589A942) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.196
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] printf.3: ffix
Date:   Fri, 21 Oct 2022 20:41:06 +0200
Message-ID: <20221021184106.7689-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 76ae2a0a-52e2-444a-b2f7-3aaa508686ba
X-Ovh-Tracer-Id: 16700473321256179680
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrfeelkedguddvhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/printf.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/printf.3 b/man3/printf.3
index 8f944190b..85b5b4173 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -193,8 +193,8 @@ and
 below) and each conversion specifier asks for the next
 argument (and it is an error if insufficiently many arguments are given).
 One can also specify explicitly which argument is taken,
-at each place where an argument is required, by writing "%m$" instead
-of \(aq%\(aq and "*m$" instead of \(aq*\(aq,
+at each place where an argument is required, by writing "%\fIm\fP$" instead
+of \(aq%\(aq and "*\fIm\fP$" instead of \(aq*\(aq,
 where the decimal integer \fIm\fP denotes
 the position in the argument list of the desired argument, indexed starting
 from 1.
-- 
2.37.2

