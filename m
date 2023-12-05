Return-Path: <linux-man+bounces-212-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E58804A12
	for <lists+linux-man@lfdr.de>; Tue,  5 Dec 2023 07:30:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DB4128029B
	for <lists+linux-man@lfdr.de>; Tue,  5 Dec 2023 06:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 321C46ABF;
	Tue,  5 Dec 2023 06:30:33 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from esa10.hc1455-7.c3s2.iphmx.com (esa10.hc1455-7.c3s2.iphmx.com [139.138.36.225])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E90B116
	for <linux-man@vger.kernel.org>; Mon,  4 Dec 2023 22:30:29 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="129715308"
X-IronPort-AV: E=Sophos;i="6.04,251,1695654000"; 
   d="scan'208";a="129715308"
Received: from unknown (HELO oym-r3.gw.nic.fujitsu.com) ([210.162.30.91])
  by esa10.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Dec 2023 15:30:27 +0900
Received: from oym-m4.gw.nic.fujitsu.com (oym-nat-oym-m4.gw.nic.fujitsu.com [192.168.87.61])
	by oym-r3.gw.nic.fujitsu.com (Postfix) with ESMTP id 1026FD64BA
	for <linux-man@vger.kernel.org>; Tue,  5 Dec 2023 15:30:25 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m4.gw.nic.fujitsu.com (Postfix) with ESMTP id 49FAA9EE5E
	for <linux-man@vger.kernel.org>; Tue,  5 Dec 2023 15:30:24 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id DDFF52007B702
	for <linux-man@vger.kernel.org>; Tue,  5 Dec 2023 15:30:23 +0900 (JST)
Received: from rhel93GA.g08.fujitsu.local (unknown [10.167.221.71])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 5EBC61A0071;
	Tue,  5 Dec 2023 14:30:23 +0800 (CST)
From: Yang Xu <xuyang2018.jy@fujitsu.com>
To: linux-man@vger.kernel.org
Cc: Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH v2 1/2] swapon.2: Adjust decreased value under CONFIG_MIGRATION
Date: Tue,  5 Dec 2023 01:30:16 -0500
Message-Id: <20231205063017.68690-1-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 2.39.3
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
X-TMASE-Result: 10--5.089400-10.000000
X-TMASE-MatchedRID: v71phiYrRiGPnoiNOctH6cYv//yaWh0DwTlc9CcHMZerwqxtE531VCzy
	bVqWyY2NLY0Km6kFDTJCvtb/aH4jvR8TzIzimOwPlpYqKNmWxsHZs3HUcS/scCq2rl3dzGQ1btZ
	QTS/mFZDPgvbloUXaLrqcAHylZ1FRvz76bU3kVXugY+d+FuF/Aw==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0

After kernel 5.19[1], the limit is decreased by 3.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/include/linux/swap.h?id=6c287605f

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/swapon.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/swapon.2 b/man2/swapon.2
index c0e61cbc6..2bc477d18 100644
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
-- 
2.27.0


