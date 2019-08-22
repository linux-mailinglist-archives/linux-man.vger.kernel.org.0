Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC2479A256
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2019 23:44:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389949AbfHVVoM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Aug 2019 17:44:12 -0400
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:38892 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388301AbfHVVoM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Aug 2019 17:44:12 -0400
Authentication-Results: esa6.microchip.iphmx.com; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=don.brace@microsemi.com; spf=None smtp.helo=postmaster@smtp.microsemi.com
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
  don.brace@microsemi.com designates 208.19.100.22 as permitted
  sender) identity=mailfrom; client-ip=208.19.100.22;
  receiver=esa6.microchip.iphmx.com;
  envelope-from="don.brace@microsemi.com";
  x-sender="don.brace@microsemi.com"; x-conformance=spf_only;
  x-record-type="v=spf1"; x-record-text="v=spf1
  ip4:208.19.100.20 ip4:208.19.100.21 ip4:208.19.100.22
  ip4:208.19.100.23 ip4:208.19.99.221 ip4:208.19.99.222
  ip4:208.19.99.223 ip4:208.19.99.225 -all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@smtp.microsemi.com) identity=helo;
  client-ip=208.19.100.22; receiver=esa6.microchip.iphmx.com;
  envelope-from="don.brace@microsemi.com";
  x-sender="postmaster@smtp.microsemi.com";
  x-conformance=spf_only
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: zgni1KuP6JlGCBZmJKU3i2stl9cyv2l9MVNHQyMmYi+GV/hDzJh1a7v+MvWCbzeYEUejSKNlkn
 9KfaJLp8KXO2/T+cG7IZntFQP9WJhUXcom29X4ZHqANkqOrB3NHrdW2YEbhwcdLVCRajLaR3VX
 5CI1c3Ksd8ygzR417zAt1mnog103BI5P+UDP6UqZhS3BZX/6ZKU10tQj4xVbdmr23V66SQp8AM
 zQqHkNwjE1zYRY26+t2wDpAoPUlXJE6BQfzLyOYmkXdnzOT8LHTzxXUZpG1AKOLeF+8v9JOyas
 LTk=
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; 
   d="scan'208";a="43350543"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 22 Aug 2019 14:44:11 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 22 Aug
 2019 14:44:10 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 22 Aug
 2019 14:44:10 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 22 Aug 2019 14:44:09 -0700
Subject: [PATCH 5/6] smartpqi: add sysfs entries
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Thu, 22 Aug 2019 16:44:09 -0500
Message-ID: <156651024959.21023.10469405853534881313.stgit@brunhilda>
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

From: Murthy Bhat <Murthy.Bhat@microsemi.com>

Reviewed-by: Matt Perricone <matt.perricone@microsemi.com>
Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
Signed-off-by: Murthy Bhat <Murthy.Bhat@microsemi.com>
Signed-off-by: Don Brace <don.brace@microsemi.com>
---
 man4/smartpqi.4 |   80 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index b2d6a4249..359bef6ee 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -161,6 +161,86 @@ above
 for an explanation of the
 .I lockup_action
 values.
+.TP
+.IR /sys/class/scsi_host/host*/driver_version
+The
+.I driver_version
+attribute is read-only.
+This attribute contains the smartpqi driver version.
+.IP
+For example:
+.IP
+.in +2n
+.EX
+$ \c
+.B cat /sys/class/scsi_host/host1/driver_version
+1.1.2-126
+.EE
+.in
+.TP
+.IR /sys/class/scsi_host/host*/firmware_version
+The
+.I firmware_version
+attribute is read-only.
+This attribute contains the controller firmware version.
+.IP
+For example:
+.IP
+.in +2n
+.EX
+$ \c
+.B cat /sys/class/scsi_host/host1/firmware_version
+1.29-112
+.EE
+.in
+.TP
+.IR /sys/class/scsi_host/host*/model
+The
+.I model
+attribute is read-only.
+This attribute contains the product identification string of the controller.
+.IP
+For example:
+.IP
+.in +2n
+.EX
+$ \c
+.B cat /sys/class/scsi_host/host1/model
+1100-16i
+.EE
+.in
+.TP
+.IR /sys/class/scsi_host/host*/serial_number
+The
+.I serial_number
+attribute is read-only.
+This attribute contains the unique identification number of the controller.
+.IP
+For example:
+.IP
+.in +2n
+.EX
+$ \c
+.B cat /sys/class/scsi_host/host1/serial_number
+6A316373777
+.EE
+.in
+.TP
+.IR /sys/class/scsi_host/host*/vendor
+The
+.I vendor
+attribute is read-only.
+This attribute contains the vendor identification string of the controller.
+.IP
+For example:
+.IP
+.in +2n
+.EX
+$ \c
+.B cat /sys/class/scsi_host/host1/vendor
+Adaptec
+.EE
+.in
 .SS SmartPQI-specific disk attribute files in \f[BI]/sys\fP
 In the file specifications below,
 .I c

