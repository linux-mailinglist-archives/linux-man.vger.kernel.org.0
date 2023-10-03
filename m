Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E65A7B6D8B
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 17:57:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231417AbjJCP5s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 11:57:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232085AbjJCP5r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 11:57:47 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3340AD9
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 08:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1696348664; x=1727884664;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KETMTlbJgxNSbDe5CB67nLO5oaGWnzRr9uvLiHSoxyc=;
  b=MKWiG64lQMG1SCn+j4iDdfjc+t+acioi7ODhYH13Y4icJZ7/l4Z/F0gt
   zO4YFVCs9VCnsN+Q9l1Z+TaeddroCa2Rqpx0BCgZTKXUhTlhoVZJRZd3N
   VXVFQPxtk8AlJzHumqCr0JeXQmipQPIoS4pjUPFW1Kai3RstDTBl78nAf
   AjgzVibJVQl9s5A7nuhZxWY5f9Mtcx+PDOrMjb2KSh/XNk57G6r3s6hYs
   au8BJ5Na3rGyWqsCz3B32TPlRhaexbEp1lqYtHVqc9BEMN2L0hOjwFAEL
   9pNQ7r+5LiYhr6qLsTInsO9EB0d46HyPx09Pi5l55pJ+424e+97HDCQes
   Q==;
X-CSE-ConnectionGUID: RQKvV8nBTsWC7xqOG9DlTQ==
X-CSE-MsgGUID: UkuhZprqSlmz1g0b0B+16A==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; 
   d="scan'208";a="7844536"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Oct 2023 08:57:44 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 3 Oct 2023 08:57:33 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 3 Oct 2023 08:57:33 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v5 1/6] smartpqi: add module parameter ctrl_ready_timeout
Date:   Tue, 3 Oct 2023 11:00:19 -0500
Message-ID: <20231003160024.231729-2-don.brace@microchip.com>
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

Allow user to change the length of time that the driver
will wait for the controller to become ready.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 32f9240e37f2..a045f957d006 100644
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
@@ -107,6 +108,12 @@ Disables driver utilization of Linux kernel managed interrupts for controllers.
 The managed interrupts feature automatically distributes interrupts
 to all available CPUs and assigns SMP affinity.
 The default value is 0 (managed interrupts enabled).
+.TP
+.BR ctrl_ready_timeout= { 0 | 30-1800 }
+This option specifies the timeout in seconds for the driver to wait
+for the controller to be ready.
+The valid range is 0 or 30-1800. The default value is 0,
+which causes the driver to use a timeout of 180 seconds.
 .SH FILES
 .SS Device nodes
 Logical drives are accessed via the SCSI disk driver
-- 
2.42.0.296.g493f462273

