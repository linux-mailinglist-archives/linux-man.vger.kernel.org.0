Return-Path: <linux-man+bounces-946-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1CE8CA721
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 05:45:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97F6B2823A6
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 03:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E42418040;
	Tue, 21 May 2024 03:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b="HhuOD8RG"
X-Original-To: linux-man@vger.kernel.org
Received: from esa12.hc1455-7.c3s2.iphmx.com (esa12.hc1455-7.c3s2.iphmx.com [139.138.37.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC221CD3B
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 03:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.138.37.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716263126; cv=none; b=A6dsOPwUJdpWpWqmy5edVCzK1ErpVJUqc5l/ci9fx0hHePdmHkkJO67mQN7gxZISfiCLroPhj+ClFs/k19cGKFVpr6tXdomIEiwKb+LdKveg4UXrci6g6wgadRmPdbrsFLCCJtg9lHYXo2SikBIFlfG9bzQgnf3A+MV+ZZGLGM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716263126; c=relaxed/simple;
	bh=/DfdMCtij3EHCir/424xBx48TDyq4aNTq9+QAXHPFg8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IuWFfYjM2SwR2Qf+O2Tf1P/BUgJDClOJmUloEd4o5H1RWdMxZKL/4/XujuqKPmkGRQcxoh5r++00+68t8tR2xl9MfVqNB9uhYk2M4UDlQtcLiBO5DIbLc6TD3DRw4O7/HRwbDJthoobhBzWP3wobTL6iYqYJ4SFJ8brZ2IFyJdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fujitsu.com; spf=pass smtp.mailfrom=fujitsu.com; dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b=HhuOD8RG; arc=none smtp.client-ip=139.138.37.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fujitsu.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fujitsu.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1716263123; x=1747799123;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=/DfdMCtij3EHCir/424xBx48TDyq4aNTq9+QAXHPFg8=;
  b=HhuOD8RGvnK5Z+vyFTCyHihJktgRPcJZU/B3c8+lpPkx3f9uG+9qDUVV
   MQ/nfoiuVCvkJh9GMr3cPDAU9PVhjy/8TNauJrHkBshohW08vHRgzP52d
   o5su8dZkcHP5WVMDBVdwBWe2lPd78ljeWpZ7yQkbItr0z4e0jH0rRgCYD
   /FVt0h0AyV4RvuFx8E45kX3DrsFSp4D+0TxnJ/CvmYJU2eww0ihBRHuS2
   vrXt2xBZtiKsBpTXaZoJmvRXTRGxwRu8txwJ0L0siQImtHEblO849KsbB
   2ELMA3NidNK6pwMPH0breDnVWCKv/lEZyH7Xkcnem4LavRtUmVpf5ZFG0
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="138187830"
X-IronPort-AV: E=Sophos;i="6.08,176,1712588400"; 
   d="scan'208";a="138187830"
Received: from unknown (HELO yto-r4.gw.nic.fujitsu.com) ([218.44.52.220])
  by esa12.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2024 12:44:11 +0900
Received: from yto-m4.gw.nic.fujitsu.com (yto-nat-yto-m4.gw.nic.fujitsu.com [192.168.83.67])
	by yto-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id 16E20CD6DC
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 12:44:09 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by yto-m4.gw.nic.fujitsu.com (Postfix) with ESMTP id 4C941D7B69
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 12:44:08 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id D167320094ADC
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 12:44:07 +0900 (JST)
Received: from G08FNSTD200053.g08.fujitsu.local (unknown [10.167.226.137])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 71EC51A000A;
	Tue, 21 May 2024 11:44:07 +0800 (CST)
From: maxj.fnst@fujitsu.com
To: linux-man@vger.kernel.org
Cc: Ma Xinjian <maxj.fnst@fujitsu.com>
Subject: [PATCH] prctl: Fix the description of arguments
Date: Tue, 21 May 2024 11:43:42 +0800
Message-Id: <20240521034342.1967-1-maxj.fnst@fujitsu.com>
X-Mailer: git-send-email 2.26.1.windows.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28400.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28400.004
X-TMASE-Result: 10--4.346400-10.000000
X-TMASE-MatchedRID: AuCKiGuH5B5ASpWtAvpDoNyBRU/cKn69cQnGoQXSQM6jEIt+uIPPOG12
	Q/J9gkAwRW1/RixPl0ezV4YDcGaV41xxDx5qbkR9FEUknJ/kEl5jFT88f69nG/oLR4+zsDTtjoc
	zmuoPCq3G8lnTN93YGG7mZFZyAvtckpTF3f6IXSFHPd1ssOIumnJ13as9tpj8SscQT+CR5GTHBe
	ULJZ/7KKV5YNfk09gUXHunIs4+4lUVwbf5lERMgI/2RRfVn5u4Tcu6aRtCI3BUKpNI+7y1VHsDE
	gQ63iHZ
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0

From: Ma Xinjian <maxj.fnst@fujitsu.com>

The index of arguments in ERRORS section is not correct.

Signed-off-by: Ma Xinjian <maxj.fnst@fujitsu.com>
---
 man/man2/prctl.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
index fad855832..cc6d3b4a8 100644
--- a/man/man2/prctl.2
+++ b/man/man2/prctl.2
@@ -2124,7 +2124,7 @@ above).
 is
 .BR PR_SET_MM ,
 and
-.I arg3
+.I arg2
 is
 .BR PR_SET_MM_EXE_FILE ,
 the file is not executable.
@@ -2133,18 +2133,18 @@ the file is not executable.
 .I op
 is
 .BR PR_SET_MM ,
-.I arg3
+.I arg2
 is
 .BR PR_SET_MM_EXE_FILE ,
 and the file descriptor passed in
-.I arg4
+.I arg3
 is not valid.
 .TP
 .B EBUSY
 .I op
 is
 .BR PR_SET_MM ,
-.I arg3
+.I arg2
 is
 .BR PR_SET_MM_EXE_FILE ,
 and this the second attempt to change the
-- 
2.39.3


