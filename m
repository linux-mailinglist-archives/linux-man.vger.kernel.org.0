Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7B44487AE2
	for <lists+linux-man@lfdr.de>; Fri,  7 Jan 2022 18:03:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348426AbiAGRDI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 12:03:08 -0500
Received: from 10.mo584.mail-out.ovh.net ([188.165.33.109]:48203 "EHLO
        10.mo584.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348391AbiAGRDH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 12:03:07 -0500
X-Greylist: delayed 592 seconds by postgrey-1.27 at vger.kernel.org; Fri, 07 Jan 2022 12:03:06 EST
Received: from player758.ha.ovh.net (unknown [10.108.20.212])
        by mo584.mail-out.ovh.net (Postfix) with ESMTP id 7822924CC9
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 16:47:23 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id 226CC2610919D;
        Fri,  7 Jan 2022 16:47:19 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R005541c95f6-d1f2-49a7-9bb5-98f7a9a4c679,
                    378F7200CA80B4250C2E4B9C353773DD9C33FBEE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 5/9] mq_notify.3: Add signal.h for SIGEV_THREAD
Date:   Fri,  7 Jan 2022 17:46:17 +0100
Message-Id: <20220107164621.275794-5-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
References: <20220107164621.275794-1-steve@sk2.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7969963968178259590
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegvddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeelledvfeeiiedutdefveekgeeuheekkedvffegvdehudegkefgjeejkefgueegnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man3/mq_notify.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/mq_notify.3 b/man3/mq_notify.3
index 2c35a347d..31ba6f7cb 100644
--- a/man3/mq_notify.3
+++ b/man3/mq_notify.3
@@ -224,6 +224,7 @@ queue and then terminates the process.
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
+#include <signal.h>
 
 #define handle_error(msg) \e
     do { perror(msg); exit(EXIT_FAILURE); } while (0)
-- 
2.30.2

