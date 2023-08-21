Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D3C7783350
	for <lists+linux-man@lfdr.de>; Mon, 21 Aug 2023 22:23:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbjHUTz0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Aug 2023 15:55:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229778AbjHUTzZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Aug 2023 15:55:25 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 338C4FD
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 12:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1692647722; x=1724183722;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ceH6XLbytPfTufw6OnWwEQ7N7EXp414L+itJzIDHoIY=;
  b=0GsxSLJ94elnI5HM4LH850xPZ/axTj/xEqRMg39dfPi8TNxGxMvRLEE1
   NtGLUHv17KoCeND658FN8GHQ6Y92kxNM6kznxcML19DLlyfkwiQFEwliN
   21WL6DAN8gPCoLBr4ULtlZdf/QXiUWElR4cHsOJunqb8Cw3oRJrClru5z
   bNLKpvxBSC25oowZIIDu4MArziNG10IUD1U14rvPJX9vfoW+SK7C1590X
   +sgr0oDmUuAFD421fId+KCTf3CgJ8U0A8n6yQYMR0uH4QDsikYEMR3I1v
   A0qqd58ZXcreTZkgKqaYMMgaOYz6hTCS3qfnyBt89CamulLmO7mt4PQXe
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; 
   d="scan'208";a="527985"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Aug 2023 12:55:21 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 21 Aug 2023 12:55:21 -0700
Received: from brunhilda.pdev.net (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 21 Aug 2023 12:55:21 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v2 01/10] smarpqi: update copyright and email addresses
Date:   Mon, 21 Aug 2023 14:57:17 -0500
Message-ID: <20230821195726.446748-2-don.brace@microchip.com>
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
2.42.0.rc2

