Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82DC450CD0F
	for <lists+linux-man@lfdr.de>; Sat, 23 Apr 2022 20:57:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236811AbiDWTAQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Apr 2022 15:00:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236807AbiDWTAP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Apr 2022 15:00:15 -0400
X-Greylist: delayed 2243 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 23 Apr 2022 11:57:17 PDT
Received: from 4.mo548.mail-out.ovh.net (4.mo548.mail-out.ovh.net [188.165.42.229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4756934B8E
        for <linux-man@vger.kernel.org>; Sat, 23 Apr 2022 11:57:17 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.158])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id F020320488;
        Sat, 23 Apr 2022 18:19:52 +0000 (UTC)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Sat, 23 Apr
 2022 20:19:49 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-98R00255ffa520-df4e-41e2-9059-214f41c0f1f1,
                    35B33E8D66C8857E3C3D12EC12469B3A7E67ED19) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.221
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] statx.2: Add #define _GNU_SOURCE to synopsis
Date:   Sat, 23 Apr 2022 20:19:42 +0200
Message-ID: <20220423181942.4733-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 9d4e69c7-6c23-4d5b-bb6b-11a216495373
X-Ovh-Tracer-Id: 4848124999572707293
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrtdeigdduvdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvfevufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeefhfetfffhffehtedufedvfeehfffgudeljeehieetiefhfeffjeevleejveehieenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The original text hinted that you need _GNU_SOURCE only for a few of the
AT_* constants; but actually you need it to get the statx() declaration.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/statx.2 | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/man2/statx.2 b/man2/statx.2
index 04b3e5075..ca2cb75a2 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -32,6 +32,7 @@
 statx \- get file status (extended)
 .SH SYNOPSIS
 .nf
+.BR "#define _GNU_SOURCE          " "/* See feature_test_macros(7) */"
 .BR "#include <fcntl.h>           " "/* Definition of " AT_* " constants */"
 .B #include <sys/stat.h>
 .PP
@@ -183,11 +184,6 @@ If
 is
 .BR AT_FDCWD ,
 the call operates on the current working directory.
-.IP
-This flag is Linux-specific; define
-.B _GNU_SOURCE
-.\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
-to obtain its definition.
 .TP
 .BR AT_NO_AUTOMOUNT
 Don't automount the terminal ("basename") component of
@@ -200,10 +196,6 @@ to prevent mass-automounting of a directory of automount points.
 The
 .B AT_NO_AUTOMOUNT
 flag has no effect if the mount point has already been mounted over.
-This flag is Linux-specific; define
-.B _GNU_SOURCE
-.\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
-to obtain its definition.
 .TP
 .B AT_SYMLINK_NOFOLLOW
 If
-- 
2.36.0

