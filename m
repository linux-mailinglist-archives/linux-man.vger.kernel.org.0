Return-Path: <linux-man+bounces-1079-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AE590379B
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 11:14:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90FBBB2A4BD
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 09:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CEE17625E;
	Tue, 11 Jun 2024 09:09:05 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA0A173321;
	Tue, 11 Jun 2024 09:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718096945; cv=none; b=i0AVjFu2rTJeJaEs097TYsWPPyFbx0JOP2NLH7Yr4xBi7lAcuRmj7hqbXJqArmNRJNibA7OzqpdjhUUXuwfkV4WHj+b1B4nHFHF/gXxZaa/nc66NZW1I0aE2L9/ZOdKpQYgO/MnaWRBrFNOw+DYhPvEr82VoYIwuRi+5EMuA65Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718096945; c=relaxed/simple;
	bh=yAc6HPWZ+NS89isZXWw/MGjVBB0xyI1Bb6Q73OYUIj0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gIVeUFG+JP9oMMBO78ti1yxy5VkUkT2e8LrbRX+RtZi8lafgWQn7MdMoW7+Px9T4XILSMneQ9f3Cj09NxPp484wwled7I9iiO4clANWDSKGFUA009/IrWe+DvRO+edk9wPvWTFWo5QoTqpW+e4IASQIiKCyzzcZDXgrYADt0I9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4183F1424;
	Tue, 11 Jun 2024 02:09:28 -0700 (PDT)
Received: from e116581.blr.arm.com (e116581.arm.com [10.162.41.16])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 57FA63F5A1;
	Tue, 11 Jun 2024 02:08:59 -0700 (PDT)
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
	aneesh.kumar@kernel.org,
	linux-kernel@vger.kernel.org,
	Dev Jain <dev.jain@arm.com>
Subject: [PATCH v2 2/2] signal.7: Fix wrong mention of sigprocmask
Date: Tue, 11 Jun 2024 14:38:23 +0530
Message-Id: <20240611090823.820724-3-dev.jain@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611090823.820724-1-dev.jain@arm.com>
References: <20240611090823.820724-1-dev.jain@arm.com>
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
index 7d22a7cfe..57eab7847 100644
--- a/man/man7/signal.7
+++ b/man/man7/signal.7
@@ -293,7 +293,7 @@ contain the mask of new signals blocked through
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


