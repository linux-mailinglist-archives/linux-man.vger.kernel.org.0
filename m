Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C21392E20FB
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 20:42:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728641AbgLWTk6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 14:40:58 -0500
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:60041 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726384AbgLWTk6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 14:40:58 -0500
X-Greylist: delayed 579 seconds by postgrey-1.27 at vger.kernel.org; Wed, 23 Dec 2020 14:40:57 EST
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.220])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 08011767FE64;
        Wed, 23 Dec 2020 20:30:37 +0100 (CET)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Wed, 23 Dec
 2020 20:30:36 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-105G006da8c0a0e-9379-4fa1-9a28-6af3b32ef23c,
                    A52BA6BD936B9B6465AEB870C134438BA02787E0) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.48.134
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/4] signal.7: tfix
Date:   Wed, 23 Dec 2020 20:30:30 +0100
Message-ID: <20201223193033.1012-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 60c86748-427e-4fdd-bc77-bb83b27a3ab3
X-Ovh-Tracer-Id: 11158793980095682525
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddtjedguddviecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/signal.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/signal.7 b/man7/signal.7
index e5b9e00ca..1b48356b8 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -357,7 +357,7 @@ From the kernel's point of view,
 execution of the signal handler code is exactly the same as the execution
 of any other user-space code.
 That is to say, the kernel does not record any special state information
-indicating that the thread is currently excuting inside a signal handler.
+indicating that the thread is currently executing inside a signal handler.
 All necessary state information is maintained in user-space registers
 and the user-space stack.
 The depth to which nested signal handlers may be invoked is thus
-- 
2.30.0.rc1

