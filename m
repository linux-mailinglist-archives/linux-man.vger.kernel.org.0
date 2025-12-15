Return-Path: <linux-man+bounces-4419-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A32E4CBE665
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 810523005009
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10DEC2D0C72;
	Mon, 15 Dec 2025 14:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXkO+Jem"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E9E1898F8
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809697; cv=none; b=Gblpiabkm8+ilVGSWsaxfwzH4ZDnfzYMt7MRp/YYLNloJv2Lr9IMJw7OEDhs2w5zPsfuWbihS+JVoz2Ls0Hx5rZiz2UbCQfsA9qVDp5kzXAW4EWz7+QG2oftx+qXwENN7mIzf1TXn4LHxwUMReJiTWT2I+UhDk8mH28P8qbT55g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809697; c=relaxed/simple;
	bh=wzgYeae0a4p7i4/X1vcvjlBkRS+QqwleotupN90AynY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HXZKfVSBD9ZVzIF7hJwwHNkFfy1H57yW8297fNPVe94CIiPI4PcR8QpjS9AA/iwbwzwhf2egP68pf88egWJk6TznZYp0txxo9tKQnX7bKo33sH24PVJ9aI1IduFnWnvp8KuEXQIuWitptkkB2oKsRIw+qN/crFlSUZhNKQlyGQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXkO+Jem; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81A19C4CEF5;
	Mon, 15 Dec 2025 14:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809697;
	bh=wzgYeae0a4p7i4/X1vcvjlBkRS+QqwleotupN90AynY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YXkO+JemoYXuUaFb1Hi/p1PNaM+Nmv0BSgmrFb1qP3yTA4TxTP1O2nxvX/f489ymG
	 z9/h2RXli9q2iCI3/TKsorcNvcx9iINO2dVSw6fSsOFkrRnAWTkRN7E8NrecaG3b1f
	 7hCTiiBOxoZUceST3rIfsIzxW5kMvdNavY6Td+JqTgOozLlMCiOJbgng0NAHTMeyWG
	 VKDbT4xongbHQh+cOBkzQlcZ4D/ST68aHuMEOmd3S+Wu4PFDJfFGvQudWWAIhm1coe
	 K2jVRvmpe38qaXzcV8Qy18x/1e1ANkLgm83LJHbLGJI06aQRaBrcltKym3wns/k+we
	 cOUKtbU88/Dqg==
Date: Mon, 15 Dec 2025 15:41:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 03/14] man/man3/posix_memalign.3: STANDARDS:
 aligned_alloc() conforms to C17, not C11
Message-ID: <82bcf3b0f37da2552a283214d7f558741d85e942.1765809415.git.alx@kernel.org>
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

ISO C17 removed a restriction that was in place in C11.  This
documentation doesn't conform to C11; it conforms to C17.

Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_alloc(3) to match C17")
Reported-by: Seth McDonald <sethmcmail@pm.me>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/posix_memalign.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index 4cf63d283..d0adaab01 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -162,7 +162,7 @@ .SH ATTRIBUTES
 .SH STANDARDS
 .TP
 .BR aligned_alloc ()
-C11.
+C17.
 .TP
 .BR posix_memalign ()
 POSIX.1-2008.
-- 
2.51.0


