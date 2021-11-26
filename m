Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF40645EF8B
	for <lists+linux-man@lfdr.de>; Fri, 26 Nov 2021 15:04:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233993AbhKZOHT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Nov 2021 09:07:19 -0500
Received: from 10.mo552.mail-out.ovh.net ([87.98.187.244]:33845 "EHLO
        10.mo552.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353601AbhKZOFT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Nov 2021 09:05:19 -0500
X-Greylist: delayed 4203 seconds by postgrey-1.27 at vger.kernel.org; Fri, 26 Nov 2021 09:05:18 EST
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.240])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 7AF3D210E8;
        Fri, 26 Nov 2021 12:43:28 +0000 (UTC)
Received: from jwilk.net (37.59.142.103) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Fri, 26 Nov
 2021 13:43:27 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-103G00571b7843c-8e7b-42ba-a880-8cfbcd9ed963,
                    CCE6078C6C5C0BEFF4033B362A984AD9811D4FE6) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.93
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/2] console_codes.4: tfix
Date:   Fri, 26 Nov 2021 13:43:23 +0100
Message-ID: <20211126124323.7496-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211126124323.7496-1-jwilk@jwilk.net>
References: <20211126124323.7496-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: eee2804c-04f5-45b2-94a4-8ba1bb1e7662
X-Ovh-Tracer-Id: 15451850325674874845
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrhedvgdegvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man4/console_codes.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man4/console_codes.4 b/man4/console_codes.4
index 24399925b..30cdd29c6 100644
--- a/man4/console_codes.4
+++ b/man4/console_codes.4
@@ -380,7 +380,7 @@ T}
 90..97	T{
 set foreground to bright versions of 30..37
 T}
-100.107	T{
+100..107	T{
 set background, same as 40..47 (bright not supported)
 T}
 .TE
-- 
2.34.0

