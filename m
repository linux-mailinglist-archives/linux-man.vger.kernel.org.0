Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C616D58858B
	for <lists+linux-man@lfdr.de>; Wed,  3 Aug 2022 03:51:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234937AbiHCBvF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 21:51:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234719AbiHCBvE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 21:51:04 -0400
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A38732D8D
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 18:51:01 -0700 (PDT)
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.53])
        by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4LyF9p0Mwcz1M8Yn;
        Wed,  3 Aug 2022 09:47:58 +0800 (CST)
Received: from dggpemm100024.china.huawei.com (7.185.36.234) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Wed, 3 Aug 2022 09:50:59 +0800
Received: from huawei.com (10.67.175.31) by dggpemm100024.china.huawei.com
 (7.185.36.234) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Wed, 3 Aug
 2022 09:50:59 +0800
From:   GUO Zihua <guozihua@huawei.com>
To:     <linux-man@vger.kernel.org>
CC:     <alx.manpages@gmail.com>, <mtk.manpages@gmail.com>,
        <Jason@zx2c4.com>, <ebiggers@kernel.org>
Subject: [patch v2] random.4: Update description about O_NONBLOCK flag
Date:   Wed, 3 Aug 2022 09:48:08 +0800
Message-ID: <20220803014808.30518-1-guozihua@huawei.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.67.175.31]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm100024.china.huawei.com (7.185.36.234)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The O_NONBLOCK flag has been removed since Linux 5.6 and this patch
states this change in man page.

The commit that introduce this change in the Linux kernel is
30c08efec888 ("random: make /dev/random be almost like /dev/urandom")

Signed-off-by: GUO Zihua <guozihua@huawei.com>
---

v2:
  Fix formating issue.

---
 man4/random.4 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man4/random.4 b/man4/random.4
index bea860e7f0d7..85fe97556d46 100644
--- a/man4/random.4
+++ b/man4/random.4
@@ -68,7 +68,12 @@ high quality randomness, and can afford indeterminate delays.
 .PP
 When the entropy pool is empty, reads from \fI/dev/random\fP will block
 until additional environmental noise is gathered.
-If
+Since Linux 5.6, the
+.B O_NONBLOCK
+flag is removed as
+.I /dev/random
+will no longer block except during early boot process.
+In eariler versions, if
 .BR open (2)
 is called for
 .I /dev/random
-- 
2.36.0

