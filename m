Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7098C7AF3E5
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 21:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235699AbjIZTNG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 15:13:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235675AbjIZTNC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 15:13:02 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE3D121
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 12:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695755576; x=1727291576;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Jji8CPyXR/nlH4nFBa1vGgOYg0voRLEp3a5eQ2W4On4=;
  b=AX5pQn2bh7Mw4k2/h4vONnV4UHY8KiC5uDP1uwQ5VIOJr3deAt0A7RA5
   36SdgzgeEXTksE+/HMpyNTuYPDlPgUH24TByT3N6wto1j6FROdHFuq48Y
   E1FzjNcRIqeFBs32BIu8PpeGHi9lGYSb73h1UZ1XY9JceX3weAEB8flnM
   496EVKXH9dsikrgGd2lhh25FW1uOKMeTka+bVu90dsVJwVyb6K9K3YZq8
   qoG0UloePLFoIfPwm9ac607i+f9J/ZDuppcw2gorZiRU7xszDwXfFWdro
   xAGuGrcr4WbfmSG+hC24rFb2DoCyt2L5Ej1tGa/jzFMy5tElAmjHIh++5
   w==;
X-CSE-ConnectionGUID: 9rVscL9ZQ+ONqtmBXtxhZQ==
X-CSE-MsgGUID: hgcyQI7oQ0ec5QGqx++1/A==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; 
   d="scan'208";a="6593832"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 26 Sep 2023 12:12:55 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 26 Sep 2023 12:12:55 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 26 Sep 2023 12:12:54 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>, <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v3 06/10] smartpqi: update host attribute descriptions
Date:   Tue, 26 Sep 2023 14:12:01 -0500
Message-ID: <20230926191206.627678-7-don.brace@microchip.com>
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

Minor description changes for host attributes.

Just some small changes to the host attribute descriptions.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 31 +++++++------------------------
 1 file changed, 7 insertions(+), 24 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 87f6990f2455..165eee6848c3 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -135,29 +135,12 @@ The host
 attribute is a write-only attribute.
 Writing to this attribute will cause the driver to scan for new,
 changed, or removed devices (e.g., hot-plugged tape drives, or newly
-configured or deleted logical drives) and notify the SCSI mid-layer of
+configured or deleted logical volumes) and notify the SCSI mid-layer of
 any changes detected.
 Usually this action is triggered automatically by configuration
 changes, so the user should not normally have to write to this file.
 Doing so may be useful when hot-plugging devices such as tape drives or
-entire storage boxes containing pre-configured logical drives.
-.TP
-.IR /sys/class/scsi_host/host * /version
-The host
-.I version
-attribute is a read-only attribute.
-This attribute contains the driver version and the controller firmware
-version.
-.IP
-For example:
-.IP
-.in +4n
-.EX
-$ \c
-.B cat /sys/class/scsi_host/host1/version
-driver: 1.1.2\-126
-firmware: 1.29\-112
-.EE
+entire storage boxes containing pre-configured logical volumes.
 .in
 .TP
 .IR /sys/class/scsi_host/host * /lockup_action
@@ -173,7 +156,7 @@ for an explanation of the
 .I lockup_action
 values.
 .TP
-.I /sys/class/scsi_host/host*/driver_version
+.IR /sys/class/scsi_host/host*/driver_version
 The
 .I driver_version
 attribute is read-only.
@@ -189,7 +172,7 @@ $ \c
 .EE
 .in
 .TP
-.I /sys/class/scsi_host/host*/firmware_version
+.IR /sys/class/scsi_host/host*/firmware_version
 The
 .I firmware_version
 attribute is read-only.
@@ -205,7 +188,7 @@ $ \c
 .EE
 .in
 .TP
-.I /sys/class/scsi_host/host*/model
+.IR /sys/class/scsi_host/host*/model
 The
 .I model
 attribute is read-only.
@@ -221,7 +204,7 @@ $ \c
 .EE
 .in
 .TP
-.I /sys/class/scsi_host/host*/serial_number
+.IR /sys/class/scsi_host/host*/serial_number
 The
 .I serial_number
 attribute is read-only.
@@ -237,7 +220,7 @@ $ \c
 .EE
 .in
 .TP
-.I /sys/class/scsi_host/host*/vendor
+.IR /sys/class/scsi_host/host*/vendor
 The
 .I vendor
 attribute is read-only.
-- 
2.42.0.158.g94e83dcf5b

