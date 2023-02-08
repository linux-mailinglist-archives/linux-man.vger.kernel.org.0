Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70AC668F8E7
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:38:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230203AbjBHUi2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:38:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229902AbjBHUi2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:38:28 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F5C78A6C
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:38:27 -0800 (PST)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id Pm2kpsAPXc9C4PrD0pcOzp; Wed, 08 Feb 2023 20:38:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675888706; bh=NW83+1ZvnEaq8GUSyBBWG4x2b+DFYPjBDhx+MXWrcIk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=UctDqJ2qsdZLWjXANhFk3MrTH0uVjTyzENtrEK6UFim61vty9m7FzieB0QjWIOIZm
         mrovFc/QY05WgLSKsw6LQCOCaNOQHgzfKmYcTSKzDQCVT4G1QJpcsW3Hh+1BMr4bHe
         L2cFdmOJ+wK2XTnTQ/4YrigHAnt7yak7Qm3UTcf5Ak+4nznuXn3U0nOMi3OFhE9HlZ
         +FaK4tW2nqpuFb7/RX87KbNdUaqmsoAMdV2mSVWCAD852yrP/jv3aXv5XibtM4XANS
         3QPdVMxThNs50fKrVnT0R4+Z29Fak+QiHqIa+9VvOSjHMqSpoFJ85jWrijZX6yEpWi
         QUIT/Ai8NXL+A==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PrCzpMtNEcyvuPrCzpm6Ys; Wed, 08 Feb 2023 20:38:26 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=63e40842
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=rcOpL44KfLnM241yspEA:9 a=QEXdDO2ut3YA:10
 a=2WzCN0r21_IaNLv3IZsA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 04/11] man2/open.2: punctuate octal perms with digit separators
Date:   Wed,  8 Feb 2023 13:27:26 -0700
Message-Id: <55dc9a52adaa99408437708f8141d44aade52464.1675830945.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfEahve8+evTvhYh8IQkNIs3c2l6Zf7NfZ8tUbrPoQTJgI66NPhhA0rMfUSZP4rdlsHpuidKJIQMQhq1HCZudCFhCyasXRPo5hHlIaSABJIZoDsvrL6so
 yNVe8/wnFFvsNBiK0kqSjhMSNfLdpsau1CAp9iicS7lru47qnfRE1FkOOldrWs4bjZ4kE0hMmVfVZ9Ksdu7coiBgYtSYy4tLr42OjMw/4IBaJ55y1FAeNi13
 sL1vvvZNC5TcpYvQAGuFPN8NZjj5x/c/Cgpr7ZtwG3ohskDJ695phzUvemSyLlKi
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------2.39.0
Content-Type: text/plain; charset=UTF-8; format=fixed
Content-Transfer-Encoding: 8bit

---
 man2/open.2 | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)


--------------2.39.0
Content-Type: text/x-patch; name="v2-0004-man2-open.2-punctuate-octal-perms-with-digit-sepa.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline; filename="v2-0004-man2-open.2-punctuate-octal-perms-with-digit-sepa.patch"

diff --git a/man2/open.2 b/man2/open.2
index fc796e25537d..82e3e2102e7c 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -308,40 +308,40 @@ The following symbolic constants are provided for
 .RS
 .TP 9
 .B S_IRWXU
-00700 user (file owner) has read, write, and execute permission
+00\[aq]700 user (file owner) has read, write, and execute permission
 .TP
 .B S_IRUSR
-00400 user has read permission
+00\[aq]400 user has read permission
 .TP
 .B S_IWUSR
-00200 user has write permission
+00\[aq]200 user has write permission
 .TP
 .B S_IXUSR
-00100 user has execute permission
+00\[aq]100 user has execute permission
 .TP
 .B S_IRWXG
-00070 group has read, write, and execute permission
+00\[aq]070 group has read, write, and execute permission
 .TP
 .B S_IRGRP
-00040 group has read permission
+00\[aq]040 group has read permission
 .TP
 .B S_IWGRP
-00020 group has write permission
+00\[aq]020 group has write permission
 .TP
 .B S_IXGRP
-00010 group has execute permission
+00\[aq]010 group has execute permission
 .TP
 .B S_IRWXO
-00007 others have read, write, and execute permission
+00\[aq]007 others have read, write, and execute permission
 .TP
 .B S_IROTH
-00004 others have read permission
+00\[aq]004 others have read permission
 .TP
 .B S_IWOTH
-00002 others have write permission
+00\[aq]002 others have write permission
 .TP
 .B S_IXOTH
-00001 others have execute permission
+00\[aq]001 others have execute permission
 .RE
 .IP
 According to POSIX, the effect when other bits are set in
@@ -352,14 +352,14 @@ On Linux, the following bits are also honored in
 .RS
 .TP 9
 .B S_ISUID
-0004000 set-user-ID bit
+0\[aq]004\[aq]000 set-user-ID bit
 .TP
 .B S_ISGID
-0002000 set-group-ID bit (see
+0\[aq]002\[aq]000 set-group-ID bit (see
 .BR inode (7)).
 .TP
 .B S_ISVTX
-0001000 sticky bit (see
+0\[aq]001\[aq]000 sticky bit (see
 .BR inode (7)).
 .RE
 .TP
@@ -1319,7 +1319,7 @@ flags are not specified in POSIX.1-2001,
 but are specified in POSIX.1-2008.
 Since glibc 2.12, one can obtain their definitions by defining either
 .B _POSIX_C_SOURCE
-with a value greater than or equal to 200809L or
+with a value greater than or equal to 2008\[aq]09L or
 .B _XOPEN_SOURCE
 with a value greater than or equal to 700.
 In glibc 2.11 and earlier, one obtains the definitions by defining

--------------2.39.0--


