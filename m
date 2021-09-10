Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DD48407244
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 22:10:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbhIJULt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 16:11:49 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:55355 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233311AbhIJULs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 16:11:48 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.171])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 89C0FBD5AA5F;
        Fri, 10 Sep 2021 22:04:32 +0200 (CEST)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Fri, 10 Sep
 2021 22:04:31 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-99G0033708c9b7-6ed8-4d8d-9eb8-36cc20b3e4c5,
                    6CA564E4F8ECC63D9A71F63648F25876119CC7FE) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.89.24
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/3] futex.2: tfix
Date:   Fri, 10 Sep 2021 22:04:28 +0200
Message-ID: <20210910200429.4816-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910200429.4816-1-jwilk@jwilk.net>
References: <20210910200429.4816-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG1EX1.mxp6.local (172.16.2.1) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 2b7ef39b-e82e-4cc9-a345-44e8ed64ad6f
X-Ovh-Tracer-Id: 13425230489509222365
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrudeguddgudegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 1dd77ac2f..72100300d 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1137,7 +1137,7 @@ except that the clock against which
 is measured is selectable.
 By default, the (absolute) timeout specified in
 .I timeout
-is measured againt the
+is measured against the
 .B CLOCK_MONOTONIC
 clock, but if the
 .B FUTEX_CLOCK_REALTIME
-- 
2.33.0

