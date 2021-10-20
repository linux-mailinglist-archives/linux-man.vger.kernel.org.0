Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0979F4346FD
	for <lists+linux-man@lfdr.de>; Wed, 20 Oct 2021 10:33:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbhJTIfh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Oct 2021 04:35:37 -0400
Received: from mail1.bemta25.messagelabs.com ([195.245.230.1]:15128 "EHLO
        mail1.bemta25.messagelabs.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229503AbhJTIfg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Oct 2021 04:35:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
        s=170520fj; t=1634718802; i=@fujitsu.com;
        bh=GGROfLux0qXReY9NjWVznHySY1qgDzAfRgDHMibvRw0=;
        h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type;
        b=lqIyc8qbmo6Pej0p0j7kegc46WtsYUsYj9xjrHIzzuPMF7G3iXBEGhijbSj9/Dbds
         ksre2QCfXvULQQnhfPLocq7IbnGvhvW094GJaK2rfzK8DUJCIO/JxAILZaBPiNra3p
         aoMs1Y+OB3FdMrcEtVbYScYOvJGPpi98xm9ULfKpduAlatDZGB8pJvy51BDUBElgap
         RbxJXBwxB00LGogUifCjrv55euZv2aTLredhjLNeIZCBSK9WaquZDpVrSJlSxXE/LC
         EzDh4sDRqmEyQF29dqLh4Yr8OqiotHYb8aLJhwNXg1bVT72pIJcMXqKTYgc+5YQGWx
         2pErFydt3KwaA==
Received: from [100.112.192.69] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
        by server-1.bemta.az-a.eu-west-1.aws.symcld.net id 60/CF-23860-254DF616; Wed, 20 Oct 2021 08:33:22 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEIsWRWlGSWpSXmKPExsViZ8ORqBt4JT/
  R4MBTHYs162ewOzB6fN4kF8AYxZqZl5RfkcCacWN+A0vBI9aKXTvbmRoY37N0MXJxCAlcYZSY
  u/MUE4RzgEni5ZUjUJk9jBIvFk1k7mLk5GAT0JR41rkAzBYRkJdYs2cBI4jNLKAusXzSLyYQW
  1jAQeLc86tgNouAqsTE/9PBangFPCTatr8Ei0sIKEhMefieGSIuKHFy5hMWiDkSEgdfvGCGqF
  GUuNTxjRHCrpCYNasNqldN4uq5TcwTGPlnIWmfhaR9ASPTKkaLpKLM9IyS3MTMHF1DAwNdQ0M
  jXUNLU11DU0O9xCrdRL3UUt3y1OISXSC3vFivuDI3OSdFLy+1ZBMjMCBTCg5P38HY/+aD3iFG
  SQ4mJVFeaZf8RCG+pPyUyozE4oz4otKc1OJDjDIcHEoSvJsuAOUEi1LTUyvSMnOA0QGTluDgU
  RLhfXgJKM1bXJCYW5yZDpE6xWjM8e7n4kXMHM2Tlm9nFmLJy89LlRLn1b0MVCoAUppRmgc3CB
  a1lxhlpYR5GRkYGIR4ClKLcjNLUOVfMYpzMCoJ8xaDTOHJzCuB2/cK6BQmoFOuOueAnFKSiJC
  SamASVebJqFuU42Ewm8lBpzum4mZ8L8fzTRkntVZLbb3V6Xjr/cz7XMsnujofvRk6me/Tcd/F
  8VJzYm5skmqZ8kWMf/7WuizBm0Kb5bWPuTh3puR1hzYe7bZMK/8tFds2z8Ri6Ymr5/JMGJ1SF
  0b+3dk16+BP2fDlcrnudzWFszbZXTTOSbDu+9V/gfX7SVGfGJbrre3p13hlpHUnFMz0uClw0t
  qjfNUn7xdpV/KmrGHcwHBJ233LoaKuHNtfXBKWNt5F1kXHdLKuGf75avIj/ah55Ubrcz9/Hlh
  3OLXlffrbJ1xy2xhN+mt/l+hsqeu+uPmMXnqZ0dSsP0Lrv4buyeiYfeTW5nvmrVe7964PyFVi
  Kc5INNRiLipOBACbeGJBVQMAAA==
X-Env-Sender: xuyang2018.jy@fujitsu.com
X-Msg-Ref: server-11.tower-265.messagelabs.com!1634718801!128325!1
X-Originating-IP: [62.60.8.97]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 13444 invoked from network); 20 Oct 2021 08:33:21 -0000
Received: from unknown (HELO n03ukasimr01.n03.fujitsu.local) (62.60.8.97)
  by server-11.tower-265.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 20 Oct 2021 08:33:21 -0000
Received: from n03ukasimr01.n03.fujitsu.local (localhost [127.0.0.1])
        by n03ukasimr01.n03.fujitsu.local (Postfix) with ESMTP id 3C17710023B
        for <linux-man@vger.kernel.org>; Wed, 20 Oct 2021 09:33:21 +0100 (BST)
Received: from R01UKEXCASM126.r01.fujitsu.local (unknown [10.183.43.178])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by n03ukasimr01.n03.fujitsu.local (Postfix) with ESMTPS id 30B8710022F
        for <linux-man@vger.kernel.org>; Wed, 20 Oct 2021 09:33:21 +0100 (BST)
Received: from localhost.localdomain (10.167.220.84) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.24; Wed, 20 Oct 2021 09:33:12 +0100
From:   Yang Xu <xuyang2018.jy@fujitsu.com>
To:     <linux-man@vger.kernel.org>
CC:     Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH] quotactl.2: Use correct limits for vfsv1 format
Date:   Wed, 20 Oct 2021 16:33:14 +0800
Message-ID: <1634718794-2120-1-git-send-email-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD07.g08.fujitsu.local (10.167.33.80) To
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178)
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

According to kernel code and the following patch, the maximum quota limit setting
should be 2^63 -1 instead of 2^64.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=7e08da5

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/quotactl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/quotactl.2 b/man2/quotactl.2
index 46f77a8b1..5d2a673bd 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -109,7 +109,7 @@ and quota limits up to 2^42 bytes and 2^32 inodes.
 .TP
 .BR QFMT_VFS_V1
 A quota format that can handle 32-bit UIDs and GIDs
-and quota limits of 2^64 bytes and 2^64 inodes.
+and quota limits of 2^63 - 1 bytes and 2^63 - 1 inodes.
 .RE
 .IP
 The
-- 
2.23.0

