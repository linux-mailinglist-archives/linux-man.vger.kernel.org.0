Return-Path: <linux-man+bounces-2231-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C9CA112D2
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 22:15:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24627166E97
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 21:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94FF0211488;
	Tue, 14 Jan 2025 21:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="TMd/yyxK"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E441FC7FE
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 21:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736889315; cv=none; b=qDEWWcbmhyoJar3pWQle7W9mE0zzEwCtn9B7p6OdmN5i679zh2b8h5XJ36v76Gtgclmc6DVrrLyzQOc+A8W8+O0T2gz3+fFH5wUHXVtMlvJ8ls1gvCe3KZ0agd+HrHN/WrlZpBtYj0vQ6jeBtLB28gYM2Ml7X9iHUAwLj2N7wYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736889315; c=relaxed/simple;
	bh=aP9FPGNJ6daLCg5cvAtAIw6SNGWc1Jpd5CCDalqhdXM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tFKy6+b+V2rJ1YpJ2Az88X+XprUBY5X7BBCZHqgmon4ELNpMAaQb1K43bmcy3AdLb2r1MSBA1HNVdkt1p6vNOcfrw3PlFVpq0zizjNI9We5JRWzWbr1yyw0y0CA5f5fHhd8Wa0OtMTHFEm43jkNAxKtYCuwWvBBh1szKRtidUQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=TMd/yyxK; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1736889311;
	bh=aP9FPGNJ6daLCg5cvAtAIw6SNGWc1Jpd5CCDalqhdXM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TMd/yyxK0p7UH6mRbU1hrirdX6K+P0yJGQpLIKbP+qcLUxAoyikpobLzZGfTsUi98
	 8xROApAM+KXCMsWWeiOwQ8k/oDxXM/68fmVBb3qbm+yt1WeB6Z1nAUB46wcLu6gcl6
	 029I61evkC0JvgR3N8nz6KyTm6JxBz37DkL2Had+Y21ewOti4xKqUWF32qIVJsk45i
	 L/et6YVaz4P/hPsNtp18iXwBDDC87kK3uea8gq0usSzpm4wto3SnjTe2HQkoIGtJD6
	 HM9wAzpePKU6GFYG9WndWlUofxm45qqdhZJDNHvR1FnzyHQN3cMa6xYgkUyiYoVE4Z
	 8RJwPL9+mBuQQ==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id D48657E26E;
	Tue, 14 Jan 2025 16:15:11 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org
Subject: [PATCH v2] man/man7/man-pages.7: Stop telling contributors to write titles in all caps
Date: Tue, 14 Jan 2025 16:14:25 -0500
Message-ID: <20250114211427.160509-1-jason@jasonyundt.email>
In-Reply-To: <20250114130028.28638-1-jason@jasonyundt.email>
References: <20250114130028.28638-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Recently, I submitted my first patch to the Linux man-pages project.  In
my patch, I had created a new manual page.  On the manual page’s title
line, I had written the title of my new page in all caps because
man-pages(7) said that I should write it that way.  It turns out that
man-pages(7) was wrong and that the title on the title line should have
matched the title in the manual page’s filename [1][2].  This commit
corrects man-pages(7) so that it does not tell contributors to use all
caps when writing titles on title lines.

[1]: <https://lore.kernel.org/linux-man/rph24kz36vysoeix4qoxxxcwq3c3fskws2vmxkkgcb2lpits3f@ysm7ug66svzh/T/#mc84250a6634d7f776118879021331001cceccbe5>
[2]: <https://lore.kernel.org/linux-man/mog6nnwzwl2dmlrec5b7l76wbxlsnklvdulok644x6o557trib@3zwtoz47r4x3/T/#mf71422d0e159210a7ca2798f2bba50a668e1410e>
---
This new version of the patch removes the ", written in ..." part like
Alex suggested.

 man/man7/man-pages.7 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man/man7/man-pages.7 b/man/man7/man-pages.7
index dc117662f..0ba3991e8 100644
--- a/man/man7/man-pages.7
+++ b/man/man7/man-pages.7
@@ -95,8 +95,7 @@ .SS Title line
 The arguments of the command are as follows:
 .TP
 .I title
-The title of the man page, written in all caps (e.g.,
-.IR MAN-PAGES ).
+The title of the man page.
 .TP
 .I section
 The section number in which the man page should be placed (e.g.,
-- 
2.47.0


