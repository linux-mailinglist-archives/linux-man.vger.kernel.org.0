Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0181BA4DB
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2020 15:39:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726786AbgD0NjD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Apr 2020 09:39:03 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:48327 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726539AbgD0NjD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Apr 2020 09:39:03 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.108])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 8183A388E6DF;
        Mon, 27 Apr 2020 15:39:01 +0200 (CEST)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 27 Apr
 2020 15:39:00 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] user_namespaces.7: tfix
Date:   Mon, 27 Apr 2020 15:38:56 +0200
Message-ID: <20200427133856.4276-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG7EX1.mxp6.local (172.16.2.61) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: c1ab6294-4f8d-4103-bf46-8ff003f8ec85
X-Ovh-Tracer-Id: 16173833639028643805
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrheelgdeihecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/user_namespaces.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index 98adb078d..0f2c89184 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -156,7 +156,7 @@ using the
 flag
 or a call to
 .BR setns (2)
-that moves the caller into a another user namespace
+that moves the caller into another user namespace
 sets the "securebits" flags
 (see
 .BR capabilities (7))
-- 
2.26.2

