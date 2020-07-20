Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A36C422573C
	for <lists+linux-man@lfdr.de>; Mon, 20 Jul 2020 07:49:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726853AbgGTFtp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jul 2020 01:49:45 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:35671 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726736AbgGTFto (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jul 2020 01:49:44 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.210])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 2E1EB4DF997F;
        Mon, 20 Jul 2020 07:49:42 +0200 (CEST)
Received: from jwilk.net (37.59.142.97) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Mon, 20 Jul
 2020 07:49:40 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G002efdbca25-c05a-43d5-93a2-c101d582d343,AF8CF44B929B90A6AE2E96008DECA72944AC5276) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] prctl.2: tfix
Date:   Mon, 20 Jul 2020 07:49:38 +0200
Message-ID: <20200720054938.4312-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.28.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 04b4986f-9cea-457c-98b3-a0b2b8e5b2f5
X-Ovh-Tracer-Id: 3491697087860627421
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrgedvgddutddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdeljeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/prctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index d2a52d34c..7658b32ce 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1082,7 +1082,7 @@ otherwise, this value is preserved across
 The parent-death signal setting is also cleared upon changes to
 any of the following thread credentials:
 .\" FIXME capability changes can also trigger this; see
-.\" kernel/cred.c::commit_creds inthe Linux 5.6 source.
+.\" kernel/cred.c::commit_creds in the Linux 5.6 source.
 effective user ID, effective group ID, filesystem user ID,
 or filesystem group ID.
 .\" prctl PR_GET_PDEATHSIG
-- 
2.28.0.rc1

