Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 282417C5D4B
	for <lists+linux-man@lfdr.de>; Wed, 11 Oct 2023 21:00:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233197AbjJKTAo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Oct 2023 15:00:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233070AbjJKTAm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Oct 2023 15:00:42 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D11759E
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 12:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1697050840; x=1728586840;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=giwRbUPAcyhHKM/7FgRs+dPcPOfcPuWIMsaBD49tvEI=;
  b=o8z62pOgJusfR/qDxIrS2zEaYuTRtTpyqc+JXBXiidrOLyyludRyguD1
   vQk60x2lK0TkUMj4lEOzpzXUO74F7No4sOooisvEUZFEcCROcd3gpcjP0
   zP/B960Rt8qomxWGbzb36wGLPOR/xaA6zVblr3zxNwSvpVUVuWB+wChZA
   B0aNDrc7AL/hzIUT8UEBkp8v1F1zjbPt5lncERM0Okqxqg10uAsVVnfd2
   Q2lqlfKAC5vJ9DHuRekI7yi4m3994u18MHL3N0ZJdBZtWVtUnm/uMU9iQ
   XDljqQT6/aLxvpeDkOKPFDokkIhvbfKVxDVw4YfukeCvn7WkajZ4EBFHP
   g==;
X-CSE-ConnectionGUID: pm9Ss1vOTz6bptA6m+j7Tg==
X-CSE-MsgGUID: LijV7GGwSeeRoG5kC8enhw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="10302996"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Oct 2023 12:00:38 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 11 Oct 2023 12:00:25 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 11 Oct 2023 12:00:25 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v7 3/4] smartpqi: add host attributes
Date:   Wed, 11 Oct 2023 14:00:23 -0500
Message-ID: <20231011190024.42728-4-don.brace@microchip.com>
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

Add in some host level sysfs entries:
enable_stream_detection - Send RAID 5/6 writes down the normal I/O path.
                          Allow for full-stripe write requests.
ssd_smart_path_enabled  - Indicates that our Accelerated I/O path is
                          enabled. (AIO).
enable_r5_writes        - Allow RAID 5 write operations down the AIO path.
enable_r6_writes        - Allow RAID 6 write operations down the AIO path.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 62 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 89387c0498fd..a32eac206904 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -237,6 +237,68 @@ $ \c
 Adaptec
 .EE
 .in
+.TP
+.I /sys/class/scsi_host/host*/enable_stream_detection
+The
+.I enable_stream_detection
+attribute is read-write.
+This attribute enables/disables stream detection in the driver.
+Enabling stream detection can improve sequential write performance for
+ioaccel-enabled volumes. See the
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
+.I /sys/class/scsi_host/host*/enable_r5_writes
+The
+.I enable_r5_writes
+attribute is read-write.
+This attribute enables/disables RAID 5 write operations for ioaccel-enabled
+volumes.
+Enabling can improve sequential write performance.
+See the
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
+.I /sys/class/scsi_host/host*/enable_r6_writes
+The
+.I enable_r6_writes
+attribute is read-write.
+This attribute enables/disables RAID 6 write operations for
+ioaccel-enabled volumes.
+Enabling can improve sequential write performance.
+See the
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
-- 
2.42.0.345.gaab89be2eb

