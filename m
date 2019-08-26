Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8D26A9D32C
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 17:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728524AbfHZPlW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 11:41:22 -0400
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:43849 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728221AbfHZPlW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 11:41:22 -0400
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
IronPort-SDR: bFQJ6H/TowCrszkcLQSRRqhkgNANamXvv9zHz/pP2jnCWQbDwd1tE3XXUgYsjgfvU8Z5rQCBd0
 jgGG7Vdk/xpOxc/Izb+MVcAdiOt1rEZe3EK3AM7vfbxlhTKauYbKNjIczz3opcBqTd6NeI3Ad2
 3HNMYz2wY6T5ClMkQIIosDZbFZF2xx+IU595dkoR5Td9ipoiW5YpiHHocdTp8xgGEoV70Gm/hj
 vSwzYx42cGqTQ97clkFWVfPTZvRtBdt4PJisYQJDkQrFoi81s+2KlpD2J/mKPFgx1dhx3dv2x0
 FMg=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; 
   d="scan'208";a="43717103"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Aug 2019 08:41:21 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 26 Aug
 2019 08:41:20 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 08:41:20 -0700
Subject: [PATCH V3 0/5] smartpqi man page update
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Mon, 26 Aug 2019 10:41:20 -0500
Message-ID: <156683390892.32298.878243674084910282.stgit@brunhilda>
User-Agent: StGit/0.19
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

These patches are based on the man pages in kernel.org

Changes since V1:
 - corrected copyright.

Changes since V2:
 - redacted patch to change the lockup action table
 - removed an unneeded .TP entry.
 - both changes from G. Branden Robinson's review.
 - thanks for your review input.

---

Dave Carroll (1):
      smartpqi: add module param to hide vsep

Don Brace (2):
      smartpqi: fix spelling error
      smartpqi: update copyright

Gilbert Wu (1):
      smartpqi: add module param expose ld first

Murthy Bhat (1):
      smartpqi: add sysfs entries


 man4/smartpqi.4 |   95 ++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 93 insertions(+), 2 deletions(-)

--
Signature
