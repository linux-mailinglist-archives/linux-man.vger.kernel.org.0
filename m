Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81557434318
	for <lists+linux-man@lfdr.de>; Wed, 20 Oct 2021 03:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbhJTBsm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Oct 2021 21:48:42 -0400
Received: from mail1.bemta25.messagelabs.com ([195.245.230.4]:9348 "EHLO
        mail1.bemta25.messagelabs.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229555AbhJTBsm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Oct 2021 21:48:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
        s=170520fj; t=1634694388; i=@fujitsu.com;
        bh=IYBB+BFOdxUZZkAV6u7hXZOVoC5hbyEsdtU0R7C4p54=;
        h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type;
        b=w9Dq2AZ6GA9/9M4dYVL3YVBJqOY2gMbl3cVM5/Ak04qL6kCbO5OlcXQlwn49nyDPc
         5eXXi6u2svM0Ms8/Khfbqru5FJxbdJR8Lcdq0h7Lrdjx6VpNe/Zk3lb/0aStCdU7sg
         9jfR3E6PGNfWEQOe56MuEfiOBCjNy+5V+kkn/D8E2DF0fRg420Vt9kP9K2r+tUnK7n
         4/ZEhGXNJGf5PKnBSJxFE1PWK2C6ZSiJAZzoveUsiSP4iFSItjPpigliCauuu1iTKJ
         uCLVU1dJmMtmSfwaPgsakqOm1j5jPRkEVd3rTDhMN4BQBZckBIX/TM05ZQMhUqUSr9
         uxn/kEBmJSPmA==
Received: from [100.112.195.206] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
        by server-4.bemta.az-a.eu-west-1.aws.symcld.net id 57/0D-30013-3F47F616; Wed, 20 Oct 2021 01:46:27 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRWlGSWpSXmKPExsViZ8MxRfdzSX6
  iwZzL3BZr1s9gd2D0+LxJLoAxijUzLym/IoE14/b698wFM1krLrx4xd7AuI+li5GLQ0igm0ni
  /pEzUM4eRomzs64zdjFycrAJaEo861zADGKLCMhLrNmzACzOLKAusXzSLyYQW1jAXWLvw8ssI
  DaLgKrEl6W/2UBsXgEPiS9HV4PZEgIKElMevmeGiAtKnJz5hAVijoTEwRcvmCFqFCUudXxjhL
  ArJGbNamOawMg7C0nLLCQtCxiZVjFaJBVlpmeU5CZm5ugaGhjoGhoa6RpaArGJiV5ilW6iXmq
  pbnlqcYmuoV5iebFecWVuck6KXl5qySZGYHilFByYsINx/+sPeocYJTmYlER5pV3yE4X4kvJT
  KjMSizPii0pzUosPMcpwcChJ8N4oAsoJFqWmp1akZeYAQx0mLcHBoyTCywQMdyHe4oLE3OLMd
  IjUKUZdjnc/Fy9iFmLJy89LlRLnfVkMVCQAUpRRmgc3AhZ3lxhlpYR5GRkYGIR4ClKLcjNLUO
  VfMYpzMCoJ8/4pBJrCk5lXArfpFdARTEBHXHXOATmiJBEhJdXA5H7GX5cnblfj9HmqJ9f7Wrw
  8NVk9bO41lUeCP5+LGYj+vbXiql/pZmWTaz/jHinrZvlaMyz3WXhPVUH06qR32XURGQuDpcKP
  icwJY3BtUhecuzJHbJKcxMP3FxuSz+s398+ew+GbHTVjV6/wrFUirMyBwsrml9Z+rj/L4bBvx
  fP1q94dTTv92/d1E0dm7uLApfw/Zm8IMbqhcmCr9MZCmaMSh4vq+6Z/Zw9j2xd9e8vFnf80zM
  ValjLnhT96//EQy7Jzu+/naC1tUtw85XfHLOlMoaMfZFoM+Z1i3fKSzbP3yIqIVfA1/JaPrHz
  vlfaqbMVpfWvvzE/XF99bwv+479b3zwWKr9+u17xtvOiUhhJLcUaioRZzUXEiAE+IL9M2AwAA
X-Env-Sender: xuyang2018.jy@fujitsu.com
X-Msg-Ref: server-11.tower-271.messagelabs.com!1634694386!62200!1
X-Originating-IP: [62.60.8.148]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 14285 invoked from network); 20 Oct 2021 01:46:27 -0000
Received: from unknown (HELO mailhost1.uk.fujitsu.com) (62.60.8.148)
  by server-11.tower-271.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 20 Oct 2021 01:46:27 -0000
Received: from R01UKEXCASM126.r01.fujitsu.local ([10.183.43.178])
        by mailhost1.uk.fujitsu.com (8.14.5/8.14.5) with ESMTP id 19K1kQSf024616
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
        for <linux-man@vger.kernel.org>; Wed, 20 Oct 2021 02:46:26 +0100
Received: from localhost.localdomain (10.167.220.84) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.24; Wed, 20 Oct 2021 02:46:24 +0100
From:   Yang Xu <xuyang2018.jy@fujitsu.com>
To:     <linux-man@vger.kernel.org>
CC:     Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Date:   Wed, 20 Oct 2021 09:46:26 +0800
Message-ID: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD07.g08.fujitsu.local (10.167.33.80) To
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This patch[1] is designed to fix bug for Q_XQUOTARM ioctl not for introduced.
So remove it.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9da93f9b7c

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/quotactl.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man2/quotactl.2 b/man2/quotactl.2
index d22d8c584..46f77a8b1 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -651,8 +651,7 @@ The
 .I id
 argument is ignored.
 .TP
-.B Q_XQUOTARM " (since Linux 3.16)"
-.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc
+.B Q_XQUOTARM
 Free the disk space taken by disk quotas.
 The
 .I addr
-- 
2.23.0

