Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70EC9235147
	for <lists+linux-man@lfdr.de>; Sat,  1 Aug 2020 10:52:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728595AbgHAIwZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Aug 2020 04:52:25 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:3428 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725931AbgHAIwY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Aug 2020 04:52:24 -0400
X-IronPort-AV: E=Sophos;i="5.75,420,1589212800"; 
   d="scan'208";a="97330054"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 01 Aug 2020 16:52:23 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id EEBE949B1116
        for <linux-man@vger.kernel.org>; Sat,  1 Aug 2020 16:52:21 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Sat, 1 Aug 2020 16:52:24 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <linux-man@vger.kernel.org>
CC:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH] loop.4: Document LO_FLAGS_DIRECT_IO flag
Date:   Sat, 1 Aug 2020 16:52:24 +0800
Message-ID: <1596271944-1420-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: EEBE949B1116.AEEF1
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man4/loop.4 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man4/loop.4 b/man4/loop.4
index a3c59310d..2dcbac807 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -130,6 +130,9 @@ The loopback device will autodestruct on last close.
 .BR LO_FLAGS_PARTSCAN " (since Linux 3.2)"
 .\" commit e03c8dd14915fabc101aa495828d58598dc5af98
 Allow automatic partition scanning.
+.BR LO_FLAGS_DIRECT_IO " (since Linux 4.10)"
+.\" commit 2e5ab5f379f96a6207c45be40c357ebb1beb8ef3
+Use direct io mode to access backing file.
 .RE
 .TP
 .B LOOP_GET_STATUS
-- 
2.23.0



