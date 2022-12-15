Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AB1864D762
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 08:42:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229639AbiLOHmY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 02:42:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229631AbiLOHmY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 02:42:24 -0500
Received: from 5.mo548.mail-out.ovh.net (5.mo548.mail-out.ovh.net [188.165.49.213])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEFF12DA83
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 23:42:20 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.235])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id E452E22F3E;
        Thu, 15 Dec 2022 07:42:18 +0000 (UTC)
Received: from jwilk.net (37.59.142.107) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Thu, 15 Dec
 2022 08:42:17 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-107S0019556733f-2516-4c5b-b1d5-8ce8dc660f61,
                    416A525C4C0C1F1C71429A1E60C3C1AA852116F1) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.104
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] utimensat.2: tfix
Date:   Thu, 15 Dec 2022 08:42:15 +0100
Message-ID: <20221215074215.3741-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.107]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 3e9ac8c5-c75b-4124-ba29-395e4ad5683b
X-Ovh-Tracer-Id: 14977283513292543968
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeggddutdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvfevufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeefhfetfffhffehtedufedvfeehfffgudeljeehieetiefhfeffjeevleejveehieenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/utimensat.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/utimensat.2 b/man2/utimensat.2
index 404832e5c..c7e30ce76 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -352,7 +352,7 @@ capability); or,
 .\" treated like the (times == NULL) case.
 the file is marked append-only or immutable (see
 .BR chattr (1)).
-.\" EXT2_IMMUTABLE_FL EXT_APPPEND_FL and similar flags for
+.\" EXT2_IMMUTABLE_FL EXT_APPEND_FL and similar flags for
 .\" other filesystems.
 .\"
 .\" Why the inconsistency (which is described under NOTES) between
-- 
2.39.0

