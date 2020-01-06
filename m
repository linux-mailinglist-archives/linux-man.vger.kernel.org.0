Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C9C55130E15
	for <lists+linux-man@lfdr.de>; Mon,  6 Jan 2020 08:42:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725887AbgAFHmf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jan 2020 02:42:35 -0500
Received: from mail.cn.fujitsu.com ([183.91.158.132]:52447 "EHLO
        heian.cn.fujitsu.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725446AbgAFHmf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jan 2020 02:42:35 -0500
X-IronPort-AV: E=Sophos;i="5.69,401,1571673600"; 
   d="scan'208";a="81361765"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 06 Jan 2020 15:42:34 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
        by cn.fujitsu.com (Postfix) with ESMTP id BD48E4B3ED8D;
        Mon,  6 Jan 2020 15:33:36 +0800 (CST)
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.83) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Mon, 6 Jan 2020 15:42:35 +0800
Received: from localhost.localdomain (10.167.220.84) by
 G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Mon, 6 Jan 2020 15:42:32 +0800
From:   Yang Xu <xuyang2018.jy@cn.fujitsu.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Subject: [PATCH v1 2/2] loop.4: Document LOOP_SET_BLOCK_SIZE
Date:   Mon, 6 Jan 2020 15:42:23 +0800
Message-ID: <1578296543-4195-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1578296543-4195-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
References: <1578296543-4195-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-yoursite-MailScanner-ID: BD48E4B3ED8D.A274F
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
index afb1d05c5..9fd2b3eb4 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -159,6 +159,13 @@ Set DIRECT IO mode on the loop device. So it can be used to open backing
 file. The (third)
 .BR ioctl(2)
 argument is an unsigned long value. non-zero represents direct IO mode.
+.TP
+.BR LOOP_SET_BLOCK_SIZE " (since Linux 4.14)"
+.\" commit 89e4fdecb51cf5535867026274bc97de9480ade5
+Set the block size of the loop device. The (third)
+.BR ioctl(2)
+argument is an unsigned long value. This value must be 2 to the power of N
+and in range [512,pagesize]. Otherwise, it will get EINVAL error.
 .PP
 Since Linux 2.6, there are two new
 .BR ioctl (2)
-- 
2.18.0



