Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BBDB7D5DDF
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 00:02:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234965AbjJXWCj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 18:02:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234958AbjJXWCi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 18:02:38 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFB02E8
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 15:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1698184955; x=1729720955;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=V1Ri/v/hbEBqaqyH55n53m1PwXmLxIW/WSyNizSnCZY=;
  b=yvAJmvBA5wvZBTWlTyzU5Dxxjiw+QdEb8dNVyJqt2GkUFI/UHXkSqfke
   nsWqViUUkspA+vu+COnjIMlrbJULszJV35uy5o6bbN7rKxnhwjhO2sVih
   Z7l03FXCm7m1Cbh7QT8dxiBgCOuu2JJ/ANkG77QDWwIiQEjfsi1wrCrml
   MB4d8ILeU8dcNVYmjy2gp0P3IRB8+ojVJKyYQ2/DcePXtopKt5JofxH3d
   v6HB7xHqN1OkbtUpuXAWurYZeF/38MMb/LYLWjyf0o0sbNwkr3DT+OAT4
   0sqj060irxJNqhyp2vifROuqg8Cl0vlt0yrl4qVd7fznbzN8y/N6MxCCv
   g==;
X-CSE-ConnectionGUID: T6M4RBPRRbSdr1A7iWN/+A==
X-CSE-MsgGUID: VCXEwj9UR7OUTCbflrO4+A==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="11119328"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Oct 2023 15:02:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 24 Oct 2023 15:01:54 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 24 Oct 2023 15:01:53 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v9 1/3] smartpqi: update host attribute descriptions
Date:   Tue, 24 Oct 2023 17:01:51 -0500
Message-ID: <20231024220153.36748-2-don.brace@microchip.com>
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

Minor description changes for host attributes.

Change the word "drives" to "volumes" to match our
documentation and how they are presented to SCSI Mid-layer:
as "LOGICAL VOLUMES".

I.E.
[0:1:0:0]    disk    HP       LOGICAL VOLUME   7.02  /dev/sdc

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 8227f455e052..ea8bd5e2d612 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -138,12 +138,12 @@ The host
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
+entire storage boxes containing pre-configured logical volumes.
 .TP
 .IR /sys/class/scsi_host/host * /version
 The host
-- 
2.42.0.482.g2e8e77cbac

