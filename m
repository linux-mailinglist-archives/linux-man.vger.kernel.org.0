Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 209779D337
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 17:42:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729514AbfHZPlt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 11:41:49 -0400
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:43923 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731648AbfHZPls (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 11:41:48 -0400
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
IronPort-SDR: D3DEajoYNayP1RdDBOm0H/QKdHoA88WG07RDSf/eiYEQFOgWvMsguQWStmei8RN7vW2vcOm40a
 cN5QN6HdBNnOS7lVqzP0pFpcItNS4P5T9iJBMZZN80t+3pZ/76vbdEnd2KubdC9/+S0KtJzbFw
 BCZYsDTC5ns4TIX7LWrKUnxHhBtKNRR7/o5OgAY3juObdOmqnYBO+29oWGZIqoJIpMgk00FFP7
 O/e6YloLy8VUTGVd8O05sy6QocX0ttghBYD7+Fn7gFFZCbhEy3n8dMCqd/Ycv+SfonLB/+D7sh
 Ml0=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; 
   d="scan'208";a="43717288"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Aug 2019 08:41:41 -0700
Received: from AVMBX2.microsemi.net (10.100.34.32) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 26 Aug
 2019 08:41:40 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 08:41:39 -0700
Subject: [PATCH V3 3/5] smartpqi: add module param expose ld first
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Mon, 26 Aug 2019 10:41:39 -0500
Message-ID: <156683409930.32298.9345147165757445811.stgit@brunhilda>
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

From: Gilbert Wu <gilbert.wu@microsemi.com>

Reviewed-by: Matt Perricone <matt.perricone@microsemi.com>
Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microsemi.com>
Signed-off-by: Gilbert Wu <gilbert.wu@microsemi.com>
Signed-off-by: Don Brace <don.brace@microsemi.com>
---
 man4/smartpqi.4 |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index dc9ef1020..5389b8453 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -15,6 +15,7 @@ smartpqi \- Microsemi Smart Family SCSI driver
 .RB [ disable_heartbeat= { 0 | 1 }]
 .RB [ disable_ctrl_shutdown= { 0 | 1 }]
 .RB [ lockup_action= { none | reboot | panic }]
+.RB [ expose_ld_first= { 0 | 1 }]
 .YS
 .SH DESCRIPTION
 .B smartpqi
@@ -91,6 +92,10 @@ parameter	action
 \fBreboot\fP	reboot the system
 \fBpanic\fP	panic the system
 .TE
+.TP
+.BR expose_ld_first= { 0 | 1 }
+This option enables support for exposing logical devices to OS before physical devices.
+The default value is 0.
 .SH FILES
 .SS Device nodes
 Logical drives are accessed via the SCSI disk driver

