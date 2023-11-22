Return-Path: <linux-man+bounces-152-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F39BF7F528E
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 22:27:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B9131F20C9E
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 21:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1454E1C2B8;
	Wed, 22 Nov 2023 21:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C106218E
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 13:27:34 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.42])
	by mo552.mail-out.ovh.net (Postfix) with ESMTPS id B44872C76F;
	Wed, 22 Nov 2023 21:08:38 +0000 (UTC)
Received: from jwilk.net (37.59.142.96) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 22 Nov
 2023 22:08:37 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-96R001028fe04e-2acd-4ab2-a7ae-e357cebd379c,
                    E21247A67266542BB8F42CAD3D0D0F70EECABAED) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.175.208.160
From: Jakub Wilk <jwilk@jwilk.net>
To: Michael Kerrisk <mtk.manpages@gmail.com>, Alejandro Colomar
	<alx.manpages@gmail.com>
CC: <linux-man@vger.kernel.org>
Subject: [PATCH 3/5] proc_pid_mountinfo.5: spfix
Date: Wed, 22 Nov 2023 22:08:24 +0100
Message-ID: <20231122210826.1025-3-jwilk@jwilk.net>
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
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: c48a61c2-6802-4387-920b-07e349fd61ba
X-Ovh-Tracer-Id: 7914513397624592349
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgudegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdelgfetueffleehjeeiudeggefgtefhleeiiefgudejheejveelfeefudduieevnecuffhomhgrihhnpehtphdrihhrnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdeliedpfedurddujeehrddvtdekrdduiedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/proc_pid_mountinfo.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc_pid_mountinfo.5 b/man5/proc_pid_mountinfo.5
index 85ee92368..678063617 100644
--- a/man5/proc_pid_mountinfo.5
+++ b/man5/proc_pid_mountinfo.5
@@ -6,7 +6,7 @@
 .\"
 .TH proc_pid_mountinfo 5 (date) "Linux man-pages (unreleased)"
 .SH NAME
-/proc/pid/mountinfo \- mounts informations
+/proc/pid/mountinfo \- mount information
 .SH DESCRIPTION
 .TP
 .IR /proc/ pid /mountinfo " (since Linux 2.6.26)"
-- 
2.39.2


