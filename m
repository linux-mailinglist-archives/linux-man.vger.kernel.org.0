Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 174516D2835
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 20:53:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233156AbjCaSxo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 14:53:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230452AbjCaSxn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 14:53:43 -0400
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 604DA11167
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 11:53:41 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.174])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 5396C2D30B;
        Fri, 31 Mar 2023 18:53:39 +0000 (UTC)
Received: from jwilk.net (37.59.142.96) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Fri, 31 Mar
 2023 20:53:38 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R001b87c74dc-cb7d-4a1c-94a1-0c9beeb57118,
                    F1A9C431C80975206D97DCDAC248D6CC41D36DF1) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.185
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] clock_getres.2: tfix
Date:   Fri, 31 Mar 2023 20:53:37 +0200
Message-ID: <20230331185337.9409-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: d7cd8948-5425-4365-a355-3fe64ffda173
X-Ovh-Tracer-Id: 3184889365083510752
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvdeiuddguddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdeliedphedrudejvddrvdehhedrudekheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/clock_getres.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 86a0e9afe..e744bc7ff 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -376,7 +376,7 @@ indicate that
 are available.
 (See also
 .BR sysconf (3).)
-POSIX.1-2008 makes thes APIs mandatory.
+POSIX.1-2008 makes these APIs mandatory.
 .\"
 .SS Historical note for SMP systems
 Before Linux added kernel support for
-- 
2.40.0

