Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E57567D5DE1
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 00:02:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234971AbjJXWCk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 18:02:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344403AbjJXWCk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 18:02:40 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFCBD10CB
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 15:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1698184957; x=1729720957;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lIiHj/NwDXm0bxdMS2T1GWrK5whq0gGCbWXnayf1Jt0=;
  b=H5IzCRpDezjAx93gXtj1MbJgl1KPzHhGglZgjfcYfNag5ToTHKQwWbjJ
   5D42NQa1CSkbO7WAvPquEOfRUneT1Ivub+KXfLuxc/B4/rcIyXuSW//RK
   SA+JAep71O+21+kXPBXiv2nGANm7zk0x0xdnl+eQSBOaa/1qF2zvUFU8m
   P9/YSkWZIFLAaBalYmPggiyUfDPqODIt17H8M0MtYOaLGS/RZWlt+sdHG
   6a7YhlqvXo4A6DWuRpGkTQrmR3b1XDOxb1uPpf3gxnZR819eAbuXP5s26
   vTwuG+V+fic8u2vP5o9C9sqiz5l6I7TlXjnkSqmxWdPT5gzdPQb5k7jZt
   Q==;
X-CSE-ConnectionGUID: Fj7qzkgYRiaps+ZeX6P95A==
X-CSE-MsgGUID: fq2gumPqRZuSpLmCF/xUbw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="11119330"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Oct 2023 15:02:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 24 Oct 2023 15:01:54 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 24 Oct 2023 15:01:54 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v9 3/3] smartpqi: add device attributes
Date:   Tue, 24 Oct 2023 17:01:53 -0500
Message-ID: <20231024220153.36748-4-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.482.g2e8e77cbac
In-Reply-To: <20231024220153.36748-1-don.brace@microchip.com>
References: <20231024220153.36748-1-don.brace@microchip.com>
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
 man4/smartpqi.4 | 99 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 0cb018d01fc5..d06f34d55d10 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -364,6 +364,105 @@ $ \c
 0
 .EE
 .in
+.TP
+.IR /sys/class/scsi_disk/ c : b : t : l /device/lunid
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
+.IR /sys/class/scsi_disk/ c : b : t : l /device/unique_id
+The
+.I unique_id
+attribute is read-only.
+This attribute contains a 16-byte ID
+that uniquely identifies the device within the controller.
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
+.IR /sys/class/scsi_disk/ c : b : t : l /device/path_info
+The
+.I path_info
+attribute is read-only.
+This attribute contains the
+.IR c : b : t : l
+of the device
+along with the device type
+and whether the device is Active or Inactive.
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
+.IR /sys/class/scsi_disk/ c : b : t : l /device/raid_bypass_cnt
+The
+.I raid_bypass_cnt
+attribute is read-only.
+This attribute contains the number of I/O requests
+that have gone through the ioaccel path
+for ioaccel-enabled volumes.
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
+.IR /sys/class/scsi_disk/ c : b : t : l /device/sas_ncq_prio_enable
+The
+.I sas_ncq_prio_enable
+attribute is read/write.
+This attribute enables SATA NCQ priority support.
+This attribute works only when device has NCQ support
+and controller firmware can handle IO with NCQ priority attribute.
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
2.42.0.482.g2e8e77cbac

