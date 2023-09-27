Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6834A7B0A35
	for <lists+linux-man@lfdr.de>; Wed, 27 Sep 2023 18:32:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230445AbjI0QcZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Sep 2023 12:32:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233092AbjI0Pqo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Sep 2023 11:46:44 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA1CC27E6E
        for <linux-man@vger.kernel.org>; Wed, 27 Sep 2023 08:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695829596; x=1727365596;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=7NssBGclghVpyuFpDvaM2k2BwLA/eDsvMkndy8P3V/A=;
  b=Us3rKdDJ4F3WdIhcAgYZUJL3gl7mKuVCBico2lP0MDdTR6YGHBskz2/3
   z52YPVGobGmmmNdz5/5bzMW2+e8vD0+tFuYtzd6J7zci22gEoaDZ9RWR1
   l6AHbotQpYzU5jzPGuvQweKjeOPWZDOzz6Km/FLipJxQpKPcVIHB1+G+I
   1cKnfCMWt/vCwmvuJv3clSE0ILr/YfIF0gJeqZoXtS3PC7Gk6Ba8C4xc0
   8NpOFuixzO9mmZ+njvJPG6Z2EU3rQykqLyB1yhOLYcx0qAUf3NvYhitr7
   fifaJwlx5+Gpv7alTsssXxhuRHaq/f6hVDc9CF4jqyzW5cL2mMraIgiuN
   w==;
X-CSE-ConnectionGUID: AKehnY7+RvuxgQN91IwFsw==
X-CSE-MsgGUID: rwzEtem8RFyM6ygfw4I4Sw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; 
   d="scan'208";a="237503888"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 27 Sep 2023 08:46:36 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 27 Sep 2023 08:46:35 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 27 Sep 2023 08:46:35 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>, <alx@kernel.org>, <aeb@cwi.nl>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] smartpqi: add sg entry to see_also
Date:   Wed, 27 Sep 2023 10:45:47 -0500
Message-ID: <20230927154547.724640-2-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.158.g94e83dcf5b
In-Reply-To: <20230927154547.724640-1-don.brace@microchip.com>
References: <20230927154547.724640-1-don.brace@microchip.com>
MIME-Version: 1.0
Organization: Microchip Technology Inc.
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

