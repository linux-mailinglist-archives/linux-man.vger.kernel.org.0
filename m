Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68F257AF3EA
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 21:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235687AbjIZTNJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 15:13:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235512AbjIZTNI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 15:13:08 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F40F711D
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 12:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695755581; x=1727291581;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ul+/xjlmF4WWkfNwqAm8D7gKucSVocFW9QtdsWq121g=;
  b=yjWhcGZ8pUpLu2F0jHoN1lCn0yS3m+9cQyCiUNHJsS6GZXkBq3nBfFTV
   WCKJ+E5jKWyIH/rC9znIk+gJbiYbgRRSkUOIJInw6TEUvmvUIf5wKsiH8
   VFnhoP9MNodKqFi88qRukS+gciNOAARLzdT8hYcfpti7P+0iMaItvtnr2
   XlxLai3Ap7rD2WQg+3jwXH7GPq+zQUwEmjEONTFSysoragroIBTvWxyyf
   a3FDRczk98aBwObpfVWI7/XMhcsDNV4vNsUtYlnly6U6d7M5xbxHdYw6Y
   0FPMCWxjc3L2OTdxfcDZj/woUVCvztv4qLxDHZG2TW0+4tGIqX6Epc0cW
   w==;
X-CSE-ConnectionGUID: 6wpaoI9/RNSONHv7NUfHng==
X-CSE-MsgGUID: XX1u6UwZQyug05GJaYZEYQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; 
   d="scan'208";a="6973989"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 26 Sep 2023 12:13:01 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 26 Sep 2023 12:12:55 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 26 Sep 2023 12:12:55 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>, <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v3 08/10] smartpqi: add host attributes
Date:   Tue, 26 Sep 2023 14:12:03 -0500
Message-ID: <20230926191206.627678-9-don.brace@microchip.com>
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
 man4/smartpqi.4 | 57 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 635b3fa185ab..19708a01f531 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -235,6 +235,63 @@ $ \c
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
-- 
2.42.0.158.g94e83dcf5b

