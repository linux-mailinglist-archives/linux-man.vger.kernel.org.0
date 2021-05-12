Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDD7637B45E
	for <lists+linux-man@lfdr.de>; Wed, 12 May 2021 05:06:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbhELDHu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 23:07:50 -0400
Received: from mail1.bemta25.messagelabs.com ([195.245.230.5]:61507 "EHLO
        mail1.bemta25.messagelabs.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229932AbhELDHu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 23:07:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
        s=170520fj; t=1620788802; i=@fujitsu.com;
        bh=rs6Fla0UBOAH1Ua6SU4zEi5JScmkOlaLA9u0j/CrrFg=;
        h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type;
        b=OtFg/ZEjy11as+a9igjz7NHRxAV4gleCknT1lLAIe7Hm7e4JWMFEoN2ymNIsPTn8S
         hbOz5BeNb/UTsa6ECe+CosmnPgktJbwW5VsPQwkcokYLWje6F1ysNYmAmj1unLu7/+
         +vPvZYKoRkmYP1wFA1gutMCrZvwKR7zLrAEJZ8bJI0dE/kWkUsYi/b0KEOdR3q2scW
         IKDZ2fsXWERkCmA9hAtXPCO5WUC4Ml4Md6Z9HXvTGSj4+/JYcfmF1rkhWcowT7/FUy
         9Cy5TqIO57TO5X4tsVPICGOKSLfphNR+RhYxVu+Ulg1+ETXoJYlJsciyZfSSGxoG6k
         lM5zxVLYiKgcg==
Received: from [100.112.193.211] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
        by server-5.bemta.az-a.eu-west-1.aws.symcld.net id A8/D4-01834-1464B906; Wed, 12 May 2021 03:06:41 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRWlGSWpSXmKPExsViZ8MxVdfRbXa
  CwdQ7vBZr1s9gd2D0+LxJLoAxijUzLym/IoE1o/fjJfaCf6wVN3ecYGtgbGbtYuTiEBLoZpKY
  fqqREcLZzShxaOE15i5GTg42AU2JZ50LwGwRAXmJNXsWMILYzALqEssn/WLqYuTgEBawkTiwO
  hEkzCKgKjF3+jawEl4BD4ldO++CtUoIKEhMefieGSIuKHFy5hMWiDESEgdfvICqUZS41PGNEc
  KukJgxYxvbBEbeWUhaZiFpWcDItIrRPKkoMz2jJDcxM0fX0MBA19DQSNfQ0kjXxEQvsUo3US+
  1VLc8tbhE11AvsbxYr7gyNzknRS8vtWQTIzC0UgoO6Oxg/Pnqg94hRkkOJiVR3j/MsxKE+JLy
  UyozEosz4otKc1KLDzHKcHAoSfCuc5mdICRYlJqeWpGWmQMMc5i0BAePkgjvKVegNG9xQWJuc
  WY6ROoUo6KUOG8TSJ8ASCKjNA+uDRZblxhlpYR5GRkYGIR4ClKLcjNLUOVfMYpzMCoJ804Gmc
  KTmVcCN/0V0GImoMU3ps8CWVySiJCSamAqEgvk/zxro/r2pO/2WVo3p1+7WuNy+GrBXJfTx7y
  Pm6+SOX7u9i7Wy7djC9/NfnDVl1W0Nj3db1ZYKDvLHp5fXNltBrMYrsuwqxUrTb4dvM6i5uaE
  zo3dpssOs3yd8/j0ApNv287W/LgTK/ahlkf8cvC8aPnqOQ+CrvaJVFtM/T7Xh8GW4+6sWIY9e
  km32d9dOzXxptEltivv//Nq3Ir44jCXtWTyxOP3d2j87P9hsqNCQu0ph/idhIwDf5n7ezs0u3
  2UIq/I1GbZ/p4361ucyrOFnmanS9/dUn/Qdfq1v+i31lUPZ6co6Sy2/7y4iIH9t8312OsiRSd
  nuZd3zb0T/iDpZc2zM2wGp6emG7yoUmIpzkg01GIuKk4EAMQWDC0oAwAA
X-Env-Sender: xuyang2018.jy@fujitsu.com
X-Msg-Ref: server-12.tower-267.messagelabs.com!1620788800!51099!1
X-Originating-IP: [62.60.8.149]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.75.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12192 invoked from network); 12 May 2021 03:06:41 -0000
Received: from unknown (HELO mailhost2.uk.fujitsu.com) (62.60.8.149)
  by server-12.tower-267.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 12 May 2021 03:06:41 -0000
Received: from R01UKEXCASM126.r01.fujitsu.local ([10.183.43.178])
        by mailhost2.uk.fujitsu.com (8.14.5/8.14.5) with ESMTP id 14C36Zl2017826
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 04:06:40 +0100
Received: from localhost.localdomain (10.167.220.84) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 12 May 2021 04:06:33 +0100
From:   Yang Xu <xuyang2018.jy@fujitsu.com>
To:     <linux-man@vger.kernel.org>
CC:     Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH] man2/shmget.2: Remove unexisted EPERM error
Date:   Wed, 12 May 2021 11:06:52 +0800
Message-ID: <1620788812-2361-1-git-send-email-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD09.g08.fujitsu.local (10.167.33.85) To
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I have seen kernel ipc/shm.c code, I don't see shmget has EPERM error
when using SHM_HUGETLB. So remove it.

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/shmget.2 | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/man2/shmget.2 b/man2/shmget.2
index 757b7b7f1..f10ba7a1f 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -267,13 +267,6 @@ or allocating a segment of the requested
 .I size
 would cause the system to exceed the system-wide limit on shared memory
 .RB ( SHMALL ).
-.TP
-.B EPERM
-The
-.B SHM_HUGETLB
-flag was specified, but the caller was not privileged (did not have the
-.B CAP_IPC_LOCK
-capability).
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SVr4.
 .\" SVr4 documents an additional error condition EEXIST.
-- 
2.23.0

