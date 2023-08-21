Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 582397832FA
	for <lists+linux-man@lfdr.de>; Mon, 21 Aug 2023 22:22:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229778AbjHUTza (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Aug 2023 15:55:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229780AbjHUTz3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Aug 2023 15:55:29 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E98FD
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 12:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1692647725; x=1724183725;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=JqB0Bbko4Pmn2lXT/GqbubeF9fdtUqMHUG/q9JKdn+k=;
  b=jUV/3Lt9vtPTDC6qUHLvFV9xQLCY21uOECXriiJlYSEDRkaYlgA1+RHE
   7nGDX3e+ZGmf1bzW4+f3mXMuW3nHyQlYY87V/piDRQh1H/pu/GDWlb2V1
   3807yz0UYg8fSM1AZKWx5sQizFI4gnQT2OWa5oh8dNaeb4KA4BLc3Bho6
   Fmtmm/b2PVpamfF1bfKqO7yT8oIOhkRxT4DIJgBMMYPx7XE6frWwuIPRG
   M7MoplMHcQhXpXg/rM1DmXIIm2oIC6FVQZ+nNU97a7NxVUK22p3kLYRDL
   7QStuCX6dkMf7KLFaxdK4OJr282GO/6WrFSsldZOB5ZmS2hA8R+n0O7M1
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; 
   d="scan'208";a="519932"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Aug 2023 12:55:24 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 21 Aug 2023 12:55:21 -0700
Received: from brunhilda.pdev.net (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 21 Aug 2023 12:55:21 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v2 02/10] smartpqi: update module parameter descriptions
Date:   Mon, 21 Aug 2023 14:57:18 -0500
Message-ID: <20230821195726.446748-3-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.rc2
In-Reply-To: <20230821195726.446748-1-don.brace@microchip.com>
References: <20230821195726.446748-1-don.brace@microchip.com>
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

Minor changes to the descriptions of the following module parameters:
	disable_device_id_wildcards
	disable_heartbeat
	disable_ctrl_shutdown
	expose_ld_first
	hide_vsep

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 463976f88cea..428d79a19840 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -66,17 +66,17 @@ Allows BMIC and CISS commands to be passed through to the controller.
 .TP
 .BR disable_device_id_wildcards= { 0 | 1 }
 Disables support for device ID wildcards.
-The default value is 0.
+The default value is 0 (wildcards are enabled).
 .TP
 .BR disable_heartbeat= { 0 | 1 }
 Disables support for the controller's heartbeat check.
 This parameter is used for debugging purposes.
-The default value is 0, leaving the controller's heartbeat check active.
+The default value is 0 (the controller's heartbeat check is enabled).
 .TP
 .BR disable_ctrl_shutdown= { 0 | 1 }
 Disables support for shutting down the controller in the
 event of a controller lockup.
-The default value is 0.
+The default value is 0 (controller will be shut down).
 .TP
 .BR lockup_action= { none | reboot | panic }
 Specifies the action the driver takes when a controller
@@ -94,14 +94,12 @@ parameter	action
 .TE
 .TP
 .BR expose_ld_first= { 0 | 1 }
-This option enables support for exposing logical devices to
-the operating system before physical devices.
-The default value is 0.
+This option exposes logical devices to the OS before physical devices.
+The default value is 0 (physical devices exposed first).
 .TP
 .BR hide_vsep= { 0 | 1 }
-This option enables disabling exposure of the virtual SEP to the host.
-This is usually associated with direct attached drives.
-The default value is 0.
+This option disables exposure of the virtual SEP to the OS.
+The default value is 0 (virtual SEP is exposed).
 .SH FILES
 .SS Device nodes
 Logical drives are accessed via the SCSI disk driver
-- 
2.42.0.rc2

