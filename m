Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8CF3262603
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 05:57:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726005AbgIID5k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Sep 2020 23:57:40 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:15224 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726111AbgIID5j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Sep 2020 23:57:39 -0400
X-IronPort-AV: E=Sophos;i="5.76,408,1592841600"; 
   d="scan'208";a="99042514"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 09 Sep 2020 11:57:38 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id D980848990EE;
        Wed,  9 Sep 2020 11:57:33 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 9 Sep 2020 11:57:32 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH] msgop.2: Add restriction on ENOSYS error
Date:   Wed, 9 Sep 2020 11:57:42 +0800
Message-ID: <1599623862-6490-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: D980848990EE.AE056
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

When calling msgrcv with MSG_COPY flag on 3.8 or new kernel, it will
report EINVAL error even we have disabled CONFIG_CHECKPOINT_RESTORE.
It also needs to specify IPC_NOWAIT flag.

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man2/msgop.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/msgop.2 b/man2/msgop.2
index 373e53aa7..e559097a7 100644
--- a/man2/msgop.2
+++ b/man2/msgop.2
@@ -467,7 +467,9 @@ and the queue contains less than
 messages.
 .TP
 .BR ENOSYS " (since Linux 3.8)"
-.I MSG_COPY
+.B IPC_NOWAIT
+and
+.B MSG_COPY
 was specified in
 .IR msgflg ,
 and this kernel was configured without
-- 
2.23.0



