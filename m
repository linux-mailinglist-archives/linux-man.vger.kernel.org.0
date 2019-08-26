Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CD6159D332
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 17:42:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731646AbfHZPlo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 11:41:44 -0400
Received: from esa1.microchip.iphmx.com ([68.232.147.91]:64864 "EHLO
        esa1.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731593AbfHZPln (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 11:41:43 -0400
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
IronPort-SDR: GEph3LRVQcp6TiqpGoayQDB+YGpM2miSyrK2cdkq/mJWPZwYKGHdBCIgH2Z9oDxyvzbtrMQmQK
 KXnPpBbROBNPbE9vF5ez5JSAFrFPl8TiSvL1emC9ei+R9qTE64aJ2IvekecuHAYLYC1+ie7VD2
 Z4T/fQq4FtYNFrkrvViDQahB6HWnlT2mQ4rzbWNOjm6BxVvA9yznosS/fPmTueve1MpQIBGz53
 dYUwsDPXFOhq6aRm7yXwRouH0MRXoxI1RC3/ukUYgqr0M6MuaiE+CDgZCOLkWlFe1pcaSCG/8D
 BBk=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; 
   d="scan'208";a="47999755"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Aug 2019 08:41:34 -0700
Received: from AVMBX2.microsemi.net (10.100.34.32) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 26 Aug
 2019 08:41:33 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 08:41:33 -0700
Subject: [PATCH V3 2/5] smartpqi: update copyright
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Mon, 26 Aug 2019 10:41:32 -0500
Message-ID: <156683409288.32298.1583668158490610794.stgit@brunhilda>
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

Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microsemi.com>
Signed-off-by: Don Brace <don.brace@microsemi.com>
---
 man4/smartpqi.4 |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index 704efb735..dc9ef1020 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -1,4 +1,5 @@
-.\" Copyright (C) 2016-2017, Microsemi Corporation
+.\" Copyright (C) 2019, Microchip Technology Inc. and its subsidiaries
+.\" Copyright (C) 2016-2018, Microsemi Corporation
 .\" Copyright (C) 2016, PMC-Sierra, Inc.
 .\" Written by Kevin Barnett <kevin.barnett@microsemi.com>
 .\"

