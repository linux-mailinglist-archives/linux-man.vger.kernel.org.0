Return-Path: <linux-man+bounces-1214-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4482D90A0D9
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 01:40:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C70FFB211A9
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 23:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013327345D;
	Sun, 16 Jun 2024 23:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baxters.nz header.i=@baxters.nz header.b="M0OzVRvD"
X-Original-To: linux-man@vger.kernel.org
Received: from out-176.mta0.migadu.com (out-176.mta0.migadu.com [91.218.175.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB7F11CB8
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 23:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718581206; cv=none; b=sKIe2Rv4SwkEC7Vbzb2z7NkX+I2amlZQSQH+uaENeeb8U/ecJ3b7HXXELpJ+ilWlnhgkX8ZmaYDD5YGFAc7MwxoHmhyljZRN9yLgSl+M0ldkF0S74Iv6vTnzHoOG3RDKM0aS7ywDmT5yVf8J4M5Mzn3XAkC2LR2BQnuDsczGXFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718581206; c=relaxed/simple;
	bh=zqTETssY4aI7aVZiRlsugiLbj6oCC7zAJVSBCmM0q+Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T3CFuU/b1pNEajvdA9XuM2OkFEWC/1BvP1rOaVB7gdu8vKwhEBsPAFBC1R7+WaKUq6cBjiK7Oh7krfL5w1kO+tHDukSz+zt6Nbb8nL1oLs+1z4NiTLyBcxWCwE4B7ye7UpfDJ16Nts4VlEZYUc+bMze7wp1tiQxmvJJj1qWorAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=baxters.nz; spf=pass smtp.mailfrom=baxters.nz; dkim=pass (2048-bit key) header.d=baxters.nz header.i=@baxters.nz header.b=M0OzVRvD; arc=none smtp.client-ip=91.218.175.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=baxters.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baxters.nz
X-Envelope-To: alx@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=baxters.nz; s=key1;
	t=1718581201;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bMVULyw9/AdQ6YQi0uDm9ZzditV+OJCq/0otthwbTRw=;
	b=M0OzVRvDkV2YA3vGiFFM/nuil7kRT82N+odo/yE9U/wWhuGX5QwGvU6djYM0Tu5aJ8Jrws
	YB0Vgy6tiN2Uxf2Aoml6esCJC1w/rpVw0OkYFFEgA47GOGClhO+uY7C5hyS7G/TPytJzRb
	6znYJ2ZDUpSYZbiBvA09W3U9eK4WNSVmUYAlFJ7tJX4N/3CWZJbmZhUCfR8eEqH0cWT08u
	0L1myuPUCgs2DoS7Q7LqB1eEIRZnStMMtiHWtb4VaDEWhDHAaZGI/QjIIdfqDQisW3JoNH
	j2gS50WVwXpXevAHL45xK1XiHZZSvrf2VJnA9Pb4ccOUqgLZLub81rXh4guJjg==
X-Envelope-To: linux-man@vger.kernel.org
X-Envelope-To: jeremy@baxters.nz
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jeremy Baxter <jeremy@baxters.nz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Jeremy Baxter <jeremy@baxters.nz>
Subject: [PATCH v2] intro.1: Improve wording in initial introduction
Date: Mon, 17 Jun 2024 11:39:12 +1200
Message-ID: <20240616233931.53760-1-jeremy@baxters.nz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

---
 man/man1/intro.1 | 31 +++++++++++++++++--------------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/man/man1/intro.1 b/man/man1/intro.1
index decaab161..91ebbc448 100644
--- a/man/man1/intro.1
+++ b/man/man1/intro.1
@@ -10,9 +10,9 @@ Section 1 of the manual describes user commands and tools,
 for example, file manipulation tools, shells, compilers,
 web browsers, file and image viewers and editors, and so on.
 .SH NOTES
-Linux is a flavor of UNIX, and as a first approximation
-all user commands under UNIX work precisely the same under
-Linux (and FreeBSD and lots of other UNIX-like systems).
+Linux is a flavor of UNIX, and user commands under UNIX
+work similarly under Linux (and lots of other UNIX-like systems too,
+like FreeBSD).
 .P
 Under Linux, there are GUIs (graphical user interfaces), where you
 can point and click and drag, and hopefully get work done without
@@ -20,15 +20,17 @@ first reading lots of documentation.
 The traditional UNIX environment
 is a CLI (command line interface), where you type commands to
 tell the computer what to do.
-That is faster and more powerful,
-but requires finding out what the commands are.
-Below a bare minimum, to get started.
+This is faster and more powerful,
+but requires finding out what the commands are and how to use them.
+Below is a bare minimum guide to get you started.
 .SS Login
-In order to start working, you probably first have to open a session by
-giving your username and password.
+In order to start working,
+you'll probably first have to open a session.
 The program
 .BR login (1)
-now starts a
+will wait for you to type your username and password,
+and after that,
+it will start a
 .I shell
 (command interpreter) for you.
 In case of a graphical login, you get a screen with menus or icons
@@ -36,12 +38,13 @@ and a mouse click will start a shell in a window.
 See also
 .BR xterm (1).
 .SS The shell
-One types commands to the
+One types commands into the
 .IR shell ,
 the command interpreter.
-It is not built-in, but is just a program
-and you can change your shell.
-Everybody has their own favorite one.
+It is not built-in;
+it is just another program.
+You can change your shell,
+and everybody has their own favorite one.
 The standard one is called
 .IR sh .
 See also
@@ -53,7 +56,7 @@ See also
 .BR ksh (1),
 .BR zsh (1).
 .P
-A session might go like:
+A session might look like this:
 .P
 .in +4n
 .EX
-- 
2.45.2


