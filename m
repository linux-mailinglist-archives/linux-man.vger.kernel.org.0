Return-Path: <linux-man+bounces-2491-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B563DA3D47B
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 10:20:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18A213B7EC4
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 09:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62C4B1EE7A1;
	Thu, 20 Feb 2025 09:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="HN+//suI"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7491EC00B
	for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 09:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740043247; cv=pass; b=h112lE25lTiur2tA2ed1lacb4XJ6qsseETECelvjZ6nZsJbSKQBm4QpyNnz9Y5AwnBCkghE9gJE38Y+cFHDoMwjQrkJ06ToaLl2xWUlLAUZs64Fatjl8lgaEF/fdte9f+zeiAdnGJibkOXMzRdU+1LphceOUYo8C1nM4LHPYUlc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740043247; c=relaxed/simple;
	bh=/06Zw1tp1OiVnazSDlnKazyJTdyUggAphuYIRkJ7dmM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZTYh6qVzY1+W59x6HLV91xl2o2Xt2tNYxytW0FapZhudE/hPN2z5kLzsH5SNRZOOLH+YyVVrMV3ElK2X39xP8XtbELH2y7ot23POWkaG0xoBO9bKhymvhvXkXb+L8SOXWYVV79QmuxVC06V0kDsGevzwepw2JtD1ZB4K4ADop3U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=HN+//suI; arc=pass smtp.client-ip=136.143.188.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1740043239; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GMy4StGjkyeILSZHZCm3aYziOSma1/8pXoY1hOMzoJtyBNqTtJmuLIszyqs0s9pIHw7MPlStpruM/YUE83sIUyYx5ZLoDvAqGnNo8db2W6xKc9vju0VX6e+ahtbKgLG1elJKgOk+JTpB5YRdTUg21BcYR1rEIRZBR0DsmWK+cnw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740043239; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=YHpCiB+B55Q8XGFi8b0zNM17jWztHbFY+WsCQjy0DiI=; 
	b=BfkvwHt4hTx1Ib/Xdqfr73si/oBvix+AZ8b6A7ZCbI9p7wRb2cgCZLdzFZD9cymYmxF/2nBjga/iw4BCx7TQvXmTJP33KM60tAcL327Af7f+dz/wDpTt30KGPUhYIB23HEfzyHKONMQcsfyWKz7TV0j0TTT+WwD9wQ89RWWoKNM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740043239;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Reply-To;
	bh=YHpCiB+B55Q8XGFi8b0zNM17jWztHbFY+WsCQjy0DiI=;
	b=HN+//suIb4R8eHXPJYleg9zduK/lV27lL2Vc9bwWPaOTf3AynC1+O73eXWyWnf6p
	xEpfgBcQRW6qtduBYgPqygtkAlcD2iuwBuAaTjYsspP/t5Z4Zl3+r8ByjFHq7ILKfnn
	+OcLZni6tqafMRsKRcn3T45bN0DDVEBdPPzkTl3Q=
Received: by mx.zohomail.com with SMTPS id 1740043236413167.86156099862353;
	Thu, 20 Feb 2025 01:20:36 -0800 (PST)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v4 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
Date: Thu, 20 Feb 2025 09:19:26 +0000
Message-Id: <20250220091926.3985504-3-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250220091926.3985504-1-safinaskar@zohomail.com>
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250220091926.3985504-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr080112278ae54b6a81dd50a5222b1bb00000c2222c938605797879d1ef7c6c124e6860fc3cfdc837f2d5aa:zu08011227f8bdf2979bc13479ba4abf330000958ab44f111157584754e3d50ec3f8251358ff31a16b17b714:rf0801122d15742ae35bd5df94423d80880000c2d87474dffd19c0518708de0d6b6be411dbba72b7c5befc054c88cc302847:ZohoMail
X-ZohoMailClient: External

Reviewed-by: Carlos O'Donell <carlos@redhat.com>
Signed-off-by: Askar Safin <safinaskar@zohomail.com>
---
 man/man3/getcwd.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
index 919ffb08f..f3da4b5a9 100644
--- a/man/man3/getcwd.3
+++ b/man/man3/getcwd.3
@@ -245,7 +245,7 @@ process (e.g., because the process set a new filesystem root using
 without changing its current directory into the new root).
 Such behavior can also be caused by an unprivileged user by changing
 the current directory into another mount namespace.
-When dealing with pathname from untrusted sources, callers of the
+When dealing with pathnames from untrusted sources, callers of the
 functions described in this page (until glibc 2.27)
 or the raw
 .BR getcwd ()
-- 
2.39.5


