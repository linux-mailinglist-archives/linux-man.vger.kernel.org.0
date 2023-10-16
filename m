Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0E447CAE71
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 18:04:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232516AbjJPQEa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 12:04:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbjJPQE3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 12:04:29 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A2A1B4
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 09:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1697472268; x=1729008268;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AQUg7AL5CZBAXEWSx7ZDlvtpnw2TZY5klIoKRPn774g=;
  b=xuMlkKAWMCkgkkRDHsum/NC+YBLvHaCwCDLi37moKWh+3hDRK2nSOBf3
   FLohGc8Rq2GxGpsfEB5yunWm3QyrxWApHqMowW3PHuV1CTfoAeXIh2/qL
   VmOeuc1h+B0LhARXPfQKtgLkI8j7yl7GLNgzhlBeLRLdmdjxDRijqWNiq
   kdrDZSW2uvMzzvvoRNRsQIKhoS6PskeJYp/RPEShcszRux+9k0wEonS7V
   9D8IKxqSMUsm92bH2IYbVB71gUUQ1wq9HCW01nX8sK8PAk368dKf+1j3Z
   6JMQ0pr/GMV5ZfN0V4pgla7kzhBWTp5iUhLeLW61OHxULC9NFbLO2IMO+
   g==;
X-CSE-ConnectionGUID: 3SAhPc6OTZKARWpI/vFOfg==
X-CSE-MsgGUID: 6fL4YUSCQMOnjOc9dd5x1w==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; 
   d="scan'208";a="240814778"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 16 Oct 2023 09:04:27 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 16 Oct 2023 09:04:04 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 16 Oct 2023 09:04:04 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v8 2/3] smartpqi: remove sysfs entry for version
Date:   Mon, 16 Oct 2023 11:04:02 -0500
Message-ID: <20231016160403.636655-3-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.357.g59167d7d09
In-Reply-To: <20231016160403.636655-1-don.brace@microchip.com>
References: <20231016160403.636655-1-don.brace@microchip.com>
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

Remove the "version" sysfs entry. This entry was changed into
two sysfs entries: driver_version and firmware_version.

Add HISTORY section.
Enumerate old sysfs entries replaced by newer entries.

Signed-off-by: Don Brace <don.brace@microchip.com>
Suggested-by: Alejandro Colomar <alx@kernel.org>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 25 +++++++------------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 1e5b6d76f548..89387c0498fd 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -145,24 +145,6 @@ changes, so the user should not normally have to write to this file.
 Doing so may be useful when hot-plugging devices such as tape drives or
 entire storage boxes containing pre-configured logical volumes.
 .TP
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
-.in
-.TP
 .IR /sys/class/scsi_host/host * /lockup_action
 The host
 .I lockup_action
@@ -330,6 +312,13 @@ refer to the User Guide for the controller,
 which can be found by searching for the specific controller at
 .UR https://www.microchip.com/design-centers/storage
 .UE .
+.SH HISTORY
+.I /sys/class/scsi_host/host*/version
+was replaced by two sysfs entries:
+.IP
+.I /sys/class/scsi_host/host*/driver_version
+.IP
+.I /sys/class/scsi_host/host*/firmware_version
 .SH SEE ALSO
 .BR cciss (4),
 .BR hpsa (4),
-- 
2.42.0.357.g59167d7d09

