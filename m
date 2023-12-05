Return-Path: <linux-man+bounces-213-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E12E2804A13
	for <lists+linux-man@lfdr.de>; Tue,  5 Dec 2023 07:30:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 512371F21423
	for <lists+linux-man@lfdr.de>; Tue,  5 Dec 2023 06:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 348AC10940;
	Tue,  5 Dec 2023 06:30:34 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from esa10.hc1455-7.c3s2.iphmx.com (esa10.hc1455-7.c3s2.iphmx.com [139.138.36.225])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77D76FA
	for <linux-man@vger.kernel.org>; Mon,  4 Dec 2023 22:30:30 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="129715313"
X-IronPort-AV: E=Sophos;i="6.04,251,1695654000"; 
   d="scan'208";a="129715313"
Received: from unknown (HELO oym-r4.gw.nic.fujitsu.com) ([210.162.30.92])
  by esa10.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Dec 2023 15:30:29 +0900
Received: from oym-m2.gw.nic.fujitsu.com (oym-nat-oym-m2.gw.nic.fujitsu.com [192.168.87.59])
	by oym-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id 02000D9D94
	for <linux-man@vger.kernel.org>; Tue,  5 Dec 2023 15:30:27 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by oym-m2.gw.nic.fujitsu.com (Postfix) with ESMTP id 31DAABF4A6
	for <linux-man@vger.kernel.org>; Tue,  5 Dec 2023 15:30:26 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id CA3B822D932
	for <linux-man@vger.kernel.org>; Tue,  5 Dec 2023 15:30:25 +0900 (JST)
Received: from rhel93GA.g08.fujitsu.local (unknown [10.167.221.71])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 456EC1A0072;
	Tue,  5 Dec 2023 14:30:25 +0800 (CST)
From: Yang Xu <xuyang2018.jy@fujitsu.com>
To: linux-man@vger.kernel.org
Cc: Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH v2 2/2] swapon.2: Adjust decreased value under CONFIG_PTE_MARKER
Date: Tue,  5 Dec 2023 01:30:17 -0500
Message-Id: <20231205063017.68690-2-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231205063017.68690-1-xuyang2018.jy@fujitsu.com>
References: <20231205063017.68690-1-xuyang2018.jy@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28038.005
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28038.005
X-TMASE-Result: 10--5.368400-10.000000
X-TMASE-MatchedRID: quWp71NovCwwRe7LbjTDMZ1U1lojafr/yiKgKtIyB4rAuQ0xDMaXkH4q
	tYI9sRE/L2EYbInFI5u2IsG2Ivx/gpH0YXYnbGozFEUknJ/kEl5jFT88f69nG/oLR4+zsDTtjoc
	zmuoPCq1c2SK2zpcrvZnXG8rTn3ESYiOfZUnbP5JQrl1MtSkS/YuzKiacwZkf
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0

Since linux 5.19[1], MAX_SWAPFILES will be futher decreased
1 if kernel built with CONFIG_PTE_MARKER.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/include/linux/swap.h?id=679d10331

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/swapon.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man2/swapon.2 b/man2/swapon.2
index 2bc477d18..13282ff96 100644
--- a/man2/swapon.2
+++ b/man2/swapon.2
@@ -181,6 +181,10 @@ Since Linux 5.14, the limit is further decreased by 4
 if the kernel is built with the
 .B CONFIG_DEVICE_PRIVATE
 option.
+Since Linux 5.19, the limit is further decreased by 1
+if the kernel is built with the
+.B CONFIG_PTE_MARKER
+option.
 .P
 Discard of swap pages was introduced in Linux 2.6.29,
 then made conditional
-- 
2.27.0


