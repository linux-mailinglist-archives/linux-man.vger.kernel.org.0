Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8737378336F
	for <lists+linux-man@lfdr.de>; Mon, 21 Aug 2023 22:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229802AbjHUTz6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Aug 2023 15:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbjHUTz6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Aug 2023 15:55:58 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC6D110F
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 12:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1692647749; x=1724183749;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=1ObqVzYqCo+cvjJ9gi9ZjUOzXYaCsyubEBETkjIrx9Q=;
  b=j7OgP2fagtS1DWeHDWgCBfpKH71iFC6dtUq5xlyUcrIiiDO1HrR0BlOl
   cBWYuAKlXeR1zrF3JsVP/TjCzJFNeGQxSxaFT/jTKytvHIKqKJ0UnU23s
   0CrpZeo2K4cLrXQvA2sGoJbfia1HtqSz+w2FXD2g6QQ/1CezIMLOaz6Q+
   cnMy0cgb2HxVp0PLOHyrA6wPN27imrbQvNwvjdO50XYkQHGIGlWPXZD+V
   6rPR44fYl/AYf++szjEFHc56Ilkw8g7Esl5vPsRRlRO4/TlDuHrfGLI26
   2L1Xb+6hfCvX8tEOQW+MhWGyOTnS3D5WkKayDDTP4ysq5y6dgJTLfeejV
   g==;
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; 
   d="scan'208";a="230959282"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Aug 2023 12:55:30 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 21 Aug 2023 12:55:22 -0700
Received: from brunhilda.pdev.net (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 21 Aug 2023 12:55:22 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v2 04/10] smartpqi: add module parameter ctrl_ready_timeout
Date:   Mon, 21 Aug 2023 14:57:20 -0500
Message-ID: <20230821195726.446748-5-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.rc2
In-Reply-To: <20230821195726.446748-1-don.brace@microchip.com>
References: <20230821195726.446748-1-don.brace@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Allow user to change the length of time that the driver
will wait for the controller to become ready.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 613ef330aef1..f04472836210 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -17,6 +17,7 @@ smartpqi \- Microchip Smart Storage SCSI driver
 .RB [ expose_ld_first= { 0 | 1 }]
 .RB [ hide_vsep= { 0 | 1 }]
 .RB [ disable_managed_interrupts= { 0 | 1 }]
+.RB [ ctrl_ready_timeout= { 0 | 30-1800 }]
 .YS
 .SH DESCRIPTION
 .B smartpqi
@@ -107,6 +108,11 @@ Disables driver utilization of Linux kernel managed interrupts for
 controllers. The managed interrupts feature automatically distributes
 interrupts to all available CPUs and assigns SMP affinity.
 The default value is 0 (managed interrupts enabled).
+.TP
+.BR ctrl_ready_timeout= { 0 | 30-1800 }
+This option specifies the timeout in seconds for the driver to wait
+for controller ready. The valid range is 0 or 30-1800. The default value
+is 0, which causes the driver to use a timeout of 180 seconds.
 .SH FILES
 .SS Device nodes
 Logical drives are accessed via the SCSI disk driver
-- 
2.42.0.rc2

