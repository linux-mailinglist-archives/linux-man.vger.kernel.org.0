Return-Path: <linux-man+bounces-4427-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE59CBE65C
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:51:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3BB14301296E
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C20232827B;
	Mon, 15 Dec 2025 14:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZUGuISF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CB5327C14
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809729; cv=none; b=dTao8+aNsRdF/ztx0CwQr+uJaygMSbCp6Wo0gLFz+vOwkwAnGtAKEUmWQS+g19pT//pWk5QAOH9WCBol9ereKyMRZQ7iLa5tuxVNYQXQ8OIR32vskU+4nZfsR30NR+nH4KIjUELHXcDFoE8+HzuCKuP1e9gQaQuC25sp/NwjeAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809729; c=relaxed/simple;
	bh=FSSXGVjkj908ojj53THKPhaRcPrEy0hqKMqzCKuG8iY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A73jryzU+U1mw/yLYwRNHSZWMTboVIlz/8m/TWgk9of2H4TKczPTy3Lq3hV2xcLzGE16PFBvr6dJAX676wW7yGyERl/M1BaTTZRZGAzacQB6AOsSyzTQqdL5if94M4DoOQs0gunrPZYvVx8dQVsjL4eWbOtQ7wAPDUCdg/Uu7Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZUGuISF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAD89C16AAE;
	Mon, 15 Dec 2025 14:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809728;
	bh=FSSXGVjkj908ojj53THKPhaRcPrEy0hqKMqzCKuG8iY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kZUGuISFq5vMi7LFx5J326pafJShvvTrQPDfiUmwyArcrE94Kn3miVxDlypeF5kw8
	 ths1IzbqTiYooajYYgI6+y8nfU9T27zZ1Eg66zVDu+NtumSC/ADUkGRI5U2QMfItHg
	 XfQVSPVIoWtZqf0IN1XyMWY5lh8Adwb/13p09+xDjjSroJcn88fFf+8i2qAfxcSwbR
	 tX9Tns+N3y4cgtK79vaUZ3ta+4PrpRHcSAwnwkQWo0YZr/R81LBi9xLP6TGwgSUoZM
	 BiqEozNlyiRkt/x3L/b3q+pvMC4LqKuHDoUoGztUsdPpoe/aatJQabffZU2w/v5kz4
	 emiSh7xiBH1qw==
Date: Mon, 15 Dec 2025 15:42:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 11/14] man/man3/posix_memalign.3: Remove redundant text
Message-ID: <c0b9fd96ac6b32d21746beb39e103eeef4f85635.1765809415.git.alx@kernel.org>
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
 man/man3/posix_memalign.3 | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index c2816e1d4..fd76895a9 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -90,23 +90,7 @@ .SH STANDARDS
 .SH HISTORY
 glibc 2.1.91.
 POSIX.1d, POSIX.1-2001.
-.\"
-.SS Headers
-Everybody agrees that
-.BR posix_memalign ()
-is declared in
-.IR <stdlib.h> .
 .SH NOTES
-.BR posix_memalign ()
-verifies that
-.I alignment
-matches the requirements detailed above.
-.P
-POSIX requires that memory obtained from
-.BR posix_memalign ()
-can be freed using
-.BR free (3).
-.P
 The glibc
 .BR malloc (3)
 always returns 8-byte aligned memory addresses, so these functions are
-- 
2.51.0


