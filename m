Return-Path: <linux-man+bounces-487-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C25E186B7E8
	for <lists+linux-man@lfdr.de>; Wed, 28 Feb 2024 20:09:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F09591C20E70
	for <lists+linux-man@lfdr.de>; Wed, 28 Feb 2024 19:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F77B74405;
	Wed, 28 Feb 2024 19:09:46 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CFB79B74
	for <linux-man@vger.kernel.org>; Wed, 28 Feb 2024 19:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.32.96.117
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709147386; cv=none; b=nXUaJ0WIfxJYzSKfc+TE05V2yVBQfs1zcaBh0rgalShjnnn5OXM7veX6A1IEiFUhlLzkvPSRimXfKI6I9ZEM3w8ThSd3UmeSTgYDEYV20m4aJ9oj2TfFpmmvYOAU5oWkd5x73GP/eqG4ZnNwQUYXrqRojZjIJnLCZ4Y4FOCffRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709147386; c=relaxed/simple;
	bh=QqQXCh5nVCFewZPXCD5YYsWniHl4ZFwOda1pD2GODDg=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=PkKZZYKf6KnQzZ71yBj8BoAKkjSPA2zSHHfIA41EuvcDnDH+wSIGRxnBB4FtLadsSckZlDMpebh+zQsxalmdXOzMBxPhKCiWZjVp+H+5mz/xr2sOLcNLboYGAo2nn/5Vbsk691rY46cxsDP8qPI4PQmb+H1YOmKCk5M5u9uuF6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net; spf=pass smtp.mailfrom=jwilk.net; arc=none smtp.client-ip=178.32.96.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jwilk.net
Received: from mxplan6.mail.ovh.net (unknown [10.108.2.65])
	by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 4TlP6p0N90z1JLm;
	Wed, 28 Feb 2024 19:09:38 +0000 (UTC)
Received: from jwilk.net (37.59.142.105) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 28 Feb
 2024 20:09:37 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-105G006d013d33e-df1a-495d-a990-d77652b9e95e,
                    EFA28A1CCEE55A317ED09FF1017E8B6C48C84F0A) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.214
From: Jakub Wilk <jwilk@jwilk.net>
To: Alejandro Colomar <alx@kernel.org>
CC: <linux-man@vger.kernel.org>
Subject: [PATCH] Changes.old: tfix
Date: Wed, 28 Feb 2024 20:08:28 +0100
Message-ID: <20240228190828.2645-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: d15caf37-63a8-4457-ae03-c8ad38858ff9
X-Ovh-Tracer-Id: 9579437882572658586
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrgeejgdduudejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvfevufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeefhfetfffhffehtedufedvfeehfffgudeljeehieetiefhfeffjeevleejveehieenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddthedphedrudejvddrvdehhedrvddugeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepvddprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 Changes.old | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Changes.old b/Changes.old
index c3c63d5dc..fa134e56e 100644
--- a/Changes.old
+++ b/Changes.old
@@ -56494,7 +56494,7 @@ Global changes
    -  Rewrite a large part of the documentation for string-copying
       functions.
    -  Say ISO/IEC instead of ISO where appropriate, and be consistent in
-      the fomatting of names of ISO or ISO/IEC standards.
+      the formatting of names of ISO or ISO/IEC standards.
 
 
 Changes to individual pages
-- 
2.39.2


