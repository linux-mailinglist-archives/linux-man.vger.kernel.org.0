Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BBDE459976
	for <lists+linux-man@lfdr.de>; Tue, 23 Nov 2021 01:59:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230076AbhKWBC4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 20:02:56 -0500
Received: from mail1.bemta26.messagelabs.com ([85.158.142.4]:33099 "EHLO
        mail1.bemta26.messagelabs.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229628AbhKWBCx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 20:02:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
        s=170520fj; t=1637629185; i=@fujitsu.com;
        bh=Y860SDuRKcHuZzQnx51J+gknwed1RuKVq3ANr8zgEIA=;
        h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=dovunajaHD4Z3nGfU6S9bnumviykoyT2roEA56sjBLxY5JQkKf2psjrDgr2L2InUu
         /3vV0y4DeeyIpofqErmc3peOSuPOnpxmIGTusignRfMuOSIla7IOFkab80QfeyJ3My
         CueqRovRtLKFR251mSRpItJGyzqkGnb3H5zPQTNo30dTBR7OwBcb3SEhkr53G6qM25
         sqm6S2dxhCnXj1Q2qnGvdqjJVqQFipMxaKRbbByuD5D/brWy0uIwcQlUgUA05Smk4H
         aHx0RPyHrYZLaOgBNMX/TYmm3YDaET6PLWemNHXQLD0hEWvN+Ob0WtNK9EkJW16hcr
         Q8bRd6+r0VVgA==
Received: from [100.113.1.75] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
        by server-4.bemta.az-a.eu-central-1.aws.symcld.net id 3B/CC-09980-00D3C916; Tue, 23 Nov 2021 00:59:44 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCIsWRWlGSWpSXmKPExsViZ8MxSZfBdk6
  iwZbLMhbTug+zWaxZP4Pd4tSEB+wOzB47Z91l9/i8SS6AKYo1My8pvyKBNePWpQ62glaOigvt
  M1gbGP+ydTFycQgJbGGUmL5uFpSzgEliw961jBDOHkaJlrfTmLsYOTnYBDQlnnUuALNFBGQkF
  u5oYgKxmQXiJdrnv2IFsYUFXCW+P/wLVsMioCqxcONEMJtXwEPi94YTLCC2hICCxJSH78HinA
  K2Eh/fP2QDsYUEbCR62ncyQtQLSpyc+YQFYr6ExMEXL5ghehUlLnV8Y4SwKyRmzWpjgrDVJK6
  e28Q8gVFwFpL2WUjaFzAyrWK0TCrKTM8oyU3MzNE1NDDQNTQ01gWSxgZ6iVW6iXqppbrJqXkl
  RYlAWb3E8mK94src5JwUvbzUkk2MwABPKWRo2sH47tUHvUOMkhxMSqK8CwznJArxJeWnVGYkF
  mfEF5XmpBYfYpTh4FCS4H2nCZQTLEpNT61Iy8wBRhtMWoKDR0mE95E1UJq3uCAxtzgzHSJ1il
  GX43XLzx3MQix5+XmpUuK8D0GKBECKMkrz4EbAIv8So6yUMC8jAwODEE9BalFuZgmq/CtGcQ5
  GJWHe1yBTeDLzSuA2vQI6ggnoiN49s0GOKElESEk1MM36cSznhmbZyYN73HNuGqarvF+8ZfX6
  B8KV7ZFtE19yHq8q3PpeYPKq+5/3qp1U93hkK7LKYG2B0f9Ug5yIcoHZjx4pX3O8t8mV/UQ0j
  xzfrJ9i2ybxL3/1KEanuC+U6cGT+h2bOR5tLd8/Odj+bWB2lNPSbRzzhQNPzpsVZvGFS0bR5Z
  HFLa242ZufWqQaVkyYvNNNyuiYX51Ox/cOn3957vdMDlbk/t0SYLns9ikDnfalDR90T0xPleP
  i/Z4oXOYd4bcid2/+X4a8TQ6my8o7IjZc/cNUUbMx2/8R3/Y0SZP/tk37KrecUUlVXGi+UfGU
  kETPs+tFNbsCmiW6v7jf9Vjz/USTpf6k+1PfOyixFGckGmoxFxUnAgAJPVwodwMAAA==
X-Env-Sender: xuyang2018.jy@fujitsu.com
X-Msg-Ref: server-5.tower-226.messagelabs.com!1637629184!19574!1
X-Originating-IP: [62.60.8.146]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 32679 invoked from network); 23 Nov 2021 00:59:44 -0000
Received: from unknown (HELO n03ukasimr02.n03.fujitsu.local) (62.60.8.146)
  by server-5.tower-226.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 23 Nov 2021 00:59:44 -0000
Received: from n03ukasimr02.n03.fujitsu.local (localhost [127.0.0.1])
        by n03ukasimr02.n03.fujitsu.local (Postfix) with ESMTP id F234510045F;
        Tue, 23 Nov 2021 00:59:43 +0000 (GMT)
Received: from R01UKEXCASM126.r01.fujitsu.local (unknown [10.183.43.178])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by n03ukasimr02.n03.fujitsu.local (Postfix) with ESMTPS id E57A4100359;
        Tue, 23 Nov 2021 00:59:43 +0000 (GMT)
Received: from localhost.localdomain (10.167.220.84) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.26; Tue, 23 Nov 2021 00:59:22 +0000
From:   Yang Xu <xuyang2018.jy@fujitsu.com>
To:     <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <mtk.manpages@gmail.com>,
        Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH v2] init_module.2: Add ETXTBSY error for finit_module
Date:   Tue, 23 Nov 2021 08:59:09 +0800
Message-ID: <1637629149-2255-1-git-send-email-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <4a08d1e1-4bed-2428-e29f-8b7cb37294b4@gmail.com>
References: <4a08d1e1-4bed-2428-e29f-8b7cb37294b4@gmail.com>
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
 man2/init_module.2 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man2/init_module.2 b/man2/init_module.2
index aac0c6631..77cd8c4a6 100644
--- a/man2/init_module.2
+++ b/man2/init_module.2
@@ -242,6 +242,12 @@ is invalid.
 .B ENOEXEC
 .I fd
 does not refer to an open file.
+.TP
+.BR ETXTBSY " (since Linux 4.7)"
+.\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
+The file referred to by
+.I fd
+is opened for read-write.
 .PP
 In addition to the above errors, if the module's
 .I init
-- 
2.23.0

