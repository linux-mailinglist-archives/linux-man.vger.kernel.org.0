Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4EAB407242
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 22:04:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233085AbhIJUFo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 16:05:44 -0400
Received: from smtpout3.3005.mail-out.ovh.net ([217.182.185.173]:54171 "EHLO
        smtpout3.3005.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232310AbhIJUFn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 16:05:43 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.206])
        by mo3005.mail-out.ovh.net (Postfix) with ESMTPS id 24E0313D97E;
        Fri, 10 Sep 2021 20:04:31 +0000 (UTC)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Fri, 10 Sep
 2021 22:04:30 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-99G0032d517143-9933-4cbc-8a44-b111a6ba5ab8,
                    6CA564E4F8ECC63D9A71F63648F25876119CC7FE) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.89.24
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/3] Changes.old: tfix
Date:   Fri, 10 Sep 2021 22:04:27 +0200
Message-ID: <20210910200429.4816-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 30922c5c-2e2c-4858-9de3-61b3824f72f5
X-Ovh-Tracer-Id: 13424949017534126045
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrudeguddgudegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffogggtgfhisehtkeertdertdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeevtdegjeekvdeileetiefgiedvhfffuefgjeffffektdfhkeffjedtheehkefffeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 Changes.old | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Changes.old b/Changes.old
index 742a2134d..77c06b98d 100644
--- a/Changes.old
+++ b/Changes.old
@@ -52419,7 +52419,7 @@ uintN_t.3
 uintptr_t.3
 va_list.3
 void.3
-    Alejandro Colomar, Michael kerrisk
+    Alejandro Colomar, Michael Kerrisk
         New links to system_data_types(7)
 
 CIRCLEQ_ENTRY.3
@@ -54666,7 +54666,7 @@ futex.2
         Document FUTEX_LOCK_PI2
 
 ioctl_tty.2
-    Pali Rohár  [Alejandro Colomar, Michael kerrisk]
+    Pali Rohár  [Alejandro Colomar, Michael Kerrisk]
         Document ioctls: TCGETS2, TCSETS2, TCSETSW2, TCSETSF2
 
 pidfd_open.2
-- 
2.33.0

