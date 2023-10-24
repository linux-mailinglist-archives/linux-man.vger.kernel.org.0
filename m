Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90AF77D5DE0
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 00:02:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234958AbjJXWCk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 18:02:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234970AbjJXWCj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 18:02:39 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B152A10C6
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 15:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1698184957; x=1729720957;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Yev27GPXZOEjXOAgHlJZ7KIpa2aNhQGQ2lmFX3nNUrY=;
  b=QKJfwXdsr0VirvpIlU+K3AouF9qU6nTqC2X2Rv7/Ac7hB/yiUPBksLqR
   j5aSogyYtcN/GJ9twbFUUol5TMEw5/XKZjrLar17LWZoj24aYmgllm89H
   aT0P27kywiatowt9upYVP68Kx7ztkZgFwsnRv1EIQOjK+3a/1HTozjK/J
   B8Pi6kFa+wlm/yQ3LiMlcGH4WsEhlR8r/1xNqN1fU+0Z4BPL/g6EHSGyR
   HoIIG8GoY83F4viSDRrCqMXINB4KzfJp/oB8XxXO9awm3E/HhAJCKlshW
   C9gUr93qWOZoQ7YTJwrq6XQeYUXiFvxDM5pZDOzRTTh8cVjF97f32XvXL
   A==;
X-CSE-ConnectionGUID: C7aEHM/aTTmUbh2aQh4SRw==
X-CSE-MsgGUID: DU7S3KMIRgiN2wqAyRzgSg==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="11119329"
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
Subject: [PATCH v9 2/3] smartpqi: remove sysfs entry for version
Date:   Tue, 24 Oct 2023 17:01:52 -0500
Message-ID: <20231024220153.36748-3-don.brace@microchip.com>
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
index ea8bd5e2d612..0cb018d01fc5 100644
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
@@ -393,6 +375,13 @@ refer to the User Guide for the controller,
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
2.42.0.482.g2e8e77cbac

