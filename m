Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3D9E454277
	for <lists+linux-man@lfdr.de>; Wed, 17 Nov 2021 09:15:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234430AbhKQISy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Nov 2021 03:18:54 -0500
Received: from mail1.bemta25.messagelabs.com ([195.245.230.65]:59803 "EHLO
        mail1.bemta25.messagelabs.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229846AbhKQISy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Nov 2021 03:18:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
        s=170520fj; t=1637136955; i=@fujitsu.com;
        bh=xzLue07Lqart7rsPzrr6WKOlgj7w6pzccNi1uEw75+s=;
        h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type;
        b=bVUIetonCJRHBq3WxOwFyrxJRWsOx7rgfayZvXvLqWpTaUqSuiF3OpLC3I+C4pBby
         iuZFZwgvcN5DXx9bl1IxTW7LnwNpK3p6eaF5B9dsISF0c2jTo1mDqltggttPO6p84V
         5PHfqFAF5nKpNoW451rVbR7Z7Ahw4E78Sfm/HDfqYJxJmzN3MpH/bwJ6KO6EEOYz5G
         NSnqKjDQOufajBRngsxOr2yoAm7W4LrYjqqA33fW+IK1J0npqW0FA6KrVTezGQxx80
         03S31f3wyniqtcSGLtoPY+gtsB33pi+NBV/BpoUF/wL5W+o+RrwcI4t6SGmGW+3lFo
         ga83s0LonY4eQ==
Received: from [100.112.197.207] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
        by server-1.bemta.az-b.eu-west-1.aws.symcld.net id 31/38-01873-B3AB4916; Wed, 17 Nov 2021 08:15:55 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFIsWRWlGSWpSXmKPExsViZ8ORqGu1a0q
  iQcduc4tp3YfZLNasn8FucWrCA3YHZo+ds+6ye3zeJBfAFMWamZeUX5HAmrG2fQdjQSdHxdGm
  uawNjA3sXYxcHEICWxglpu5tZoRwFjBJ3H17lBnC2cMo8fbwNqAyTg42AU2JZ50LmEFsEQEzi
  eNbf7CA2MwCLhInO5eC1QgLOEl8nN3I2sXIwcEioCoxf0ERSJhXwFNixZWjYOUSAgoSUx6+Z4
  aIC0qcnPkEaoyExMEXL5ghahQlLnV8Y4SwKyRmzWpjgrDVJK6e28Q8gZF/FpL2WUjaFzAyrWK
  0SCrKTM8oyU3MzNE1NDDQNTQ00jW0tNA1NDfWS6zSTdJLLdUtTy0u0TXUSywv1iuuzE3OSdHL
  Sy3ZxAgM1pSCY2t3MPa8+aB3iFGSg0lJlPdp75REIb6k/JTKjMTijPii0pzU4kOMMhwcShK8J
  TuAcoJFqempFWmZOcDIgUlLcPAoifB6g6R5iwsSc4sz0yFSpxh1OV63/NzBLMSSl5+XKiXOOx
  ekSACkKKM0D24ELIovMcpKCfMyMjAwCPEUpBblZpagyr9iFOdgVBLmjQGZwpOZVwK36RXQEUx
  AR8hengxyREkiQkqqgUlHYGqW0oSz1f2fi37ldOetc2h22akQubMzzoe7Ru7dPEP9Zcqzzmp7
  Lru0TO9S0OX5DP/vzfQ4cnVF5qztH481TuVTzGtqjK/J7bT/Of1X9eYMj/vT1vzVyFZWPvVSV
  /ZndaLHVjvd9RZ7l21TftTllMzjnO0zzWlz0gR/LmdTqYCWqLeamRPPlZYx7YqwmvDr4Ro3E+
  X4BbGhGZf0Jtx/o7Lvwy5WroK5Smdmrtwd8b0jgallN7fdjqqT1tY++xaUdJmxdvLyXfj0627
  a/hL39eJ+VtddNO/N28vCksn2QveDhZ7ltptfVsxc07zsWcS3K5f2htt/vK2xocX4/bWqhPwU
  WzVnd+MA5k9nUpVYijMSDbWYi4oTASdqqUVdAwAA
X-Env-Sender: xuyang2018.jy@fujitsu.com
X-Msg-Ref: server-8.tower-287.messagelabs.com!1637136954!668331!1
X-Originating-IP: [62.60.8.97]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 1829 invoked from network); 17 Nov 2021 08:15:54 -0000
Received: from unknown (HELO n03ukasimr01.n03.fujitsu.local) (62.60.8.97)
  by server-8.tower-287.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 17 Nov 2021 08:15:54 -0000
Received: from n03ukasimr01.n03.fujitsu.local (localhost [127.0.0.1])
        by n03ukasimr01.n03.fujitsu.local (Postfix) with ESMTP id 6A6DF100230;
        Wed, 17 Nov 2021 08:15:54 +0000 (GMT)
Received: from R01UKEXCASM126.r01.fujitsu.local (unknown [10.183.43.178])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by n03ukasimr01.n03.fujitsu.local (Postfix) with ESMTPS id 5E8E310022C;
        Wed, 17 Nov 2021 08:15:54 +0000 (GMT)
Received: from localhost.localdomain (10.167.220.84) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.24; Wed, 17 Nov 2021 08:15:32 +0000
From:   Yang Xu <xuyang2018.jy@fujitsu.com>
To:     <alx.manpages@gmail.com>, <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH] init_module.2: Add ETXTBSY error for finit_module
Date:   Wed, 17 Nov 2021 16:16:07 +0800
Message-ID: <1637136967-13028-1-git-send-email-xuyang2018.jy@fujitsu.com>
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

Since kernel commit[1], finit_module fails with ETXTBSY error if fd has write permission.
Since kernel commit[2], finit_module fails with EBADF error if fd doesn't have read permission.

So we can use read-write permission to trigger ETXTBSY error all the time since linux 4.7.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d637af
[2]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=032146cd

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/init_module.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man2/init_module.2 b/man2/init_module.2
index aac0c6631..2bcbaf4c3 100644
--- a/man2/init_module.2
+++ b/man2/init_module.2
@@ -242,6 +242,13 @@ is invalid.
 .B ENOEXEC
 .I fd
 does not refer to an open file.
+.TP
+.BR ETXTBSY " (since Linux 4.7)"
+.\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
+The file referred to by
+.I fd
+is opened for read-write.
+.
 .PP
 In addition to the above errors, if the module's
 .I init
-- 
2.23.0

