Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B592B7B6D90
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 17:57:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231922AbjJCP57 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 11:57:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237235AbjJCP56 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 11:57:58 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26528AF
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 08:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1696348676; x=1727884676;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Q71QnSLqZWwfrHeexAwpd4WcjwsxU1QOBjLqi64h04g=;
  b=mf7+Yj59OBgGD/5tQOLn0aEiTPuVtCBy4Ew6ru25zu8p4q42TOEDrOJt
   rcJTU9hBTTIcewf8BbJ0l4giLXgrj4CXX/ZBONqlr6+ihpz/nxJymRd3E
   UO9h4IamWzRbUQwk/xV1IGMdSIXhc6qO+QtP4SYqFOiqiVNSYQvbgYYfv
   h5lEPB+7CbobCm3/9hJLAFi/+A/aNGmXuxrl2hbbIRj/zJI1p6+jYkR4T
   2u29JVLdnUQ8d6TizWo/v4FL25AGiaZ70xSta/dUV1lVouRmX+RF2UEFW
   T51Dm9guvfXAm9wlrDQWzOtGM2aCkhTYtr3snRhYg/QxmOtdArYKMCIrn
   g==;
X-CSE-ConnectionGUID: z1jAWWweQMqREDbH4gjiHw==
X-CSE-MsgGUID: ap2N20LVTeW+CUqqehOnJw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; 
   d="scan'208";a="238453658"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Oct 2023 08:57:55 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 3 Oct 2023 08:57:35 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 3 Oct 2023 08:57:35 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v5 6/6] smartpqi: add HISTORY section
Date:   Tue, 3 Oct 2023 11:00:24 -0500
Message-ID: <20231003160024.231729-7-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.296.g493f462273
In-Reply-To: <20231003160024.231729-1-don.brace@microchip.com>
References: <20231003160024.231729-1-don.brace@microchip.com>
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

Enumerate old sysfs entries replaced by newer entries.

Suggested-by: Alejandro Colomar <alx@kernel.org>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 464ef89919a9..a66e785a0464 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -468,6 +468,13 @@ refer to the User Guide for the controller,
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
2.42.0.296.g493f462273

