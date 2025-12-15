Return-Path: <linux-man+bounces-4417-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD26CBE680
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:52:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C9743012CF7
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35EAC2F3618;
	Mon, 15 Dec 2025 14:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imLL88B2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1222F1FDA
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809690; cv=none; b=p1pscvUDGX2fEiTzWNn6Xiq/FR6jS3f3BPDiqygviqnfFcm9miFZoA8O7wZoGs5fX/E/D0Wegljjkw4fGoCzIyycvQrfuL30wb3VWlbes5dmyEZfE0HJxicTv38XzcWfIOfuhRJFr3rxP3gTT6Qw6cZOmGEW+X1J7ZIFo7reOAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809690; c=relaxed/simple;
	bh=583uEbXgmVX6bYuotceux0dNxnQm+/AmWFQ0QpsWGGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J6TQ6WUQkUTtK+CwkYLdSt5h2UJgCqFcjivfBZoq/I0s+/OhL+llQpPTkNzzVfoD04B3sUbIJsBoM2oSewfSjjBmcsbKmWizPHUs07nRT9xqKnNlIcGzvwpiUEn+BpCfPFH0sLigGKylrkgCH/YD9K+qECJJXGGhtHloPmKLfds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imLL88B2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A586C16AAE;
	Mon, 15 Dec 2025 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809689;
	bh=583uEbXgmVX6bYuotceux0dNxnQm+/AmWFQ0QpsWGGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=imLL88B2M4iCxYWmlgjtS0xwL2OWWoNsBjEXfdWGX9LlMc7DyeIRXgOOtzCgIMICd
	 d6lFBqgOujAkwiF4b/LqxqXfHCbuew6TpxmnCKDtwjf13NdnkBlRqSYpOsncYYkC+m
	 /VKKm7pDo0t5I50Nj2ij3Ttb5aBh3soLf/Cs/69JAdZf1xHjTGZ3s3+artY82J4y4K
	 rQ4B1VNsILeyYoGumcUJiaw1FISvUj9k8R8d0084Hzecb5h5qSiT9nmwkfLkuNhTk7
	 N5i6IxSsVF4ETq1aZlC9vOfzO5BTsLaUHPtLNYyYpShc3ymo8LgF9sDm997GPP36To
	 p7xVPOgibz/gQ==
Date: Mon, 15 Dec 2025 15:41:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 01/14] man/man3/posix_memalign.3: Remove confusing
 exception
Message-ID: <90f18b452a7113f42ea4e222f819257e692ce57b.1765809415.git.alx@kernel.org>
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


