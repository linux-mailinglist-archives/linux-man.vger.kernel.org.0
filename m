Return-Path: <linux-man+bounces-1211-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC82490A085
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 00:35:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A10251C20C3A
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 22:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4384596E;
	Sun, 16 Jun 2024 22:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baxters.nz header.i=@baxters.nz header.b="tkZbdfU4"
X-Original-To: linux-man@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997BD14AA0
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 22:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718577306; cv=none; b=Sk+03BjzoDF0aJlIJ931GQ4z+ad9u+vh7D9bP2BjWgj+mePxMznxODVTJdWlb+ACQydAEkxJZ1M906wVpnOK2exPxn+mF6uy01TPvvdqLv0KANi+xaeAGzIL2dOGV0DdEfKSIvRGc1cjWRgJqdlopTWVuQhb3RyJhv+XP49yvYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718577306; c=relaxed/simple;
	bh=dZIQN1MpG6vnQF2xCHCQC0wUGEdSbSTXiALHiVoZ2oY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jRUBOJFYKLkFt4Fuwd9uHH6AR2/4ReZMNcbEgKpmxQE1Rusv/bJKt8YaA4PK8DUzx758atEYtjxFbfDNFKCJa/W/xXWWtnNjZLnpUJ+L64GxXY7/Ks8KHZrA+xEsL2Ugyn/HZDMQc6ON27ovD95LO7BeWyUd6iTlSEOzHgV+PL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=baxters.nz; spf=pass smtp.mailfrom=baxters.nz; dkim=pass (2048-bit key) header.d=baxters.nz header.i=@baxters.nz header.b=tkZbdfU4; arc=none smtp.client-ip=91.218.175.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=baxters.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baxters.nz
X-Envelope-To: alx@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=baxters.nz; s=key1;
	t=1718577298;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=klTX1NfgfZx//TH0jfqHXt1skOh3ylTR6H5nVtMPuQE=;
	b=tkZbdfU4kXClQXRrTbmjQ87/TJnod9PRy2m/04nEN1AkXSKh+itcjn763ZMXq5759NW8lV
	Yu1yQiZRxeZONGthRPm81GzpN7UECv2PI2Yle64zZdAusbCpA+p98RqVIUVbWKQW2q5Q/d
	iVxnxJJao7SyaYn+FxTExXLbpFVSL6SLDELTfg33j8yP4WTDYE9Cr9XuJZEUnLgilGrL9e
	+Ult3K/b0rhPsTm6jty0cvm/rR+nWuNhwvfyA1pBD0J52w2pvRDWzxf5UrhmAHqDkXuiva
	B/HrwOhhTQl7yk1uMjCTCSRrAtLeuYL0Bx8VVTGWrWNTKhOuC1/gZ8Q8QDAigA==
X-Envelope-To: linux-man@vger.kernel.org
X-Envelope-To: jeremy@baxters.nz
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jeremy Baxter <jeremy@baxters.nz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Jeremy Baxter <jeremy@baxters.nz>
Subject: [PATCH] intro.1: Improve wording in initial introduction
Date: Mon, 17 Jun 2024 10:29:17 +1200
Message-ID: <20240616223429.46202-1-jeremy@baxters.nz>
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
index decaab161..4d9e81c5a 100644
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
+It is not built-in,
+but is just another program.
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


