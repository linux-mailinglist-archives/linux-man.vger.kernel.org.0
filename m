Return-Path: <linux-man+bounces-150-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4B57F5210
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 22:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EBCB2B20D2B
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 21:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF321641A;
	Wed, 22 Nov 2023 21:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64770112
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 13:08:37 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.191])
	by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 357632BFD5;
	Wed, 22 Nov 2023 21:08:35 +0000 (UTC)
Received: from jwilk.net (37.59.142.105) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 22 Nov
 2023 22:08:34 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-105G00695743602-965a-4dda-9b0f-18c4723e6350,
                    E21247A67266542BB8F42CAD3D0D0F70EECABAED) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.175.208.160
From: Jakub Wilk <jwilk@jwilk.net>
To: Michael Kerrisk <mtk.manpages@gmail.com>, Alejandro Colomar
	<alx.manpages@gmail.com>
CC: <linux-man@vger.kernel.org>
Subject: [PATCH 2/5] proc_crypto.5: spfix
Date: Wed, 22 Nov 2023 22:08:23 +0100
Message-ID: <20231122210826.1025-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122210826.1025-1-jwilk@jwilk.net>
References: <20231122210826.1025-1-jwilk@jwilk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: bfe3c3b2-c749-4a2e-a7b1-b31b84a3e555
X-Ovh-Tracer-Id: 7913668972910335965
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgudegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepieetheevtdffvddvkeegveeujeekheegteelvdehgfdtueejfffhleduveeuueevnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdehpdefuddrudejhedrvddtkedrudeitdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth

"Cypher" is a valid but less common spelling of "cipher".
The latter is used everywhere else, so let's use it here too.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/proc_crypto.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc_crypto.5 b/man5/proc_crypto.5
index a67410904..bca620301 100644
--- a/man5/proc_crypto.5
+++ b/man5/proc_crypto.5
@@ -6,7 +6,7 @@
 .\"
 .TH proc_crypto 5 (date) "Linux man-pages (unreleased)"
 .SH NAME
-/proc/crypto \- cyphers provided by kernel crypto API
+/proc/crypto \- ciphers provided by kernel crypto API
 .SH DESCRIPTION
 .TP
 .I /proc/crypto
-- 
2.39.2


