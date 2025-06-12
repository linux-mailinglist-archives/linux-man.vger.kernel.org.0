Return-Path: <linux-man+bounces-3140-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F47AAD67D9
	for <lists+linux-man@lfdr.de>; Thu, 12 Jun 2025 08:18:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C24517091F
	for <lists+linux-man@lfdr.de>; Thu, 12 Jun 2025 06:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6DBD1DF75A;
	Thu, 12 Jun 2025 06:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fuzy.me header.i=@fuzy.me header.b="P9nZlQ7w"
X-Original-To: linux-man@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E8A14A8B
	for <linux-man@vger.kernel.org>; Thu, 12 Jun 2025 06:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749709091; cv=none; b=F1Ry5GwQMDfdv1qyQ7lTogdFlBg0YIFdWlVLQyqV6dGzEPfAIh97UvyR8rn+1whrVMs8ELp82kpj1/BKFGuBX4izpvUfJ1tlm9Th6GJzuJTE779JyGHm0bF6NvgY4Qi/2Q8gzA9o6OofP5ImKs3KHinedIe87IJ2ZBLW1dJjKgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749709091; c=relaxed/simple;
	bh=moNmibwzM+Jxv9iPlTS6bddlaOzJ6SwOi4uqEQ+JXkE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UsMxPS1GBBirLfZzDkWcQnKlcYszonFntwHoIgyjsBacm0/lMx7EVAIKuwHIP8XEtvx5BbK+pFL1cWVN45AwVKjQyw6Crl6HXPBti4vu1ih6w/bXuJHJIYhtCXGGV0l5kD47dDp7w2lA2Mb4nsV7Mgn1lDB+VJa09E5VCSboMTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fuzy.me; spf=pass smtp.mailfrom=fuzy.me; dkim=pass (2048-bit key) header.d=fuzy.me header.i=@fuzy.me header.b=P9nZlQ7w; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fuzy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fuzy.me
Received: by mail.gandi.net (Postfix) with ESMTPSA id B55E243B14;
	Thu, 12 Jun 2025 06:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fuzy.me; s=gm1;
	t=1749709081;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=F0B7KJEpSxmf7mDb8XmrSQkJWCQ2NlouFxfFQKRhYsc=;
	b=P9nZlQ7wPEDNOL8N0lygMR6MSI2Fn+VysgTc7372wh7n6mbodMnYXkPWg0nxvfpzqdmwE/
	PHG2axkFHWNhWfWxSYrFSwWfnR+fe+hKTn4C6JoVVJNEFZgBhDs36FstEXraT+Whok8uGu
	FmkL5o7qO9U+PN0LTfpZyuqNhtWMDwZNSKLIHLG5kMiNZ3gYB1ODQGZud/pUi1NyLCT7mH
	Y8PfmA7n5TUwvCyGGr4i7aIRtkYIbOxA1ZhS2ZT86pLrON5tpuKB5TPfHKYDNty9FoMAv5
	q1G448MzTOFZ0UciFmgbnSqRS/VF8QYW4XCE6cKpQVWCKjDDVAC2Z1kyER1bpg==
From: Zhengyi Fu <i@fuzy.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Zhengyi Fu <i@fuzy.me>
Subject: [PATCH] man/man2/memfd_secret.2: Correct the flags
Date: Thu, 12 Jun 2025 14:17:05 +0800
Message-ID: <20250612061705.1177931-1-i@fuzy.me>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddugeefvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpegkhhgvnhhghihiucfhuhcuoehisehfuhiihidrmhgvqeenucggtffrrghtthgvrhhnpeduheekfefhlefhtdejvdeivefhffeuveduueehleeufeejieefiedtieeuiedtleenucfkphepudelvddrheeirdelledrheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduledvrdehiedrleelrdehpdhhvghlohepjhgrmhgvshdqfhhuqdhusghunhhtuhdvgedtgedrrddpmhgrihhlfhhrohhmpehisehfuhiihidrmhgvpdhnsggprhgtphhtthhopeefpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehisehfuhiihidrmhgv
X-GND-Sasl: id@fuzy.me

memfd_secret returns EINVAL when called with FD_CLOEXEC.  The
correct flag should be O_CLOEXEC.

Signed-off-by: Zhengyi Fu <i@fuzy.me>
---
 man/man2/memfd_secret.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
index 5ba7813c1..c6abd2f5f 100644
--- a/man/man2/memfd_secret.2
+++ b/man/man2/memfd_secret.2
@@ -51,7 +51,7 @@ The following values may be bitwise ORed in
 to control the behavior of
 .BR memfd_secret ():
 .TP
-.B FD_CLOEXEC
+.B O_CLOEXEC
 Set the close-on-exec flag on the new file descriptor,
 which causes the region to be removed from the process on
 .BR execve (2).

