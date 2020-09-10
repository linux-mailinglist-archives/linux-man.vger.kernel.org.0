Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6BB9263A1D
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 04:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729860AbgIJCUs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 22:20:48 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:25077 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1730131AbgIJCTl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 22:19:41 -0400
X-IronPort-AV: E=Sophos;i="5.76,411,1592841600"; 
   d="scan'208";a="99076698"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 10 Sep 2020 10:19:39 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id 3853948990D3;
        Thu, 10 Sep 2020 10:19:34 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 10 Sep 2020 10:19:33 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <wharms@bfs.de>,
        Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH v4] loop.4: add some details about lo_flags
Date:   Thu, 10 Sep 2020 10:19:44 +0800
Message-ID: <1599704384-24697-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 3853948990D3.ABC4F
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man4/loop.4 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man4/loop.4 b/man4/loop.4
index fc41668b5..928fa8c2c 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -135,6 +135,13 @@ Allow automatic partition scanning.
 .\" commit 2e5ab5f379f96a6207c45be40c357ebb1beb8ef3
 Use direct I/O mode to access the backing file.
 .RE
+.IP
+The only lo_flags that can be modified by using
+.BR LOOP_SET_STATUS
+are
+.BR LO_FLAGS_AUTOCLEAR
+and
+.BR LO_FLAGS_PARTSCAN .
 .TP
 .B LOOP_GET_STATUS
 Get the status of the loop device.
-- 
2.23.0



