Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72B8926302D
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 17:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726293AbgIIPGS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 11:06:18 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:42043 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727856AbgIIMH6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 08:07:58 -0400
X-IronPort-AV: E=Sophos;i="5.76,409,1592841600"; 
   d="scan'208";a="99057226"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 09 Sep 2020 20:05:57 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id 1A04A48990E7;
        Wed,  9 Sep 2020 20:05:52 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 9 Sep 2020 20:05:54 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <wharms@bfs.de>,
        Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH v3 2/2] loop.4: Document LOOP_CONFIGURE ioctl
Date:   Wed, 9 Sep 2020 20:05:56 +0800
Message-ID: <1599653156-13115-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1599653156-13115-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
References: <5102fd63-a2e0-7bad-e8ef-e310acd65394@gmail>
 <1599653156-13115-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 1A04A48990E7.ACA22
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man4/loop.4 | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/man4/loop.4 b/man4/loop.4
index 5cc9a7e79..c935be749 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -186,6 +186,49 @@ This value must be a power of two in the range
 otherwise, an
 .B EINVAL
 error results.
+.TP
+.BR LOOP_CONFIGURE " (since Linux 5.8)"
+.\" commit 3448914e8cc550ba792d4ccc74471d1ca4293aae
+Setup and configure all loop device parameters in a single step using
+the (third)
+.BR ioctl (2)
+argument.
+This argument is a pointer to a
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
+can also be used to the following:
+.RS
+.IP * 2
+Set the correct block size immediately by setting
+.IR loop_config.block_size.
+.IP *
+Explicitly request direct I/O mode by setting
+.BR LO_FLAGS_DIRECT_IO
+in loop_config.info.lo_flags.
+.IP *
+Explicitly request read-only mode by setting
+.BR LO_FLAGS_READ_ONLY
+in
+.IR loop_config.info.lo_flags.
+.RE
 .PP
 Since Linux 2.6, there are two new
 .BR ioctl (2)
-- 
2.23.0



