Return-Path: <linux-man+bounces-634-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6AD87DC8E
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 09:11:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3217B1F2129D
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 08:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 088E4EADB;
	Sun, 17 Mar 2024 08:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="h34sI9Br"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A531FEAC5
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 08:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710663066; cv=none; b=o1rKx2CT+do4mh6Gb8zASA/IRvcWG84g0oEzQ6y2oqrMdVsKblbc/V1d3ptOBZTdQBW9FiStI/QMni8xsLdHoaNii9H362cAFqmbxTHLCWMukFpooolLAbJaS3KRYMA7oDtnOa8lm/QZfzpJG8trVSEF40thCgkVhrZ6u31oHLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710663066; c=relaxed/simple;
	bh=99WeD/RyyqYjNiVd5wIVlAOsbVypvLtEDMDFNgQHUvE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZJ7FeVq9kJIlL4E25tQTCDXJZPZ9mbbq9Ifzy8dsLmV0J1HdWFGzdP65X2kFxyQqk7z7/aA6eW5HjJlo4ztZwEDyudit4kBmJdgQx6/7VwKLDfROXZ7gmuOH54TO5UC1SUD1AlZU9zA3kEfCtuqEKGgSunoX8vnbuJU1lqGUd7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=h34sI9Br; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5F26B41C59;
	Sun, 17 Mar 2024 09:11:03 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1rXt4qcDAgs2; Sun, 17 Mar 2024 09:11:01 +0100 (CET)
From: Jeremy Baxter <jtbx@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710663061; bh=99WeD/RyyqYjNiVd5wIVlAOsbVypvLtEDMDFNgQHUvE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=h34sI9Br1VaNUefKHnV7K31wSv+b9gzfXrzcwvN/GlZHq2gTpTdsB7yMEJ8PZIKXQ
	 C9o9xHxtR6Cv6Tlyuw1Npa/w8BHnQhhk1ITbJvLToAGLy/iOhetW1nAPXZfde+o728
	 g5Upp5+2rrt5Rwak3vzmLNjqj/dE1MK95QgUTanJvgpDLfTpoyZkKa2OFEaPMWqw8e
	 tVDJksseYpz5lZy+NJmvmE24O06eZfMwIc7nB3iD5eLvNHcMKr3i7AOXbYKa5MYw3h
	 kl+VLcZRaAN0Yhq4TGS1lqVzZByB7Sv3YgzSc6rkP3qwaQCR76xMmmb3Dk/FLlzJ/w
	 YrQbwZLW+nm9A==
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Jeremy Baxter <jtbx@disroot.org>
Subject: [PATCH v2 5/6] intro.1: Define a process ID
Date: Sun, 17 Mar 2024 21:08:33 +1300
Message-ID: <20240317080850.28564-8-jtbx@disroot.org>
In-Reply-To: <20240317080850.28564-3-jtbx@disroot.org>
References: <20240317080850.28564-3-jtbx@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man1/intro.1 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man1/intro.1 b/man1/intro.1
index 8102640ba..72f28bc2e 100644
--- a/man1/intro.1
+++ b/man1/intro.1
@@ -275,7 +275,8 @@ while other processes run in the
 .IR background .
 The command
 .I ps
-will list active processes and each one's ID.
+will list active processes and each one's ID,
+a number which can uniquely identify a process from others.
 The command
 .I kill
 allows you to stop processes.
-- 
2.44.0


