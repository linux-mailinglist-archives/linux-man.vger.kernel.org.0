Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B19D31BAB4
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 15:05:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229908AbhBOOFB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 09:05:01 -0500
Received: from 7.mo52.mail-out.ovh.net ([188.165.59.253]:37645 "EHLO
        7.mo52.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbhBOOE5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 09:04:57 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.31])
        by mo52.mail-out.ovh.net (Postfix) with ESMTPS id E794B2358DD;
        Mon, 15 Feb 2021 14:47:03 +0100 (CET)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Mon, 15 Feb
 2021 14:47:01 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-98R002223567e0-82d1-48e3-af13-c820de1b51f2,
                    22D6203BD8727E6B145E23B62D72B6B9EB7F0847) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.32.43
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] execve.2: spfix
Date:   Mon, 15 Feb 2021 14:46:58 +0100
Message-ID: <20210215134658.3581-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 28281827-6220-487d-b55d-41afb9b75acd
X-Ovh-Tracer-Id: 8887290915347683293
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrieekgdehfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Mibibytes" is a misspelling of "mebibytes",
but let's use more familiar "MiB" instead.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/execve.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/execve.2 b/man2/execve.2
index 639e3b4b9..027a0efd2 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -424,7 +424,7 @@ ensures that the new program always has some stack space.)
 Additionally, the total size is limited to 3/4 of the value
 of the kernel constant
 .B _STK_LIM
-(8 Mibibytes).
+(8 MiB).
 Since Linux 2.6.25,
 the kernel also places a floor of 32 pages on this size limit,
 so that, even when
-- 
2.30.0

