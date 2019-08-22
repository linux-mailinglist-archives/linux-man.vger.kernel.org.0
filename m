Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ECB999A255
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2019 23:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389989AbfHVVoH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Aug 2019 17:44:07 -0400
Received: from esa1.microchip.iphmx.com ([68.232.147.91]:47795 "EHLO
        esa1.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388301AbfHVVoH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Aug 2019 17:44:07 -0400
Authentication-Results: esa1.microchip.iphmx.com; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=don.brace@microsemi.com; spf=None smtp.helo=postmaster@smtp.microsemi.com
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
  don.brace@microsemi.com designates 208.19.100.22 as permitted
  sender) identity=mailfrom; client-ip=208.19.100.22;
  receiver=esa1.microchip.iphmx.com;
  envelope-from="don.brace@microsemi.com";
  x-sender="don.brace@microsemi.com"; x-conformance=spf_only;
  x-record-type="v=spf1"; x-record-text="v=spf1
  ip4:208.19.100.20 ip4:208.19.100.21 ip4:208.19.100.22
  ip4:208.19.100.23 ip4:208.19.99.221 ip4:208.19.99.222
  ip4:208.19.99.223 ip4:208.19.99.225 -all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@smtp.microsemi.com) identity=helo;
  client-ip=208.19.100.22; receiver=esa1.microchip.iphmx.com;
  envelope-from="don.brace@microsemi.com";
  x-sender="postmaster@smtp.microsemi.com";
  x-conformance=spf_only
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: k2rzR8uFS2v7T9t1Jw0gSKGF9jldmNyugawLAHcDdaRCTNg7pj1WfAc9Nfjc7CWYiKBBpCUiVI
 LhA2BldbhmvcR/NJ5Vo5tGizSXRVDfzGrcXqkK2esr8u6xVQ468oRInDcwQ6BAstNKaECxiVeB
 OPAnV0cd9Wlihl6UgT+kJJcYqPcZ2sIsiR+6CiiW6SrXObJodzyQkrWQuU3/1Lwk30yHCcG8sc
 y2ZiHXpana99ANXWfvXD6iSKcQ7cLgCF+Vvwcy5qG5cuwEBb2PkItXYMdx9qAE8hJMd0Dn2IvM
 naw=
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; 
   d="scan'208";a="47648137"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 22 Aug 2019 14:44:06 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 22 Aug
 2019 14:44:06 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 22 Aug
 2019 14:44:03 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 22 Aug 2019 14:44:03 -0700
Subject: [PATCH 4/6] smartpqi: add module param to hide vsep
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Thu, 22 Aug 2019 16:44:03 -0500
Message-ID: <156651024320.21023.3617916419318210424.stgit@brunhilda>
In-Reply-To: <156651009105.21023.4886748008525092810.stgit@brunhilda>
References: <156651009105.21023.4886748008525092810.stgit@brunhilda>
User-Agent: StGit/0.19
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Dave Carroll <david.carroll@microsemi.com>

Reviewed-by: Matt Perricone <matt.perricone@microsemi.com>
Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microsemi.com>
Signed-off-by: Dave Carroll <david.carroll@microsemi.com>
Signed-off-by: Don Brace <don.brace@microsemi.com>
---
 man4/smartpqi.4 |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 45bb3d42c..b2d6a4249 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -16,6 +16,7 @@ smartpqi \- Microsemi Smart Family SCSI driver
 .RB [ disable_ctrl_shutdown= { 0 | 1 }]
 .RB [ lockup_action= { none | reboot | panic }]
 .RB [ expose_ld_first= { 0 | 1 }]
+.RB [ hide_vsep= { 0 | 1 }]
 .YS
 .SH DESCRIPTION
 .B smartpqi
@@ -96,6 +97,10 @@ parameter	action
 .BR expose_ld_first= { 0 | 1 }
 This option enables support for exposing logical devices to OS before physical devices.
 The default value is 0.
+.TP
+.BR hide_vsep= { 0 | 1 }
+This option enables disabling exposure of the virtual SEP to the host. This is usually associated with direct attached drives.
+The default value is 0.
 .TE
 .SH FILES
 .SS Device nodes

