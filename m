Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF5F826431D
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 12:00:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730368AbgIJKA5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 06:00:57 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:60247 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730397AbgIJJ4j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 05:56:39 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.118])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 32FA55988717;
        Thu, 10 Sep 2020 11:56:37 +0200 (CEST)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Thu, 10 Sep
 2020 11:56:36 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R001ce2c0b7c-11e1-47ae-8de2-d08c1bc00655,
                    8F7114C7C57A6E0A3E47E03C6DA49EEB42B2DE26) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] loop.4: tfix
Date:   Thu, 10 Sep 2020 11:56:34 +0200
Message-ID: <20200910095634.5440-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 95204d8e-e553-4413-80cf-6695533f6245
X-Ovh-Tracer-Id: 17894208695100168157
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudehjedgudehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man4/loop.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man4/loop.4 b/man4/loop.4
index 30db9c612..73b23871d 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -227,7 +227,7 @@ in
 .IR loop_config.info.lo_flags ;
 and
 .IP *
-Eeplicitly request read-only mode by setting
+Explicitly request read-only mode by setting
 .BR LO_FLAGS_READ_ONLY
 in
 .IR loop_config.info.lo_flags .
-- 
2.28.0

