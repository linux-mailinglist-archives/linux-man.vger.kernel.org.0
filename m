Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EC12742F4A
	for <lists+linux-man@lfdr.de>; Thu, 29 Jun 2023 23:09:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231235AbjF2VJc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jun 2023 17:09:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbjF2VJc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jun 2023 17:09:32 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AC192D50
        for <linux-man@vger.kernel.org>; Thu, 29 Jun 2023 14:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1688072971; x=1719608971;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hL8OFq9yGlVVjU/aha3dSFzvnGxbvCR9fkDX2X/2dVs=;
  b=VYe4B9GHTiZqIImtReORN+PiNUBt0aD3oqhSsEiex3I2SDg/UvrUQBIb
   mfEZ2sn3ktjRC89WysnSI3V2ramhIZl0cQGI2j/w1TKYjgimeSdxmvbjO
   0g2QX+FBqdOcyb4OQwZcr5rFE+dqUpROH29+kjQIETfsNQzhIEiHfjtVf
   VCCETt01z2uGSkEuxsOUX5NI7KqK0wiCTS3ZN4CV/zFvZMGVRSZ5JTHqB
   GUEpqyNC2JaoWIJ/0AVvCiu0HHaVWRsJNWzxSBp1VWYkdRUrRRkCv+exl
   hE5W9kgD4ENVkyfj+lDtqV3NPeAGrrD9S/8epI/J2gk8PGVPlicuFN4aM
   A==;
X-IronPort-AV: E=Sophos;i="6.01,169,1684825200"; 
   d="scan'208";a="221284489"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 29 Jun 2023 14:09:26 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 29 Jun 2023 14:09:25 -0700
Received: from brunhilda.pdev.net (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Thu, 29 Jun 2023 14:09:25 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] smartpqi: update man page
Date:   Thu, 29 Jun 2023 16:10:21 -0500
Message-ID: <20230629211021.1206412-2-don.brace@microchip.com>
X-Mailer: git-send-email 2.41.0.199.ga9e066fa63
In-Reply-To: <20230629211021.1206412-1-don.brace@microchip.com>
References: <20230629211021.1206412-1-don.brace@microchip.com>
MIME-Version: 1.0
Organization: Microchip Technology Inc.
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Update smartpqi.4 man page with out out-of-box driver.

Update copywrite.
Change URL to microchip.
Add in two new module parameters:
    disable_managed_interrupts
    ctrl_ready_timeout
Add in some host level sysfs entries:
    enable_stream_detection
    ssd_smart_path_enabled
    enable_r5_writes
    enable_r6_writes
Add in some device level sysfs entries:
    lunid
    unique_id
    path_info
    raid_bypass_cnt
    sas_ncq_prio_enable
Update some descriptions.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 229 +++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 186 insertions(+), 43 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 147d53fc2a0a..7c1da3c80d57 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -1,13 +1,13 @@
 '\" t
-.\" Copyright (C) 2019, Microchip Technology Inc. and its subsidiaries
+.\" Copyright (C) 2019-2023, Microchip Technology Inc. and its subsidiaries
 .\" Copyright (C) 2016-2018, Microsemi Corporation
 .\" Copyright (C) 2016, PMC-Sierra, Inc.
-.\" Written by Kevin Barnett <kevin.barnett@microsemi.com>
+.\" Written by Kevin Barnett <kevin.barnett@microchip.com>
 .\"
 .\" SPDX-License-Identifier: GPL-2.0-only
 .TH smartpqi 4 (date) "Linux man-pages (unreleased)"
 .SH NAME
-smartpqi \- Microsemi Smart Family SCSI driver
+smartpqi \- Microchip Smart Storage SCSI driver
 .SH SYNOPSIS
 .SY "modprobe smartpqi"
 .RB [ disable_device_id_wildcards= { 0 | 1 }]
@@ -16,10 +16,12 @@ smartpqi \- Microsemi Smart Family SCSI driver
 .RB [ lockup_action= { none | reboot | panic }]
 .RB [ expose_ld_first= { 0 | 1 }]
 .RB [ hide_vsep= { 0 | 1 }]
+.RB [ disable_managed_interrupts= { 0 | 1 }]
+.RB [ ctrl_ready_timeout= { 0 | 30-1800 }]
 .YS
 .SH DESCRIPTION
 .B smartpqi
-is a SCSI driver for Microsemi Smart Family controllers.
+is a SCSI driver for Microchip Smart Storage controllers.
 .SS Supported \f[BI]ioctl\fP\/() operations
 For compatibility with applications written for the
 .BR cciss (4)
@@ -66,17 +68,17 @@ Allows BMIC and CISS commands to be passed through to the controller.
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
@@ -94,17 +96,26 @@ parameter	action
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
+.TP
+.BR disable_managed_interrupts= { 0 | 1 }
+Disables driver utilization of Linux kernel managed interrupts for
+controllers. The managed interrupts feature automatically distributes
+interrupts to all available CPUs and assigns SMP affinity.
+The default value is 0 (managed interrupts enabled).
+.TP
+.BR ctrl_ready_timeout= { 0 | 30-1800 }
+This option specifies the timeout in seconds for the driver to wait
+for controller ready. The valid range is 0 or 30-1800. The default value
+is 0, which causes the driver to use a timeout of 180 seconds.
 .SH FILES
 .SS Device nodes
-Logical drives are accessed via the SCSI disk driver
+Disk drives are accessed via the SCSI disk driver
 .RI ( sd ),
 tape drives via the SCSI tape driver
 .RI ( st ),
@@ -124,29 +135,12 @@ The host
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
@@ -162,7 +156,7 @@ for an explanation of the
 .I lockup_action
 values.
 .TP
