Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2699BDFC29
	for <lists+linux-man@lfdr.de>; Tue, 22 Oct 2019 05:20:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730460AbfJVDU0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Oct 2019 23:20:26 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:64158 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1730156AbfJVDU0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Oct 2019 23:20:26 -0400
X-IronPort-AV: E=Sophos;i="5.67,325,1566835200"; 
   d="scan'208";a="77301449"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 22 Oct 2019 11:20:23 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
        by cn.fujitsu.com (Postfix) with ESMTP id 013BB4B6EC87;
        Tue, 22 Oct 2019 11:12:29 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 22 Oct 2019 11:20:23 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH] copy_file_range.2: tfix
Date:   Tue, 22 Oct 2019 11:20:23 +0800
Message-ID: <1571714423-12086-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-yoursite-MailScanner-ID: 013BB4B6EC87.AD26D
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man2/copy_file_range.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
index c6ae11a8f..9ed0cc31a 100644
--- a/man2/copy_file_range.2
+++ b/man2/copy_file_range.2
@@ -177,7 +177,7 @@ specified data types.
 .I fd_out
 refers to an immutable file.
 .TP
-.B TXTBSY
+.B ETXTBSY
 Either
 .I fd_in
 or
-- 
2.18.1



