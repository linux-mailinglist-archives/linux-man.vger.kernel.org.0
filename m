Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 822957B6D94
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 17:58:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231888AbjJCP6L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 11:58:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232405AbjJCP6L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 11:58:11 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 767229E
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 08:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1696348688; x=1727884688;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dpyyhkPeo9t4lxy+oC+r5krHxDRgBmzOXZr6GrlERaI=;
  b=BKGo7FL2R6VvUh67elvEs62EukpbHrmcf7RvPH8N8XXcJHa327a3RuSp
   FYlPee9N6ePyuIBbqOqYcSMz62rrEECPyVGJ8TisnVJ6BVvHjA+jtbW3Q
   I2fNeedYwKSzd8t9hpFxVJXLZL/8eSJGk9nTLkiNlsk7Dg66U8awJI2af
   mSKxYr2rc9olFY3gZ9AsSEcEYJry+ZZfxcPSaQ/98WaRcW6BT0s++GXLe
   d+OdQJbsUu3+6HBkq7AGVu6v8FchvqjlM0PAtl3BF0WO3Oeh2ce15pJiT
   Lg4XkqwCyCV0GuvIUsK/mwqNUTYq8m6wySYFo7tBl8gmCmsM+jUbzaf3/
   w==;
X-CSE-ConnectionGUID: a7KbDaHGTPOUpp/PKUBfnw==
X-CSE-MsgGUID: h5Vkn6m3QV2Ql1nPqBmXhA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; 
   d="scan'208";a="7736522"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Oct 2023 08:58:07 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 3 Oct 2023 08:57:34 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 3 Oct 2023 08:57:34 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v5 2/6] smartpqi: update FILES section
Date:   Tue, 3 Oct 2023 11:00:20 -0500
Message-ID: <20231003160024.231729-3-don.brace@microchip.com>
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

Minor description changes for Device nodes.

Change "Logical drives" to "Disk drives".

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index a045f957d006..3b7cbb749153 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -116,7 +116,7 @@ The valid range is 0 or 30-1800. The default value is 0,
 which causes the driver to use a timeout of 180 seconds.
 .SH FILES
 .SS Device nodes
-Logical drives are accessed via the SCSI disk driver
+Disk drives are accessed via the SCSI disk driver
 .RI ( sd ),
 tape drives via the SCSI tape driver
 .RI ( st ),
-- 
2.42.0.296.g493f462273

