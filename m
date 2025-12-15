Return-Path: <linux-man+bounces-4421-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5474CBE65F
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C52DE3015BAF
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59AB2EC553;
	Mon, 15 Dec 2025 14:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlQvOozG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C8C2E040D
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809705; cv=none; b=jRqk43O85M0AMvlRGtUNDjShQJ9C/+4RFo1o8PHwu3k7ZY9yVRAPchJBKSHtKItqHxjmSBNz4WUJTuvKPXhOs+UUItHodF6rEEjPrcyrvK4I3D04+c6xfclzzbZjDXo2SLlUm1xplg4UxIoKX3PmSVM7yeQRN61uspzw4gSWGqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809705; c=relaxed/simple;
	bh=EI3ww3cW3Vb6dC8HaZdPEEzJ18MuaokQyRguyxZ/pSY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DiQD6A9BkCRMLrsRPfBLVLPIYbLuYCATW76hw5iNqPL4/IH9cVtRTaMd26pC2q6LfTr793qCA2Y7StCQYpYL8lQ1MYbtsHTwd9LMIVmQSYchMa4V599jodfZaDekzesCdSG35Koc8oqIx284A3an+qdm3R3UCqdC4ya5+nYBytA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlQvOozG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68786C4CEF5;
	Mon, 15 Dec 2025 14:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809705;
	bh=EI3ww3cW3Vb6dC8HaZdPEEzJ18MuaokQyRguyxZ/pSY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GlQvOozGmMu95jMbKOJvsFJiaHLdY1CzPFsW67NKpfwvLPt7HiAM8m1qJTXRch50d
	 1VQ8+d7FyfXrma/PzX+LjeIr3T0k/p/sTOPNUbhy5sHUnnnufiX3WW2C5SlInYWPsr
	 FK1k9SvAxN0bHoMyCP2VF1eMM1RKnQlJbQY2KErAFaGkhFpZMs5chw/Rt3kIOSaz+x
	 6wubvmh7X0ZUYL1TDVSpDSwPRulYp5P6s000h9UOF3RCfHms6LIWbiTzaTK+YKYsPm
	 MHAN2JKeXGGCEjXBAoB5yZj/afe3SYMZTSPn96wFY/zieUqlk55u1Mm2bognZEVavS
	 txxZj5Y4g4g6A==
Date: Mon, 15 Dec 2025 15:41:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 05/14] man/man3/posix_memalign.3: STANDARDS:
 aligned_alloc() and posix_memalign() conform to POSIX.1-2024
Message-ID: <c8ffb2124afd23a4200691d31f96cd3e0cf0c02f.1765809415.git.alx@kernel.org>
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


