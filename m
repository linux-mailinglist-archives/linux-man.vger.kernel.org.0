Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B93844FD25
	for <lists+linux-man@lfdr.de>; Mon, 15 Nov 2021 03:26:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236222AbhKOC3F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Nov 2021 21:29:05 -0500
Received: from mail3.bemta25.messagelabs.com ([195.245.230.85]:42267 "EHLO
        mail3.bemta25.messagelabs.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229716AbhKOC2q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Nov 2021 21:28:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
        s=170520fj; t=1636943151; i=@fujitsu.com;
        bh=8PU2ndOgTJTCFEpbX0ABe3dgmDpGgS6NUKR2H0MSxE0=;
        h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type;
        b=LrX0dJMD/21QnpiShZs0VTHwjflPFmm+fOl5LFMzc1T9UGdJmBaXZAqLRWDnO01uJ
         c2cnOcBMhuULarc9I3LhxnAW9GiruZzZwhPOtTDGIRLRP/mDAs+GQvioHEXEBlaPwP
         ByfjPgMPUT+h7e8rVfOCXdW6SopVPbDhWSLHjsDnMoxZ6N2ir0tUi970d+PmXHvv0m
         5k4k+ACdUXuyKeFjVmkcGvgtRzXVjavwNGAwd4ffXgPAcrvIsCfNwPLdBbXif4bpxn
         BP1iwO7zumWEgYHuZ+E99nB+aNyGg8RijReC7Q5hcq/Ykdvpmi4BS8I4qBFSe5nfOu
         TIazk+GV1Icew==
Received: from [100.112.196.154] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
        by server-5.bemta.az-b.eu-west-1.aws.symcld.net id 1B/8F-05453-E25C1916; Mon, 15 Nov 2021 02:25:50 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPIsWRWlGSWpSXmKPExsViZ8MRqqt3dGK
  iwe43shbTug+zWcye3sxksWb9DHaLUxMesDuweOycdZfd48yCI+wenzfJBTBHsWbmJeVXJLBm
  vL97irngKEvFjx2/mBsYvzB3MXJxCAm8ZJSYsnU/lLOHUWLyqQb2LkZODjYBTYlnnQuYQWwRA
  TOJ41t/sIDYzAKxEuvfdzCC2MICzhIPH/4Cq2ERUJXYN+UUE4jNK+AhcW79LTBbQkBBYsrD98
  wQcUGJkzOfQM2RkDj44gUzRI2ixKWOb4wQdoXErFltTBMYeWchaZmFpGUBI9MqRvOkosz0jJL
  cxMwcXUMDA11DQyNdQ0szXTMTvcQq3SS91FLd8tTiEl1DvcTyYr3iytzknBS9vNSSTYzAcEwp
  OOKwg/H+6w96hxglOZiURHlLZ/YlCvEl5adUZiQWZ8QXleakFh9ilOHgUJLg1TwwMVFIsCg1P
  bUiLTMHGBswaQkOHiURXrlDQGne4oLE3OLMdIjUKUZFKXHeru1ACQGQREZpHlwbLB4vMcpKCf
  MyMjAwCPEUpBblZpagyr9iFOdgVBLmPXoYaApPZl4J3PRXQIuZgBbb3+sHWVySiJCSamDim+W
  95cm7ht2XzvyblKQ0dWV8mvj6Fcek5sUf8VR7xRW9YqaW+N/5KobzeSMrrzmqy/p+rN0Zrn9m
  hveT5v7r1wrLPq4Mj+RKY2HLlp/3IXbK08krgxauaujp6orN2duQxv9kRpnFd63pdbe7P7z6v
  D3KzmByzcnwygqF+fv+++ye8Ez0tuCvTZPsdvp11xc5zhE2a5a0/FzWdn1fZLu01ZOvvhJKR2
  aJa8S8bLd+/Lo5yzHoe7BOz22vZ22n2rgfVdfo+//hN0+KETziybovOWCT8sSs6I/GzouKJk9
  L/h14Je6N3uEdwVkd4edyAzeonufeZaXNkSD29CpLseimOTUiB9sSbycJ1V7lC1NiKc5INNRi
  LipOBADo/+s9QgMAAA==
X-Env-Sender: xuyang2018.jy@fujitsu.com
X-Msg-Ref: server-13.tower-285.messagelabs.com!1636943150!461946!1
X-Originating-IP: [62.60.8.85]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12843 invoked from network); 15 Nov 2021 02:25:50 -0000
Received: from unknown (HELO mailhost4.uk.fujitsu.com) (62.60.8.85)
  by server-13.tower-285.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 15 Nov 2021 02:25:50 -0000
Received: from R01UKEXCASM126.r01.fujitsu.local ([10.183.43.178])
        by mailhost4.uk.fujitsu.com (8.14.5/8.14.5) with ESMTP id 1AF2Pdjx032255
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
        Mon, 15 Nov 2021 02:25:44 GMT
Received: from localhost.localdomain (10.167.220.84) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.24; Mon, 15 Nov 2021 02:25:36 +0000
From:   Yang Xu <xuyang2018.jy@fujitsu.com>
To:     <alx.manpages@gmail.com>, <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <jack@suse.cz>,
        Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH] quotactl.2: Add buggy version for Q_XQUOTARM ioctl
Date:   Mon, 15 Nov 2021 10:26:07 +0800
Message-ID: <1636943167-2213-1-git-send-email-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.220.84]
X-ClientProxiedBy: G08CNEXCHPEKD07.g08.fujitsu.local (10.167.33.80) To
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/quotactl.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/quotactl.2 b/man2/quotactl.2
index 5d2a673bd..fbf7cdc29 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -651,7 +651,8 @@ The
 .I id
 argument is ignored.
 .TP
-.B Q_XQUOTARM
+.BR Q_XQUOTARM " (buggy until Linux 3.16)"
+.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc
 Free the disk space taken by disk quotas.
 The
 .I addr
-- 
2.23.0

