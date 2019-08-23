Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4C69B529
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2019 19:09:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732512AbfHWRJS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Aug 2019 13:09:18 -0400
Received: from esa3.microchip.iphmx.com ([68.232.153.233]:45421 "EHLO
        esa3.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732319AbfHWRJR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Aug 2019 13:09:17 -0400
Authentication-Results: esa3.microchip.iphmx.com; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=don.brace@microsemi.com; spf=None smtp.helo=postmaster@smtp.microsemi.com
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
  don.brace@microsemi.com designates 208.19.100.22 as permitted
  sender) identity=mailfrom; client-ip=208.19.100.22;
  receiver=esa3.microchip.iphmx.com;
  envelope-from="don.brace@microsemi.com";
  x-sender="don.brace@microsemi.com"; x-conformance=spf_only;
  x-record-type="v=spf1"; x-record-text="v=spf1
  ip4:208.19.100.20 ip4:208.19.100.21 ip4:208.19.100.22
  ip4:208.19.100.23 ip4:208.19.99.221 ip4:208.19.99.222
  ip4:208.19.99.223 ip4:208.19.99.225 -all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@smtp.microsemi.com) identity=helo;
  client-ip=208.19.100.22; receiver=esa3.microchip.iphmx.com;
  envelope-from="don.brace@microsemi.com";
  x-sender="postmaster@smtp.microsemi.com";
  x-conformance=spf_only
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: ca9/41UUL5Fxv9G/RDyqCL8IK/eIiznA5H129Sej6hBx0D4f5dxJFLuSHq8QCUBo/iaRZidUqc
 W/Hhbb6J3eEdAK6itYSaA7u5D5P0pX/TP8hdFRbwqxz+sDSGWcMNyGBwyvK0O25YkmWY7xn4LK
 E636tjvK5+mPOOnHifbKzrnpglvtK4QtSdFo1t1mg27hsA1BCoEfAtxMlni1Wcu7biQ0FC70O+
 3u0s6XTW9WQVd9/7yexQMNkg5Gseq3xr3mJLdXtzDDzUG4mkffCTHeQLwBJQ/MTfP2rXXQ9tuM
 qRo=
X-IronPort-AV: E=Sophos;i="5.64,422,1559545200"; 
   d="scan'208";a="46409998"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Aug 2019 10:09:15 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 23 Aug
 2019 10:09:14 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 23 Aug
 2019 10:09:14 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 23 Aug 2019 10:09:13 -0700
Subject: [PATCH V2 0/6] smartpqi man page update
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Fri, 23 Aug 2019 12:09:13 -0500
Message-ID: <156658004701.6969.3969396310784177369.stgit@brunhilda>
User-Agent: StGit/0.19
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

These changes are based on Linux man pages

Changes since V1:
 - corrected copyright patch

---

Dave Carroll (1):
      smartpqi: add module param to hide vsep

Don Brace (3):
      smartpqi: fix spelling error
      smartpqi: update copyright
      smartpqi: correct lockup action table

Gilbert Wu (1):
      smartpqi: add module param expose ld first

Murthy Bhat (1):
      smartpqi: add sysfs entries


 man4/smartpqi.4 |  104 ++++++++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 98 insertions(+), 6 deletions(-)

--
Signature
