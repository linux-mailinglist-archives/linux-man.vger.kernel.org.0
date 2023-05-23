Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E43270D31F
	for <lists+linux-man@lfdr.de>; Tue, 23 May 2023 07:18:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231882AbjEWFSn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 May 2023 01:18:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjEWFSj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 May 2023 01:18:39 -0400
X-Greylist: delayed 63 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 22 May 2023 22:18:37 PDT
Received: from esa3.hc1455-7.c3s2.iphmx.com (esa3.hc1455-7.c3s2.iphmx.com [207.54.90.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBD14FA
        for <linux-man@vger.kernel.org>; Mon, 22 May 2023 22:18:37 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="117678788"
X-IronPort-AV: E=Sophos;i="6.00,185,1681138800"; 
   d="scan'208";a="117678788"
Received: from unknown (HELO oym-r2.gw.nic.fujitsu.com) ([210.162.30.90])
  by esa3.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 May 2023 14:17:32 +0900
Received: from oym-m1.gw.nic.fujitsu.com (oym-nat-oym-m1.gw.nic.fujitsu.com [192.168.87.58])
        by oym-r2.gw.nic.fujitsu.com (Postfix) with ESMTP id C7F58CD7E4
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 14:17:30 +0900 (JST)
Received: from aks-ab2.gw.nic.fujitsu.com (aks-ab2.gw.nic.fujitsu.com [192.51.207.12])
        by oym-m1.gw.nic.fujitsu.com (Postfix) with ESMTP id 01016D5017
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 14:17:30 +0900 (JST)
Received: from localhost.localdomain (unknown [10.167.215.131])
        by aks-ab2.gw.nic.fujitsu.com (Postfix) with ESMTP id 13BC687FDE;
        Tue, 23 May 2023 14:17:29 +0900 (JST)
From:   Yang Xu <xuyang2018.jy@fujitsu.com>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH] statx.2: Document STAT_ATTR_MOUNT_ROOT
Date:   Tue, 23 May 2023 13:17:15 +0800
Message-Id: <1684819035-17509-1-git-send-email-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1408-9.0.0.1002-27644.005
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1408-9.0.1002-27644.005
X-TMASE-Result: 10--5.444500-10.000000
X-TMASE-MatchedRID: 4UDH+/Xdc16RTfgfKCWeWqzGfgakLdjayiKgKtIyB4rozDhGeQC9Er8F
        Hrw7frluf146W0iUu2vjtMyhCE18ImVVTHUJ3ZyM3QqJN4m15UF9LQinZ4QefCP/VFuTOXUT3n8
        eBZjGmUzkwjHXXC/4IzsAVzN+Ov/seL47FVABHXNeTyN0KwIIRZcq3IjdqAmKdp7w6eX5jlcfRp
        o16NPzEA==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Linux 5.10 adds STATX_ATTR_MOUNT_ROOT support.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=80340fe3605c

Add the text to the statx man page.

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/statx.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man2/statx.2 b/man2/statx.2
index 3bc4932b0..9610e171a 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -521,6 +521,10 @@ without an explicit
 See
 .BR mmap (2)
 for more information.
+.TP
+.B STATX_ATTR_MOUNT_ROOT " (since Linux 5.10)"
+.\" commit 80340fe3605c0e78cfe496c3b3878be828cfdbfe
+The file is the root of a mount.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.27.0

