Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FA897AF3E9
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 21:13:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235675AbjIZTNI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 15:13:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235693AbjIZTNE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 15:13:04 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C12610A
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 12:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695755579; x=1727291579;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=7NssBGclghVpyuFpDvaM2k2BwLA/eDsvMkndy8P3V/A=;
  b=mL3SaOJTrCUJG649kf7v1PEYehyHN0IamujNa66Lyh7beL4Dz3XH3YQQ
   63whkpUhI18oV6DEXZWHZQZa3ZI0Qc7KaCELOveZf2vQgGaL9ZBRrrqoA
   KcZkjk68rMU1XJdC43JfVYiUgLCsb6UJ6GOdELMWkV1d8gNEkXqxT9IOb
   aiJpHffBzw/CWGsZOkoVKY3gGYBxjVSq5QW11vqBRT054bYBtsC6LAz/B
   TzPe5iWY0Eg+w/sz2NB6yyUeZBTpc+WwQrYbanJW2p8EtY6luDlaTBnKy
   V+7NPrACnEfw+R5JzHMmW3MvMA1766hc04+F5tdGOrzOx+jDiNB7rOY8v
   Q==;
X-CSE-ConnectionGUID: QkVnHYi7QvGtzdlA0nOndg==
X-CSE-MsgGUID: aP2YcS1QQVKJoBBYqnLnOQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; 
   d="scan'208";a="237306770"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 26 Sep 2023 12:12:57 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 26 Sep 2023 12:12:56 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 26 Sep 2023 12:12:56 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>, <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v3 10/10] smartpqi: add sg entry to see_also
Date:   Tue, 26 Sep 2023 14:12:05 -0500
Message-ID: <20230926191206.627678-11-don.brace@microchip.com>
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
2.42.0.158.g94e83dcf5b

