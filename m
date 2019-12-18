Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C895F123F6B
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2019 07:12:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725882AbfLRGM5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Dec 2019 01:12:57 -0500
Received: from mail.cn.fujitsu.com ([183.91.158.132]:12925 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725810AbfLRGM5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Dec 2019 01:12:57 -0500
X-IronPort-AV: E=Sophos;i="5.69,328,1571673600"; 
   d="scan'208";a="80452651"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 18 Dec 2019 14:12:54 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
        by cn.fujitsu.com (Postfix) with ESMTP id D27F64CE1C91;
        Wed, 18 Dec 2019 14:04:11 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 18 Dec 2019 14:12:54 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH] userfaultfd.2: add EPERM error
Date:   Wed, 18 Dec 2019 14:13:07 +0800
Message-ID: <1576649587-20008-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-yoursite-MailScanner-ID: D27F64CE1C91.AE069
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man2/userfaultfd.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 8d0a66ed9..2b432f043 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -440,6 +440,11 @@ reached.
 .TP
 .B ENOMEM
 Insufficient kernel memory was available.
+.TP
+.B EPERM
+Unprivileged user(without SYS_CAP_PTRACE capability) uses this call when
+set unprivileged_userfaultfd to 0. It was introduced since Linux 5.2.
+.\" cefdca0a86be517bc390fc4541e3674b8e7803b0
 .SH VERSIONS
 The
 .BR userfaultfd ()
-- 
2.18.0



