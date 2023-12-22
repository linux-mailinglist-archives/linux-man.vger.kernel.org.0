Return-Path: <linux-man+bounces-278-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AD481C485
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 06:02:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20D2C1C220B4
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 05:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6012259D;
	Fri, 22 Dec 2023 05:02:16 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from esa7.hc1455-7.c3s2.iphmx.com (esa7.hc1455-7.c3s2.iphmx.com [139.138.61.252])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181F65390
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 05:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fujitsu.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fujitsu.com
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="123048186"
X-IronPort-AV: E=Sophos;i="6.04,294,1695654000"; 
   d="scan'208";a="123048186"
Received: from unknown (HELO oym-r1.gw.nic.fujitsu.com) ([210.162.30.89])
  by esa7.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Dec 2023 14:02:05 +0900
Received: from oym-m3.gw.nic.fujitsu.com (oym-nat-oym-m3.gw.nic.fujitsu.com [192.168.87.60])
	by oym-r1.gw.nic.fujitsu.com (Postfix) with ESMTP id D07F7E8BF9
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:02:03 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id 0CB95EFB76
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:02:03 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 9C05D200930AC
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:02:02 +0900 (JST)
Received: from rhel93GA.g08.fujitsu.local (unknown [10.167.221.71])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 5723C1A006F;
	Fri, 22 Dec 2023 13:02:02 +0800 (CST)
From: Yang Xu <xuyang2018.jy@fujitsu.com>
To: linux-man@vger.kernel.org
Cc: Yang Xu <xuyang2018.jy@fujitsu.com>
Subject: [PATCH 1/2] man2/swapon.2: Make description more clear
Date: Thu, 21 Dec 2023 22:07:08 -0500
Message-Id: <20231222030709.139005-1-xuyang2018.jy@fujitsu.com>
X-Mailer: git-send-email 2.39.3
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
X-TMASE-Result: 10--3.328900-10.000000
X-TMASE-MatchedRID: /KgKPWMniwxlYwkarmHZPhF4zyLyne+ATJDl9FKHbrm+U1asDs8Y/C15
	IFUNL+ETEdVo3LYPj3WAMuqetGVetiVvu9chHp+mavP8b9lJtWr6C0ePs7A07bxtFR53UcYCxco
	Qyl+VDenlEF5QonJ6DD8DyFz4gzn5Mi7kmtINz1jQGATI7srqoDjIB2fCzN3SoLOVgrk+6JRTL6
	QDEED3OtEJk9+gjbAkhpPsVGqnTA8BxCsB8GHr28FEsV4fo4lIJMMP4MGO4TA=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0

Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
---
 man2/swapon.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/swapon.2 b/man2/swapon.2
index a3707ac65..b2651fc39 100644
--- a/man2/swapon.2
+++ b/man2/swapon.2
@@ -164,8 +164,8 @@ Before Linux 2.4.10,
 .B MAX_SWAPFILES
 has the value 8;
 since Linux 2.4.10, it has the value 32.
-Since Linux 2.6.18, the limit is decreased by 2.
-Since Linux 5.19, the limit is decreased by 3 (thus: 29)
+Since Linux 2.6.18, the limit is decreased by 2 (thus 30),
+since Linux 5.19, the limit is decreased by 3 (thus: 29)
 if the kernel is built with the
 .B CONFIG_MIGRATION
 option
-- 
2.27.0


