Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A65A676C45
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 12:20:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229897AbjAVLUm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 06:20:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbjAVLUl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 06:20:41 -0500
Received: from a3.inai.de (a3.inai.de [IPv6:2a01:4f8:10b:45d8::f5])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B62F1C325
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 03:20:37 -0800 (PST)
Received: by a3.inai.de (Postfix, from userid 65534)
        id 67185587510B6; Sun, 22 Jan 2023 12:20:35 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
Received: from a4.inai.de (a4.inai.de [IPv6:2a01:4f8:10b:45d8::f8])
        by a3.inai.de (Postfix) with ESMTP id 035755874F97F;
        Sun, 22 Jan 2023 12:20:35 +0100 (CET)
From:   Jan Engelhardt <jengelh@inai.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org, jengelh@inai.de
Subject: [PATCH] socket.7: add missing periods and commas
Date:   Sun, 22 Jan 2023 12:20:34 +0100
Message-Id: <20230122112034.95339-1-jengelh@inai.de>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The .TP command is followed by exactly one line of definition, and
then multiple lines of flowed explanatory text. When flowed, the lack
of periods is apparent in sentences.

Signed-off-by: Jan Engelhardt <jengelh@inai.de>
---
 man7/address_families.7 | 10 +++++-----
 man7/socket.7           |  6 +++---
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/man7/address_families.7 b/man7/address_families.7
index 455591b21..0e00f113c 100644
--- a/man7/address_families.7
+++ b/man7/address_families.7
@@ -25,7 +25,7 @@ These families are defined in
 The formats currently understood by the Linux kernel include:
 .TP
 .BR AF_UNIX ", " AF_LOCAL
-Local communication
+Local communication.
 For further information, see
 .BR unix (7).
 .TP
@@ -87,7 +87,7 @@ For further information, see
 .BR ipv6 (7).
 .TP
 .B AF_ROSE
-RATS (Radio Amateur Telecommunications Society)
+RATS (Radio Amateur Telecommunications Society).
 Open Systems environment (ROSE) AX.25 packet layer protocol.
 For further information, see the resources listed for
 .BR AF_NETROM .
@@ -119,7 +119,7 @@ RFC 2367
 for details.
 .TP
 .B AF_NETLINK
-Kernel user interface device
+Kernel user interface device.
 For further information, see
 .BR netlink (7).
 .TP
@@ -171,7 +171,7 @@ RDS over RDMA has no relation to
 .B AF_SMC
 or
 .BR AF_XDP .
-For further information see
+For further information, see
 .\" rds-tools: https://github.com/oracle/rds-tools/blob/master/rds.7
 .\" rds-tools: https://github.com/oracle/rds-tools/blob/master/rds-rdma.7
 .BR rds (7),
@@ -185,7 +185,7 @@ in the Linux kernel source tree.
 Socket interface over IrDA
 (moved to staging in Linux 4.14, removed in Linux 4.17).
 .\" irda-utils: https://sourceforge.net/p/irda/code/HEAD/tree/tags/IRDAUTILS_0_9_18/irda-utils/man/irda.7.gz?format=raw
-For further information see
+For further information, see
 .BR irda (7).
 .TP
 .B AF_PPPOX
diff --git a/man7/socket.7 b/man7/socket.7
index 018d89e48..c1989b9ee 100644
--- a/man7/socket.7
+++ b/man7/socket.7
@@ -83,7 +83,7 @@ for more information on families and types.
 .SS Socket-layer functions
 These functions are used by the user process to send or receive packets
 and to do other socket operations.
-For more information see their respective manual pages.
+For more information, see their respective manual pages.
 .PP
 .BR socket (2)
 creates a socket,
@@ -635,14 +635,14 @@ flag is set during receiving.
 Enable or disable the receiving of the
 .B SCM_CREDENTIALS
 control message.
-For more information see
+For more information, see
 .BR unix (7).
 .TP
 .B SO_PASSSEC
 Enable or disable the receiving of the
 .B SCM_SECURITY
 control message.
-For more information see
+For more information, see
 .BR unix (7).
 .TP
 .BR SO_PEEK_OFF " (since Linux 3.4)"
-- 
2.39.0

