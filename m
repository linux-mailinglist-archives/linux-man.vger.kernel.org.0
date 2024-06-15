Return-Path: <linux-man+bounces-1186-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6729909888
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 15:30:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 690151F21860
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 13:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B48A39FC1;
	Sat, 15 Jun 2024 13:30:11 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from b-painless.mh.aa.net.uk (b-painless.mh.aa.net.uk [81.187.30.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC44D4087C
	for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 13:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.187.30.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718458211; cv=none; b=OfhEtfPQX8YZmAhfbgM6OdHAb5XGxYr19h9WOP6n3sfpmOka8VD9D3ZgNSwD1l+WZammnSWZGgS5Mat5hZHA7ptZIoW89cPvsZTuJFl/M2IHNa8/W/DFBoaIGjs73MP9mwHHRgGc9/8LyKk4iQRjNRvGw6n6/6lI5ZqG7p98AfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718458211; c=relaxed/simple;
	bh=BBTlfOKJGGlk7FIFozWi1VfaJy9je2cWRtTr938y2k8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nz/tVGUXZi+4BI6CZzyRiQYxwfa0kzSkJ7QyW+ItyDUrLkdLi8FTy7WJcN1l8EacVSIrRnaqoGRxzfdsH7a4XxHHWvixF82Hwd30n1eGXrusSg0p7BkwbNKekvrmYUUoCRUVMeP0rv5Fc+++FRmsdnvtGbTYpJgBee/8ZIhAyes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=offog.org; spf=none smtp.mailfrom=offog.org; arc=none smtp.client-ip=81.187.30.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=offog.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=offog.org
Received: from cartman.offog.org ([2001:8b0:83b:b53f::a])
	by painless-b.tch.aa.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ats@offog.org>)
	id 1sITTp-004Akd-0I
	for linux-man@vger.kernel.org;
	Sat, 15 Jun 2024 14:30:05 +0100
Received: from ats by cartman.offog.org with local (Exim 4.97.1)
	(envelope-from <ats@offog.org>)
	id 1sITTh-000000005Pb-0kKr;
	Sat, 15 Jun 2024 14:29:57 +0100
From: Adam Sampson <ats@offog.org>
To: linux-man@vger.kernel.org
Cc: Adam Sampson <ats@offog.org>
Subject: [patch] FICLONERANGE.2const: Update .so for renamed file
Date: Sat, 15 Jun 2024 14:29:27 +0100
Message-ID: <20240615132948.20625-1-ats@offog.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixes: 733e3228017b ("ioctl.2, ioctl_ficlone*.2, FICLONE{,RANGE}.2const: Move page to FICLONE.2const")
Signed-off-by: Adam Sampson <ats@offog.org>
---
Range-diff against v0:
-:  --------- > 1:  479ee7641 FICLONERANGE.2const: Update .so for renamed file

 man/man2const/FICLONERANGE.2const | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2const/FICLONERANGE.2const b/man/man2const/FICLONERANGE.2const
index 1e1cbb2b6..c52dce62f 100644
--- a/man/man2const/FICLONERANGE.2const
+++ b/man/man2const/FICLONERANGE.2const
@@ -1 +1 @@
-.so man2/ioctl_ficlone.2
+.so man2const/FICLONE.2const
-- 
2.45.2


