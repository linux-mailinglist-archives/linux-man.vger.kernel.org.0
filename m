Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF55E6D2874
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 21:06:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232051AbjCaTGW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 15:06:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232622AbjCaTGU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 15:06:20 -0400
Received: from 10.mo548.mail-out.ovh.net (10.mo548.mail-out.ovh.net [46.105.77.235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51AAB23B66
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:06:15 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.10])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 9C73820890;
        Fri, 31 Mar 2023 18:56:57 +0000 (UTC)
Received: from jwilk.net (37.59.142.97) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Fri, 31 Mar
 2023 20:56:53 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G00232c2d2aa-b8e9-4d64-8e7a-5faf262151c5,
                    F1A9C431C80975206D97DCDAC248D6CC41D36DF1) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.185
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] mknod.2: ffix
Date:   Fri, 31 Mar 2023 20:56:45 +0200
Message-ID: <20230331185645.9560-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: e3349f6e-7720-43bf-be50-80b32b9e9aca
X-Ovh-Tracer-Id: 3240621407887415264
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvdeiuddguddvlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdeljedphedrudejvddrvdehhedrudekheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/mknod.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/mknod.2 b/man2/mknod.2
index 30f256c44..9d17ca88f 100644
--- a/man2/mknod.2
+++ b/man2/mknod.2
@@ -164,7 +164,7 @@ did not allow search permission.
 .BR path_resolution (7).)
 .TP
 .B EBADF
-.BR ( mknodat ())
+.RB ( mknodat ())
 .I pathname
 is relative but
 .I dirfd
@@ -217,7 +217,7 @@ A component used as a directory in
 is not, in fact, a directory.
 .TP
 .B ENOTDIR
-.BR ( mknodat ())
+.RB ( mknodat ())
 .I pathname
 is relative and
 .I dirfd
-- 
2.40.0

