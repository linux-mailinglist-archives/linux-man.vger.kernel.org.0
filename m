Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6AE6D9A257
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2019 23:44:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388301AbfHVVoS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Aug 2019 17:44:18 -0400
Received: from esa1.microchip.iphmx.com ([68.232.147.91]:47807 "EHLO
        esa1.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731532AbfHVVoS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Aug 2019 17:44:18 -0400
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
IronPort-SDR: mgMIaV9sJmtypVhsOrmFnS+XE/Fsd9ckoDaWWCFYpRsxT5Li3Me8rthU5Z/s7oTB+lzcF4sZF4
 ye7ovXDaVQfSO/vqvj9tsiSbWnxpXRiiZ/SAp8z71hg+EOWsaLE7PboeNo4c+kHi5E50ILJ9QQ
 ilagO+yI7QKQZp/p0pC4qHvqhQk+Y5WA6Nn4tmqFNxWhjhKPGuTPZ4Nh8nIss6kYSQr31XUlc5
 /jnq5swAqn81iHp4nb4TTA8A5kaeKm0FIhjEZwxcbC5v4fg01nn+pNUWtriwXA42J6rY9ZSZ95
 zlg=
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; 
   d="scan'208";a="47648143"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 22 Aug 2019 14:44:17 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 22 Aug
 2019 14:44:16 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 22 Aug 2019 14:44:16 -0700
Subject: [PATCH 6/6] smartpqi: correct lockup action table
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Thu, 22 Aug 2019 16:44:15 -0500
Message-ID: <156651025590.21023.11661529231849080485.stgit@brunhilda>
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

Reviewed-by: Matt Perricone <matt.perricone@microsemi.com>
Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
Signed-off-by: Don Brace <don.brace@microsemi.com>
---
 man4/smartpqi.4 |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 359bef6ee..07938de82 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -84,15 +84,15 @@ Specifies the action the driver takes when a controller
 lockup is detected.
 The default action is
 .BR none .
-.TP
-.TS
-l l
----
-l l.
+.nf
+.ta 10n +10n
+
 parameter	action
+---------	----------------------------
 \fBnone\fP	take controller offline only
 \fBreboot\fP	reboot the system
 \fBpanic\fP	panic the system
+.fi
 .TP
 .BR expose_ld_first= { 0 | 1 }
 This option enables support for exposing logical devices to OS before physical devices.

