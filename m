Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCD093C1465
	for <lists+linux-man@lfdr.de>; Thu,  8 Jul 2021 15:38:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231800AbhGHNk5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Jul 2021 09:40:57 -0400
Received: from 2.mo548.mail-out.ovh.net ([178.33.255.19]:37915 "EHLO
        2.mo548.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231747AbhGHNk5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Jul 2021 09:40:57 -0400
X-Greylist: delayed 316 seconds by postgrey-1.27 at vger.kernel.org; Thu, 08 Jul 2021 09:40:57 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.220])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id B654D209E5;
        Thu,  8 Jul 2021 13:32:58 +0000 (UTC)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.10; Thu, 8 Jul
 2021 15:32:57 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G004f0f06cff-a0ac-4bc5-9675-8b0b02af3a9d,
                    A1FE38477F9A9F1AE3DC32770B9A4BD99AC82036) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.81.109
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 3/3] scripts/bash_aliases: tfix
Date:   Thu, 8 Jul 2021 15:32:46 +0200
Message-ID: <20210708133246.2879-3-jwilk@jwilk.net>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708133246.2879-1-jwilk@jwilk.net>
References: <20210708133246.2879-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 0e6a564e-f3d4-4e52-8e68-7537d89a2e60
X-Ovh-Tracer-Id: 18341472436476696541
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrtdeggdeigecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 scripts/bash_aliases | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index 102c458d7..ecac0029d 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -24,7 +24,7 @@ EX_USAGE=64;
 #	C
 
 #  sed_rm_ccomments()  removes C comments.
-# It can't handle multiple comments in a sinlge line correctly,
+# It can't handle multiple comments in a single line correctly,
 # nor mixed or embedded //... and /*...*/ comments.
 # Use as a filter (see man_lsfunc() in this file).
 
-- 
2.32.0

