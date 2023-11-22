Return-Path: <linux-man+bounces-154-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8556D7F52D9
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 22:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4055A2816B8
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 21:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 582BB1CA84;
	Wed, 22 Nov 2023 21:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 1800 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 22 Nov 2023 13:47:38 PST
Received: from 7.mo552.mail-out.ovh.net (7.mo552.mail-out.ovh.net [188.165.59.253])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C822DD1
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 13:47:38 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.210])
	by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 6BEE82B942;
	Wed, 22 Nov 2023 21:08:33 +0000 (UTC)
Received: from jwilk.net (37.59.142.96) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 22 Nov
 2023 22:08:32 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-96R0010ab8afdf-cc36-4d97-a33c-d98d9ddcc20b,
                    E21247A67266542BB8F42CAD3D0D0F70EECABAED) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.175.208.160
From: Jakub Wilk <jwilk@jwilk.net>
To: Michael Kerrisk <mtk.manpages@gmail.com>, Alejandro Colomar
	<alx.manpages@gmail.com>
CC: <linux-man@vger.kernel.org>
Subject: [PATCH 1/5] pthread_key_create.3: tfix
Date: Wed, 22 Nov 2023 22:08:22 +0100
Message-ID: <20231122210826.1025-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: f6ab3241-ff51-4c2f-b692-9fe81487d6f4
X-Ovh-Tracer-Id: 7913106023550670813
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgudegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdeliedpfedurddujeehrddvtdekrdduiedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/pthread_key_create.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_key_create.3 b/man3/pthread_key_create.3
index a1384e4c2..ea89501a0 100644
--- a/man3/pthread_key_create.3
+++ b/man3/pthread_key_create.3
@@ -136,7 +136,7 @@ pthread_create(3), pthread_exit(3), pthread_testcancel(3).
 .SH EXAMPLE
 The following code fragment
 allocates a thread-specific array of 100 characters,
-with automatic reclaimation at thread exit:
+with automatic reclamation at thread exit:
 .P
 .RS
 .ft 3
-- 
2.39.2


