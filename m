Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA3C17AF3E6
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 21:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235613AbjIZTNG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 15:13:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235512AbjIZTND (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 15:13:03 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2876311F
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 12:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695755576; x=1727291576;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Jqz2yB136gf8abF5/LFIWFj27cxW4LCMqQ/Z1IB7hjw=;
  b=gxxXKwRQ1VTH5BRmKIsqeIzt63lrc9KsrAdRGwBhMxGHYz7gldIYfmn0
   Dwc2NibktYbCAe9uPzZy1h+dbPqV4Btvd3d4Q6pHL19vne/ItKqmx+T3e
   JF0NX3MN0hMhJh2x9Tsjw7b6I8FkD0DBWqCkpa12ihXLjFi9PX4Y2Xu6U
   nC7wf1wDugcQIJMRT9IRs+snIAtN4fIUzKeUvL5oCa/xE3E6ulMu/eHPA
   tzRtEAzK/2MQv79pjQJHXkIcNIYYii3t4Qu5qjN+q/THIs4F8PJ5UuO/b
   cvS5ElzXa5nL7v9PRDWqEmYvKOxuxV6uF4m2jyqN29EeWox92V2mqRpnc
   w==;
X-CSE-ConnectionGUID: QkVnHYi7QvGtzdlA0nOndg==
X-CSE-MsgGUID: nO86ADoyQoGfMVxaI5uXaA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; 
   d="scan'208";a="237306753"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 26 Sep 2023 12:12:55 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 26 Sep 2023 12:12:53 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 26 Sep 2023 12:12:52 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>, <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v3 01/10] smarpqi: update copyright and email addresses
Date:   Tue, 26 Sep 2023 14:11:56 -0500
Message-ID: <20230926191206.627678-2-don.brace@microchip.com>
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

Add Copyright entry for Microchip.
Change e-mail addresses from Microsemi to Microchip.
Change URL to Microchip.

Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
Reviewed-by: Scott Teel <scott.teel@microchip.com>
Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
Signed-off-by: Don Brace <don.brace@microchip.com>
---
 man4/smartpqi.4 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 147d53fc2a0a..463976f88cea 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -1,13 +1,13 @@
 '\" t
-.\" Copyright (C) 2019, Microchip Technology Inc. and its subsidiaries
+.\" Copyright (C) 2019-2023, Microchip Technology Inc. and its subsidiaries
 .\" Copyright (C) 2016-2018, Microsemi Corporation
 .\" Copyright (C) 2016, PMC-Sierra, Inc.
-.\" Written by Kevin Barnett <kevin.barnett@microsemi.com>
+.\" Written by Kevin Barnett <kevin.barnett@microchip.com>
 .\"
 .\" SPDX-License-Identifier: GPL-2.0-only
 .TH smartpqi 4 (date) "Linux man-pages (unreleased)"
 .SH NAME
-smartpqi \- Microsemi Smart Family SCSI driver
+smartpqi \- Microchip Smart Storage SCSI driver
 .SH SYNOPSIS
 .SY "modprobe smartpqi"
 .RB [ disable_device_id_wildcards= { 0 | 1 }]
@@ -19,7 +19,7 @@ smartpqi \- Microsemi Smart Family SCSI driver
 .YS
 .SH DESCRIPTION
 .B smartpqi
-is a SCSI driver for Microsemi Smart Family controllers.
+is a SCSI driver for Microchip Smart Storage controllers.
 .SS Supported \f[BI]ioctl\fP\/() operations
 For compatibility with applications written for the
 .BR cciss (4)
@@ -311,10 +311,10 @@ The
 driver was added in Linux 4.9.
 .SH NOTES
 .SS Configuration
-To configure a Microsemi Smart Family controller,
+To configure a Microchip Smart Storage controller,
 refer to the User Guide for the controller,
 which can be found by searching for the specific controller at
-.UR https://storage.microsemi.com/
+.UR https://www.microchip.com/design-centers/storage
 .UE .
 .SH SEE ALSO
 .BR cciss (4),
-- 
2.42.0.158.g94e83dcf5b

