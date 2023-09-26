Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CCFF7AF3E4
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 21:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235619AbjIZTNF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 15:13:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235674AbjIZTNC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 15:13:02 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D15D09F
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 12:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695755575; x=1727291575;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AGf32Ccn+ccP3h9Bk487kAmQsfs5OcCE6U2W6o+JP1Y=;
  b=cOaFjVV+Fmk7TtatRlS0ydZ+RHH4SwaUk7p+Es7ZhTxKCK2aND5nxUQv
   kcME/lDqR0/bY7NF5v4TMd6Z72YPuPHqAz2+tVXoagD8cH/OTXv/nccfh
   fmAqvY7NOTcMn+ruLz2DZFvQ2oiRoco6mHeUKwTJXKM/tlUxryhUNe/LX
   d3qjR4ykOgUybZxhVmYzPbUHGjeDvQFEOR0PY6aqfKYlwutjrOR4+MaFE
   LdHl6MuVBp+CDwSwgu2rkIkNR2TqCI7Gf+5mugmOTrCBlmqvgpzkGxzHD
   cRw5iCfh96xEQtcEDiXM20XZheNFRE5d2FSWsHV+Vam1++QYE3eSP76iD
   Q==;
X-CSE-ConnectionGUID: 9rVscL9ZQ+ONqtmBXtxhZQ==
X-CSE-MsgGUID: zUV+D52+SGmGmMuFuh35mA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; 
   d="scan'208";a="6593831"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 26 Sep 2023 12:12:54 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 26 Sep 2023 12:12:54 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 26 Sep 2023 12:12:54 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>, <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v3 05/10] smartpqi: update FILES section
Date:   Tue, 26 Sep 2023 14:12:00 -0500
Message-ID: <20230926191206.627678-6-don.brace@microchip.com>
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
index f04472836210..87f6990f2455 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -115,7 +115,7 @@ for controller ready. The valid range is 0 or 30-1800. The default value
 is 0, which causes the driver to use a timeout of 180 seconds.
 .SH FILES
 .SS Device nodes
-Logical drives are accessed via the SCSI disk driver
+Disk drives are accessed via the SCSI disk driver
 .RI ( sd ),
 tape drives via the SCSI tape driver
 .RI ( st ),
-- 
2.42.0.158.g94e83dcf5b

