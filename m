Return-Path: <linux-man+bounces-1078-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BC490377B
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 11:09:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C2421C22502
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 09:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D60E176AC1;
	Tue, 11 Jun 2024 09:09:01 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A097176AC3;
	Tue, 11 Jun 2024 09:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718096941; cv=none; b=Tj8CCmXXvACvwSOExFvvlrHAhCUuhQGucZnUn31oA3smOqwuDGxuPWmJYlWVfu3oCqrq9Pctu6BGsijyZnqMgKyEkmW5NwwHFyg1Xm3yCXAaNHd+N1qinyeDVg8XH0ULkYUKVpE3nTe8UREKbEfupCGUMBP4zUg0hFACAw2zICk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718096941; c=relaxed/simple;
	bh=gMGIbcYSqSHoE5CvRf7XjU36fpK+8Zecb6Mw8n0emOQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VJt8dpa0gd+n2Hwmrkxl87OXIp8qj/0CGDC27C+9+//3lfjZurG4DaZikDFme1R14uwGR8AEvogFlb6JepHZmmnDyM6CNWqxcWRZrw6rZO6i2jTWTJvJ/7QK3OKYidv+uGIIXYaHF3zMC7ltaqSVJ/5l50PYasPaD1gmfKjgI5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E50B152B;
	Tue, 11 Jun 2024 02:09:23 -0700 (PDT)
Received: from e116581.blr.arm.com (e116581.arm.com [10.162.41.16])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2171C3F5A1;
	Tue, 11 Jun 2024 02:08:53 -0700 (PDT)
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
Subject: [PATCH v2 1/2] signal.7: Clearly describe ucontext kernel dump to userspace
Date: Tue, 11 Jun 2024 14:38:22 +0530
Message-Id: <20240611090823.820724-2-dev.jain@arm.com>
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

The set of blocked signals is updated from struct sigaction after the
kernel dumps ucontext. Mention this to avoid misunderstanding.

Signed-off-by: Dev Jain <dev.jain@arm.com>
---
 man/man7/signal.7 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man/man7/signal.7 b/man/man7/signal.7
index 4ba5306c8..7d22a7cfe 100644
--- a/man/man7/signal.7
+++ b/man/man7/signal.7
@@ -282,7 +282,13 @@ the thread's alternate signal stack settings.
 .B SA_SIGINFO
 flag, then the above information is accessible via the
 .I ucontext_t
-object that is pointed to by the third argument of the signal handler.)
+object that is pointed to by the third argument of the signal handler.
+This object reflects the state at which the signal is delivered, rather
+than in the handler;
+for example, the mask of blocked signals stored in this object will not
+contain the mask of new signals blocked through
+.BR sigaction(2)).
+
 .IP (1.4)
 Any signals specified in
 .I act\->sa_mask
-- 
2.34.1


