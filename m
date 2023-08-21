Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F930783252
	for <lists+linux-man@lfdr.de>; Mon, 21 Aug 2023 22:21:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbjHUT4D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Aug 2023 15:56:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229807AbjHUT4D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Aug 2023 15:56:03 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B235318C
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 12:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1692647757; x=1724183757;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=I7QjmXmbFzvEX9pvb9sKLozVcyYvR3TYw474V/DgyAQ=;
  b=r3SIxKZrWW+A6Jl7MsNfvMpv9xbq16wSzIHCoEkBXs5YpP0e8yH2P9pq
   tfX+asLTlbdU621+RmYNvFX6+DX47gjHix9HN11QowBGxXGWK04Sc2sTF
   Ds2yoHOjz3ke7O0DN77jUThwJrCfhH02QBYU/rMur5aOY/WqAoklnty/p
   rjLI46nRi9ld4FzbEiFEnhtFo13N/22aGfUXisi7h4tGJQg4/i08H+a/9
   wK25Ix2FnjdTN2CgJVa63B2YRCqFeYcSRAIc6hadNdCWKXPcyHN63VB3t
   WVqdD3EKe6zBuOyuimGim/wF+eGxoOJfJ+fcqMAbNhkUOaTdjFsFD4VPc
   w==;
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; 
   d="scan'208";a="230959285"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Aug 2023 12:55:30 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 21 Aug 2023 12:55:23 -0700
Received: from brunhilda.pdev.net (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 21 Aug 2023 12:55:23 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v2 07/10] smartpqi: update device attribute descriptions
Date:   Mon, 21 Aug 2023 14:57:23 -0500
Message-ID: <20230821195726.446748-8-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.rc2
In-Reply-To: <20230821195726.446748-1-don.brace@microchip.com>
References: <20230821195726.446748-1-don.brace@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Small updates to device attribute descriptions.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 165eee6848c3..635b3fa185ab 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -250,7 +250,7 @@ is the logical unit number (LUN).
 The
 .I raid_level
 attribute is read-only.
-This attribute contains the RAID level of each logical drive.
+This attribute contains the RAID level of the logical volume.
 .IP
 For example:
 .IP
@@ -266,7 +266,7 @@ RAID 0
 The
 .I sas_address
 attribute is read-only.
-This attribute contains the unique identifier of the disk.
+This attribute contains the SAS address of the device.
 .IP
 For example:
 .IP
-- 
2.42.0.rc2

