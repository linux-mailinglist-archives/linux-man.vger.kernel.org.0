Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CCD93C1464
	for <lists+linux-man@lfdr.de>; Thu,  8 Jul 2021 15:38:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231791AbhGHNkz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Jul 2021 09:40:55 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:40439 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231747AbhGHNkz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Jul 2021 09:40:55 -0400
X-Greylist: delayed 316 seconds by postgrey-1.27 at vger.kernel.org; Thu, 08 Jul 2021 09:40:55 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.51])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id D4EB8B30DA1E;
        Thu,  8 Jul 2021 15:32:56 +0200 (CEST)
Received: from jwilk.net (37.59.142.100) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.10; Thu, 8 Jul
 2021 15:32:55 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-100R003dc7c8dcd-5355-4096-b806-37496164a4c9,
                    A1FE38477F9A9F1AE3DC32770B9A4BD99AC82036) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.81.109
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/3] proc.5: tfix
Date:   Thu, 8 Jul 2021 15:32:45 +0200
Message-ID: <20210708133246.2879-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708133246.2879-1-jwilk@jwilk.net>
References: <20210708133246.2879-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 59fb9985-e0e9-4223-9f98-ecd86baf814a
X-Ovh-Tracer-Id: 18340909485948655581
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrtdeggdeigecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/proc.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 888535449..748f9ccb3 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -5606,7 +5606,7 @@ first.
 .IR  /proc/sys/vm/sysctl_hugetlb_shm_group " (since Linux 2.6.7)"
 This writable file contains a group ID that is allowed
 to allocate memory using huge pages.
-If a process has a filesystem group ID or any supplememtary group ID that
+If a process has a filesystem group ID or any supplementary group ID that
 matches this group ID,
 then it can make huge-page allocations without holding the
 .BR CAP_IPC_LOCK
-- 
2.32.0

