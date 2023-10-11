Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D4277C5D4C
	for <lists+linux-man@lfdr.de>; Wed, 11 Oct 2023 21:00:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233157AbjJKTAp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Oct 2023 15:00:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233170AbjJKTAn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Oct 2023 15:00:43 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC1E2A4
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 12:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1697050840; x=1728586840;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Ghc7pJGnkiWwiHnnx0WYOOyNK42TxbNVWrDuax7d59g=;
  b=b8qLW18Zyt6W/SlxQAQG2JaQ01uB5DdU/6avNBfXBAkqKBKuqILdsfdf
   oCIiy39zGX63HylQ2oszzSyghzDn4bZWfMmhslVqNZ3Wxbs062ZPmxYfW
   FGsu0Z0Kj0Y0k7v8waY6HNoBELnd18CxQxWK6GH1ZPDHgSFFr0ZUpusl4
   KPMnjVhlvd5ky5hlKyainthznWPHGF1z+lE8gU6TYoG0Sh0+TUEV9J9iO
   R7pcoC+qg4gNVbxHB0LXIi+cZpTtREQUdr7EeIqeQ8UnSoax/wa/T5/lJ
   XMqUknMzjd0tNxGRINYOy9Vbno0jU8pl98Jd9d00lz54aAmQ//GJsNEKz
   w==;
X-CSE-ConnectionGUID: pm9Ss1vOTz6bptA6m+j7Tg==
X-CSE-MsgGUID: QkquAsjcT1eRgggj00fMdQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="10302997"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Oct 2023 12:00:39 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 11 Oct 2023 12:00:26 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 11 Oct 2023 12:00:26 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v7 4/4] smartpqi: add device attributes
Date:   Wed, 11 Oct 2023 14:00:24 -0500
Message-ID: <20231011190024.42728-5-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.345.gaab89be2eb
In-Reply-To: <20231011190024.42728-1-don.brace@microchip.com>
References: <20231011190024.42728-1-don.brace@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
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
index a32eac206904..00524bb32850 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -363,6 +363,101 @@ $ \c
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
2.42.0.345.gaab89be2eb

