Return-Path: <linux-man+bounces-1725-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85088964A5E
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 17:43:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B64941C222E6
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 15:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FE961B373E;
	Thu, 29 Aug 2024 15:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b="AIpAOTLI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpout.efficios.com (smtpout.efficios.com [167.114.26.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A101A01CA
	for <linux-man@vger.kernel.org>; Thu, 29 Aug 2024 15:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.114.26.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724946198; cv=none; b=nAO6zCckPvWv866O5PB/J1EK0y79QzMsr/E2W7esjFFyJHCknXaOsMLI+bRQty5w50xqWgGrhuBfziFvJcBeMBH10+MK5soqxifmeAeB8ZDttHgWnxFTq+Uj7/Mgp0XsMzTNAKISplJd5suaplWU/ZYAZ2ScBNowEMPLACBIil8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724946198; c=relaxed/simple;
	bh=3SuLOfXz/9uY3xyQgmvFkIXRf38uIGdA2u10bsGgs7c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YH5ZHOtpkNX6sZ49z1kclZdWTyaYrTHXHzKfk9LIZbqW1Kj8YNg7xo2W2vFzrhNZ/VIPf17F6byTZXGVe2bk0UvaAdAUGYrKvPmJrBCcTctmGXlQIskXquSqGUPuBT/Yb9gz7z1mtjTx7WPQPju+0RU9wZgCFnDRXcaglAArdac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com; spf=pass smtp.mailfrom=efficios.com; dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b=AIpAOTLI; arc=none smtp.client-ip=167.114.26.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=efficios.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=efficios.com;
	s=smtpout1; t=1724946193;
	bh=3SuLOfXz/9uY3xyQgmvFkIXRf38uIGdA2u10bsGgs7c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AIpAOTLIF2NeT1EpWg2HOko8NqoYatlca+h1VNnl2qv+FLCbpvF6ibzpxOVr9EzFT
	 HDiX2fK7LvqWUnrNzKoh36eXSLbRGy8mVqjnN19d5DKgPUniVC6B2UNyuUM2bjgvPw
	 3mMIgvtThyQjDb3I4h0bc7v98JKL/h6ZIyresQjNQq6mKuBEknpjLDwgibFcDCkHFL
	 7xZUaVeflmTDsf0+kVFcjFkRl4WgyED+V3FbvFhvYUctDKR51a/NZn/wYVdk2t9RMG
	 Z1iJO+bVHZSOlF4cu3qI4AZ482DomCQB80iUe+R+7ma4ivIuV2yIfccI/HOsPMEVyl
	 DQXBcW0KT+haA==
Received: from smtpout01.internal.efficios.com (96-127-217-162.qc.cable.ebox.net [96.127.217.162])
	by smtpout.efficios.com (Postfix) with ESMTPSA id 4Wvlt925mXz1JQn;
	Thu, 29 Aug 2024 11:43:13 -0400 (EDT)
Received: from laptop-kstewart.internal.efficios.com (laptop-kstewart.internal.efficios.com [172.16.0.60])
	by smtpout01.internal.efficios.com (Postfix) with ESMTP id E9BC85C7;
	Thu, 29 Aug 2024 11:43:12 -0400 (EDT)
From: Kienan Stewart <kstewart@efficios.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Kienan Stewart <kstewart@efficios.com>
Subject: [PATCH 2/2] pipe.7: Reference potential lower default in pipe capacity section
Date: Thu, 29 Aug 2024 11:43:04 -0400
Message-ID: <20240829154304.2010305-2-kstewart@efficios.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240829154304.2010305-1-kstewart@efficios.com>
References: <20240829154304.2010305-1-kstewart@efficios.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The pipe capacity section makes no indication that the default
capacity of pipes may not be `16 * PAGE_SIZE` for users exceeding the
`pipe_user_pages_soft` limit.

Signed-off-by: Kienan Stewart <kstewart@efficios.com>
---
 man/man7/pipe.7 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man/man7/pipe.7 b/man/man7/pipe.7
index c7f3fbb9e..3d853d27c 100644
--- a/man/man7/pipe.7
+++ b/man/man7/pipe.7
@@ -131,6 +131,9 @@ operations.
 See
 .BR fcntl (2)
 for more information.
+Since Linux 4.5, the default pipe capacity is lower than 16 pages when the
+.I pipe\-user\-pages\-soft
+limit is exceeded.
 .P
 The following
 .BR ioctl (2)
-- 
2.45.2


