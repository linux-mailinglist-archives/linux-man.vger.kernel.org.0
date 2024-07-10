Return-Path: <linux-man+bounces-1435-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 687E192CCC6
	for <lists+linux-man@lfdr.de>; Wed, 10 Jul 2024 10:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB164B20AB9
	for <lists+linux-man@lfdr.de>; Wed, 10 Jul 2024 08:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C75F28526A;
	Wed, 10 Jul 2024 08:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b="X34XYVn7"
X-Original-To: linux-man@vger.kernel.org
Received: from esa4.hc1455-7.c3s2.iphmx.com (esa4.hc1455-7.c3s2.iphmx.com [68.232.139.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC48127E18
	for <linux-man@vger.kernel.org>; Wed, 10 Jul 2024 08:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.139.117
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720599656; cv=none; b=MPuSY+jVVeaH6BIG5hzMYkFzwouZvP6EI0daHjGIWObtBBDIOSriHvHLEVsGC0QJ4taa0VgWOaAb6Bp+HQlTJvK0susxBmi+6QpL7xmxCqwmxtwn9NjvIRvjkvoGqAmo6k42k6+P1z+Oq27bqB7jD6jIfzO/8xqldbTZtoZOTjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720599656; c=relaxed/simple;
	bh=ofxD0YPTp9jejBvsQ14VlJC4xTDNdugxWnfoX3wdlFc=;
	h=From:To:Cc:Subject:Date:Message-Id; b=iF3uxND9MNi+gVCBTjz7E7jep42XihfYXQuRtvBWDR/xL47iSREnfMj0L0gbdIF35hdrN13fno8Y/IOUCgx/ia2g4jR5MlsEej/kmrmuP6gsgnMCFAX31fruxuFaspLPLcXdGG1qnW6iiebkuHjQwLUAle0uVdzhH829beXtFQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fujitsu.com; spf=pass smtp.mailfrom=fujitsu.com; dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b=X34XYVn7; arc=none smtp.client-ip=68.232.139.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fujitsu.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fujitsu.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1720599653; x=1752135653;
  h=from:to:cc:subject:date:message-id;
  bh=ofxD0YPTp9jejBvsQ14VlJC4xTDNdugxWnfoX3wdlFc=;
  b=X34XYVn7S4JxnyAfCinIf91lhnyxcp1OfkwT+dQi/DB08WqZu4K+M5vy
   euDrfvRZh86CoXcs5bREvIupPWqzYTOjaNzHvFD+pX1XlBsIcmHf/aD33
   GyPdnQoj4tesjvlkjzOGDqVZs8tJeTZ4+Nqh3bnrhlybVWvHgy1COFBSe
   RhBe6yEK3KJNXrMtoPywb0Qy9RoHYGGGznZbHS4PJM6EO4/MdhSNTpKmI
   Y+FpQeYGg9etE0W7W6gG83col0Fyn+7JMb9kYk1/CKk1AtqAPW/kaEfAU
   +mn2u8f+BEiKasijHcy1u54k6RK7s0vraEL7WNjCcTaU7Dh/3OwSXvGFf
   g==;
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="166635510"
X-IronPort-AV: E=Sophos;i="6.09,197,1716217200"; 
   d="scan'208";a="166635510"
Received: from unknown (HELO yto-r1.gw.nic.fujitsu.com) ([218.44.52.217])
  by esa4.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2024 17:19:41 +0900
Received: from yto-m4.gw.nic.fujitsu.com (yto-nat-yto-m4.gw.nic.fujitsu.com [192.168.83.67])
	by yto-r1.gw.nic.fujitsu.com (Postfix) with ESMTP id B7BD7DAD30
	for <linux-man@vger.kernel.org>; Wed, 10 Jul 2024 17:19:39 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by yto-m4.gw.nic.fujitsu.com (Postfix) with ESMTP id 01768D3F2D
	for <linux-man@vger.kernel.org>; Wed, 10 Jul 2024 17:19:39 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id 7E3B81E9466
	for <linux-man@vger.kernel.org>; Wed, 10 Jul 2024 17:19:38 +0900 (JST)
Received: from localhost (unknown [10.167.226.69])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 208A21A000A;
	Wed, 10 Jul 2024 16:19:38 +0800 (CST)
From: Ma Xinjian <maxj.fnst@fujitsu.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Ma Xinjian <maxj.fnst@fujitsu.com>
Subject: [PATCH v2] utime.2: ERRORS: add EFAULT
Date: Wed, 10 Jul 2024 16:19:26 +0800
Message-Id: <20240710081926.10913-1-maxj.fnst@fujitsu.com>
X-Mailer: git-send-email 2.18.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28520.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28520.006
X-TMASE-Result: 10-0.074600-10.000000
X-TMASE-MatchedRID: ntF4Soh351CkSoeAfA+QP07nLUqYrlslFIuBIWrdOePfUZT83lbkEGML
	Qxo49FU9WEg2NhuSpJCAMuqetGVetjXKdeazKu+lezvaxjndK3vT6JDACkKf2xXQP/3qeEFD3Qf
	wsVk0UbuGrPnef/I+ei7njYKGX39iNub4Eu2RGhfkpTqXZKQA3EWKEwG/t1DXUu8eo+LTjoVTyZ
	1y9sjWHZLqPOO5dObQxMzMgJrM/hR6Fi1pV3LGbw==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>

Signed-off-by: Ma Xinjian <maxj.fnst@fujitsu.com>
---
 man/man2/utime.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man2/utime.2 b/man/man2/utime.2
index f4858d3e3..78e6eec2f 100644
--- a/man/man2/utime.2
+++ b/man/man2/utime.2
@@ -132,6 +132,10 @@ or the
 .B CAP_FOWNER
 capability).
 .TP
+.B EFAULT
+.I filename
+points to an invalid address.
+.TP
 .B ENOENT
 .I filename
 does not exist.
-- 
2.18.1


