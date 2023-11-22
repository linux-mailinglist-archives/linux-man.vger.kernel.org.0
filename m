Return-Path: <linux-man+bounces-153-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E93857F5290
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 22:28:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2FE3C1C20ABA
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 21:28:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E2DE1C2B8;
	Wed, 22 Nov 2023 21:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 599 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 22 Nov 2023 13:27:54 PST
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39D041A4
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 13:27:54 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.179])
	by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 57096205CE;
	Wed, 22 Nov 2023 21:08:40 +0000 (UTC)
Received: from jwilk.net (37.59.142.102) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 22 Nov
 2023 22:08:39 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-102R004164ee4e5-5673-49ec-9ccc-417343602e8c,
                    E21247A67266542BB8F42CAD3D0D0F70EECABAED) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.175.208.160
From: Jakub Wilk <jwilk@jwilk.net>
To: Michael Kerrisk <mtk.manpages@gmail.com>, Alejandro Colomar
	<alx.manpages@gmail.com>
CC: <linux-man@vger.kernel.org>
Subject: [PATCH 4/5] proc_pid_oom_score_adj.5: tfix
Date: Wed, 22 Nov 2023 22:08:25 +0100
Message-ID: <20231122210826.1025-4-jwilk@jwilk.net>
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
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 5d231f23-7d8d-4fa7-a76f-79a9443b701f
X-Ovh-Tracer-Id: 7915076346870421469
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgudegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdelgfetueffleehjeeiudeggefgtefhleeiiefgudejheejveelfeefudduieevnecuffhomhgrihhnpehtphdrihhrnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutddvpdefuddrudejhedrvddtkedrudeitdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/proc_pid_oom_score_adj.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc_pid_oom_score_adj.5 b/man5/proc_pid_oom_score_adj.5
index 0d7b2b740..968bc5da1 100644
--- a/man5/proc_pid_oom_score_adj.5
+++ b/man5/proc_pid_oom_score_adj.5
@@ -6,7 +6,7 @@
 .\"
 .TH proc_pid_oom_score_adj 5 (date) "Linux man-pages (unreleased)"
 .SH NAME
-/proc/pid/oom_score_adj \- OOM-killer score adjestment
+/proc/pid/oom_score_adj \- OOM-killer score adjustment
 .SH DESCRIPTION
 .TP
 .IR /proc/ pid /oom_score_adj " (since Linux 2.6.36)"
-- 
2.39.2


