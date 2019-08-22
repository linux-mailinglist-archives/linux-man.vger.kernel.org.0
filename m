Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ADD7E9A251
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2019 23:43:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393394AbfHVVno (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Aug 2019 17:43:44 -0400
Received: from esa1.microchip.iphmx.com ([68.232.147.91]:47758 "EHLO
        esa1.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393381AbfHVVno (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Aug 2019 17:43:44 -0400
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
IronPort-SDR: YKvHFJinXW6bYarRawwhN6772lmXImC5Yu6qpHsBxOGISWfCFRAlMn+pwoxk+tcHyBv/PMq49B
 IjGS4GpFzLGhgb13iAjCK12RdcVlJ1oEdm8DRHE7ut/6KBDdFjbt6VSAmnsbkJBfmfC9F3GXPD
 M8VytGqx3wNIW1PLO7dl6o28EAFsFSjAi2GtMa/UGRuEzVQj7MAj5v2Hwsf7jDhrJKxEGM4+0/
 6F4ciMCC33FbGaLRIcOO1c2GvABbvvUPlhehkP28lL0Ce//d2Jva0FlbbqC9+JhCgw1XQ5+7VW
 0S4=
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; 
   d="scan'208";a="47648084"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 22 Aug 2019 14:43:40 -0700
Received: from AVMBX1.microsemi.net (10.100.34.31) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 22 Aug
 2019 14:43:39 -0700
Received: from AVMBX2.microsemi.net (10.100.34.32) by AVMBX1.microsemi.net
 (10.100.34.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 22 Aug
 2019 14:43:38 -0700
Received: from [127.0.1.1] (10.238.32.34) by avmbx2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 22 Aug 2019 14:43:38 -0700
Subject: [PATCH 0/6] smartpqi man page updates
From:   Don Brace <don.brace@microsemi.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <scott.teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <scott.benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <gerry.morong@microchip.com>, <mahesh.rajashekhara@microchip.com>
Date:   Thu, 22 Aug 2019 16:43:37 -0500
Message-ID: <156651009105.21023.4886748008525092810.stgit@brunhilda>
User-Agent: StGit/0.19
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

These changes are based on the Linux man pages
in kernel.org

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


 man4/smartpqi.4 |  102 ++++++++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 97 insertions(+), 5 deletions(-)

--
Signature
