Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 50A6BE4332
	for <lists+linux-man@lfdr.de>; Fri, 25 Oct 2019 08:06:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394102AbfJYGGV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Oct 2019 02:06:21 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:45925 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2393713AbfJYGGV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Oct 2019 02:06:21 -0400
X-IronPort-AV: E=Sophos;i="5.68,227,1569254400"; 
   d="scan'208";a="77459186"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 25 Oct 2019 14:06:18 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
        by cn.fujitsu.com (Postfix) with ESMTP id 8A5F24CE1510;
        Fri, 25 Oct 2019 13:58:21 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 25 Oct 2019 14:06:15 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>, <jack@suse.cz>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH v2] quotactl.2: Add some details about Q_QUOTAON
Date:   Fri, 25 Oct 2019 14:06:25 +0800
Message-ID: <1571983585-8224-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <20191024095558.GL31271@quack2.suse.cz>
References: <20191024095558.GL31271@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-yoursite-MailScanner-ID: 8A5F24CE1510.AC98A
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

For Q_QUOTAON, on old kernel we can use quotacheck -ug to
generate quota files. But in current kernel, we can also hide them
in system inodes and indicate them by using "quota" or project feature.

For user or group quota, we can do as below(etc ext4):
mkfs.ext4 -F -o quota /dev/sda5
mount /dev/sda5 /mnt
quotactl(QCMD(Q_QUOTAON, USRQUOTA), /dev/sda5, QFMT_VFS_V0, NULL);

For project quota, we can do as below(etc ext4)
mkfs.ext4 -F -o quota,project /dev/sda5
mount /dev/sda5 /mnt
quotactl(QCMD(Q_QUOTAON, PRJQUOTA), /dev/sda5, QFMT_VFS_V0, NULL);

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man2/quotactl.2 | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/man2/quotactl.2 b/man2/quotactl.2
index e0d40a2be..215ec6252 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -117,7 +117,15 @@ argument points to the pathname of a file containing the quotas for
 the filesystem.
 The quota file must exist; it is normally created with the
 .BR quotacheck (8)
-program.
+program. Quota information can be also stored in hidden system inodes
+for ext4, xfs and other filesystems if the filesystem is configured so.
+In this case, there are no visible quota files and there is no need to
+use
+.BR quotacheck (8).
+Quota information is always kept consistent by the filesystem and Q_QUOTAON
+quotactl only enables enforcement of quota limits. The presence of hidden
+system inodes with quota information is indicated by DQF_SYS_FILE flag in
+Q_GETINFO output.
 This operation requires privilege
 .RB ( CAP_SYS_ADMIN ).
 .TP 8
@@ -638,7 +646,8 @@ The
 .I id
 argument is ignored.
 .TP
-.B Q_XQUOTARM
+.B Q_XQUOTARM() " (since Linux 3.16)"
+.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc
 Free the disk space taken by disk quotas. The
 .I addr
 argument should be a pointer to an
-- 
2.18.0



