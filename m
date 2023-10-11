Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64FC57C5D48
	for <lists+linux-man@lfdr.de>; Wed, 11 Oct 2023 21:00:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232906AbjJKTAf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Oct 2023 15:00:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232997AbjJKTAe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Oct 2023 15:00:34 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 146FF9E
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 12:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1697050832; x=1728586832;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=uFfaeOxXMxvPmBFCEyORXEnbP6rK3ZhEFgP0uSw36UA=;
  b=cObFWvj87XQwjeNorAEFabl6qIREuESGFsthDaoeaatY/Mll+Qok3Q0j
   G0MURo6/RaXJ1/xfdvjfUsomIJp4gI+W2+mgIYg5DVc2ANxl7i+xvAE0W
   MMPrMLsZYzmY5Mnfa2e0pIFTnKEwt4lmi25vtCRLmLNpk4HDrs8BOzqwC
   NdnTF++chbh60KgOTntDdU/P765AOEhiBra4R2HJQADJb9VyjUuAx0mZ2
   b5+HoMu9GLOb6RX++tgUdLeNpqLtVldUPOX1tZuKTybqdq9WK8rYjR6DU
   1LScvVmrcaAFlAIKJUqK+u63NXv7mjESDZ3NDahRDrXw3as39Bl9RCnc8
   g==;
X-CSE-ConnectionGUID: 5jFMxdJ9SaKUzSd4LFN18w==
X-CSE-MsgGUID: qxIiuwrSSTKIV7KHWRw+7Q==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="9936485"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Oct 2023 12:00:30 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 11 Oct 2023 12:00:25 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 11 Oct 2023 12:00:25 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v7 2/4] smartpqi: remove sysfs entry for version
Date:   Wed, 11 Oct 2023 14:00:22 -0500
Message-ID: <20231011190024.42728-3-don.brace@microchip.com>
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

Remove the "version" sysfs entry. This entry was changed into
two sysfs entries: driver_version and firmware_version.

Add HISTORY section.
Enumerate old sysfs entries replaced by newer entries.

Signed-off-by: Don Brace <don.brace@microchip.com>

smartpqi: add HISTORY section

Enumerate old sysfs entries replaced by newer entries.

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
2.42.0.345.gaab89be2eb

