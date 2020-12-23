Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FD932E22A3
	for <lists+linux-man@lfdr.de>; Thu, 24 Dec 2020 00:08:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726746AbgLWXIF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 18:08:05 -0500
Received: from 1.mo51.mail-out.ovh.net ([178.32.121.110]:48727 "EHLO
        1.mo51.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726837AbgLWXIF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 18:08:05 -0500
X-Greylist: delayed 8399 seconds by postgrey-1.27 at vger.kernel.org; Wed, 23 Dec 2020 18:08:04 EST
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.179])
        by mo51.mail-out.ovh.net (Postfix) with ESMTPS id 6107C249C28;
        Wed, 23 Dec 2020 20:30:42 +0100 (CET)
Received: from jwilk.net (37.59.142.103) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Wed, 23 Dec
 2020 20:30:41 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-103G005dc021aed-93c0-4553-8601-2e71d97f7556,
                    A52BA6BD936B9B6465AEB870C134438BA02787E0) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.48.134
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 4/4] filesystems.5: tfix
Date:   Wed, 23 Dec 2020 20:30:33 +0100
Message-ID: <20201223193033.1012-4-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20201223193033.1012-1-jwilk@jwilk.net>
References: <20201223193033.1012-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 0611f2ac-a551-4f83-b8ad-6ec84ac780f1
X-Ovh-Tracer-Id: 11160482829871798237
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddtjedguddviecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/filesystems.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index f3d37d3c7..aa7d74740 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -154,7 +154,7 @@ optional period and 3 character extension.
 .B ncpfs
 is a network filesystem that supports the NCP protocol,
 used by Novell NetWare.
-It was was removed from the kernel in 4.17.
+It was removed from the kernel in 4.17.
 .IP
 To use
 .BR ncpfs ,
-- 
2.30.0.rc1

