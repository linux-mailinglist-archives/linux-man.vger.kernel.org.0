Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 194F011C656
	for <lists+linux-man@lfdr.de>; Thu, 12 Dec 2019 08:23:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728015AbfLLHXk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Dec 2019 02:23:40 -0500
Received: from mail.cn.fujitsu.com ([183.91.158.132]:18506 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727994AbfLLHXk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Dec 2019 02:23:40 -0500
X-IronPort-AV: E=Sophos;i="5.69,304,1571673600"; 
   d="scan'208";a="80101010"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 12 Dec 2019 15:23:37 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
        by cn.fujitsu.com (Postfix) with ESMTP id B0CAB4CE26D7;
        Thu, 12 Dec 2019 15:14:58 +0800 (CST)
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 12 Dec 2019 15:23:34 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH] capget.2: Correct info about EPERM error
Date:   Thu, 12 Dec 2019 15:23:55 +0800
Message-ID: <1576135435-907-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-yoursite-MailScanner-ID: B0CAB4CE26D7.A1193
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: xuyang2018.jy@cn.fujitsu.com
X-Spam-Status: No
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I see kernel code security/commoncap.c cap_capset function, it only
verifies the new_Effective is a subset of the new_Permitted. It doesn't
verify whether the new_Inheritable is a subset of the new_Permitted.

I found it when I cleanup ltp capset02 test code.

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man2/capget.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man2/capget.2 b/man2/capget.2
index 94d38d877..6cad3d5d8 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -195,8 +195,7 @@ One of the arguments was invalid.
 .TP
 .B EPERM
 An attempt was made to add a capability to the Permitted set, or to set
-a capability in the Effective or Inheritable sets that is not in the
-Permitted set.
+a capability in the Effective sets that is not in the Permitted set.
 .TP
 .B EPERM
 The caller attempted to use
-- 
2.18.0



