Return-Path: <linux-man+bounces-1455-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0F5930024
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 19:59:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4489283B2B
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 17:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F0C178CCF;
	Fri, 12 Jul 2024 17:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8EsvEiM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1228C172777;
	Fri, 12 Jul 2024 17:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720807024; cv=none; b=DGY/85MbuRe4pX2g8ElrTT4o2jmBP32tXLg9amGTyRMeR8ULGneGlxvnKRYY7H1OnlinRwG/YJCXn8Vz9VOXzI1JxeYRT0H+1oT3zlelhTO/gB3xFK/x+//HC+EIsLU6pzAETiNV12pLyr4BjRd4itXpXVDS2vY5ricWg33XvQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720807024; c=relaxed/simple;
	bh=KzkxZDA8ZhT5uPSt382m/7hualmm2+EZLlTXdnUU9+8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iFrmsRiljcrPVeXUtGK+ahlepAgTl/JCi1m5cXrPhdxPBaVV28JadE16UKstI54+WQ/TpB2D7u9a+cO50+gqrHnWkIN5fiIHE8eyiDxdV2kDdk88H+G09DhhXEM9CDds9oT/rKLc5e2jE5Ju3Ksism68rTbgA5F7iU42ysH88d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8EsvEiM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F891C4AF07;
	Fri, 12 Jul 2024 17:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720807023;
	bh=KzkxZDA8ZhT5uPSt382m/7hualmm2+EZLlTXdnUU9+8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=q8EsvEiMyGuJcWAXIW21HO1k+mXHXyJIXMNziQMxWlQoBuU2/IP/ju6fy2IyuganV
	 C5ICcmt3kqF+sw8+fq5UZR57638PMNfefuJVAWMGfZ2DvO1nhWtEGoDH2VkdayFHdK
	 1Lo3TgbnhdaoZbyYkwbmbGH/PuT21TzAHwNucF8LaFan+RuN2OnbXH1dXtUsbW9Pmb
	 DzH2D/A2dt4+MR+9xtb8snZ+dETkgD3OBgXwkzwmtfaLYqrqsP65koU6Z9lf9LFvvT
	 0CQ9rO80pZIvNKE3gwEBHPco+FprdfNwGEDHRBc458EC5pqpoHat+DRNClV//+VGJ6
	 rOU3SNygPdMyQ==
From: cel@kernel.org
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	amir73il@gmail.com,
	Chuck Lever <chuck.lever@oracle.com>
Subject: [PATCH v1 2/2] fa_notify_init(2): Support for FA_ flags has been backported to LTS kernels
Date: Fri, 12 Jul 2024 13:56:49 -0400
Message-ID: <20240712175649.33057-2-cel@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240712175649.33057-1-cel@kernel.org>
References: <20240712175649.33057-1-cel@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chuck Lever <chuck.lever@oracle.com>

Signed-off-by: Chuck Lever <chuck.lever@oracle.com>
---
 man/man2/fanotify_init.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/fanotify_init.2 b/man/man2/fanotify_init.2
index e5f9cbf298ee..51c7d61fd86d 100644
--- a/man/man2/fanotify_init.2
+++ b/man/man2/fanotify_init.2
@@ -295,7 +295,7 @@ for additional details.
 This is a synonym for
 .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
 .TP
-.BR FAN_REPORT_TARGET_FID " (since Linux 5.17)"
+.BR FAN_REPORT_TARGET_FID " (since Linux 5.17, 5.15.154, and 5.10.220)"
 .\" commit d61fd650e9d206a71fda789f02a1ced4b19944c4
 Events for fanotify groups initialized with this flag
 will contain additional information about the child
-- 
2.45.1


