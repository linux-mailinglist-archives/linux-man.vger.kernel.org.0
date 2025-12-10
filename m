Return-Path: <linux-man+bounces-4382-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C663CB2ED0
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2B2CA301C9EE
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B73A324704;
	Wed, 10 Dec 2025 12:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOv5gBni"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1493246FD
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370406; cv=none; b=dd7w0dv++PvmE9VW8XcWBkXwnyFayBrG9L8a8S+EtZW6aS0vnCflen9hp9cKNP2OfcBqDt/bYK1rM/vGAXcmGtqgvN7+R3y1jh3mkBQB0TVtMp6gPT1Rt4WO73JSx/lV1rULYZZ6ppztN7UioNbwF/UnBYsUhJsQa7VOdpKrFsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370406; c=relaxed/simple;
	bh=1TlTzoykPdrtnEbtQEk0vf8B7AoQogEK4XLkJt9whgg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l19D+A/MAcXvH6e/dYJMaXPFcYzRzZeJzOoKUAJeCetbmRfh056VND0whlfPv9BlZ5fUJj89X8PNHW8p+/biccNYvPLrWFGqwteb2yiG5pBNXQyL5cYvh0ovYlPECKqfQybILEv7ZbENcGcNeNcMxCA7fl0bcyTo1y2HvwZdIO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOv5gBni; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77C1DC4CEF1;
	Wed, 10 Dec 2025 12:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370406;
	bh=1TlTzoykPdrtnEbtQEk0vf8B7AoQogEK4XLkJt9whgg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LOv5gBniZ8DN7bmpkIWPI7qkg3wjj23wDleFyW1x0c6h144kqRb+0NvF1ZHFJXEJy
	 4XFuGUgjUiQrBoKlqDlfJ9ZQCwE18dbS/olCLW+vVFvoPbkCte/UOVSrM8rJarOCRR
	 lb212+pMs6YnEFU/yrn969/3Bqw3aIJFLFHdLqEKQM2mqwUipzQaUEQtz3p06RByNS
	 gMo4vBoZjGDN6NWG2dDcgwh3XYsd/34PD8HWAN3k6aBUSZTwdClQ8mr/bewDpsYgwU
	 2xqc394YAD5TsT+0mVaACjvxYwloUntqMuwDeACxLQbrUvjmOcocDF4kz/kd8BiQeI
	 O9VU4VFiFKiCQ==
Date: Wed, 10 Dec 2025 13:40:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 02/12] man/man3/posix_memalign.3: wfix
Message-ID: <19b5ea61e0ca81a55f1266bc0f290ac3fea59373.1765370035.git.alx@kernel.org>
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


