Return-Path: <linux-man+bounces-4390-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9FBCB2F00
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A6CE300DA6D
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A706A324B24;
	Wed, 10 Dec 2025 12:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5pcgquy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAC1324704
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370429; cv=none; b=h3RMOVh4oFmliAAGrA1+8bAKF+K9tmdnTUbY/KaoufddYuv7eL1wMELhcRTpKX7bIvW9ES1vvB0W4vj4tlVVO0XChb1mQzTaqOznrAfugduOcJTZVwne+v2GuKLJ/Rded9cPbLEfvPlhlayNdRRyQvEUD+Eiyt4sA0n7gfaE6p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370429; c=relaxed/simple;
	bh=ljD69Jq/Q7mE+m9fynPr8BMNXgNqYeCZtI0iR9eKr0M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gf1Klv/orp+X0LVq8W6WwkDlRJyoF2G6vw+iDXVOG+ggY9MzDl07gqpZ7/ZLkumzQ2RMZtnNw0GtYgyR92TnZeDwNka4K4+wEyAmUI4ksNKxaPBfouRU0gxceoMRkK21UCQfdq32xBsa73LPHydhjH5mqh1dn8+PCxpuNWWw8go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5pcgquy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C356C4CEF1;
	Wed, 10 Dec 2025 12:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370429;
	bh=ljD69Jq/Q7mE+m9fynPr8BMNXgNqYeCZtI0iR9eKr0M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C5pcgquyaH8dvsb9AC05HSqCPF40QRBsX3fwzjjpNwRSn5FA78wPwLDJ0CKNrvacs
	 F4MW2h0/o1Y3WJwbXRjFa/krtFQMr4MtfWCNaSpXXUzcao0m1T9pImnE923HKAHPBS
	 7iX4lenmA+His6MevwXb2lDSibxPcjbj3Snmcqc4+3u55qtbvJg6gXjNDufu2cqKbU
	 6wHz90Li/xGZGQDkgbd2l2hLIT3C64TLT78UT6oDYckpkDO/L2USCPwyGSbNg81NKP
	 WR/HyyNIGqzIuFfFX+lBmRRMtOFsofwGnwQtAiywBJY9RZQwZT89XOGMyTKT9wRSuE
	 SXC3R9aL7SlJw==
Date: Wed, 10 Dec 2025 13:40:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 10/12] man/man3/posix_memalign.3: CAVEATS: Add section,
 and move paragraph to it
Message-ID: <213710d2ceb6a59beceb5b8728df4b817e44e0f4.1765370035.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765370035.git.alx@kernel.org>

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/posix_memalign.3 | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index 8b3258dc2..c2816e1d4 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -61,13 +61,6 @@ .SH RETURN VALUE
 The value of
 .I errno
 is not set.
-On Linux (and other systems),
-.BR posix_memalign ()
-does not modify
-.I memptr
-on failure.
-A requirement standardizing this behavior was added in POSIX.1-2008 TC2.
-.\" http://austingroupbugs.net/view.php?id=520
 .SH ERRORS
 .TP
 .B EINVAL
@@ -118,5 +111,13 @@ .SH NOTES
 .BR malloc (3)
 always returns 8-byte aligned memory addresses, so these functions are
 needed only if you require larger alignment values.
+.SH CAVEATS
+On Linux (and other systems),
+.BR posix_memalign ()
+does not modify
+.I memptr
+on failure.
+A requirement standardizing this behavior was added in POSIX.1-2008 TC2.
+.\" http://austingroupbugs.net/view.php?id=520
 .SH SEE ALSO
 .BR aligned_alloc (3)
-- 
2.51.0


