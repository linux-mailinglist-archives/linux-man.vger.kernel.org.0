Return-Path: <linux-man+bounces-4434-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D89CC829D
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 15:24:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 578EB308CFA1
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 14:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01C2B36A02B;
	Wed, 17 Dec 2025 13:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpzyWTTJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46CF36A022
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 13:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765979486; cv=none; b=Vt/tCVdHX1wDITsyUWd2Fs0Wya1HM5e8QWmKHlgGwoLd7WZlqsUJoMkuYuMv/n+2teaS2LKLTcRq5lecsDnWTrI6/aUiuVnzX72x7zmz/wJ0DZk36dt7TtR4KybvINu95XZEedHemJxKtB5BOYODIP5VKSiXv/nZ/zvvcdwS59Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765979486; c=relaxed/simple;
	bh=Z8Ivc8OeMdJJi38uGrxIzxUVwi6KN7fC01Jub3nrEh8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ria4VeDPZpsgSGjEDnbnjlpt7CWIyARBYysmWLLJ9AyZSnZr5jh64xIDjDS8iHqa6j/KxeeDjO6oe4h48w6uNrG4dg1+//2Kimnd2lVsgdba9qjd+UQNdqzEjEMP2Dp0CURWB9QRNDQVELiFdUbW9wKXFyVsrXu4vB0LA9DkrWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpzyWTTJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51A4CC4CEF5;
	Wed, 17 Dec 2025 13:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765979486;
	bh=Z8Ivc8OeMdJJi38uGrxIzxUVwi6KN7fC01Jub3nrEh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HpzyWTTJFV1V0MpKbWkfsM2Ld+r0TFOJJPEBfJE05aW86+WWUEMASspJNsIUG6anR
	 KVJMM7ibc/g/ozQmNIGhyBMqmhpaWEKsPNcmiwC2b0rw8p+H/JqC0aqwi/93gNbKOm
	 KEJHd38jcqk5xaJQ5SqbNZmrsDT3WexKCzocFXg4eHuXWadUdy1FL/AzIbsOf99NbD
	 P3jYce8SYReLRP3I9UFK7rxbRgmMlwCv6+mCysjHY7IK1XrwMs8XsgZtX4BOUhXYr3
	 fLiNHHwqijJuLhxVO5HyXRgSWga4rXCTE9+a+2X26Nx0MlnKEeVIaB+Bd87Vr5Ly4J
	 TbeUnTvJoBsFQ==
Date: Wed, 17 Dec 2025 14:51:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765979316.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765979316.git.alx@kernel.org>

And document that OpenBSD still implements the C11 specification (but
without the UB).

Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_alloc(3) to match C17")
Reported-by: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>
Cc: DJ Delorie <dj@redhat.com>
Cc: John Scott <jscott@posteo.net>
Cc: Paul Floyd <pjfloyd@wanadoo.fr>
Cc: <misc@openbsd.org>
Cc: Ingo Schwarze <schwarze@openbsd.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/aligned_alloc.3 | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/man/man3/aligned_alloc.3 b/man/man3/aligned_alloc.3
index cdc9ba1a2..f5fad3654 100644
--- a/man/man3/aligned_alloc.3
+++ b/man/man3/aligned_alloc.3
@@ -76,6 +76,46 @@ .SH HISTORY
 glibc 2.16.
 C11,
 POSIX.1-2024.
+.SS C11
+In C11,
+the specification of this function had several issues.
+.IP \[bu] 3
+.I size
+had to be a multiple of
+.IR alignment .
+Otherwise,
+the behavior was undefined.
+.IP
+Some implementations still implement that restriction,
+or claim to have it.
+.RS
+.TP
+OpenBSD
+The function reports an error
+if this restriction is violated,
+without exploiting the UB.
+.TP
+FreeBSD
+.TQ
+jemalloc
+The documentation claims to have this restriction,
+but the implementation works correctly if it is violated.
+.RE
+.IP
+It was only a theoretical UB.
+No known implementation has ever exploited this UB.
+.IP
+This restriction was removed in C17.
+.IP \[bu]
+If
+.I alignment
+was not a power of two,
+the behavior was undefined.
+.IP
+No implementations ever exploited this UB.
+It was only a theoretical UB.
+.IP
+This UB was removed in C17.
 .SH NOTES
 On many systems there are alignment restrictions, for example, on buffers
 used for direct block device I/O.
-- 
2.51.0


