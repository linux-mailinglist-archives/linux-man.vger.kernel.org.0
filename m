Return-Path: <linux-man+bounces-4430-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 531CFCBE677
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:51:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 929803020DCC
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D560329366;
	Mon, 15 Dec 2025 14:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAfVNbXI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B5D2DC76E
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809740; cv=none; b=XFEhoULukTVSJkBjZk+3CBIOOs5I+dsDlpQw/oCRSP5BSv8nmgO5HQ2gIOuns9HC2o0gglBt7tyqQFnsmYtBGUWspsxqb+5QSDIvcxzlrrLw9znvdttOOcItbgVXrHDuWXlg2gvW9m+xU0QdajwRWCwp8J3Elq0beg16JB6UmCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809740; c=relaxed/simple;
	bh=EaKjhLlY/0/mhF4YLl1RBEUtmOwXF50ABL7nOTJ9wUM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UTrbKAZtNsnsXR2qIm1eMZEbofrARAnifWzR+HtmJ0QQp+ncgNZ4BUAjIBUiND9b/l+ELdTh75tq8D+NRsgilomC5+klLtx+ZiMHKRCYoXkzKbG3srVNACBuoZBcEP6oP9tQfGrW8Q1cIBcRgiW2NlTC12a/QiVeS/TmzVquLxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAfVNbXI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EF98C16AAE;
	Mon, 15 Dec 2025 14:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809740;
	bh=EaKjhLlY/0/mhF4YLl1RBEUtmOwXF50ABL7nOTJ9wUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nAfVNbXINj05ni/D43517+JCIZI+p9X1BHdB+KE+Cqplofj8TNSz1lK/wS2scWE9R
	 2UhxhpJ80vZ0rDrS/9ycaYwVj3xvVMg4S7y5EsOcPDWLpvtgxJ67o63enMtiD2dqDO
	 bkC2sELC9W0Q7xBxMg38CbSC7+5NY4emfl0/zlUVremXVoo9gPSItkR23zKH/2CJ8W
	 ZLmStRuVKCsgoFKAmq3aqeD9Ovk7g1GUzGCqUwQ16HjPyvrOd5mYQggHEgM83QRLmF
	 L3tdFktet/0mI4UbUIdAty0jmltTVEGOcKzh8NjuKOPldjM25Fma6Lti+CDaNtUkEV
	 ZHpVDvvQezH/A==
Date: Mon, 15 Dec 2025 15:42:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 14/14] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <cdfc4207867eeab43d609047a4f01cc1baa1ff48.1765809415.git.alx@kernel.org>
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
 man/man3/aligned_alloc.3 | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/man/man3/aligned_alloc.3 b/man/man3/aligned_alloc.3
index cdc9ba1a2..0c9a12787 100644
--- a/man/man3/aligned_alloc.3
+++ b/man/man3/aligned_alloc.3
@@ -76,6 +76,35 @@ .SH HISTORY
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
+such as OpenBSD.
+However,
+in those implementations,
+the function reports an error,
+and don't exploit the UB.
+It was only a theoretical UB.
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