-.I /sys/class/scsi_host/host*/driver_version
+.IR /sys/class/scsi_host/host*/driver_version
 The
 .I driver_version
 attribute is read-only.
@@ -178,7 +172,7 @@ $ \c
 .EE
 .in
 .TP
-.I /sys/class/scsi_host/host*/firmware_version
+.IR /sys/class/scsi_host/host*/firmware_version
 The
 .I firmware_version
 attribute is read-only.
@@ -194,7 +188,7 @@ $ \c
 .EE
 .in
 .TP
-.I /sys/class/scsi_host/host*/model
+.IR /sys/class/scsi_host/host*/model
 The
 .I model
 attribute is read-only.
@@ -210,7 +204,7 @@ $ \c
 .EE
 .in
 .TP
-.I /sys/class/scsi_host/host*/serial_number
+.IR /sys/class/scsi_host/host*/serial_number
 The
 .I serial_number
 attribute is read-only.
@@ -226,7 +220,7 @@ $ \c
 .EE
 .in
 .TP
-.I /sys/class/scsi_host/host*/vendor
+.IR /sys/class/scsi_host/host*/vendor
 The
 .I vendor
 attribute is read-only.
@@ -241,6 +235,63 @@ $ \c
 Adaptec
 .EE
 .in
+.TP
+.IR /sys/class/scsi_host/host*/enable_stream_detection
+The
+.I enable_stream_detection
+attribute is read-write.
+This attribute enables/disables stream detection in the driver.
+Enabling stream detection can improve sequential write performance for ioaccel-enabled volumes. See the
+.BI ssd_smart_path_enabled
+disk attribute section for details on ioaccel-enabled volumes.
+The default value is 1 (stream detection enabled).
+.IP
+Enable example:
+.IP
+.in +4n
+.EX
+$ \c
+.B echo 1 > /sys/class/scsi_host/host1/enable_stream_detection
+.EE
+.in
+.TP
+.IR /sys/class/scsi_host/host*/enable_r5_writes
+The
+.I enable_r5_writes
+attribute is read-write.
+This attribute enables/disables RAID 5 write operations for ioaccel-enabled volumes.
+Enabling can improve sequential write performance. See the
+.BI ssd_smart_path_enabled
+disk attribute section for details on ioaccel-enabled volumes.
+The default value is 1 (RAID 5 writes enabled).
+.IP
+Enable example:
+.IP
+.in +4n
+.EX
+$ \c
+.B echo 1 > /sys/class/scsi_host/host1/enable_r5_writes
+.EE
+.in
+.TP
+.IR /sys/class/scsi_host/host*/enable_r6_writes
+The
+.I enable_r6_writes
+attribute is read-write.
+This attribute enables/disables RAID 6 write operations for ioaccel-enabled volumes.
+Enabling can improve sequential write performance. See the
+.BI ssd_smart_path_enabled
+disk attribute section for details on ioaccel-enabled volumes.
+The default value is 1 (RAID 6 writes enabled).
+.IP
+Enable example:
+.IP
+.in +4n
+.EX
+$ \c
+.B echo 1 > /sys/class/scsi_host/host1/enable_r6_writes
+.EE
+.in
 .SS SmartPQI-specific disk attribute files in \f[BI]/sys\fP
 In the file specifications below,
 .I c
@@ -256,7 +307,7 @@ is the logical unit number (LUN).
 The
 .I raid_level
 attribute is read-only.
-This attribute contains the RAID level of each logical drive.
+This attribute contains the RAID level of the logical volume.
 .IP
 For example:
 .IP
@@ -272,7 +323,7 @@ RAID 0
 The
 .I sas_address
 attribute is read-only.
-This attribute contains the unique identifier of the disk.
+This attribute contains the SAS address of the device.
 .IP
 For example:
 .IP
@@ -305,22 +356,114 @@ $ \c
 0
 .EE
 .in
+.TP
+.IR /sys/class/scsi_disk/c : b : t : l/device/lunid
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
+.IR /sys/class/scsi_disk/c : b : t : l/device/unique_id
+The
+.I unique_id
+attribute is read-only.
+This attribute contains a 16-byte ID that uniquely identifies the device within the controller.
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
+.IR /sys/class/scsi_disk/c : b : t : l/device/path_info
+The
+.I path_info
+attribute is read-only.
+This attribute contains the c:b:t:l of the device along with the device type and whether the device is Active or Inactive. If the device is an HBA device,
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
+[12:0:9:0]    Direct-Access     PORT: C1 BOX: 1 BAY: 14 Inactive
+[12:0:9:0]    Direct-Access     PORT: C0 BOX: 1 BAY: 14 Active
+.EE
+.in
+.TP
+.IR /sys/class/scsi_disk/13:1:0:3/device/raid_bypass_cnt
+The
+.I raid_bypass_cnt
+attribute is read-only.
+This attribute contains the number of I/O requests that have gone through the
+ioaccel path for ioaccel-enabled volumes. See the
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
+.IR /sys/class/scsi_disk/13:1:0:3/device/sas_ncq_prio_enable
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
 driver was added in Linux 4.9.
 .SH NOTES
 .SS Configuration
-To configure a Microsemi Smart Family controller,
+To configure a Microchip Smart Storage controller,
 refer to the User Guide for the controller,
 which can be found by searching for the specific controller at
-.UR https://storage.microsemi.com/
+.UR https://www.microchip.com/design-centers/storage
 .UE .
 .SH SEE ALSO
 .BR cciss (4),
 .BR hpsa (4),
 .BR sd (4),
-.BR st (4)
+.BR st (4),
+.BR sg (4)
 .PP
 .I Documentation/ABI/testing/sysfs\-bus\-pci\-devices\-cciss
 in the Linux kernel source tree.
-- 
2.41.0.199.ga9e066fa63

