Return-Path: <linux-man+bounces-4429-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7F0CBE6A7
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE634304792C
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA90330D58;
	Mon, 15 Dec 2025 14:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGkoEmIH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A543A2F0C76
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809736; cv=none; b=m8zND21JNbtYlOs5z0ofSepzYPNNaJ0XUM9OEoPXIVWHUiIukPtqbrmkUQu2wiysQooWhdDimIzfr1FzgkjCG+qqN+zL8OsWDoFWuGj7m0N+oanS5v7X0rhJsdhzWehZuKi2tucA/S/bCFUEz874N7W3+wljh+O2pezYOCxhdsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809736; c=relaxed/simple;
	bh=RIhSXcjQa7nVHWyQd7csFCuGJEkLmSi9UsY+Cczv8fA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cGqTF1wX7MLJAPrCyaiYuINaEonuur4ClCiODoxFo24K3ya5Vkd22ldfZvABtx8AYgr7/rFuuqON9Xz/wEbmchU9Frx5e7h2B6ZY4IF8+S91kFN7svgrcQVI/bzaaFTGoe6sot0s/V9XIqsYus+PQbrOTnBhnSAD7g5qZm8GVOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGkoEmIH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57371C4CEF5;
	Mon, 15 Dec 2025 14:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809736;
	bh=RIhSXcjQa7nVHWyQd7csFCuGJEkLmSi9UsY+Cczv8fA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YGkoEmIHrcmLVcPf4yn8OkYG5laDopiBPHVLIRUPX8FbVM+HRg852/YNs8rkIxhOJ
	 xD/AQT6AiQtfwrZ3rKlFfbMpR+5wDKEOq6j0itewaQXY2bePxCGONecyhsstHHLScD
	 f28rkapeWpbreDq/Y7AGEq0nwnP1Xx8Djv/eCWcDFY7g9y3F5WO68EHNuKpLyN+P9V
	 OsEDVm48BhjI1AJXXqtjb1XZa3N/Yntl178CKQ+vn6Yib+Jvya3bDTX/NX14rxjCE+
	 tN1kXTjspwRvF/iYzFTlegUuVptFRAYPKx2FsjyNt27v4tj7v/GSZUiA89ANM5XQdJ
	 PABAK9SzGsB3A==
Date: Mon, 15 Dec 2025 15:42:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 13/14] man/man3/memalign.3: wfix
Message-ID: <a5342ef55f0a96790bf279a98c9d2a30b19fc9eb.1765809415.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765809415.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765809415.git.alx@kernel.org>

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/memalign.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man/man3/memalign.3 b/man/man3/memalign.3
index cc341be7b..12e8a5bb0 100644
--- a/man/man3/memalign.3
+++ b/man/man3/memalign.3
@@ -19,8 +19,9 @@ .SH SYNOPSIS
 .fi
 .SH DESCRIPTION
 .BR memalign ()
-is the same as
-.BR aligned_alloc (3).
+is equivalent to
+.BR aligned_alloc (3),
+except for the CAVEATS documented below.
 .\" The behavior of memalign() for size==0 is as for posix_memalign()
 .\" but no standards govern this.
 .SH ATTRIBUTES
-- 
2.51.0


