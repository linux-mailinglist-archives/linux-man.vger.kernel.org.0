Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B4C37D6EF5
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 16:42:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344902AbjJYOXg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Oct 2023 10:23:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344933AbjJYOXe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Oct 2023 10:23:34 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B379318A
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 07:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1698243812; x=1729779812;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OMtRHUl70k/Ee9a1Wv8oz1RaEv9t1GueNkVF9WaSn1w=;
  b=axj5Ebw1n2J25c5N39b5KtIvHWYKt2LtggwfSE9GziRy7HBHDxPci5WA
   izAoTjp5mPnViCWXtS45tSYqjvkut0hqUVCnlOTqdwQbYidwGvQ2o9LnI
   CFihAeODZ5FrJnkcRnULiamD8rYPK1FkBDMNBU8CtWD2CGRUl6FLiMUki
   9OMr7WSrwS7Rr7vCyt51SfJMEMRNVsFjgQoQ5tIB9QW6LJNQBoM4Btvtl
   lp0CENz8G31C5pEszNyeAeOKHt10FD/Zltv88/Pm/QWl+BpNUkIIijv/3
   Mbh6o1cppWLC7/f3UuQK0fVsfg03t5n+nthGarinPGbGfR6GUUq5bWEmQ
   Q==;
X-CSE-ConnectionGUID: 4mfPcuXFT1Grwrk/nDBIFg==
X-CSE-MsgGUID: E3ABPZGRTXCX5VOMU5SFmw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="11156983"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 25 Oct 2023 07:23:32 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 25 Oct 2023 07:22:36 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 25 Oct 2023 07:22:36 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v10 1/1] smartpqi: remove sysfs entry for version
Date:   Wed, 25 Oct 2023 09:22:35 -0500
Message-ID: <20231025142235.82218-2-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.482.g2e8e77cbac
In-Reply-To: <20231025142235.82218-1-don.brace@microchip.com>
References: <20231025142235.82218-1-don.brace@microchip.com>
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
two sysfs entries: driver_version and firmware_version by
patch "(6d90615f1346 scsi: smartpqi: add sysfs entries)" in Linus's
tree Aug 22 2019.

Add HISTORY section.
Enumerate old sysfs entries replaced by newer entries.

Signed-off-by: Don Brace <don.brace@microchip.com>
Suggested-by: Alejandro Colomar <alx@kernel.org>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 25 +++++++------------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 5f333356aae3..9718cb4b22e8 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -149,24 +149,6 @@ changes, so the user should not normally have to write to this file.
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
@@ -397,6 +379,13 @@ refer to the User Guide for the controller,
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

