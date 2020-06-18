Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 160471FF522
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 16:46:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730886AbgFROpH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 10:45:07 -0400
Received: from gateway24.websitewelcome.com ([192.185.51.209]:15546 "EHLO
        gateway24.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1731083AbgFROpG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Jun 2020 10:45:06 -0400
X-Greylist: delayed 1306 seconds by postgrey-1.27 at vger.kernel.org; Thu, 18 Jun 2020 10:45:05 EDT
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
        by gateway24.websitewelcome.com (Postfix) with ESMTP id 88F7216718
        for <linux-man@vger.kernel.org>; Thu, 18 Jun 2020 09:23:16 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id lvRkjB9w3hmVTlvRkj3ffw; Thu, 18 Jun 2020 09:23:16 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:49346 helo=comp.lan)
        by gator3278.hostgator.com with esmtpa (Exim 4.93)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1jlvRj-001mk4-GL; Thu, 18 Jun 2020 09:23:15 -0500
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] fread.3: Add example
Date:   Thu, 18 Jun 2020 16:22:32 +0200
Message-Id: <20200618142232.31022-1-arkadiusz@drabczyk.org>
X-Mailer: git-send-email 2.9.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1jlvRj-001mk4-GL
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (comp.lan) [89.69.237.178]:49346
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
---
 man3/fread.3 | 55 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/man3/fread.3 b/man3/fread.3
index 2dd7be9..4af3850 100644
--- a/man3/fread.3
+++ b/man3/fread.3
@@ -113,6 +113,61 @@ T}	Thread safety	MT-Safe
 .TE
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C89.
+.SH EXAMPLES
+The program below demonstrates the use of
+.BR fread ()
+by parsing /bin/sh ELF executable in binary mode and printing its
+magic and class:
+.PP
+.in +4n
+.EX
+$ \fB./a.out\fP
+./a.out
+ELF magic: 0x7f454c46
+Class: 0x02
+.EE
+.in
+.SS Program source
+\&
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+
+int
+main(void)
+{
+    FILE *fp = fopen("/bin/sh", "rb");
+    if (!fp) {
+        perror("fopen");
+        return EXIT_FAILURE;
+    }
+
+    unsigned char buffer[4];
+
+    size_t ret =
+        fread(buffer, sizeof(buffer) / sizeof(*buffer), sizeof(*buffer),
+              fp);
+    if (ret != sizeof(*buffer)) {
+        fprintf(stderr, "fread() failed: %zu\en", ret);
+        exit(EXIT_FAILURE);
+    }
+
+    printf("ELF magic: %#04x%02x%02x%02x\en", buffer[0], buffer[1],
+           buffer[2], buffer[3]);
+
+    ret = fread(buffer, 1, 1, fp);
+    if (ret != 1) {
+        fprintf(stderr, "fread() failed: %zu\en", ret);
+        exit(EXIT_FAILURE);
+    }
+
+    printf("Class: %#04x\en", buffer[0]);
+
+    fclose(fp);
+
+    exit(EXIT_SUCCESS);
+}
+.EE
 .SH SEE ALSO
 .BR read (2),
 .BR write (2),
-- 
2.9.0

