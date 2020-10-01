Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D810A27FCB1
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 11:54:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731243AbgJAJyY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 05:54:24 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:35787 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726992AbgJAJyX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 05:54:23 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.140])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 1EA5A60E3144;
        Thu,  1 Oct 2020 11:54:22 +0200 (CEST)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Thu, 1 Oct 2020
 11:54:21 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G004d80e5591-e3c1-4abe-88c4-4a4a189cf59a,
                    F0B14C18231B464551FFF2B9AFC0668EFF10C516) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] feature_test_macros.7: Update list of macros that inhibit default definitions
Date:   Thu, 1 Oct 2020 11:54:19 +0200
Message-ID: <20201001095419.6908-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG6EX1.mxp6.local (172.16.2.51) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 0f985321-737a-47ec-9c15-6813704171c1
X-Ovh-Tracer-Id: 12055573252616411101
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrfeeggddvvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/feature_test_macros.7 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index 8c80b087e..2d7bcacfc 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -672,10 +672,13 @@ and
 If any of
 .BR __STRICT_ANSI__ ,
 .BR _ISOC99_SOURCE ,
+.BR _ISOC11_SOURCE
+(since glibc 2.18),
 .BR _POSIX_SOURCE ,
 .BR _POSIX_C_SOURCE  ,
 .BR _XOPEN_SOURCE ,
-.BR _XOPEN_SOURCE_EXTENDED ,
+.BR _XOPEN_SOURCE_EXTENDED
+(in glibc 2.11 and earlier),
 .BR _BSD_SOURCE
 (in glibc 2.19 and earlier),
 or
-- 
2.28.0

