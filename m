Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EFFA5B958F
	for <lists+linux-man@lfdr.de>; Thu, 15 Sep 2022 09:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229947AbiIOHmC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Sep 2022 03:42:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229783AbiIOHmB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Sep 2022 03:42:01 -0400
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D2948D3E4
        for <linux-man@vger.kernel.org>; Thu, 15 Sep 2022 00:42:00 -0700 (PDT)
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.53])
        by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4MSpv60kR7zNmJq
        for <linux-man@vger.kernel.org>; Thu, 15 Sep 2022 15:37:22 +0800 (CST)
Received: from huawei.com (10.67.175.31) by dggpemm500024.china.huawei.com
 (7.185.36.203) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Thu, 15 Sep
 2022 15:41:43 +0800
From:   GUO Zihua <guozihua@huawei.com>
To:     <alx.manpages@gmail.com>, <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] semop.2: Fix truncated comment on sempid
Date:   Thu, 15 Sep 2022 15:37:58 +0800
Message-ID: <20220915073758.17938-1-guozihua@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.67.175.31]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The comment is truncated for sempid, and this patch fixes this issue.

Signed-off-by: GUO Zihua <guozihua@huawei.com>
---
 man2/semop.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/semop.2 b/man2/semop.2
index 7a301f453c43..054f2b99363c 100644
--- a/man2/semop.2
+++ b/man2/semop.2
@@ -45,7 +45,7 @@ has the following associated values:
 unsigned short  semval;   /* semaphore value */
 unsigned short  semzcnt;  /* # waiting for zero */
 unsigned short  semncnt;  /* # waiting for increase */
-pid_t           sempid;   /* PID of process that last
+pid_t           sempid;   /* PID of process that last modified the semaphore */
 .EE
 .in
 .PP
-- 
2.17.1

