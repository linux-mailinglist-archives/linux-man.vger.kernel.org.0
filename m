Return-Path: <linux-man+bounces-1585-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A06094A679
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 12:59:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3E0E1F2208D
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 10:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3808F1E2109;
	Wed,  7 Aug 2024 10:59:15 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF211DE841
	for <linux-man@vger.kernel.org>; Wed,  7 Aug 2024 10:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723028355; cv=none; b=fxRsaKo+3opYfsoCIgYf89ArptTL6cORE+U9lc4v0U7k91/7wPzrBVZo5MeOH4cz7w0WDieOetK+keQFsz18aOYoG996i0U/VUnfhO4arCX0+QSR59iAgMMb5yaF1lai5wbpARc/kdZDeYRjalbFbLY9q3hx2tZDQxF6zh8WRF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723028355; c=relaxed/simple;
	bh=7GCjwNCducIJC88oABxQDSNhVc4YHuboy/29H3Rs25U=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=UAdnlgYbygbVLX5XQiiIHNFudMbE+GI6N/NglXJAJeP/ajj3kteZb8cNCvtxn34wklZd/2RQhxvhS963nH5Qy6fq2iOc3x1IhZ8hfu4jVQiYom5Wq0kotXtG+2/1/Q1y0kkcVIldtUUq2GbTGVafa6i0v4vAicbgXEwsf3oNmY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (135.197.67.86.rev.sfr.net [86.67.197.135])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 91404752;
	Wed,  7 Aug 2024 12:56:17 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 55DC0CA0100; Wed, 07 Aug 2024 12:56:17 +0200 (CEST)
Date: Wed, 7 Aug 2024 12:56:17 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Michael Kerrisk <mtk.manpages@gmail.com>,
	Alejandro Colomar <alx.manpages@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH] nextup.3: minor improvements
Message-ID: <20240807105617.GH3221@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

The current "If x is 0" is a bit misleading because "is" is not the
equality test, while this condition should apply to both -0 and 0.
Replace this condition by "If x is equal to 0".

Replace "Nan" by "NaN" (typography used everywhere else).

Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
---
 man/man3/nextup.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/man3/nextup.3 b/man/man3/nextup.3
index 285c2bcda..02fdb9bae 100644
--- a/man/man3/nextup.3
+++ b/man/man3/nextup.3
@@ -38,8 +38,8 @@ is the smallest representable negative number in the corresponding type,
 these functions return \-0.
 If
 .I x
-is 0, the returned value is the smallest representable positive number
-of the corresponding type.
+is equal to 0, the returned value is the smallest representable positive
+number of the corresponding type.
 .P
 If
 .I x
@@ -52,7 +52,7 @@ of the corresponding type.
 .P
 If
 .I x
-is Nan,
+is NaN,
 the returned value is NaN.
 .P
 The value returned by
-- 
2.45.2

