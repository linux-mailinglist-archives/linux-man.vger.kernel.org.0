Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3EC8239D83
	for <lists+linux-man@lfdr.de>; Mon,  3 Aug 2020 04:38:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726276AbgHCCiV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 2 Aug 2020 22:38:21 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:34481 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725820AbgHCCiU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 2 Aug 2020 22:38:20 -0400
X-IronPort-AV: E=Sophos;i="5.75,428,1589212800"; 
   d="scan'208";a="97478248"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 03 Aug 2020 10:38:11 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id 8D8184CE5449
        for <linux-man@vger.kernel.org>; Mon,  3 Aug 2020 10:38:09 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Mon, 3 Aug 2020 10:38:12 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <linux-man@vger.kernel.org>
CC:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH] loop.4: Document loop_configure ioctl
Date:   Mon, 3 Aug 2020 10:38:13 +0800
Message-ID: <1596422293-3122-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 8D8184CE5449.AE5DF
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man4/loop.4 | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/man4/loop.4 b/man4/loop.4
index 2dcbac807..abf722a25 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -177,6 +177,41 @@ This value must be a power of two in the range
 otherwise, an
 .B EINVAL
 error results.
+.TP
+.BR LOOP_CONFIGURE " (since Linux 5.8)"
+.\" commit 3448914e8cc550ba792d4ccc74471d1ca4293aae
+Setup and configure all loop device parameters using the (third)
+.BR ioctl (2)
+argument at once.
+This argument is a pointer to
+.I loop_config
+structure, defined in
+.I <linux/loop.h>
+as:
+.IP
+.in +4n
+.EX
+struct loop_config {
+    __u32               fd;
+    __u32               block_size;
+    struct loop_info64  info;
+    __u64               __reserved[8];
+};
+.EE
+.in
+.IP
+In addition to doing what
+.BR LOOP_SET_STATUS
+can do,
+.BR LOOP_CONFIGURE
+can also be used to set the correct block size immediately
+by setting loop_config.block_size. Explicitly request
+direct I/O mode by setting
+.BR LO_FLAGS_DIRECT_IO
+in loop_config.info.lo_flags. Explicitly request read-only
+mode by setting
+.BR LO_FLAGS_READ_ONLY
+in loop_config.info.lo_flags.
 .PP
 Since Linux 2.6, there are two new
 .BR ioctl (2)
-- 
2.23.0



