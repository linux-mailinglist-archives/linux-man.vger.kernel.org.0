Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD2C578322D
	for <lists+linux-man@lfdr.de>; Mon, 21 Aug 2023 22:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbjHUT4E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Aug 2023 15:56:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbjHUT4D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Aug 2023 15:56:03 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F22F310F
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 12:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1692647758; x=1724183758;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=DfZaNcwTzMsTsMqyLgCUmiaz6u7Nrw2nxBZjuKA4s3M=;
  b=1KJUHoTu7PxH8utQUNR97/0yIi5BNkdfyVvzNrBjQXfH68FlqLwAcn5T
   DjcjYGp4SlTivOw8swsI3K0ChKGQexDCqlH2zEN1cRmbM+OyzZFX/OJXT
   VMj4N2DGOkR3aPzEYAhyi0Z6+CJ0tisOUNHSKITK6AywcM5zQKGgs3aII
   pOFATjUPke2pRy9UC8A4AtXfrMiQxyM4Wc4u+BMx6XKp0e7eCnCJvFHHk
   PVPUJMPyTbhyuLya/YunXxCVgUIlIbdg72JFfp56hd/GkmUaRgbSvch57
   l0gUs+q3EdKH7JJi4dz+1ETGaNQ0b1GqX6htbtyCxnxQXTjNDExezxWiw
   g==;
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; 
   d="scan'208";a="230959320"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Aug 2023 12:55:51 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 21 Aug 2023 12:55:24 -0700
Received: from brunhilda.pdev.net (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 21 Aug 2023 12:55:24 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v2 10/10] smartpqi: add sg entry to see_also
Date:   Mon, 21 Aug 2023 14:57:26 -0500
Message-ID: <20230821195726.446748-11-don.brace@microchip.com>
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

The sg driver can interface with smartpqi. Add
this into the SEE ALSO section of the man page.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 3de8b0c97423..7c1da3c80d57 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -462,7 +462,8 @@ which can be found by searching for the specific controller at
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
2.42.0.rc2

