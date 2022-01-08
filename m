Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77E18488545
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 19:13:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230009AbiAHSNF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 13:13:05 -0500
Received: from 18.mo582.mail-out.ovh.net ([46.105.73.110]:34219 "EHLO
        18.mo582.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbiAHSNF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 13:13:05 -0500
X-Greylist: delayed 91535 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 13:13:05 EST
Received: from player157.ha.ovh.net (unknown [10.110.208.168])
        by mo582.mail-out.ovh.net (Postfix) with ESMTP id 01AFC215D8
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 15:43:32 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player157.ha.ovh.net (Postfix) with ESMTPSA id 7C4E7261BA4D4;
        Sat,  8 Jan 2022 15:43:29 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-101G004b85e2552-d325-4d48-957b-14c7a27cfc62,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 1/5] mq_notify.3: Add signal.h for SIGEV_ constants
Date:   Sat,  8 Jan 2022 16:43:00 +0100
Message-Id: <20220108154304.1030478-1-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 12764327245256689286
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudeghedgheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepteegudfgleekieekteeggeetveefueefteeugfduieeitdfhhedtfeefkedvfeefnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrudehjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The example program needs signal.h to build correctly, since the
SIGEV_ constants are defined through signal.h; also document that in
the synopsis.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 man3/mq_notify.3 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man3/mq_notify.3 b/man3/mq_notify.3
index 2c35a347d..222108d61 100644
--- a/man3/mq_notify.3
+++ b/man3/mq_notify.3
@@ -28,6 +28,7 @@ mq_notify \- register for notification when a message is available
 .SH SYNOPSIS
 .nf
 .B #include <mqueue.h>
+.BR "#include <signal.h>           " "/* Definition of SIGEV_* constants */"
 .PP
 .BI "int mq_notify(mqd_t " mqdes ", const struct sigevent *" sevp );
 .fi
@@ -224,6 +225,7 @@ queue and then terminates the process.
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
+#include <signal.h>
 
 #define handle_error(msg) \e
     do { perror(msg); exit(EXIT_FAILURE); } while (0)

base-commit: 88d2b3fdef39603bc6a608a0d814d1800b6a4089
-- 
2.30.2

