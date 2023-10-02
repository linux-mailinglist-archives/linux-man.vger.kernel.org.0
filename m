Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3DD87B5B94
	for <lists+linux-man@lfdr.de>; Mon,  2 Oct 2023 21:51:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238933AbjJBTvT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Oct 2023 15:51:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229750AbjJBTvR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Oct 2023 15:51:17 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1873DA
        for <linux-man@vger.kernel.org>; Mon,  2 Oct 2023 12:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1696276275; x=1727812275;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=X2X57mt8fzijpXb13IwkmNrHw7A5OjtNBoPKBTmLins=;
  b=ZhSLiXIlyzVZ8BCHwi3iQPTu1BOt3BWo5LHUR10SU8kHoI16G2jtT8aw
   Grz+fCYFJhQcdwk4itpQUNGEOPNLlBbix/6QZu906WKlI2lKkZcs7kNFZ
   VQcFrCX+Df/P+/cOD3+hrCYd/rYRj9nEWCizb9a2EKRhhNP4jkmwAqJMU
   QhRh4ZAScfA97uIXO+SbT2UZZ1N4r2AoSe3cS8d9B+UdJqhCEqia6jLTe
   y2aPBk2uzPb0Ng1Z9G7BGhWYMxdef64qTc2hfdHqfr3Qxer8C7v+1Pomb
   IC3J08BK0avExlJWVtesH5Jptrk0Li+KQQsoOHni3VPc13GHNqqWHuWG2
   g==;
X-CSE-ConnectionGUID: wxLD4crfTBmP3fcAafztCg==
X-CSE-MsgGUID: 5oLbfW9yTMO092yDVIlg+g==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; 
   d="scan'208";a="238286347"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 02 Oct 2023 12:51:14 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 2 Oct 2023 12:51:13 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 2 Oct 2023 12:51:13 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v4 1/5] smartpqi: add module parameter ctrl_ready_timeout
Date:   Mon, 2 Oct 2023 14:54:00 -0500
Message-ID: <20231002195404.153182-2-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.296.g493f462273
In-Reply-To: <20231002195404.153182-1-don.brace@microchip.com>
References: <20231002195404.153182-1-don.brace@microchip.com>
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

Allow user to change the length of time that the driver
will wait for the controller to become ready.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 32f9240e37f2..5ccbbe1c4ef1 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -17,6 +17,7 @@ smartpqi \- Microchip Smart Storage SCSI driver
 .RB [ expose_ld_first= { 0 | 1 }]
 .RB [ hide_vsep= { 0 | 1 }]
 .RB [ disable_managed_interrupts= { 0 | 1 }]
+.RB [ ctrl_ready_timeout= { 0 | 30-1800 }]
 .YS
 .SH DESCRIPTION
 .B smartpqi
@@ -107,6 +108,11 @@ Disables driver utilization of Linux kernel managed interrupts for controllers.
 The managed interrupts feature automatically distributes interrupts
 to all available CPUs and assigns SMP affinity.
 The default value is 0 (managed interrupts enabled).
+.TP
+.BR ctrl_ready_timeout= { 0 | 30-1800 }
+This option specifies the timeout in seconds for the driver to wait
+for controller ready. The valid range is 0 or 30-1800. The default value
+is 0, which causes the driver to use a timeout of 180 seconds.
 .SH FILES
 .SS Device nodes
 Logical drives are accessed via the SCSI disk driver
-- 
2.42.0.296.g493f462273

