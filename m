Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD5FB72884
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2019 08:52:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726130AbfGXGwj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Jul 2019 02:52:39 -0400
Received: from mail.cn.fujitsu.com ([183.91.158.132]:8114 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725909AbfGXGwi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Jul 2019 02:52:38 -0400
X-IronPort-AV: E=Sophos;i="5.64,302,1559491200"; 
   d="scan'208";a="72073464"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 24 Jul 2019 14:52:35 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
        by cn.fujitsu.com (Postfix) with ESMTP id D62A64B41EDC;
        Wed, 24 Jul 2019 14:52:32 +0800 (CST)
Received: from localhost.localdomain (10.167.215.46) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 24 Jul 2019 14:52:34 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <gorcunov@gmail.com>,
        <john.stultz@linaro.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH v2] prctl.2: correct the wrong message about PR_SET_TIMERSLACK
Date:   Wed, 24 Jul 2019 14:52:23 +0800
Message-ID: <1563951143-2300-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.215.46]
X-yoursite-MailScanner-ID: D62A64B41EDC.A0247
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In kernel/sys.c, arg2 is an unsigned long value and it will never
less than 0. Also, since kernel commit id da8b44d5a9f8, timer_slack_ns 
and default timer_slack_ns have been converted into u64, the return 
value of PR_GET_TIMERSLACK has been limited under ULONG_MAX.

The timer slack value also can be inherited by a child created via
fork(2).

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man2/prctl.2 | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 52fd0f3f3..348a39f6a 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1239,14 +1239,15 @@ this operation expects a user-space buffer of 8 (not 4) bytes on these ABIs.
 Each thread has two associated timer slack values:
 a "default" value, and a "current" value.
 This operation sets the "current" timer slack value for the calling thread.
+.I arg2
+is an unsigned long value, then maximum "current" value is ULONG_MAX and
+the minimum "current" value is 1.
 If the nanosecond value supplied in
 .IR arg2
 is greater than zero, then the "current" value is set to this value.
 If
 .I arg2
-is less than or equal to zero,
-.\" It seems that it's not possible to set the timer slack to zero;
-.\" The minimum value is 1? Seems a little strange.
+is equal to zero,
 the "current" timer slack is reset to the
 thread's "default" timer slack value.
 .IP
@@ -1291,7 +1292,9 @@ The timer slack values of
 .IR init
 (PID 1), the ancestor of all processes,
 are 50,000 nanoseconds (50 microseconds).
-The timer slack values are preserved across
+The timer slack value is inherited by a child created via
+.BR fork(2),
+and is preserved across
 .BR execve (2).
 .IP
 Since Linux 4.6, the "current" timer slack value of any process
-- 
2.18.1



