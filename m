Return-Path: <linux-man+bounces-279-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AA281C486
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 06:02:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 230691F25C89
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 05:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27DE9523C;
	Fri, 22 Dec 2023 05:02:19 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from esa7.hc1455-7.c3s2.iphmx.com (esa7.hc1455-7.c3s2.iphmx.com [139.138.61.252])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AF84680
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 05:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fujitsu.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fujitsu.com
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="123048195"
X-IronPort-AV: E=Sophos;i="6.04,294,1695654000"; 
   d="scan'208";a="123048195"
Received: from unknown (HELO oym-r1.gw.nic.fujitsu.com) ([210.162.30.89])
  by esa7.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Dec 2023 14:02:07 +0900
Received: from oym-m3.gw.nic.fujitsu.com (oym-nat-oym-m3.gw.nic.fujitsu.com [192.168.87.60])
	by oym-r1.gw.nic.fujitsu.com (Postfix) with ESMTP id 66DAFE8BF2
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:02:05 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id 8A2A6106009
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:02:04 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 2B61B200930A9
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:02:04 +0900 (JST)
Received: from rhel93GA.g08.fujitsu.local (unknown [10.167.221.71])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id D81571A006F;
	Fri, 22 Dec 2023 13:02:03 +0800 (CST)
From: Yang Xu <xuyang2018.jy@fujitsu.com>
To: linux-man@vger.kernel.org
Cc: Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH 2/2] swapon.2: Adjust decreased value under CONFIG_DEVICE_PRIVATE
Date: Thu, 21 Dec 2023 22:07:09 -0500
Message-Id: <20231222030709.139005-2-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231222030709.139005-1-xuyang2018.jy@fujitsu.com>
References: <20231222030709.139005-1-xuyang2018.jy@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28072.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28072.004
X-TMASE-Result: 10--1.602300-10.000000
X-TMASE-MatchedRID: dmLfnQJrmpWOeQ6RXnGCFjo39wOA02LhTFQnI+epPIbk6Qbi+9i6D8im
	7SXegieD/FFi+UiRr+Ll6ulzp9lXKvoLRFtw/0CmTuctSpiuWyUUi4Ehat05499RlPzeVuQQlgo
	BcnmtvxHi8zVgXoAltr8hWd4lAsFlC24oEZ6SpSmcfuxsiY4QFKls1pBBwwqeleEWOQGb4UbbHt
	T3oxD2pUIf06WgsgB/wcli7whsjBporAHufpEfNBCVZFuaEGC6hmJzu/rxuEZV0lxCSN36T5sNE
	GpLafrrLM/nEDLP056e+TDiyH/49wxfkLAfkNNSaAZk0sEcY14=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0

After 4.14 kernel patch [1], it addes SWP_DEVICE_NUM macro and value is 2.
After 5.14 kernel patch[2], it incrase this SWP_DEVICE_NUM macro to 4.
So we should add this info in here to calculate MAX_SWAPFILES.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/include/linux/swap.h?id=5042db43cc
[2]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/include/linux/swap.h?id=b756a3b5e
Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/swapon.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/swapon.2 b/man2/swapon.2
index b2651fc39..21d6416eb 100644
--- a/man2/swapon.2
+++ b/man2/swapon.2
@@ -177,7 +177,8 @@ Since Linux 2.6.32, the limit is further decreased by 1
 if the kernel is built with the
 .B CONFIG_MEMORY_FAILURE
 option.
-Since Linux 5.14, the limit is further decreased by 4
+Since Linux 4.14, the limit is decreased by 2,
+since Linux 5.14, the limit is decreased by 4
 if the kernel is built with the
 .B CONFIG_DEVICE_PRIVATE
 option.
-- 
2.27.0


