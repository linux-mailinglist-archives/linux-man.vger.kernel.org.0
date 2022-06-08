Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A488544040
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 02:02:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230024AbiFIACx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 20:02:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233852AbiFIACw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 20:02:52 -0400
X-Greylist: delayed 3596 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 08 Jun 2022 17:02:49 PDT
Received: from smtpout1.mo529.mail-out.ovh.net (smtpout1.mo529.mail-out.ovh.net [178.32.125.2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE6925586
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 17:02:49 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.253])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id D0B7510911CE6;
        Thu,  9 Jun 2022 00:43:38 +0200 (CEST)
Received: from jwilk.net (37.59.142.108) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Thu, 9 Jun 2022
 00:43:38 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-108S002acc23fa9-89c1-4c79-b314-7dc3919d9a15,
                    9E871150687A271A3AE4CBB98EACDFB4283266B4) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.136
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH resend] statx.2: Add #define _GNU_SOURCE to synopsis
Date:   Thu, 9 Jun 2022 00:43:36 +0200
Message-ID: <20220608224336.2320-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.108]
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: e269c839-c40e-4989-b3c6-55c2f4a94cca
X-Ovh-Tracer-Id: 2745506923988441056
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedruddtkedgudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvfevufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeefhfetfffhffehtedufedvfeehfffgudeljeehieetiefhfeffjeevleejveehieenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhohedvle
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The original text hinted that you need _GNU_SOURCE only for a few of the
AT_* constants; but actually you need it to get the statx() declaration.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/statx.2 | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/man2/statx.2 b/man2/statx.2
index 0b3f6747f..a8620be6f 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -15,6 +15,7 @@ Standard C library
 .RI ( libc ", " \-lc )
 .SH SYNOPSIS
 .nf
+.BR "#define _GNU_SOURCE          " "/* See feature_test_macros(7) */"
 .BR "#include <fcntl.h>           " "/* Definition of " AT_* " constants */"
 .B #include <sys/stat.h>
 .PP
@@ -166,11 +167,6 @@ If
 is
 .BR AT_FDCWD ,
 the call operates on the current working directory.
-.IP
-This flag is Linux-specific; define
-.B _GNU_SOURCE
-.\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
-to obtain its definition.
 .TP
 .B AT_NO_AUTOMOUNT
 Don't automount the terminal ("basename") component of
@@ -193,11 +189,6 @@ and
 act as though
 .B AT_NO_AUTOMOUNT
 was set.
-.IP
-This flag is Linux-specific; define
-.B _GNU_SOURCE
-.\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
-to obtain its definition.
 .TP
 .B AT_SYMLINK_NOFOLLOW
 If
-- 
2.36.1

