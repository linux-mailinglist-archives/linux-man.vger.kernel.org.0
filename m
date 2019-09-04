Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EEDA1A7D5F
	for <lists+linux-man@lfdr.de>; Wed,  4 Sep 2019 10:10:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729251AbfIDIKv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Sep 2019 04:10:51 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:6579 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727787AbfIDIKu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Sep 2019 04:10:50 -0400
X-IronPort-AV: E=Sophos;i="5.64,465,1559491200"; 
   d="scan'208";a="74817160"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 04 Sep 2019 16:10:48 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
        by cn.fujitsu.com (Postfix) with ESMTP id 6802E4CE14E4;
        Wed,  4 Sep 2019 16:10:45 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 4 Sep 2019 16:10:43 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH] move_pages.2: mark deprecated E2BIG
Date:   Wed, 4 Sep 2019 16:10:38 +0800
Message-ID: <1567584638-3133-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-yoursite-MailScanner-ID: 6802E4CE14E4.AD6D1
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

E2BIG was removed in 2.6.29, we should mark it as
deprecated.

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man2/move_pages.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/move_pages.2 b/man2/move_pages.2
index dcdedf28a..3370e9e00 100644
--- a/man2/move_pages.2
+++ b/man2/move_pages.2
@@ -168,7 +168,8 @@ to indicate the error.
 .SH ERRORS
 .TP
 .B E2BIG
-Too many pages to move.
+Too many pages to move. It was deprecated since 2.6.29.
+.\" 3140a2273009c01c27d316f35ab76a37e105fdd8
 .TP
 .B EACCES
 .\" FIXME Clarify "current cpuset" in the description of the EACCES error.
-- 
2.18.1



