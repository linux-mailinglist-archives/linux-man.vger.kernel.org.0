Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2C3D3C1463
	for <lists+linux-man@lfdr.de>; Thu,  8 Jul 2021 15:38:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231755AbhGHNkw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Jul 2021 09:40:52 -0400
Received: from 5.mo548.mail-out.ovh.net ([188.165.49.213]:38483 "EHLO
        5.mo548.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231747AbhGHNkw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Jul 2021 09:40:52 -0400
X-Greylist: delayed 599 seconds by postgrey-1.27 at vger.kernel.org; Thu, 08 Jul 2021 09:40:52 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.193])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 7C71B205ED;
        Thu,  8 Jul 2021 13:32:49 +0000 (UTC)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.10; Thu, 8 Jul
 2021 15:32:48 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G0047699402f-8b09-4a7e-8622-014400daebf7,
                    A1FE38477F9A9F1AE3DC32770B9A4BD99AC82036) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.81.109
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/3] seccomp_unotify.2: tfix
Date:   Thu, 8 Jul 2021 15:32:44 +0200
Message-ID: <20210708133246.2879-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: c734e294-81f8-41a7-83f0-3afde379bd4f
X-Ovh-Tracer-Id: 18338939161151985629
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrtdeggdeigecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove duplicated word.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/seccomp_unotify.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
index 2673d9bc7..13bd93ead 100644
--- a/man2/seccomp_unotify.2
+++ b/man2/seccomp_unotify.2
@@ -1085,7 +1085,7 @@ Alternatively, in the
 example, the supervisor might use
 .BR poll (2)
 to monitor both the notification file descriptor
-(so as as to discover when the target's
+(so as to discover when the target's
 .BR accept (2)
 call has been interrupted) and the listening file descriptor
 (so as to know when a connection is available).
-- 
2.32.0

