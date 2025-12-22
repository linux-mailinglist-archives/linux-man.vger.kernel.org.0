Return-Path: <linux-man+bounces-4467-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7051CD7350
	for <lists+linux-man@lfdr.de>; Mon, 22 Dec 2025 22:33:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 483573031367
	for <lists+linux-man@lfdr.de>; Mon, 22 Dec 2025 21:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01573277CBF;
	Mon, 22 Dec 2025 21:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGroZeo6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20252C15A0
	for <linux-man@vger.kernel.org>; Mon, 22 Dec 2025 21:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766439197; cv=none; b=TKtrqTlI8vO2W9edhU7uWJS6SjfVarB7hSHtukChtbu/7fjNNHq3iWt9m59G2brSaMZWzNXhm29sOUNbEN/ApeQKs6YTYkvjjENt0tp4F4AduWwORsKwKazY6kisaDDh5/OVQBuCrcWj0SxPmQ1Zos4FGSfreYgJTqC2nTOjJbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766439197; c=relaxed/simple;
	bh=+B6LqgGkbuF3npAln02sobY8yFKUDOq2/zz2swHgoX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sJNN/pVOUAwbPjHuEbuGATAQTTpBV6rwPJTTiEgutHnxZ65YfZeQyCWc0KRvXxHzg+MzXw2fTSXib5an3k3fS+EGGth12T1k9hDy3cX/OO4jDSSlrI2zDlKWsgCo4YuNBCTBGnDF5q0Ukpikkfftqdcr8zGkX94Do6izo6Q3rrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGroZeo6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A90BC4CEF1;
	Mon, 22 Dec 2025 21:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766439197;
	bh=+B6LqgGkbuF3npAln02sobY8yFKUDOq2/zz2swHgoX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LGroZeo6zUyGDnd3bmBGyPD58tVOG6wS1jKlvwznGY5KQCXvMiVJZ19I2IZxfmVlI
	 XmPwGUKJtDhoy/zfgk5FKpEMqyH1NPwIkQRbV2wgNLBH3O+XgZI87rSNv7LZ5cm1at
	 +dSVdeNvbMTZEGK4fpTdn7Jl97imqfBBzkt8gYk3dYY0uwXAkRlAofw2vo3vKJWiJv
	 oOq8oZzjbV0ffHhdM/qSLvjMiFUc2ZmtehL8LTSpZtdvzr5yceda2qp4HInETa4iY7
	 AKBV+L13DGo/8R+h120eK//zywKTEpBbynnTxb6wjI8/ZWTQ4lVditwM99WD1lqJfe
	 D7Cp9OcyR3f2g==
Date: Mon, 22 Dec 2025 22:33:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v4 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <f19bb100f31e5c5b9f0edaf1807ef66d99627316.1766439016.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1766439016.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1766439016.git.alx@kernel.org>

Document the turbulent past of aligned_alloc(), and how libraries have
actually implemented it.

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
 man/man3/aligned_alloc.3 | 60 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/man/man3/aligned_alloc.3 b/man/man3/aligned_alloc.3
index cdc9ba1a2..820582f35 100644
--- a/man/man3/aligned_alloc.3
+++ b/man/man3/aligned_alloc.3
@@ -76,6 +76,66 @@ .SH HISTORY
 glibc 2.16.
 C11,
 POSIX.1-2024.
+.SS C11
+In C11,
+the specification of this function had
+.UR https://port70.net/~nsz/c/c11/n1570.html#7.22.3.1p2
+several issues
+.UE .
+.IP \[bu] 3
+.I size
+had to be a multiple of
+.IR alignment .
+Otherwise,
+the behavior was undefined.
+.IP \[bu]
+If
+.I alignment
+was not a power of two,
+the behavior was undefined.
+.P
+.UR https://www.open-std.org/jtc1/sc22/wg14/www/docs/summary.htm#dr_460
+DR460
+.UE
+reported both cases of UB as unnecessarily dangerous,
+and fixed them with a Technical Corrigendum
+that transformed them into errors.
+.P
+.UR https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2072.htm
+N2072
+.UE
+reported that the requirement
+that
+.I size
+is a multiple of
+.I alignment
+is superfluous,
+and removed it with a Technical Corrigendum.
+.P
+C17 incorporates both technical corrigenda.
+The API has been stable since C17.
+.P
+glibc originally implemented it as silently aligning as
+.I stdc_bit_ceil(alignment)
+instead of
+.IR alignment .
+Since glibc 2.38,
+it implements the C17 specification.
+.P
+Some implementations,
+such as FreeBSD/jemalloc,
+implement the C17 specification,
+even though their documentation claims the C11 specification.
+.P
+Some implementations,
+such as OpenBSD,
+implement C11 amended with DR460,
+even though their documentation claims having undefined behavior.
+.P
+No known implementations
+have exploited the undefined behavior
+in a more dangerous way.
+This function should be safe to use.
 .SH NOTES
 On many systems there are alignment restrictions, for example, on buffers
 used for direct block device I/O.
-- 
2.51.0


