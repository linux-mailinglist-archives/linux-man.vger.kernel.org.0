Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1969A1FFD5D
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 23:26:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726835AbgFRV0z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 17:26:55 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:51119 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725987AbgFRV0z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Jun 2020 17:26:55 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.48])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id C86653E28027;
        Thu, 18 Jun 2020 23:26:52 +0200 (CEST)
Received: from jwilk.net (37.59.142.104) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Thu, 18 Jun
 2020 23:26:51 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-104R005bfaeaf42-ed7e-4898-a6ce-5c793b5cc9c9,05D2C8145320955247949160387329E2731FF3E5) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] man-pages.7: wfix
Date:   Thu, 18 Jun 2020 23:26:49 +0200
Message-ID: <20200618212649.7889-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 50f5c086-78d6-41ad-ab06-9d426ab70f44
X-Ovh-Tracer-Id: 15860551989347342301
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrudejgedgudeifecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reorder full wordings to match the order of abbreviations.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/man-pages.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 6216e254d..eecba8996 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -837,7 +837,7 @@ when rendering a page with, say:
 In general, the use of abbreviations such as "e.g.", "i.e.", "etc.",
 "cf.", and "a.k.a." should be avoided,
 in favor of suitable full wordings
-("for example", "that is", "compare to", "and so on", "also known as").
+("for example", "that is", "and so on", "compare to", "also known as").
 .PP
 The only place where such abbreviations may be acceptable is in
 .I short
-- 
2.27.0

