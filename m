Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4FC726C8F0
	for <lists+linux-man@lfdr.de>; Thu, 18 Jul 2019 07:57:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726040AbfGRF5T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jul 2019 01:57:19 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:42777 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726000AbfGRF5T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Jul 2019 01:57:19 -0400
X-IronPort-AV: E=Sophos;i="5.64,276,1559491200"; 
   d="scan'208";a="71696127"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 18 Jul 2019 13:57:15 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
        by cn.fujitsu.com (Postfix) with ESMTP id E5BC34CDE662;
        Thu, 18 Jul 2019 13:57:15 +0800 (CST)
Received: from localhost.localdomain (10.167.215.46) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 18 Jul 2019 13:57:20 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH] prctl.2: correct the wrong message about PR_SET_TIMERSLACK
Date:   Thu, 18 Jul 2019 13:57:09 +0800
Message-ID: <1563429429-2322-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.215.46]
X-yoursite-MailScanner-ID: E5BC34CDE662.AF083
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

If we pass "-1" to arg2, PR_SET_TIMERSLACK will set ULONG_MAX to timer slack_ns
instead of using default value. Also, after kernel commit da8b44d5a9f8 ("timer:
convert timer_slack_ns from unsigned long to u64"), timer_slack_ns and default 
timer_slack_ns have been converted into u64, the return value of PR_GET_TIMERSLACK
has been limited under ULONG_MAX.

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man2/prctl.2 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 52fd0f3f3..de6a34c68 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1239,12 +1239,15 @@ this operation expects a user-space buffer of 8 (not 4) bytes on these ABIs.
 Each thread has two associated timer slack values:
 a "default" value, and a "current" value.
 This operation sets the "current" timer slack value for the calling thread.
+.IR arg2
+is an unsigned long value.
 If the nanosecond value supplied in
 .IR arg2
 is greater than zero, then the "current" value is set to this value.
+The maximum "current" value is ULONG_MAX.
 If
 .I arg2
-is less than or equal to zero,
+is equal to zero,
 .\" It seems that it's not possible to set the timer slack to zero;
 .\" The minimum value is 1? Seems a little strange.
 the "current" timer slack is reset to the
@@ -1303,6 +1306,7 @@ See
 .BR PR_GET_TIMERSLACK " (since Linux 2.6.28)"
 Return (as the function result)
 the "current" timer slack value of the calling thread.
+The maximum value is ULONG_MAX.
 .TP
 .BR PR_SET_TIMING " (since Linux 2.6.0)"
 .\" Precisely: Linux 2.6.0-test4
-- 
2.18.1



