Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51DF65A6E90
	for <lists+linux-man@lfdr.de>; Tue, 30 Aug 2022 22:37:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbiH3Uhs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Aug 2022 16:37:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230451AbiH3Uhq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Aug 2022 16:37:46 -0400
Received: from 10.mo548.mail-out.ovh.net (10.mo548.mail-out.ovh.net [46.105.77.235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B45B80034
        for <linux-man@vger.kernel.org>; Tue, 30 Aug 2022 13:37:41 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.140])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id ABDCE22161;
        Tue, 30 Aug 2022 19:58:04 +0000 (UTC)
Received: from jwilk.net (37.59.142.103) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Tue, 30 Aug
 2022 21:58:03 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-103G005b21649ab-c63c-4811-a4fe-353b4e6f7532,
                    DD0743956CE8223FDAF572D0F4F9E873376A8952) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.251
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] ioctl_ns.2, stat.2: drop unneeded uintmax_t casts.
Date:   Tue, 30 Aug 2022 21:58:00 +0200
Message-ID: <20220830195800.1779-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: ec2fc960-3f19-40a3-bcd3-f5e5fd3d7abb
X-Ovh-Tracer-Id: 7767583457593710560
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekfedgudeghecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvvefufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefhteffhfffheetudefvdefheffgfduleejheeiteeihfefffejveeljeevheeinecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeek
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

major() and minor() return unsigned int,
so the typecasts to uintmax_t are not needed.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/ioctl_ns.2 | 12 ++++++------
 man2/stat.2     |  6 +++---
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/man2/ioctl_ns.2 b/man2/ioctl_ns.2
index 95b39ccac..02c1dab11 100644
--- a/man2/ioctl_ns.2
+++ b/man2/ioctl_ns.2
@@ -293,9 +293,9 @@ main(int argc, char *argv[])
             exit(EXIT_FAILURE);
         }
         printf("Device/Inode of owning user namespace is: "
-               "[%jx,%jx] / %ju\en",
-               (uintmax_t) major(sb.st_dev),
-               (uintmax_t) minor(sb.st_dev),
+               "[%x,%x] / %ju\en",
+               major(sb.st_dev),
+               minor(sb.st_dev),
                (uintmax_t) sb.st_ino);
 
         close(userns_fd);
@@ -323,9 +323,9 @@ main(int argc, char *argv[])
             perror("fstat\-parentns");
             exit(EXIT_FAILURE);
         }
-        printf("Device/Inode of parent namespace is: [%jx,%jx] / %ju\en",
-               (uintmax_t) major(sb.st_dev),
-               (uintmax_t) minor(sb.st_dev),
+        printf("Device/Inode of parent namespace is: [%x,%x] / %ju\en",
+               major(sb.st_dev),
+               minor(sb.st_dev),
                (uintmax_t) sb.st_ino);
 
         close(parent_fd);
diff --git a/man2/stat.2 b/man2/stat.2
index 585a20484..bdd6d15e3 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -481,9 +481,9 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
 
-    printf("ID of containing device:  [%jx,%jx]\en",
-           (uintmax_t) major(sb.st_dev),
-           (uintmax_t) minor(sb.st_dev));
+    printf("ID of containing device:  [%x,%x]\en",
+           major(sb.st_dev),
+           minor(sb.st_dev));
 
     printf("File type:                ");
 
-- 
2.37.2

