Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5A867AF3E2
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 21:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235522AbjIZTND (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 15:13:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235603AbjIZTNB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 15:13:01 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7102511D
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 12:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695755575; x=1727291575;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=uJbqy/UWSmbkPlsyLd7FO2D3OxmMZm8RmJDxq95+XhQ=;
  b=NURIDauDZTnGlBmpLvb76PBZr7CjjEaE1nDv56sZyCrzrL3icWigj7I4
   wPpg4LjtOFJkfbo+55S0JzpvIq3Q2WcMDbv6E0blQWZAU80VKkFj/NRBX
   /2HzKVkBbznhZ8feNYOloZs454K0O7QXUJ9NajHifQHjLacFcaKmZjBZw
   PHZJrnNWd1zteaoahLj78bAnNovYCmZuBZvkNbMfkxyHeSkKjwD+vH0rC
   q5NibU5EumvjwXSn/JMLjXFDn8zgYIcwugWrpNPDQGYBD+OFaxaCdX58A
   7of+wPFQNXlPyogzXhRcvsQ6qB16zkLSiuT7sAQQb/amK8CUgfwFmvk3A
   Q==;
X-CSE-ConnectionGUID: 9rVscL9ZQ+ONqtmBXtxhZQ==
X-CSE-MsgGUID: Ups3RF+MRemTOrzuf6WrZQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; 
   d="scan'208";a="6593825"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 26 Sep 2023 12:12:53 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 26 Sep 2023 12:12:53 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 26 Sep 2023 12:12:53 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>, <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v3 03/10] smartpqi: add-module parameter disable_managed_interrupts
Date:   Tue, 26 Sep 2023 14:11:58 -0500
Message-ID: <20230926191206.627678-4-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.158.g94e83dcf5b
In-Reply-To: <20230926191206.627678-1-don.brace@microchip.com>
References: <20230926191206.627678-1-don.brace@microchip.com>
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

This module parameter allows users to change interrupt affinity
by echoing values into /proc/irq/<irq number>/*affinity.

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

