Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EF287CAE70
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 18:04:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbjJPQE3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 12:04:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbjJPQE2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 12:04:28 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77380AD
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 09:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1697472268; x=1729008268;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=m1V01RiX/oyjMg31dGZHzpfilB+Pxbx7sUZW5a0Oo14=;
  b=iswniZrR7dJry75FjjjcCylTzSylPiYzQHjQB5w65WqnVpOPF64QljFQ
   xEX86Slfej91MVpca3bKUpmqd/K++didaO4gcrMJ5uV2Pirvibm5TxXzG
   1LDmypCW/2VlFf341PWi85+ZYdnQVbezLA9VjDX9OmUPTVun03ZEB+YzN
   nqI3SY2fu41a7eXDlFEPvPu3koVTIuV2QcqBP27H3hzQa8Bo5a+p72j3h
   DqG12l4B6zjyU6tlNvtp/Vd8sHT1QiQBl9pqoOaalSQgk0NjPLu70pHpc
   n5nzLdjNbPmFEKe7e1vhuEhzhr3xhuaVV5iU/7IPz11+EPTXoYW/MG3mC
   g==;
X-CSE-ConnectionGUID: 3SAhPc6OTZKARWpI/vFOfg==
X-CSE-MsgGUID: zzdm3yWNQU6fnwlBwjMBjg==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; 
   d="scan'208";a="240814777"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 16 Oct 2023 09:04:27 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 16 Oct 2023 09:04:04 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 16 Oct 2023 09:04:03 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v8 1/3] smartpqi: update host attribute descriptions
Date:   Mon, 16 Oct 2023 11:04:01 -0500
Message-ID: <20231016160403.636655-2-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.357.g59167d7d09
In-Reply-To: <20231016160403.636655-1-don.brace@microchip.com>
References: <20231016160403.636655-1-don.brace@microchip.com>
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

Change the word "drives" to "volumes".

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 393545d3728d..1e5b6d76f548 100644
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
2.42.0.357.g59167d7d09

