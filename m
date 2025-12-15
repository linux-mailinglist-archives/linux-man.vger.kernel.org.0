Return-Path: <linux-man+bounces-4418-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B73B0CBE671
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BC76301FA5D
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0F42C3254;
	Mon, 15 Dec 2025 14:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/Q22NOp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257951FBC92
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809694; cv=none; b=cV+dP++q3IYPfiffPJbAV5FvOcGPEHHavAoBt3Fi3fJYT5PjRa8XdkNNhQ5wURVFb6tGjq0onRpXT8+GdL27JJDopolVXyy5ZeVDDzBUwgNeb7/J7Ph+VlcFDFinbd/tuWjZ7Xd+DdKifxQRDGRK/LYs0jSnXi2BufzuTbAkKT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809694; c=relaxed/simple;
	bh=1TlTzoykPdrtnEbtQEk0vf8B7AoQogEK4XLkJt9whgg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c3G4gOxmXmqrwNTDdK8hBmBMv9ZDLeYB70C2txOBtsQlQmNIjiE8p/RQhYlVYRFsVHurMgOMpuZyp8oQM35f33qR09skRZV43ZppXklRLMposurCBNk9r0BpGj/JZz1RS6EejYBOmLkRjd7gvehAcbw3nQ1o/H7c2G0V2GfpXjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/Q22NOp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5E88C4CEF5;
	Mon, 15 Dec 2025 14:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809693;
	bh=1TlTzoykPdrtnEbtQEk0vf8B7AoQogEK4XLkJt9whgg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W/Q22NOpGkJRJ5J/Ba87q7P3wstpBcwVL94QWJGOqPzJ6yOJ0s0jT2UJP+wNPrXyL
	 aEUB7tF8C7lWD4gQncrSF6vZPS5swwVcjtVO3ACoPADKa/oNZuqsOqOW5UiWgp3fa3
	 xhTdZFEGWO0hVRHLYbsZSvfOjLaOeceTyqL0cUYopMg+R2Ealfi8AcNQEyVJgWDffF
	 IjBXh/VxZcARkz5YHTtzrSbSWGyk8FocXjRxc3nXbxYklxDDFTR01UzwyR06iZhi6H
	 yfqQm++1/2ZjO9CJse310ZtzH5F/gMjpERYG6LHjRmQOAZ6AdulfpE0+2KZu+igbsR
	 vQYBedFHQCjhA==
Date: Mon, 15 Dec 2025 15:41:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 02/14] man/man3/posix_memalign.3: wfix
Message-ID: <19b5ea61e0ca81a55f1266bc0f290ac3fea59373.1765809415.git.alx@kernel.org>
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

Document aligned_alloc(3), and then say memalign(3) is equivalent,
instead of the other way around.  aligned_alloc(3) is the important one.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/posix_memalign.3 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index 9c4a0bff9..4cf63d283 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -70,8 +70,7 @@ .SH DESCRIPTION
 .\" glibc does this:
 or a unique pointer value.
 .P
-The obsolete function
-.BR memalign ()
+.BR aligned_alloc ()
 allocates
 .I size
 bytes and returns a pointer to the allocated memory.
@@ -81,9 +80,10 @@ .SH DESCRIPTION
 .\" The behavior of memalign() for size==0 is as for posix_memalign()
 .\" but no standards govern this.
 .P
-.BR aligned_alloc ()
+The obsolete function
+.BR memalign ()
 is the same as
-.BR memalign ().
+.BR aligned_alloc ().
 .P
 The obsolete function
 .BR valloc ()
-- 
2.51.0


