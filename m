Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C04661E926C
	for <lists+linux-man@lfdr.de>; Sat, 30 May 2020 17:58:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729151AbgE3P6p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 May 2020 11:58:45 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:45961 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729149AbgE3P6p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 30 May 2020 11:58:45 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.186])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 40B6A3F8139E;
        Sat, 30 May 2020 17:58:43 +0200 (CEST)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Sat, 30 May
 2020 17:58:42 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-98R0026c72b73f-97e2-4d7b-a7a2-56f3a2d3662b,C15CABF17BDAF07289B45B28B89BB66390077FDB) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] proc.5: ffix
Date:   Sat, 30 May 2020 17:58:41 +0200
Message-ID: <20200530155841.9627-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.27.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 911101a0-3f02-4c24-9d54-37691f72eb0d
X-Ovh-Tracer-Id: 9417871247264831453
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrudeftddgleefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/proc.5 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 5886bac99..485b3dfc7 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -532,8 +532,8 @@ Furthermore, a process may change the memory location that this file refers via
 .BR prctl (2)
 operations such as
 .BR PR_SET_MM_ARG_START .
-+.IP
-+Think of this file as the command line that the process wants you to see.
+.IP
+Think of this file as the command line that the process wants you to see.
 .TP
 .IR /proc/[pid]/comm " (since Linux 2.6.33)"
 .\" commit 4614a696bd1c3a9af3a08f0e5874830a85b889d4
-- 
2.27.0.rc2

