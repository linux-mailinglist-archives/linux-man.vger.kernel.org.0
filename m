Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6CB07B0927
	for <lists+linux-man@lfdr.de>; Wed, 27 Sep 2023 17:47:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232589AbjI0PrC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Sep 2023 11:47:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233103AbjI0Pqp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Sep 2023 11:46:45 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9001927E66
        for <linux-man@vger.kernel.org>; Wed, 27 Sep 2023 08:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695829596; x=1727365596;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=e+Bh0SuNZg1bzmADqlteh35e/F85T4Y2cDxmPpOxr8M=;
  b=eAYPNV93xgHSHfMLgPw76xp2WHmJg9mzA1TEzMcy4x8pXEUEHjCsQgy/
   BtVPKmJhW6LIYjcNP5ZKahIIzvdQydC5R0QEkpqJNMsNisV0WCVkSRMov
   odmCT7EXRVgVhXjwlYUYkb6sH5uD/CFGrCMRu0isBwDGpyn/e1enCH5IV
   +7vfmOVKCAYAG9mZ8qidtoLmHLi+dfNUGdc5RB4lCxAqYC9HNBSFu5btf
   2qunCnmZGsmwuvfMsKurwwCtGskT63lkWDfxlOqkYAv8J3YqYekpBPgvA
   0ffVbCj+JEUvQfnuCOcvsXVPfgq8LKc0VeH9YX4+aPI8s5nRzKTYy3GHD
   w==;
X-CSE-ConnectionGUID: NUF/TDKBRw2ZDeslzEiiEg==
X-CSE-MsgGUID: RVNbxlktRBmmWiM9jrHJYw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; 
   d="scan'208";a="6915278"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 27 Sep 2023 08:46:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 27 Sep 2023 08:46:34 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 27 Sep 2023 08:46:34 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>, <alx@kernel.org>, <aeb@cwi.nl>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v4] smartpqi: add module parameter disable_managed_interrupts
Date:   Wed, 27 Sep 2023 10:45:46 -0500
Message-ID: <20230927154547.724640-1-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.158.g94e83dcf5b
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add in a description for module parameter disable_managed_interrupts.

This module parameter allows users to disable automatic irq affinity
setting by turning off the PCI_IRQ_AFFINITY flag when requesting
interrupts.

When the flag PCI_IRQ_AFFINITY is set, users cannot change the interrupt
affinity through /proc/irq/<irq#>/*affinity*

Some customers would like to change interrupt affinity based on their
requirements.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 428d79a19840..613ef330aef1 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -16,6 +16,7 @@ smartpqi \- Microchip Smart Storage SCSI driver
 .RB [ lockup_action= { none | reboot | panic }]
 .RB [ expose_ld_first= { 0 | 1 }]
 .RB [ hide_vsep= { 0 | 1 }]
+.RB [ disable_managed_interrupts= { 0 | 1 }]
 .YS
 .SH DESCRIPTION
 .B smartpqi
@@ -100,6 +101,12 @@ The default value is 0 (physical devices exposed first).
 .BR hide_vsep= { 0 | 1 }
 This option disables exposure of the virtual SEP to the OS.
 The default value is 0 (virtual SEP is exposed).
+.TP
+.BR disable_managed_interrupts= { 0 | 1 }
+Disables driver utilization of Linux kernel managed interrupts for
+controllers. The managed interrupts feature automatically distributes
+interrupts to all available CPUs and assigns SMP affinity.
+The default value is 0 (managed interrupts enabled).
 .SH FILES
 .SS Device nodes
 Logical drives are accessed via the SCSI disk driver
-- 
2.42.0.158.g94e83dcf5b

