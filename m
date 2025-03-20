Return-Path: <linux-man+bounces-2616-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C99D8A6AB21
	for <lists+linux-man@lfdr.de>; Thu, 20 Mar 2025 17:33:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E914188D022
	for <lists+linux-man@lfdr.de>; Thu, 20 Mar 2025 16:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 592371EC013;
	Thu, 20 Mar 2025 16:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="l6GcR5jS"
X-Original-To: linux-man@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7461B422A
	for <linux-man@vger.kernel.org>; Thu, 20 Mar 2025 16:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742488406; cv=none; b=AuI+PrVDmEpajqGRN6JTSrK4WqO9kmArSScy2bPcwipROZuzatzUODqFIwhYdBs+mODQ7qIulIZ6w0uYE+3847HvNb62xfcrhWii3juNx4P0adhPpanSN1o41zgbAnjTZSbYDoNqbY6Dj0CU1nkcDrAxGxakuyYuTXzWN4ryVcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742488406; c=relaxed/simple;
	bh=MWJU9KUAoo9l9XboRxbKlZXoeU1q4XPCmIuGxA1igZw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=M0ImDdlsWlHnuGg1z99jdERjWUuBnuoFK52vCEaF6avghx6yEedTxP+hD+s+ngrZvCI/WSuWwjqszFh/4VZBUZv8lizVY94oK30L6hEFmVz8QFc1Afo5ysC/hi/q7rweOo5s5TFQhuZtsSuKPSmcvM420FMsL+4UWhlvOfz/DBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=l6GcR5jS; arc=none smtp.client-ip=198.175.65.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1742488405; x=1774024405;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=MWJU9KUAoo9l9XboRxbKlZXoeU1q4XPCmIuGxA1igZw=;
  b=l6GcR5jSExQ1GQsEuMXPcpQYWJlJlBPTeD/g/MyZuc3ZL2OoI5P2K28B
   ortv6d5g3g7H0jHT2RwrgdRCrrw30/IGmYbrpZYVzL/kr2gVpNX3MGPFy
   ARFrPkEfyUtdmek/HinGx/QEw29RQi7JgrWQTtRsCEAL1pD9lwUz7PkOO
   vA9FzKCQ2kPYIXEE8Ln/DKtc6GZ8Kye2KOm00wN29i9u9wkt7i/kfkbse
   3QbEOba2K0af1pabCJmb88mbHk3oHUtUaG1AzMruNORsCt9ac6IkPLSg0
   8WZvV3lSkK+c6Veof/CRQFDd1YaeMbK8Nplicc5B41tqNl9SB6/dAW7UG
   g==;
X-CSE-ConnectionGUID: vq99XWx2QCiVT9In7ng9Nw==
X-CSE-MsgGUID: rJ2pYrscSpWSgOQ65Pb4gA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="47389636"
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; 
   d="scan'208";a="47389636"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2025 09:33:25 -0700
X-CSE-ConnectionGUID: CelTre5rRqOyuaNFrP4ggw==
X-CSE-MsgGUID: h/2lkLIcQbCPjtum6g1eSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; 
   d="scan'208";a="160375543"
Received: from jbkonnobray003.jf.intel.com ([10.54.30.37])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2025 09:33:24 -0700
From: Joe Konno <joe.konno@intel.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2/get_mempolicy.2: nodemask param is a pointer
Date: Thu, 20 Mar 2025 16:33:19 +0000
Message-ID: <20250320163319.808000-1-joe.konno@intel.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Checked, and nodemask parameter for this syscall has been a pointer
since v2.6.7 (near as I can tell).

Fixes: 77f31ff920bc ("get_mempolicy.2, mbind.2: SYNOPSIS: Use VLA syntax in function parameters")
Signed-off-by: Joe Konno <joe.konno@intel.com>
---
 man/man2/get_mempolicy.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/get_mempolicy.2 b/man/man2/get_mempolicy.2
index 526acc0c9a17..d6a8eca9564b 100644
--- a/man/man2/get_mempolicy.2
+++ b/man/man2/get_mempolicy.2
@@ -18,7 +18,7 @@ NUMA (Non-Uniform Memory Access) policy library
 .nf
 .P
 .BI "long get_mempolicy(int *" mode ,
-.BI "                   unsigned long " nodemask [(. maxnode " + ULONG_WIDTH \- 1)"
+.BI "                   unsigned long *" nodemask [(. maxnode " + ULONG_WIDTH \- 1)"
 .B "                                          / ULONG_WIDTH],"
 .BI "                   unsigned long " maxnode ", void *" addr ,
 .BI "                   unsigned long " flags );
-- 
2.49.0


