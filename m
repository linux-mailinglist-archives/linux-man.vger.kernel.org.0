Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD43641767
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 15:58:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229436AbiLCO6J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 09:58:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbiLCO6E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 09:58:04 -0500
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1F8563F9
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 06:58:02 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.19])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 855352E38E;
        Sat,  3 Dec 2022 14:58:00 +0000 (UTC)
Received: from jwilk.net (37.59.142.95) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Sat, 3 Dec
 2022 15:57:59 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-95G0019ee6533e-2f41-4375-a097-453881b37dce,
                    B237BA40CCB75F351EAB3928DA616208846FCED0) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.23
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] select_tut.2: tfix
Date:   Sat, 3 Dec 2022 15:57:58 +0100
Message-ID: <20221203145758.7713-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 75d96075-d536-4534-a6a2-f7a4d8acaff8
X-Ovh-Tracer-Id: 7203507604555945952
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedruddtgdejudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdelheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add missing comma.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/select_tut.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/select_tut.2 b/man2/select_tut.2
index 749497e70..9d62db023 100644
--- a/man2/select_tut.2
+++ b/man2/select_tut.2
@@ -234,7 +234,7 @@ can fail with the error
 \fBEINTR\fP,
 and calls to
 .BR read (2),
-.BR recv (2)
+.BR recv (2),
 .BR write (2),
 and
 .BR send (2)
-- 
2.38.1

