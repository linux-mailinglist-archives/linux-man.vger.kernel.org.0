Return-Path: <linux-man+bounces-4385-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A65BCB2ED6
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:40:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D6F353001196
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F4B92C17A1;
	Wed, 10 Dec 2025 12:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqotQ6gK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDE431A54C
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370415; cv=none; b=bRbRi8q9JzNMhX4U4Xziu3hM0YnFV7pi3IfwxVYk+z2sZX4Jko4mdMVKBDtTmpkQ8pBkewBALtHOmSfBs3UYQT+fMtXvTaLdpUGsLBUvbIDztSQXYDRlHLdtDUMgLIoli3eXU3F40JQcJ4wccTWhRJEGD9QlPfgBO96K77DVKo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370415; c=relaxed/simple;
	bh=EI3ww3cW3Vb6dC8HaZdPEEzJ18MuaokQyRguyxZ/pSY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iyjgBKpsQIcj3DUQNtGgJxIs36J/A3fzLN1M/b9ngmBOPfrXDY1VUbuPo775FVpLrQjQxghFVibH5CTM9BjHMjagI4g1FDNGj87WeVhGpKFhPO/0rPAQ8IPdd4xV9qd2N55SNn1i72Itrw4IPc+9QdC0YqvHccs28h+hzY8tTME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqotQ6gK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56969C4CEF1;
	Wed, 10 Dec 2025 12:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370415;
	bh=EI3ww3cW3Vb6dC8HaZdPEEzJ18MuaokQyRguyxZ/pSY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PqotQ6gKuC+PbSA3DPIUmr9rVYEHXt5ueD5Pjy+wz+cr1bl++hRvAcoKskyPtFs9z
	 3qNa8RWyCL4Yxgfn++FYZ8p6GJjd30QCIs3hKgFRXZLF8b/N5ySjrf1nQysToIjsOA
	 ezifS4mk7LeYYAeZrM6WDhTSvbpVcu/FVNqSvy+LEeIxgFr8Tb41Y1BrxQigqHjU97
	 zDDBk21XMcHXcvZE5ZOdbpT2FyV8KHItrBfREFo4rgRh7BVP8InyLU2G+tacqqG5HD
	 Bd5a3tva7QIWAiCxTORytQSagmkhfoBRQBbmb7Zp1FCG4IXnrhDpQcVZDwiCBq4oGF
	 SaZDxrJPlrUSg==
Date: Wed, 10 Dec 2025 13:40:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 05/12] man/man3/posix_memalign.3: STANDARDS:
 aligned_alloc() and posix_memalign() conform to POSIX.1-2024
Message-ID: <032768ed7f2fdcf9ee85069aae19d7fd934097c0.1765370035.git.alx@kernel.org>
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

Cc: Seth McDonald <sethmcmail@pm.me>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/posix_memalign.3 | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index ba99f0c6a..ecbbd3e7a 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -162,10 +162,11 @@ .SH ATTRIBUTES
 .SH STANDARDS
 .TP
 .BR aligned_alloc ()
-C23.
+C23,
+POSIX.1-2024.
 .TP
 .BR posix_memalign ()
-POSIX.1-2008.
+POSIX.1-2024.
 .TP
 .BR memalign ()
 .TQ
@@ -178,7 +179,8 @@ .SH HISTORY
 .TP
 .BR aligned_alloc ()
 glibc 2.16.
-C11.
+C11,
+POSIX.1-2024.
 .TP
 .BR posix_memalign ()
 glibc 2.1.91.
-- 
2.51.0


