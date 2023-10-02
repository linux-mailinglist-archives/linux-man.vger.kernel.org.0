Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51AA07B5B8C
	for <lists+linux-man@lfdr.de>; Mon,  2 Oct 2023 21:51:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbjJBTvT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Oct 2023 15:51:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238937AbjJBTvS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Oct 2023 15:51:18 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30C0BD3
        for <linux-man@vger.kernel.org>; Mon,  2 Oct 2023 12:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1696276276; x=1727812276;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HEikyuI2yO02aMy5mY4/RPQXjlZJOsXKX4PmRhTjt3g=;
  b=QtoPqRTh/pkVhzeZY8riD2zJPUaGoYRiu3F8xEcPZXgCUP+RKX8R3iFt
   /Eap4FJqPlnh9UHB4GlwwAowUrAU4VU6PFqcrOqaVuW816QnkMUiwQbMQ
   zl6F4a3W4i+h7oDFzgClTzqnyUpiwAPA9ldWTD6TQ3Q1mxoS5Xlwgpw95
   HuhRB41n8H3XAKwizCSHOfofNhovesAFfJZw9mVrhXz09aaz/wdy01F2s
   arkXy3uzhdBZpg14boqFtZAcFkyUylZ94tPGW/e1J77YIlO2E4gm6FcCQ
   gHiqXqxAJ2ku8YkOI6tHhMsaZikMGS5QQEY4+2Ah6jWm4LJrVOreiZshh
   w==;
X-CSE-ConnectionGUID: wxLD4crfTBmP3fcAafztCg==
X-CSE-MsgGUID: px/UwMIMTyipgoRS05Y87Q==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; 
   d="scan'208";a="238286354"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 02 Oct 2023 12:51:15 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 2 Oct 2023 12:51:14 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 2 Oct 2023 12:51:14 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v4 3/5] smartpqi: update host attribute descriptions
Date:   Mon, 2 Oct 2023 14:54:02 -0500
Message-ID: <20231002195404.153182-4-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.296.g493f462273
In-Reply-To: <20231002195404.153182-1-don.brace@microchip.com>
References: <20231002195404.153182-1-don.brace@microchip.com>
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
Remove the "version" sysfs entry. This entry was changed
to two sysfs entries: driver_version and firmware_version.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 21 ++-------------------
 1 file changed, 2 insertions(+), 19 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 34864e60755b..c51405c8b9cc 100644
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
-- 
2.42.0.296.g493f462273

