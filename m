Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4370A9A252
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2019 23:43:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393404AbfHVVnr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Aug 2019 17:43:47 -0400
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:38849 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393381AbfHVVnq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Aug 2019 17:43:46 -0400
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
IronPort-SDR: jpNgUGYmX+SaDIxiBF9+GqOcanVAV4sOQ/rEyVJyynBiie1n9vLR08Iym4nIiZ3HQd0x49y7TY
 5efD4yxKQnIXmH6HBY6QiKJrjjE7UYsAgygfefN0OTlR/0GQOfXYaE83RXTuHff0GtjXQWimuk
 TE3hjJ6EmsUfyzlfc78ek8SmnFN6nd1Q+7+56Cqt/u1cTuoerHdn0RpVQQKQ7X1GKB1zesZN9R
 9mj3pZ5DHGRWFcwZKgYkz0QGeCmIEcvhqYbW/n640AwJ0XFJCiGjMObMU7rI+0ivSrE9+TCxk7
 KFU=
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; 
   d="scan'208";a="43350498"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 22 Aug 2019 14:43:46 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 22 Aug
 2019 14:43:45 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 22 Aug
 2019 14:43:44 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 22 Aug 2019 14:43:44 -0700
Subject: [PATCH 1/6] smartpqi: fix spelling error
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Thu, 22 Aug 2019 16:43:44 -0500
Message-ID: <156651022419.21023.16491888080441774107.stgit@brunhilda>
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

- correct smarpqi to smartpqi

Reviewed-by: Scott Teel <scott.teel@microsemi.com>
Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
Reviewed-by: Kevin Barnett <kevin.barnett@microsemi.com>
Signed-off-by: Don Brace <don.brace@microsemi.com>
---
 man4/smartpqi.4 |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index cf7c43034..704efb735 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -215,7 +215,7 @@ $ \c
 .in
 .SH VERSIONS
 The
-.B smarpqi
+.B smartpqi
 driver was added in Linux 4.9.
 .SH NOTES
 .SS Configuration

