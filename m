Return-Path: <linux-man+bounces-208-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D4D803283
	for <lists+linux-man@lfdr.de>; Mon,  4 Dec 2023 13:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 474721F20FAD
	for <lists+linux-man@lfdr.de>; Mon,  4 Dec 2023 12:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3362E23776;
	Mon,  4 Dec 2023 12:24:47 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from esa12.hc1455-7.c3s2.iphmx.com (esa12.hc1455-7.c3s2.iphmx.com [139.138.37.100])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FA2BC0
	for <linux-man@vger.kernel.org>; Mon,  4 Dec 2023 04:24:42 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="121296097"
X-IronPort-AV: E=Sophos;i="6.04,249,1695654000"; 
   d="scan'208";a="121296097"
Received: from unknown (HELO yto-r2.gw.nic.fujitsu.com) ([218.44.52.218])
  by esa12.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2023 21:24:40 +0900
Received: from yto-m1.gw.nic.fujitsu.com (yto-nat-yto-m1.gw.nic.fujitsu.com [192.168.83.64])
	by yto-r2.gw.nic.fujitsu.com (Postfix) with ESMTP id A456BD6188
	for <linux-man@vger.kernel.org>; Mon,  4 Dec 2023 21:24:38 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by yto-m1.gw.nic.fujitsu.com (Postfix) with ESMTP id D7B95CFAC8
	for <linux-man@vger.kernel.org>; Mon,  4 Dec 2023 21:24:37 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id 6404F217360
	for <linux-man@vger.kernel.org>; Mon,  4 Dec 2023 21:24:37 +0900 (JST)
Received: from rhel93GA.g08.fujitsu.local (unknown [10.167.221.71])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 1E2E61A006F;
	Mon,  4 Dec 2023 20:24:37 +0800 (CST)
From: Yang Xu <xuyang2018.jy@fujitsu.com>
To: linux-man@vger.kernel.org
Cc: Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH 1/2] swapon.2: Adjust decreased value under CONFIG_MIGRATION
Date: Mon,  4 Dec 2023 07:24:30 -0500
Message-Id: <20231204122431.68106-1-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 2.39.3
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28036.007
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28036.007
X-TMASE-Result: 10--5.089400-10.000000
X-TMASE-MatchedRID: FMY5IFaWNFCPnoiNOctH6cYv//yaWh0DwTlc9CcHMZerwqxtE531VCzy
	bVqWyY2NLY0Km6kFDTJCvtb/aH4jvR8TzIzimOwP0C1sQRfQzEHEQdG7H66TyH4gKq42LRYkxqq
	xNTXiq6mD2UbYWXKO+8VJ4gMYSHkd+KYbdkAzGoR+3BndfXUhXQ==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0

After kernel 5.19[1], the limit is decreased by 3.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/include/linux/swap.h?id=6c287605f

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/swapon.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/swapon.2 b/man2/swapon.2
index c0e61cbc6..ee270cea1 100644
--- a/man2/swapon.2
+++ b/man2/swapon.2
@@ -164,7 +164,8 @@ Before Linux 2.4.10,
 .B MAX_SWAPFILES
 has the value 8;
 since Linux 2.4.10, it has the value 32.
-Since Linux 2.6.18, the limit is decreased by 2 (thus: 30)
+Since Linux 2.6.18, the limit is decreased by 2 (Since Linux 5.19.0,
+the limit is decreased by 3)
 if the kernel is built with the
 .B CONFIG_MIGRATION
 option
@@ -172,6 +173,7 @@ option
 .BR mbind (2)
 and
 .BR migrate_pages (2)).
+
 Since Linux 2.6.32, the limit is further decreased by 1
 if the kernel is built with the
 .B CONFIG_MEMORY_FAILURE
-- 
2.27.0


