Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8F84C10F7A3
	for <lists+linux-man@lfdr.de>; Tue,  3 Dec 2019 07:05:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726955AbfLCGFx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Dec 2019 01:05:53 -0500
Received: from mail.cn.fujitsu.com ([183.91.158.132]:47454 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726521AbfLCGFw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Dec 2019 01:05:52 -0500
X-IronPort-AV: E=Sophos;i="5.69,272,1571673600"; 
   d="scan'208";a="79493438"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 03 Dec 2019 14:05:51 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
        by cn.fujitsu.com (Postfix) with ESMTP id 086734CE1C09;
        Tue,  3 Dec 2019 13:57:23 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 3 Dec 2019 14:05:50 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH] quotactl.2: add EINVAL situation of Q_XQUOTARM call
Date:   Tue, 3 Dec 2019 14:05:53 +0800
Message-ID: <1575353153-18936-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-yoursite-MailScanner-ID: 086734CE1C09.A9EBB
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Since kernel commit 3dd4d40b4208("xfs: Sanity check flags
of Q_XQUOTARM call"), it has added flags check. If it is
not usr,grp,prj quota type, it will report EINVAL.

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man2/quotactl.2 | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/man2/quotactl.2 b/man2/quotactl.2
index 34d3cfca8..d636818bd 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -666,8 +666,10 @@ value containing flags (the same as in
 .I d_flags
 field of
 .I fs_disk_quota
-structure) which identify what types of quota should be removed
-(note that the quota type passed in the
+structure, check flags since Linux 5.5)
+.\" 3dd4d40b420846dd35869ccc8f8627feef2cff32
+which identify what types of quota
+should be removed(note that the quota type passed in the
 .I cmd
 argument is ignored, but should remain valid in order to pass preliminary
 quotactl syscall handler checks).
@@ -736,6 +738,12 @@ is
 .BR Q_QUOTAON ,
 but the specified quota file is corrupted.
 .TP
+.B EINVAL
+.I cmd
+is
+.BR Q_XQUOTARM ,
+but the addr does not point to valid quota types.
+.TP
 .B ENOENT
 The file specified by
 .I special
-- 
2.18.0



