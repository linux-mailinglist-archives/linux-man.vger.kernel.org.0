Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 867437B720D
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 21:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240895AbjJCTwB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 15:52:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232078AbjJCTv7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 15:51:59 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDF36AD
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 12:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1696362717; x=1727898717;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=0Ve3HJbEKVqj8szQRinV0imb6g9xNqyEhU3cyF/WK0s=;
  b=Flm2UcpcKpFyTXOI2xJ1BHhR2cKRzrbuFvHqRddRoNHiPxDgyvZCmuC1
   pG1DsENYgt/g19q8ojWNeUsVIX6hoYXHU+Zu/WqS3K15+qlwU9NCPKHQi
   /sOrCWdCD2wxyWwnQSak10TbiiiduI9kC2xDH0bgQkNatbWk366phNIIk
   CCA482w6iidRvD6fcr0opN3rlqJisf9WFdEOvD48BhW5v1SGMS3sitR0x
   GXikj7wE1Yi/ceeBzWxZ8aJem0Tvsjk1gJ109OeevUiP7E5MnB4isn9mi
   TOfb6vyYYoPgOI1K47Ec6NRLA4uxU4WcKSRpKThFup4i2dA0rS5hNQzMw
   w==;
X-CSE-ConnectionGUID: meeTLBFeSJ2hm6xK2zVK2g==
X-CSE-MsgGUID: Eca0j7GGQeCqHoXWBvM83Q==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; 
   d="scan'208";a="7932341"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Oct 2023 12:51:54 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 3 Oct 2023 12:51:50 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 3 Oct 2023 12:51:50 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v6 5/6] smartpqi: add device attributes
Date:   Tue, 3 Oct 2023 14:54:38 -0500
Message-ID: <20231003195439.253129-6-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.296.g493f462273
In-Reply-To: <20231003195439.253129-1-don.brace@microchip.com>
References: <20231003195439.253129-1-don.brace@microchip.com>
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

Add in some device level sysfs entry descriptions:
lunid
unique_id
path_info
raid_bypass_cnt
sas_ncq_prio_enable

These have already been provided by the driver.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 95 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 6305e15a912b..7477ee714e5b 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -362,6 +362,101 @@ $ \c
 0
 .EE
 .in
+.TP
+.I /sys/class/scsi_disk/c : b : t : l/device/lunid
+The
+.I lunid
+attribute is read-only.
+This attribute contains the SCSI LUN ID for the device.
+.IP
+For example:
+.IP
+.in +4n
+.EX
+$ \c
+.B cat /sys/class/scsi_disk/13:1:0:3/device/lunid
+0x0300004000000000
+.EE
+.in
+.TP
+.I /sys/class/scsi_disk/c : b : t : l/device/unique_id
+The
+.I unique_id
+attribute is read-only.
+This attribute contains a 16-byte ID that uniquely identifies the device
+within the controller.
+.IP
+For example:
+.IP
+.in +4n
+.EX
+$ \c
+.B cat /sys/class/scsi_disk/13:1:0:3/device/unique_id
+600508B1001C6D4723A8E98D704FDB94
+.EE
+.in
+.TP
+.I /sys/class/scsi_disk/c : b : t : l/device/path_info
+The
+.I path_info
+attribute is read-only.
+This attribute contains the c:b:t:l of the device along with the device
+type and whether the device is Active or Inactive.
+If the device is an HBA device,
+.I path_info
+will also display the PORT, BOX, and BAY the device is plugged into.
+.IP
+For example:
+.IP
+.in +4n
+.EX
+$ \c
+.B cat /sys/class/scsi_disk/13:1:0:3/device/path_info
+[13:1:0:3]    Direct-Access     Active
+
+$ \c
+.B cat /sys/class/scsi_disk/12:0:9:0/device/path_info
+[12:0:9:0]  Direct-Access   PORT: C1 BOX: 1 BAY: 14 Inactive
+[12:0:9:0]  Direct-Access   PORT: C0 BOX: 1 BAY: 14 Active
+.EE
+.in
+.TP
+.I /sys/class/scsi_disk/13:1:0:3/device/raid_bypass_cnt
+The
+.I raid_bypass_cnt
+attribute is read-only.
+This attribute contains the number of I/O requests that have gone
+through the ioaccel path for ioaccel-enabled volumes.
+See the
+.BI ssd_smart_path_enabled
+disk attribute section for details on ioaccel-enabled volumes.
+.IP
+For example:
+.IP
+.in +4n
+.EX
+$ \c
+.B cat /sys/class/scsi_disk/13:1:0:3/device/raid_bypass_cnt
+0x300
+.EE
+.in
+.TP
+.I /sys/class/scsi_disk/13:1:0:3/device/sas_ncq_prio_enable
+The
+.I sas_ncq_prio_enable
+attribute is read/write.
+This attribute enables SATA NCQ priority support.
+This attribute works only when device has NCQ support and
+controller firmware can handle IO with NCQ priority attribute.
+.IP
+For example:
+.IP
+.in +4n
+.EX
+$ \c
+.B echo 1 > /sys/class/scsi_disk/13:1:0:3/device/sas_ncq_prio_enable
+.EE
+.in
 .SH VERSIONS
 The
 .B smartpqi
-- 
2.42.0.296.g493f462273

