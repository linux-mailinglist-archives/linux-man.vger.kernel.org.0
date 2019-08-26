Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 444DB9D33E
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 17:43:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731018AbfHZPmE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 11:42:04 -0400
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:43960 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728921AbfHZPmE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 11:42:04 -0400
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
IronPort-SDR: u3/c8pQrWBToBqYosuq4GQBj75jMxRGkDJfKn8akv7WNqWMo8/MndBk3tVRzjUJpdogZG+AnwI
 BTSbnhI/s6IxqLtxRXPp81XC9FgLUXhr8EJYBePOwQO8XMbzDxOJqB5LJgbdwzG1t9lWMo5zSq
 +2bxhQwMMLvkiK1Ga+lHjJSp+rrPJAAppsyiiHbKmv7Tv9lXoPRyemNEaeM69JMlbBl8gPRZPl
 k86wOgFmQmwLVlVd1hTW0dljT3rmaUe4XGYgUUQcEYoWY8XR1xyHoWkW4HXkBe9k8/lnJjyYvv
 tYo=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; 
   d="scan'208";a="43717369"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Aug 2019 08:41:53 -0700
Received: from AVMBX2.microsemi.net (10.100.34.32) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 26 Aug
 2019 08:41:52 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 08:41:52 -0700
Subject: [PATCH V3 5/5] smartpqi: add sysfs entries
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Mon, 26 Aug 2019 10:41:52 -0500
Message-ID: <156683411207.32298.10112442679181404463.stgit@brunhilda>
In-Reply-To: <156683390892.32298.878243674084910282.stgit@brunhilda>
References: <156683390892.32298.878243674084910282.stgit@brunhilda>
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
index a8cc621a3..3f4473fa4 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -160,6 +160,86 @@ above
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

