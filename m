Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C6B22151D6
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 06:44:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727058AbgGFEoT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 00:44:19 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:36515 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726001AbgGFEoS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 00:44:18 -0400
X-Greylist: delayed 305 seconds by postgrey-1.27 at vger.kernel.org; Mon, 06 Jul 2020 00:44:18 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.51])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id C887549D2197;
        Mon,  6 Jul 2020 06:39:11 +0200 (CEST)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Mon, 6 Jul 2020
 06:39:10 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-105G00625ac1b9a-05e0-41a2-bc2b-3d8a6789609c,
                    46907DD7FEC5841C66EC7F8F4BE39465BDB61822) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/3] prctl.2: tfix
Date:   Mon, 6 Jul 2020 06:39:05 +0200
Message-ID: <20200706043907.9667-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG1EX1.mxp6.local (172.16.2.1) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 47002f6b-d50b-4425-b4e6-b7ff537b700c
X-Ovh-Tracer-Id: 12317063509327730653
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddvgdekgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove duplicated word.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/prctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 6c8fdd9f0..99bddd3cc 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1558,7 +1558,7 @@ must all be zero.
 .IP
 On success, the mode specified in
 .I arg2
-is set for the calling thread and the the return value is 0.
+is set for the calling thread and the return value is 0.
 If the arguments are invalid,
 the mode specified in
 .I arg2
-- 
2.27.0

