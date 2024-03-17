Return-Path: <linux-man+bounces-632-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E2587DC8C
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 09:11:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FD9D1F2127E
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 08:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A4FEADB;
	Sun, 17 Mar 2024 08:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="IptU4r1e"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3512114
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 08:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710663059; cv=none; b=puLwPaXLDZvexlsT8CqRocQd+fueY5yA3+az5CzWStJhr8oJVKdmAkv/9BSOnbQ/57ynKk+pZdEwkRAM0nLJs2399CtJK1fGmjPgwiCVFgoffeA1M+lSaK16JrhKKlNB98eUCjageX+hUodjANokbaFpL/w5WbKYxxClsa0zeJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710663059; c=relaxed/simple;
	bh=lYN1Wbp4GVEtVy+g14Y0WG1Kba4WzKDtGzbmsxKM644=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jLoBo4chAYdrMKcLEWMrKacoeWbffEkFNtf0pw7Xrh7cUpPceBYADbvgm5vf1foyfdy3dCl7RAzR8M+i6IIWvlrK0GzCcgRrB9DaKhCrUiVc+4rWfg0xoPF9WipJZkdpJ5npFYKvUkpZj95iHWcEEqp4+Me4iaZpdAHHWLgowEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=IptU4r1e; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 0ABE241ABE;
	Sun, 17 Mar 2024 09:10:55 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZOnptqtw0Unb; Sun, 17 Mar 2024 09:10:54 +0100 (CET)
From: Jeremy Baxter <jtbx@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710663054; bh=lYN1Wbp4GVEtVy+g14Y0WG1Kba4WzKDtGzbmsxKM644=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=IptU4r1enc7ihwdmtv1oM0tTYRX22MRGC7tNMh2NmM6KfJKkSqL1ZHzAC5hRF9oVf
	 8YOjB4ABsuadVQjl5EIJp2CN/edanP/NkmO+aIB2Gnactil+Qm7ZmDWZDbSkT+lmpM
	 LChzDEJ4e5kkbdnalvm2qnnzFiSQWtemkcIfvP6x4htRFanmg3TcQhF6B83nE7rV8C
	 5bC/rNNraFUwmBpV+WnIGbi+EvU6Aoy4ck7m0hG4x4VyOYxLXSHgTF01PaxwWtEe9k
	 aT3ujZTcZWWHUwKx1L8u4vlkA+JX5q9cnprhBHJr1Z8CKUr+qhxQvL0gj6+f9F1XFQ
	 ZGXcQSos8HjJQ==
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Jeremy Baxter <jtbx@disroot.org>
Subject: [PATCH v2 3/6] intro.1: Explain the meaning of a directory
Date: Sun, 17 Mar 2024 21:08:31 +1300
Message-ID: <20240317080850.28564-6-jtbx@disroot.org>
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
 man1/intro.1 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man1/intro.1 b/man1/intro.1
index 090678750..f0a8d98e0 100644
--- a/man1/intro.1
+++ b/man1/intro.1
@@ -180,6 +180,9 @@ The command
 In this example, we use it to find Maja's telephone number.
 .SS Pathnames and the current directory
 Files live in a large tree, called the file hierarchy.
+In this hierarchy, there are many
+.IR directories ;
+a directory is simply a file that can hold other files as opposed to text.
 Each file has a
 .I "pathname"
 describing the location of the file from the root of the tree
-- 
2.44.0


