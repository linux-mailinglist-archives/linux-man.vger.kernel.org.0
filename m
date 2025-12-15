Return-Path: <linux-man+bounces-4428-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A623CBE6F2
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:57:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE9EB30A1839
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7494E32A3FD;
	Mon, 15 Dec 2025 14:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtGIFnts"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B3432C95F
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809733; cv=none; b=SrHLQ6J1VzlV3QmMHSCobyqWTanKItCwe9EXwZT/mtj5OC59F1FnouoO57xltP50uhcI+HlZ9BpDwSTxWVt6lSMgDBg4MkjoFoCH0uITOU873RVoBspB1aPvH5XUe8mdl1L/RyWt+Fui9TbLzC0sx0aodX2pXowhKQaEAVw9jYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809733; c=relaxed/simple;
	bh=KJffKG/ygtkz99MLojJ4ajyMVTqeVC2P7HYGULgANDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q1gM5o0M4IQ8bJBRFELtGBPtJH99KGHql0BcLckfwryNa+dPsFNF4MAqcW6um0/6nYOtTeHcNxTfz3pLWSd32wiflSQeCITO8L+4fnetTLt+Ig8dsSmhapo9gX6yQWLcZ+znAKbQ2KIEhsl9KIn96ewx8U2iVO+Ic5088yF7qAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtGIFnts; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85D05C4CEF5;
	Mon, 15 Dec 2025 14:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809732;
	bh=KJffKG/ygtkz99MLojJ4ajyMVTqeVC2P7HYGULgANDg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CtGIFntsCBzebQ/5dbMQk3XjN78iHFq0Asshc/0LpdlGitagYJetVNSfW3uXdBf3j
	 SyyCBY/BMqNks3AseXA1vf6rXxqHIiysHaTh/+Bb1V3wezf7M2xgY/NimnCIQM7wuT
	 VMI5NbfO8sI3NmjIBE3hbqS/HHeZ2T0XiCU5f1bqFm+36ftXiEQXc8ws2TgdgmbNoz
	 n1PoPWrYuITcKT6yPgYpJcEEl54CLn8T0ZcREPLHrNy/ZGpA9O02SWfEUStkRGQXzJ
	 JfcVP3NVh+eCLzJlw56oA1i3XsxVoPFdfofwQMtg2+vspEQhUXXAJ0UVbAWhBBU4uD
	 TzkwR0xGd0mtg==
Date: Mon, 15 Dec 2025 15:42:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 12/14] man/man3/posix_memalign.3: NOTES: Remove
 superfluous section
Message-ID: <34d98453483412215b8ebb39eab77d36eb00751d.1765809415.git.alx@kernel.org>
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
 man/man3/posix_memalign.3 | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index fd76895a9..5600f7978 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -90,11 +90,6 @@ .SH STANDARDS
 .SH HISTORY
 glibc 2.1.91.
 POSIX.1d, POSIX.1-2001.
-.SH NOTES
-The glibc
-.BR malloc (3)
-always returns 8-byte aligned memory addresses, so these functions are
-needed only if you require larger alignment values.
 .SH CAVEATS
 On Linux (and other systems),
 .BR posix_memalign ()
-- 
2.51.0


