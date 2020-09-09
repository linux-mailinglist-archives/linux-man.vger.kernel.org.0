Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4338526301F
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 17:04:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728015AbgIIMTg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 08:19:36 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:21107 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1729986AbgIIMSp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 08:18:45 -0400
X-IronPort-AV: E=Sophos;i="5.76,409,1592841600"; 
   d="scan'208";a="99057225"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 09 Sep 2020 20:05:57 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id 1846048990DE;
        Wed,  9 Sep 2020 20:05:50 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 9 Sep 2020 20:05:51 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <wharms@bfs.de>,
        Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH v3 1/2] loop.4: add some details about lo_flags
Date:   Wed, 9 Sep 2020 20:05:55 +0800
Message-ID: <1599653156-13115-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <5102fd63-a2e0-7bad-e8ef-e310acd65394@gmail>
References: <5102fd63-a2e0-7bad-e8ef-e310acd65394@gmail>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 1846048990DE.AC40B
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man4/loop.4 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man4/loop.4 b/man4/loop.4
index f4cf48043..5cc9a7e79 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -136,6 +136,14 @@ Allow automatic partition scanning.
 Use direct I/O mode to access the backing file.
 .RE
 .TP
+The
+.BR LOOP_SET_STATUS
+can neither set the
+.BR LO_FLAGS_READ_ONLY
+nor
+.BR LO_FLAGS_DIRECT_IO
+lo_flags because they are exclusively set from kernel.
+.TP
 .B LOOP_GET_STATUS
 Get the status of the loop device.
 The (third)
-- 
2.23.0



