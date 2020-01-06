Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 20174130E14
	for <lists+linux-man@lfdr.de>; Mon,  6 Jan 2020 08:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725817AbgAFHma (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jan 2020 02:42:30 -0500
Received: from mail.cn.fujitsu.com ([183.91.158.132]:52447 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725446AbgAFHma (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jan 2020 02:42:30 -0500
X-IronPort-AV: E=Sophos;i="5.69,401,1571673600"; 
   d="scan'208";a="81361754"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 06 Jan 2020 15:42:28 +0800
Received: from G08CNEXMBPEKD05.g08.fujitsu.local (unknown [10.167.33.204])
        by cn.fujitsu.com (Postfix) with ESMTP id D74AB49E9326;
        Mon,  6 Jan 2020 15:33:29 +0800 (CST)
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.83) by
 G08CNEXMBPEKD05.g08.fujitsu.local (10.167.33.204) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Mon, 6 Jan 2020 15:42:29 +0800
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Mon, 6 Jan 2020 15:42:26 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH v1 1/2] loop.4: Document LOOP_SET_DIRECT_IO
Date:   Mon, 6 Jan 2020 15:42:22 +0800
Message-ID: <1578296543-4195-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-yoursite-MailScanner-ID: D74AB49E9326.AE2AB
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
index a56586fe6..afb1d05c5 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -152,6 +152,13 @@ Resize a live loop device.
 One can change the size of the underlying backing store and then use this
 operation so that the loop driver learns about the new size.
 This operation takes no argument.
+.TP
+.BR LOOP_SET_DIRECT_IO " (since Linux 4.10)"
+.\" commit ab1cb278bc7027663adbfb0b81404f8398437e11
+Set DIRECT IO mode on the loop device. So it can be used to open backing
+file. The (third)
+.BR ioctl(2)
+argument is an unsigned long value. non-zero represents direct IO mode.
 .PP
 Since Linux 2.6, there are two new
 .BR ioctl (2)
-- 
2.18.0



