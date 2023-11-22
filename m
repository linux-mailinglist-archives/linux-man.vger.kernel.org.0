Return-Path: <linux-man+bounces-151-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 232B87F5268
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 22:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D04312813D4
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 21:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1E21C2A0;
	Wed, 22 Nov 2023 21:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 524 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 22 Nov 2023 13:17:24 PST
Received: from 5.mo552.mail-out.ovh.net (5.mo552.mail-out.ovh.net [188.165.45.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7C7A101
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 13:17:24 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.47])
	by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 0EB242CAC0;
	Wed, 22 Nov 2023 21:08:42 +0000 (UTC)
Received: from jwilk.net (37.59.142.103) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 22 Nov
 2023 22:08:41 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-103G005963a9993-12f8-4c54-aae8-1345b7ee839d,
                    E21247A67266542BB8F42CAD3D0D0F70EECABAED) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.175.208.160
From: Jakub Wilk <jwilk@jwilk.net>
To: Michael Kerrisk <mtk.manpages@gmail.com>, Alejandro Colomar
	<alx.manpages@gmail.com>
CC: <linux-man@vger.kernel.org>
Subject: [PATCH 5/5] proc_sys_user.5: tfix
Date: Wed, 22 Nov 2023 22:08:26 +0100
Message-ID: <20231122210826.1025-5-jwilk@jwilk.net>
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
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: c66d76d8-7476-4de1-8a0a-eca42fdec3d7
X-Ovh-Tracer-Id: 7915357823763470301
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgudegfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdelgfetueffleehjeeiudeggefgtefhleeiiefgudejheejveelfeefudduieevnecuffhomhgrihhnpehtphdrihhrnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdefpdefuddrudejhedrvddtkedrudeitdenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/proc_sys_user.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc_sys_user.5 b/man5/proc_sys_user.5
index cd0ef1be3..1566e7630 100644
--- a/man5/proc_sys_user.5
+++ b/man5/proc_sys_user.5
@@ -7,7 +7,7 @@
 .\"
 .TH proc_sys_user 5 (date) "Linux man-pages (unreleased)"
 .SH NAME
-/proc/sys/user/ \- limits on the number of namespaces of varius types
+/proc/sys/user/ \- limits on the number of namespaces of various types
 .SH DESCRIPTION
 .TP
 .IR /proc/sys/user/ " (since Linux 4.9)"
-- 
2.39.2


