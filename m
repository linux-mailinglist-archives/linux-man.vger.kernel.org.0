Return-Path: <linux-man+bounces-4381-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F296FCB2EE5
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:40:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AAA0F308F210
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39540324B17;
	Wed, 10 Dec 2025 12:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6xDnDTD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90613246FD
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370404; cv=none; b=soHNlMlf3FmEq5DcViaSSnKnZS2o5yhzXmDZ23ep/6K/D5L8i+oGY4Y4fcbt1gpJbWviaa6YVEH5SMSWH40x2ECqK0Kxik8sVQZ0spqAvQlYAJSi8LCxQIRApAwRyJf8eRunPmT4RBCXjOM2dNiUC1a+NI3zdZDHvjWFS6ZVVyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370404; c=relaxed/simple;
	bh=583uEbXgmVX6bYuotceux0dNxnQm+/AmWFQ0QpsWGGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qu22opayU7tDyID3h+NRE9QuRV7X0TJvtBUcBy7Ju+DVGm+tWwJViZaMIDsDAc/havsejociGyZHGPbxoXHaupvL9+LHJlb7whUI141mXLkpdUhMbGVHjDLqFL1ap95bDcAXLI9Nkuj62Ti7nq4BVL62Asevluwv2vcFy9Os7Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6xDnDTD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82A99C4CEF1;
	Wed, 10 Dec 2025 12:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370403;
	bh=583uEbXgmVX6bYuotceux0dNxnQm+/AmWFQ0QpsWGGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B6xDnDTDYA5+X5WsBwyGhncs9xtW8Ej+i3XYU6T5LyaB/w68pYYhWwPNcDMdId/el
	 3adE2Ey5Pypr+2T3S+HSiTY4/NF+sZypESitjTQizRob6SWeg6/lBiUUpned+6mtRl
	 90BWbU9+IZgMJJ3SSMQ3pfCfFxvWH/afnnzR8yFVWr5T0Tj0wVobrauJd3WRHzYzgB
	 BG5YxO/MoQmaA/6tNtVQ/tnqvV5rDMDfoECXn2LXCYWMaltt7iXzKzinq4BKwRrBKo
	 r+Zj0UEY0AgHy26u05skSeVSBbwTvddo+AafCW0kINWBQNPXZWUPvib0dE0EuCKYB2
	 aVcQB0K1noNig==
Date: Wed, 10 Dec 2025 13:40:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 01/12] man/man3/posix_memalign.3: Remove confusing
 exception
Message-ID: <90f18b452a7113f42ea4e222f819257e692ce57b.1765370035.git.alx@kernel.org>
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

This is already a requirement of memalign(3).  aligned_alloc(3)
is indeed exactly equivalent to memalign(3), since ISO C17.

Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_alloc(3) to match C17")
Reported-by: Seth McDonald <sethmcmail@pm.me>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/posix_memalign.3 | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index 397f65aec..9c4a0bff9 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -83,10 +83,7 @@ .SH DESCRIPTION
 .P
 .BR aligned_alloc ()
 is the same as
-.BR memalign (),
-except for the added restriction that
-.I alignment
-must be a power of two.
+.BR memalign ().
 .P
 The obsolete function
 .BR valloc ()
-- 
2.51.0


