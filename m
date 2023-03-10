Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E74F46B4129
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 14:50:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230435AbjCJNuQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 08:50:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230474AbjCJNuI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 08:50:08 -0500
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4B5BF2883
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 05:50:03 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.11])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id A05A02070D;
        Fri, 10 Mar 2023 13:50:01 +0000 (UTC)
Received: from jwilk.net (37.59.142.102) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Fri, 10 Mar
 2023 14:50:00 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-102R0041b106172-6565-4c31-8636-61d502eb376b,
                    FBD5CF1E18A84CF95480643A5DB9F9A64407CB37) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.201
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] standards.7: ffix
Date:   Fri, 10 Mar 2023 14:49:59 +0100
Message-ID: <20230310134959.6667-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG6EX1.mxp6.local (172.16.2.51) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 12b7dd95-247e-472a-8a0e-bda4b22f9ee8
X-Ovh-Tracer-Id: 3857614555873990624
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvddukedgheehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvfevufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeefhfetfffhffehtedufedvfeehfffgudeljeehieetiefhfeffjeevleejveehieenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/standards.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/standards.7 b/man7/standards.7
index 3073025fd..54dd2eb30 100644
--- a/man7/standards.7
+++ b/man7/standards.7
@@ -132,7 +132,7 @@ describing real-time facilities
 for portable operating systems, ratified by ISO in 1996
 .RI ( "ISO/IEC 9945-1:1996" ).
 .TP
-.B POSIX.1c " (formerly known as \fIPOSIX.4a\fP)"
+.BR POSIX.1c " (formerly known as \fIPOSIX.4a\fP)"
 IEEE Std 1003.1c-1995, which describes the POSIX threads interfaces.
 .TP
 .B POSIX.1d
-- 
2.39.2

