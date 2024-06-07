Return-Path: <linux-man+bounces-1045-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A669003A8
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 14:32:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A43711C20EDC
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 12:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3814E193087;
	Fri,  7 Jun 2024 12:31:49 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C69351922D2;
	Fri,  7 Jun 2024 12:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717763509; cv=none; b=HDngPPmyez7MsVmq5glfEMglr9I1+l+AXXX0a2OTi0vrOhI2qnnXD/eoLqDZymQq7lFCjXL5o3Rmt9pW3IRnV2v9dojq0qxTp1kjMKwGxKG0tBZnJcAP+zbnnsd3fpsxwCHAt9X/Ip68x/LI5ufTxm4gDLKzVVcRY8+c+FO6z/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717763509; c=relaxed/simple;
	bh=KxD8ye48WFLc/fQFO71SyxJ80T5LeRBbVkF9mrX1+/4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IyNDj2BE9czE+78TRwx7G11Ws3Ivd6lE50mOb2OjDIQ6dAqb2mYJ1tsMeHe0sfBEicy/wlwCIMYc8UT+QioFxyi+KdRjinsjlJUv59gXNCF2ZGOlQ/3+uK2y7cVn0IWQzVapK8sqb+ZkTzr18CUwd1eM3q0VHBol9RI6NVEJ6i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD9CD13D5;
	Fri,  7 Jun 2024 05:32:11 -0700 (PDT)
Received: from e116581.blr.arm.com (e116581.arm.com [10.162.42.8])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C06CA3F64C;
	Fri,  7 Jun 2024 05:31:42 -0700 (PDT)
From: Dev Jain <dev.jain@arm.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org
Cc: mingo@kernel.org,
	tglx@linutronix.de,
	mark.rutland@arm.com,
	ryan.roberts@arm.com,
	broonie@kernel.org,
	suzuki.poulose@arm.com,
	Anshuman.Khandual@arm.com,
	DeepakKumar.Mishra@arm.com,
	AneeshKumar.KizhakeVeetil@arm.com,
	linux-kernel@vger.kernel.org,
	Dev Jain <dev.jain@arm.com>
Subject: [PATCH 2/2] signal.7: Fix wrong mention of sigprocmask
Date: Fri,  7 Jun 2024 18:01:19 +0530
Message-Id: <20240607123119.769044-3-dev.jain@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607123119.769044-1-dev.jain@arm.com>
References: <20240607123119.769044-1-dev.jain@arm.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The handler is registered with sigaction(), not sigprocmask(). Even if the
purpose of writing sigprocmask() here was to mention blocked signals, the
statement currently concerns the "addition" of blocked signals; signals
blocked through sigprocmask() would already be present in the thread
context of blocked signals.

Fixes: e7a5700 (getcontext.3, signal.7: tfix)
Signed-off-by: Dev Jain <dev.jain@arm.com>
---
 man/man7/signal.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man7/signal.7 b/man/man7/signal.7
index 17e75c86d..09d30c678 100644
--- a/man/man7/signal.7
+++ b/man/man7/signal.7
@@ -295,7 +295,7 @@ execution of the handler.)
 Any signals specified in
 .I act\->sa_mask
 when registering the handler with
-.BR sigprocmask (2)
+.BR sigaction (2)
 are added to the thread's signal mask.
 The signal being delivered is also
 added to the signal mask, unless
-- 
2.34.1


