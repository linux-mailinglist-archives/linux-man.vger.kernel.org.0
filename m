Return-Path: <linux-man+bounces-633-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3DB87DC8D
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 09:11:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 434C31F21545
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 08:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C843F4F1;
	Sun, 17 Mar 2024 08:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="iIdvpRUz"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6814EEA9
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 08:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710663063; cv=none; b=Va5YvZID/zk4CC2bXoGY+VlHtq2LAkvkmvWH7zR/4ElpLjeLtNwr32E6G729/4mhfwcjzNx3n9zf564Z7sQxYscFAKfkxZVsBYYE0ijjYqjYaBDLr0yzie+3AY4jNwyCXPYRXDEiik3G/QGa2x3JoItcyr5GeZ8fmG94cxfk7m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710663063; c=relaxed/simple;
	bh=i78GjFRmNYUo7Gxy9lt5fPfz0fL02A6Q5gMElgW9B4E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KZuZ5g7NMQDhmaSO43ony/kPFkxxJ16HlzauKW+eXRP25jOaqSuY3IIcmL9JAWpxXcZkD2r0YMW6T3cJKXLtEiSPm+0MLm1io3HIDdabmIg/txo/kAR1/6JlCid5+Xj0Fnhnx/AUXEDC61XIsJkfkGqBI2R/3USGA56FXobsGes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=iIdvpRUz; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 76957413B5;
	Sun, 17 Mar 2024 09:10:59 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6sG8NW83TIn; Sun, 17 Mar 2024 09:10:58 +0100 (CET)
From: Jeremy Baxter <jtbx@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710663058; bh=i78GjFRmNYUo7Gxy9lt5fPfz0fL02A6Q5gMElgW9B4E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=iIdvpRUzfTSNTh8cjeAq+DUSQeacFSMXLjCv0KsjKTipLgxAQyOiGD9j3iRLIMVyl
	 lz6pw4ST906F1VKsYwloczx4/BYRgaDMj6rytq7f07Vyl+nWsf/+lVqW0vvsHf/6wi
	 ktQpa2jrYpzhEK9MVJFOhEO3cpjvcbkT1SIxaz7VzdLwwoEkxM2apQzGin6ihMtY0X
	 xutxXLcoqBUn4IlFcHEWneKZQJGol8Fu+itmoShhOJXgO9Kc0gXDZwssnE2kD7AFXg
	 s2emcyBeCNPeB47v8Oeg+Hg6Zp4Rapi0enK2b7dcdWPXleMwlzpH6kM/Bi5zBUsqAd
	 w5rlu/nf6yrYg==
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Jeremy Baxter <jtbx@disroot.org>
Subject: [PATCH v2 4/6] intro.1: Demonstrate special cases of the cd command
Date: Sun, 17 Mar 2024 21:08:32 +1300
Message-ID: <20240317080850.28564-7-jtbx@disroot.org>
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
 man1/intro.1 | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/man1/intro.1 b/man1/intro.1
index f0a8d98e0..8102640ba 100644
--- a/man1/intro.1
+++ b/man1/intro.1
@@ -213,6 +213,25 @@ Try using the
 and
 .I pwd
 commands in different ways.
+.I cd .
+changes the current directory to the path to the current directory;
+this does nothing.
+.I cd ..
+changes the current directory to the parent directory of the current
+directory.
+For instance, if our current directory is
+.I /home/aeb
+and we change the current directory to
+.IR .. ,
+the current directory will now be
+.IR /home .
+.I cd /
+changes the current directory to the root of the hierarchy.
+.I cd \[ti]
+changes the current directory to the user's home; if I am logged in as
+.IR aeb ,
+this command will change my current directory to
+.IR /home/aeb .
 .SS Directories
 The command
 .I mkdir
-- 
2.44.0


