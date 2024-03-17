Return-Path: <linux-man+bounces-635-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBD287DC8F
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 09:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF90B1C20AD6
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 08:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6314F510;
	Sun, 17 Mar 2024 08:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="c73Nkfnq"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9217CEAC5
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 08:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710663069; cv=none; b=Sb7KzshE55VYLMlFRhchhBgEfgDmjbW6jDf3xbaT+QyuoaI0z2V5i2tPWUNOtxgtA3VKMGPqteDswRAP3eoB+wyhmNw03joqSkDiZ0zyLZWnb3TSoUxIPqtSWAKQCf87PLMvmJaf+T8RzQdCuN4z+BaRhaYiEjDiGLMLUchi8tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710663069; c=relaxed/simple;
	bh=kpiflwf8/8DYYMesSvpnmztOO1rBMwsxYt+mq+h2KZc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cIYGtsSbKzoR47VukC8xf6dh3YvVH7c2RXMODgnn7DUgLiW7JcViri0SRHubWiDr1rzvlsE4EO/j+u+V7MWTXus9ZScMXONMY8glzeETBToGBDrktBWWdhlkK3h21nWYCeomzYabKqIoYo0RsJjU+FvHSlzToUUZTngtX3cSScE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=c73Nkfnq; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 202C244D43;
	Sun, 17 Mar 2024 09:11:06 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfQINQOP8opG; Sun, 17 Mar 2024 09:11:05 +0100 (CET)
From: Jeremy Baxter <jtbx@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710663065; bh=kpiflwf8/8DYYMesSvpnmztOO1rBMwsxYt+mq+h2KZc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=c73NkfnqtmPpSiNIDtu7QcGJyfg1xiZhQ5RmlbZm1dEGAPr4UrkYeoB/+ezLVQGPz
	 D3CJcilUCxQa0lPLsy16V3h3gdx1V5M5XJZCNxdFFW+p8sm/F+921Tj9oqje76zmUI
	 ktwLW6Z6USrYe4vGpYypy64aeQ9xp9JxI4tjykOg7bx9zA6J+C6TKjLngc1d96k8Sc
	 gbClvwPwQGTq8TpsUB4PV/ulpfy7n44Nzx3lSOeSyAnqdBmVblrvN1TKQe01It3lZ8
	 /Joeu8hugNIX6FX94vE1A48C9e4jwLVYNRcmYSF6zZMN6sb1K4/859Z1k6TLvIUE8M
	 VZslh0dhgEqng==
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Jeremy Baxter <jtbx@disroot.org>
Subject: [PATCH v2 6/6] intro.1: Revise paragraph documenting GNU texinfo
Date: Sun, 17 Mar 2024 21:08:34 +1300
Message-ID: <20240317080850.28564-9-jtbx@disroot.org>
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
 man1/intro.1 | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/man1/intro.1 b/man1/intro.1
index 72f28bc2e..5aad9d4e7 100644
--- a/man1/intro.1
+++ b/man1/intro.1
@@ -314,15 +314,17 @@ the previous page, and "q" to quit.
 In documentation it is customary to refer to man pages
 by using the name followed by the section number in brackets, as in
 .BR man (1).
-Man pages are terse, and allow you to find quickly some forgotten
-detail.
-For newcomers an introductory text with more examples
-and explanations is useful.
 .P
-A lot of GNU/FSF software is provided with info files.
-Type "info info"
-for an introduction on the use of the program
-.IR info .
+Man pages are concise, and allow you to quickly find a forgotten detail.
+They're designed to be a complete reference manual for a program.
+Usually you'd want a guide/tutorial when learning how to use software,
+rather than a long exhaustive reference manual.
+For this purpose a lot of GNU software comes with
+.I info
+manuals, which are designed to be more of an introduction for newcomers.
+Use the command "info info" for a first introduction on using the
+.I info
+program.
 .P
 Some topics can be documented in HOWTO files.
 To find these, look for HTML files in
-- 
2.44.0


