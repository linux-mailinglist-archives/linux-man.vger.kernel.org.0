Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CDFA618F173
	for <lists+linux-man@lfdr.de>; Mon, 23 Mar 2020 10:10:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727639AbgCWJKc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Mar 2020 05:10:32 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:53455 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727637AbgCWJKc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Mar 2020 05:10:32 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.233])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id E726D2F85CF5;
        Mon, 23 Mar 2020 10:00:41 +0100 (CET)
Received: from jwilk.net (37.59.142.106) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 23 Mar
 2020 10:00:41 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] printf.3: ffix
Date:   Mon, 23 Mar 2020 10:00:38 +0100
Message-ID: <20200323090038.6129-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: fc172006-bddd-4c60-a5fb-8a8967ffc536
X-Ovh-Tracer-Id: 8843099345677572061
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudegjedgudduhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/printf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/printf.3 b/man3/printf.3
index c99c796ce..50e136ba6 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -605,7 +605,7 @@ and
 as synonyms, so that one can, for example, write
 .BR llg
 (as a synonym for the standards-compliant
-.RB Lg )
+.BR Lg )
 and
 .BR Ld
 (as a synonym for the standards compliant
-- 
2.26.0.rc2

