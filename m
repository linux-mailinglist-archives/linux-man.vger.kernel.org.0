Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1F5A23D8E9
	for <lists+linux-man@lfdr.de>; Thu,  6 Aug 2020 11:49:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729099AbgHFJt2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Aug 2020 05:49:28 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:52876 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1729068AbgHFJsp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Aug 2020 05:48:45 -0400
X-IronPort-AV: E=Sophos;i="5.75,441,1589212800"; 
   d="scan'208";a="97707764"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 06 Aug 2020 17:48:26 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id A16D84CE34E2
        for <linux-man@vger.kernel.org>; Thu,  6 Aug 2020 17:48:25 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 6 Aug 2020 17:48:26 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <linux-man@vger.kernel.org>
CC:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH v2 2/3] loop.4: add some details about lo_flag
Date:   Thu, 6 Aug 2020 17:48:33 +0800
Message-ID: <1596707314-2361-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
References: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: A16D84CE34E2.AE107
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
index 1f8a31ac7..41abe0122 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -136,6 +136,9 @@ Allow automatic partition scanning.
 Use direct io mode to access backing file.
 .RE
 .TP
+.I The LOOP_SET_STATUS can not set the first and last flag because
+they are both set from kernel.
+.TP
 .B LOOP_GET_STATUS
 Get the status of the loop device.
 The (third)
-- 
2.23.0



