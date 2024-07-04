Return-Path: <linux-man+bounces-1315-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1442926FCE
	for <lists+linux-man@lfdr.de>; Thu,  4 Jul 2024 08:42:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E1AC1C216D1
	for <lists+linux-man@lfdr.de>; Thu,  4 Jul 2024 06:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E1C31A08C0;
	Thu,  4 Jul 2024 06:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b="As4bRm87"
X-Original-To: linux-man@vger.kernel.org
Received: from esa12.hc1455-7.c3s2.iphmx.com (esa12.hc1455-7.c3s2.iphmx.com [139.138.37.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DCE1A070E
	for <linux-man@vger.kernel.org>; Thu,  4 Jul 2024 06:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.138.37.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720075358; cv=none; b=loPekdfnKL3P/854HWmBYNUk8EkEoZqeJ0QeByQgZw99wXdUZKcic/6CN1MvH+Ves4EScq0IUQu6mnsdKMw8VtTH17Smc8jnLVmobnP7G32kf3MIHNDVp7b7Wse8uMdll7V6GBqydEATjZVhB2dvbtcQW56qpju7RsA9YkgwwfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720075358; c=relaxed/simple;
	bh=Fvs0dxFNU96Z/HSkogGd+p3ek1ySdgLydJL3wms/Tu4=;
	h=From:To:Cc:Subject:Date:Message-Id; b=pvHcY/tG+7cU862FPzKA27Pui9zxFTymHn9bM9eQ/Vk/qwe3JO1yGpPqK5G8aOMUN4i1W675nBQIp2zY4ELQjgZ48XXxedoL0IwOFuCfQuZPdAzk6S0d2297trIxjLZUYR7uMZF6dfpdfLSHrWAx+hno8leDJtawYFN5AYO1uJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fujitsu.com; spf=pass smtp.mailfrom=fujitsu.com; dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b=As4bRm87; arc=none smtp.client-ip=139.138.37.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fujitsu.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fujitsu.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1720075355; x=1751611355;
  h=from:to:cc:subject:date:message-id;
  bh=Fvs0dxFNU96Z/HSkogGd+p3ek1ySdgLydJL3wms/Tu4=;
  b=As4bRm87oMeaxJYNe7PQtvAPx40ZzxFhH1RHZU32ZKg5akl8jKwij9wm
   TRghFAxLqBJH4qjZ7ScYZ9QQC3wKO/bhohfEPJ4STyvnI5zxw2dBM8SGC
   XS0CywBXE3SZRGjO5blA7JJQr/tdhEW/l+kWLIWtbI34YpASRWC3+lbIh
   ayb/mPlbbhTmogTIQO5brCJ7xmOb9yffpQo7No3gGVdvhhs06hvY1Yu5M
   /eU8xO6lUWrvveCbUtBHTKAiTuS5TQNqkxltut6m8nzNlrzqlkp+nPU8h
   Iwvd37C/MSO96wgKWagp3rotjZIhsHQ/GRQSXoIqcxiHumzuWXbsNBr8O
   Q==;
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="144917450"
X-IronPort-AV: E=Sophos;i="6.09,183,1716217200"; 
   d="scan'208";a="144917450"
Received: from unknown (HELO oym-r1.gw.nic.fujitsu.com) ([210.162.30.89])
  by esa12.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2024 15:41:23 +0900
Received: from oym-m1.gw.nic.fujitsu.com (oym-nat-oym-m1.gw.nic.fujitsu.com [192.168.87.58])
	by oym-r1.gw.nic.fujitsu.com (Postfix) with ESMTP id D0AB1CC16A
	for <linux-man@vger.kernel.org>; Thu,  4 Jul 2024 15:41:21 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by oym-m1.gw.nic.fujitsu.com (Postfix) with ESMTP id 21B75E49CB
	for <linux-man@vger.kernel.org>; Thu,  4 Jul 2024 15:41:21 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id AC9EE21736C
	for <linux-man@vger.kernel.org>; Thu,  4 Jul 2024 15:41:20 +0900 (JST)
Received: from localhost (unknown [10.167.226.69])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 4B3901A0002;
	Thu,  4 Jul 2024 14:41:20 +0800 (CST)
From: Ma Xinjian <maxj.fnst@fujitsu.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Ma Xinjian <maxj.fnst@fujitsu.com>
Subject: [PATCH] clone.2: ffix
Date: Thu,  4 Jul 2024 14:41:08 +0800
Message-Id: <20240704064108.27257-1-maxj.fnst@fujitsu.com>
X-Mailer: git-send-email 2.18.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28508.003
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28508.003
X-TMASE-Result: 10-1.200600-10.000000
X-TMASE-MatchedRID: ntF4Soh351Au0i9VlgrN6hF4zyLyne+ATJDl9FKHbrnLe/vEwLULpHzG
	fWdtXBUcgcDogF3e9CxcWPWm98SUsQzyMxeMEX6wFEUknJ/kEl6qeMqH7QfWstPokMAKQp/bA/n
	NPR3f3dzGVuWouVipcqqy8LqnlKA0S2o4xLiqbqAxc3HEH5gXE2DpTjg3F2nxOXYXxcN6Uqf2gM
	aHhTwC9xJyMl4FlHgvucPJ2nBd9tGTXZQoW1Wet/6/2/nZkihaOgB/fz3EXdcVKT0eFRmfDs4Yh
	afCzgujIdY9jOi4lTI=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>

Signed-off-by: Ma Xinjian <maxj.fnst@fujitsu.com>
---
 man/man2/clone.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man/man2/clone.2 b/man/man2/clone.2
index 655e50b82..0287091b2 100644
--- a/man/man2/clone.2
+++ b/man/man2/clone.2
@@ -37,6 +37,7 @@
 .\" 2008-11-19, mtk, document CLONE_NEWUTS
 .\" 2008-11-19, mtk, document CLONE_NEWIPC
 .\" 2008-11-19, Jens Axboe, mtk, document CLONE_IO
+.\" 2024-07-04, ffix by Ma Xinjian <maxj.fnst@fujitsu.com>
 .\"
 .TH clone 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
@@ -1684,8 +1685,8 @@ On ia64, a different interface is used:
 .BI "int __clone2(int (*" "fn" ")(void *),"
 .BI "             void *" stack_base ", size_t " stack_size ,
 .BI "             int " flags ", void *" "arg" ", ..."
-.BI "          /* pid_t *" parent_tid ", struct user_desc *" tls ,
-.BI "             pid_t *" child_tid " */ );"
+.BI "          \fR/*\fP pid_t *" parent_tid ", struct user_desc *" tls ,
+.BI "             pid_t *" child_tid " \fR*/\fP );"
 .EE
 .in
 .P
-- 
2.18.1


