Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F00E44E865
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 15:17:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235031AbhKLOTz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 09:19:55 -0500
Received: from 9.mo552.mail-out.ovh.net ([87.98.180.222]:46503 "EHLO
        9.mo552.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235127AbhKLOTx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 09:19:53 -0500
X-Greylist: delayed 13041 seconds by postgrey-1.27 at vger.kernel.org; Fri, 12 Nov 2021 09:19:53 EST
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.139])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 7E21821D69;
        Fri, 12 Nov 2021 10:39:40 +0000 (UTC)
Received: from jwilk.net (37.59.142.106) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Fri, 12 Nov
 2021 11:39:39 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-106R006f4926c64-2b0f-4b62-a039-de8dca85e960,
                    C33078202B5DAE512C89A6AD4C3724190C9FFC18) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.192
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] mmap.2: ffix
Date:   Fri, 12 Nov 2021 11:39:38 +0100
Message-ID: <20211112103938.3888-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: ca3a37d8-dcbe-4b1f-bfc7-15cbcd1fbf72
X-Ovh-Tracer-Id: 4930315692510730205
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrvdefgdduhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'" type of behavior:' was incorrectly formatted in bold.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/mmap.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man2/mmap.2 b/man2/mmap.2
index 96b7444b0..f6e406ed5 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -289,8 +289,7 @@ Note that older kernels which do not recognize the
 .BR MAP_FIXED_NOREPLACE
 flag will typically (upon detecting a collision with a preexisting mapping)
 fall back to a "non-\c
-.B MAP_FIXED\c
-" type of behavior:
+.BR MAP_FIXED "\(dq type of behavior:"
 they will return an address that is different from the requested address.
 Therefore, backward-compatible software
 should check the returned address against the requested address.
-- 
2.33.1

