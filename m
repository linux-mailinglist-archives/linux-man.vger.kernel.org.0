Return-Path: <linux-man+bounces-631-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E62787DC8B
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 09:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4C6D281A69
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 08:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84410EEA9;
	Sun, 17 Mar 2024 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="HbVq+gsg"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A342114
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 08:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710663034; cv=none; b=SK3czy7OCseCJixQaSq13NGMvLpTaLXH/u2jZzs0NT1BBbdei89xtIvOj2IXbyYFgxrV26pGDbl1ik95BI3ejUDphvf9yq9lzFmpGOWVLGDVs9Nkm/ye4VOSJMZ1VDtZ96eWr/IO6JtuC0iQYnuC1swEBPPM45VsIlQ7Q0y4pxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710663034; c=relaxed/simple;
	bh=7Nn/dP3ZJt37agom92W3QuF+icBA0brYYguBxKHneO4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GP1MVfHHIsMLmKVv8RUbJPaWbMbCC9CdH/e4Lo296S/Uo38OGcIauw3Zo84ZualkR08pDZV/J2tiAI5igEw9qI10s6KDmu1O2fc95KxVOUfQt+ouozDOEKq197aRQemY+/8gOYZ0bwRQ1T2HBk5/5JdD8qdBGtyAEpuB3acxgfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=HbVq+gsg; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id C7A4D410DC;
	Sun, 17 Mar 2024 09:10:29 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQrs9s-8GW6W; Sun, 17 Mar 2024 09:10:29 +0100 (CET)
From: Jeremy Baxter <jtbx@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710663029; bh=7Nn/dP3ZJt37agom92W3QuF+icBA0brYYguBxKHneO4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=HbVq+gsgAHhLFSPff7PSzhD7JCbcQqmmHxuSlH0T3u4N2ndTDGYGAltij3VtkRRfn
	 fhArE5CUA26rxO18sZnF7B7yprujJQq1+iAEj+F5Z+l68JcGylZJT/1Kjsqud5or4T
	 7bZjKw+VC8X6VNerefIOuumDRTQMIOrqBHOeEqjVKW4jaHsp5ozOR2Z9pBZg8JMwr9
	 oacgrQ34zM72pYaO9pPhWCB75n5fbc2oY43fWc9UYB2uLB/4K8UnZJnK1E7SSD6sK6
	 xxqY+fmP+dbGBLlUMQ7nbo1Yr4m7s7VY2Ak6s07K6qLxJrKBaDkdQvb3J2KMjP7T2O
	 PDU/UjTQwwb3A==
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Jeremy Baxter <jtbx@disroot.org>
Subject: [PATCH v2 2/6] intro.1: Document the meaning of the PS1 variable
Date: Sun, 17 Mar 2024 21:08:30 +1300
Message-ID: <20240317080850.28564-5-jtbx@disroot.org>
In-Reply-To: <20240317080850.28564-3-jtbx@disroot.org>
References: <20240317080850.28564-3-jtbx@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It still doesn't explain what a variable is but I think
shell variables are out of scope of this manual.
---
 man1/intro.1 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man1/intro.1 b/man1/intro.1
index 96eb3b7fc..090678750 100644
--- a/man1/intro.1
+++ b/man1/intro.1
@@ -109,7 +109,10 @@ that it is ready for the next command.
 The prompt can be customized in lots of ways, and one might include
 information like the username, machine name, current directory, the time,
 and so on.
-An assignment PS1="What next, master? "
+It can be changed by setting the value of the "PS1" (prompt string 1)
+variable.
+An assignment
+.B PS1="What next, master?\ "
 would change the prompt as indicated.
 .P
 From this example we can see that there is the command
-- 
2.44.0


