Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A85CF1B42AF
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 13:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726432AbgDVJ7a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 05:59:30 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:45323 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726412AbgDVJ71 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 05:59:27 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.89])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 72FDF30FA39F;
        Wed, 22 Apr 2020 11:59:23 +0200 (CEST)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Wed, 22 Apr
 2020 11:59:22 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] prctl.2: tfix
Date:   Wed, 22 Apr 2020 11:59:21 +0200
Message-ID: <20200422095921.4813-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: ec851af1-a4ca-4e3f-a9c0-d8d8b7772420
X-Ovh-Tracer-Id: 1547830900064114653
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrgeejgddvtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucffohhmrghinhepfhhilhgvrdhirhenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/prctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 7a5af76f4..195870908 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -248,7 +248,7 @@ for security reasons, this feature has been removed.
 in
 .BR proc (5).)
 .IP
-Normally, the "dumpable" attribue is set to 1.
+Normally, the "dumpable" attribute is set to 1.
 However, it is reset to the current value contained in the file
 .IR /proc/sys/fs/\:suid_dumpable
 (which by default has the value 0),
-- 
2.26.2

